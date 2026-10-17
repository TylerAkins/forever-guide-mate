"""Read and merge local Forever quest sources without modifying guides."""

from __future__ import annotations

import json
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from weave_loremaster import FOREVER_PATCH, offer_level, step_level


def _ints(value) -> list[int]:
    if isinstance(value, int) and value > 0:
        return [value]
    if isinstance(value, list):
        return [item for item in value if isinstance(item, int) and item > 0]
    return []


def normalize_export_quest(quest: dict) -> dict:
    """Map schema v2 quest bodies onto the catalog record shape."""
    quest_id = int(quest["id"])
    quest_level = quest.get("questLevel") if isinstance(quest.get("questLevel"), int) else None
    required_level = quest.get("requiredLevel") if isinstance(quest.get("requiredLevel"), int) else None
    required_classes = quest.get("requiredClasses") if isinstance(quest.get("requiredClasses"), list) else []
    fields = {
        key: quest[key]
        for key in (
            "name",
            "questLevel",
            "requiredLevel",
            "preQuestGroup",
            "preQuestSingle",
            "exclusiveTo",
            "breadcrumbs",
            "breadcrumbForQuestId",
            "nextQuestInChain",
            "requiredClasses",
            "requiredRaces",
            "requiredSkill",
        )
        if key in quest and quest[key] is not None
    }
    return {
        "id": quest_id,
        "list": {
            "id": quest_id,
            "level": quest_level,
            "reqlevel": required_level,
            "firstseenpatch": FOREVER_PATCH if quest_id >= 90000 else None,
            "name": quest.get("name") if isinstance(quest.get("name"), str) else "",
            "reqclass": 1 if required_classes else 0,
        },
        "minLevel": required_level,
        "classes": [item for item in required_classes if isinstance(item, int)],
        "detail": {
            "requirements": {
                "allOf": _ints(quest.get("preQuestGroup")),
                "anyOf": _ints(quest.get("preQuestSingle")),
                "exclusiveTo": _ints(quest.get("exclusiveTo")),
                "breadcrumbs": _ints(quest.get("breadcrumbs")),
                "nextQuestInChain": quest.get("nextQuestInChain"),
            },
            "questie": {"fields": fields},
        },
    }


def load_quest_records(database_root: Path, index_path: Path | None = None) -> dict[int, dict]:
    index = index_path or database_root / "data/forever/raw/quest_index.json"
    compiled = sorted((database_root / "data/forever/compiled").rglob("*.json"))
    exports = sorted((database_root / "export/forever/quests").glob("*.json"))
    if not index.is_file() and not compiled and not exports:
        raise FileNotFoundError(f"No Forever quest sources in {database_root}")
    records = {}
    if index.is_file() or index_path is not None:
        data = json.loads(index.read_text(encoding="utf-8"))
        records = {int(key): value for key, value in data.items() if isinstance(value, dict)}
    for path in compiled:
        bundle = json.loads(path.read_text(encoding="utf-8"))
        for key, quest in bundle.get("quests", {}).items():
            record = records.setdefault(int(key), {"id": int(key)})
            # The index may be newer than a compiled bundle during a scrape.
            for name, value in quest.get("index", {}).items():
                if value is not None and record.get(name) is None:
                    record[name] = value
            record.setdefault("detail", {}).update(quest.get("detail") or {})
    for path in exports:
        bundle = json.loads(path.read_text(encoding="utf-8"))
        for quest in bundle.get("quests", {}).values():
            normalized = normalize_export_quest(quest)
            quest_id = normalized["id"]
            record = records.setdefault(quest_id, {"id": quest_id})
            listed = record.setdefault("list", {})
            if quest_id >= 90000:
                listed.setdefault("firstseenpatch", FOREVER_PATCH)
            if quest.get("name"):
                listed["name"] = quest["name"]
            if "requiredClasses" in quest:
                record["classes"] = normalized["classes"]
                listed["reqclass"] = normalized["list"]["reqclass"]
            detail = record.setdefault("detail", {})
            fields = detail.setdefault("questie", {}).setdefault("fields", {})
            requirements = detail.setdefault("requirements", {})
            if "preQuestGroup" in quest or "preQuestSingle" in quest:
                # All/any groups describe one chain; never combine source versions.
                fields.pop("preQuestGroup", None)
                fields.pop("preQuestSingle", None)
                for group in ("allOf", "anyOf"):
                    requirements[group] = normalized["detail"]["requirements"][group]
            for name, value in normalized["detail"]["questie"]["fields"].items():
                if name in ("questLevel", "requiredLevel") and (not isinstance(value, int) or value <= 0):
                    continue
                fields[name] = value
            for source, target in (
                ("exclusiveTo", "exclusiveTo"), ("breadcrumbs", "breadcrumbs"),
                ("nextQuestInChain", "nextQuestInChain"),
            ):
                if source in quest:
                    requirements[target] = normalized["detail"]["requirements"][target]
    return records


def load_min_levels(index_path: Path | None = None, database_root: Path | None = None) -> dict[int, dict[str, int]]:
    if database_root is None:
        database_root = index_path.parent if index_path is not None else Path(__file__).resolve().parents[2] / "wow-database"
    levels = {}
    for quest_id, record in load_quest_records(database_root, index_path).items():
        chosen = step_level(record)
        offered = offer_level(record)
        if chosen is not None:
            levels[quest_id] = {"step": chosen, "offer": offered or chosen}
        elif offered is not None:
            levels[quest_id] = {"step": offered, "offer": offered}
    return levels
