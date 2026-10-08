#!/usr/bin/env python3
"""Stamp a level gate onto every guide step.

When the local wow-database checkout has a Questie overlay, a positive
questLevel is the step level and a positive requiredLevel is the offer
gate. Zero and -1 leave the Wowhead value. Without that overlay, a Forever
quest from patch 16001 uses the Level line when that line is at least 5
levels above Requires level. Classic quests use the offer level. Dungeon
guides always stay on the offer level. Class quests stay on the offer
level. Steps for a quest share that gate. A minimum of 1 is not written.
"""

from __future__ import annotations

import json
import re
import sys
import urllib.request
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from weave_loremaster import offer_level, parse_goals, replace_goals, set_min_level, step_level

ROOT = Path(__file__).resolve().parents[1]
INDEX_URL = (
    "https://raw.githubusercontent.com/TylerAkins/wow-database/main/"
    "data/forever/raw/quest_index.json"
)
FIXTURE = ROOT / "tests" / "fixtures" / "quest_min_levels.json"
GUIDE_ROOTS = ("Guides/Leveling", "Guides/Loremaster", "Guides/Dungeons", "Guides/Class")

SOLE_LEVEL = re.compile(r"\n[ \t]*conditions = \{ level = \{ min = \d+ \} \},")
LEVEL_ENTRY = re.compile(r"\n[ \t]*\{ level = \{ min = \d+ \} \},")
EMPTY_ALL = re.compile(r"\n[ \t]*conditions = \{\s*all = \{\s*\},\s*\},")
NAMED_THEN_LEVEL = re.compile(
    r"\n([ \t]*)conditions = (HORDE|ALLIANCE|BOTH_FACTIONS),\n"
    r"\1conditions = \{ level = \{ min = (\d+) \} \},"
)
NAMED_ONLY = re.compile(r"\n([ \t]*)conditions = (HORDE|ALLIANCE|BOTH_FACTIONS),")


def named_gate(indent: str, name: str, level: int) -> str:
    return (
        f"\n{indent}conditions = {{\n"
        f"{indent}    all = {{\n"
        f"{indent}        {name},\n"
        f"{indent}        {{ level = {{ min = {level} }} }},\n"
        f"{indent}    }},\n"
        f"{indent}}},"
    )


def overlay_compiled_details(data: dict, database_root: Path) -> None:
    compiled = database_root / "data" / "forever" / "compiled"
    if not compiled.is_dir():
        return
    for path in sorted(compiled.rglob("*.json")):
        bundle = json.loads(path.read_text(encoding="utf-8"))
        quests = bundle.get("quests")
        if not isinstance(quests, dict):
            continue
        for key, quest in quests.items():
            if not isinstance(quest, dict):
                continue
            base = data.get(str(key))
            if not isinstance(base, dict):
                base = {}
            merged = dict(base)
            detail = quest.get("detail")
            if isinstance(detail, dict):
                merged["detail"] = detail
            index = quest.get("index")
            if isinstance(index, dict) and isinstance(index.get("list"), dict) and "list" not in merged:
                merged["list"] = index["list"]
            data[str(key)] = merged


def load_min_levels(index_path: Path | None = None, database_root: Path | None = None) -> dict[int, int]:
    if index_path is None:
        index_path = Path("/tmp/quest_index.json")
        if not index_path.exists():
            request = urllib.request.Request(INDEX_URL, headers={"User-Agent": "ForeverGuideMate"})
            index_path.write_bytes(urllib.request.urlopen(request, timeout=60).read())
    data = json.loads(index_path.read_text(encoding="utf-8"))
    if database_root is not None:
        overlay_compiled_details(data, database_root)
    levels: dict[int, int] = {}
    for key, quest in data.items():
        if not isinstance(quest, dict):
            continue
        chosen = step_level(quest)
        offered = offer_level(quest)
        if isinstance(chosen, int) and chosen > 0:
            levels[int(key)] = {"step": chosen, "offer": offered or chosen}
        elif isinstance(offered, int) and offered > 0:
            levels[int(key)] = {"step": offered, "offer": offered}
    return levels


def strip_level_gate(raw: str) -> str:
    """Drop a recommended-level gate when the quest is available at level 1."""
    if not re.search(r"level = \{\s*min = \d+\s*\}", raw):
        return raw
    stripped = SOLE_LEVEL.sub("", raw, count=1)
    if stripped != raw:
        return stripped
    stripped = LEVEL_ENTRY.sub("", raw, count=1)
    return EMPTY_ALL.sub("", stripped, count=1)


def apply_level(raw: str, level: int) -> str:
    # A second conditions key overwrites the faction table in Lua.
    raw = NAMED_THEN_LEVEL.sub(
        lambda match: named_gate(match.group(1), match.group(2), int(match.group(3))),
        raw,
    )
    if level <= 1:
        return strip_level_gate(raw)
    if re.search(r"level = \{\s*min = \d+\s*\}", raw):
        return set_min_level(raw, level)
    named = NAMED_ONLY.search(raw)
    if named:
        return NAMED_ONLY.sub(named_gate(named.group(1), named.group(2), level), raw, count=1)
    return set_min_level(raw, level)


def guide_files() -> list[Path]:
    files = []
    for relative in GUIDE_ROOTS:
        files.extend(sorted((ROOT / relative).glob("*.lua")))
    return files


def apply(levels: dict[int, dict[str, int]]) -> tuple[dict[int, int], list[str]]:
    used: dict[int, int] = {}
    missing: list[str] = []
    for path in guide_files():
        text = path.read_text(encoding="utf-8")
        goals = parse_goals(text, "guide", str(path.relative_to(ROOT)), None)
        if not goals:
            continue
        # Dungeon pickups stay at the level the NPC offers. The Level line
        # is for woven leveling routes, where a new quest's Requires level
        # is often still a default.
        kind = "offer" if "Guides/Dungeons" in str(path) else "step"
        changed = False
        for goal in goals:
            quest_id = goal.quest_id
            if quest_id is None:
                continue
            record = levels.get(quest_id)
            level = record.get(kind) if record else None
            if level is None:
                missing.append(f"{path.relative_to(ROOT)} {goal.id} quest {quest_id}")
                continue
            previous = used.get(quest_id)
            if previous is not None and previous != level:
                missing.append(
                    f"{path.relative_to(ROOT)} {goal.id} quest {quest_id} "
                    f"level {level} disagrees with {previous}"
                )
            used[quest_id] = level
            updated = apply_level(goal.raw, level)
            if updated != goal.raw:
                goal.raw = updated
                changed = True
        if changed:
            rendered = ",\n        ".join(goal.raw for goal in goals)
            path.write_text(replace_goals(text, rendered), encoding="utf-8")
    return used, missing


def main() -> None:
    sibling = ROOT.parent / "wow-database"
    database_root = sibling if (sibling / "data" / "forever" / "compiled").is_dir() else None
    index_path = None
    if database_root is not None:
        local_index = database_root / "data" / "forever" / "raw" / "quest_index.json"
        if local_index.is_file():
            index_path = local_index
    levels = load_min_levels(index_path=index_path, database_root=database_root)
    used, missing = apply(levels)
    FIXTURE.parent.mkdir(parents=True, exist_ok=True)
    FIXTURE.write_text(
        json.dumps({str(quest_id): level for quest_id, level in sorted(used.items())}, indent=2)
        + "\n",
        encoding="utf-8",
    )
    print(f"stamped {len(used)} quests into {FIXTURE.relative_to(ROOT)}")
    if missing:
        print(f"{len(missing)} guide steps need a level check:")
        for line in missing:
            print(" ", line)


if __name__ == "__main__":
    main()
