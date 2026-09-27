#!/usr/bin/env python3
"""Stamp wow-database minLevel onto every guide step.

The quest index field is the level the NPC will offer the quest (Wowhead
"Requires level"), not the recommended Level line. Steps for a quest share
that gate. A minimum of 1 is not written; a higher recommended-level gate on
that quest is removed.
"""

from __future__ import annotations

import json
import re
import sys
import urllib.request
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from weave_loremaster import parse_goals, replace_goals, set_min_level

ROOT = Path(__file__).resolve().parents[1]
INDEX_URL = (
    "https://raw.githubusercontent.com/TylerAkins/wow-database/main/"
    "data/forever/raw/quest_index.json"
)
FIXTURE = ROOT / "tests" / "fixtures" / "quest_min_levels.json"
GUIDE_ROOTS = ("Guides/Leveling", "Guides/Loremaster", "Guides/Dungeons", "Guides/Era")

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


def load_min_levels(index_path: Path | None = None) -> dict[int, int]:
    if index_path is None:
        index_path = Path("/tmp/quest_index.json")
        if not index_path.exists():
            request = urllib.request.Request(INDEX_URL, headers={"User-Agent": "ForeverGuideMate"})
            index_path.write_bytes(urllib.request.urlopen(request, timeout=60).read())
    data = json.loads(index_path.read_text(encoding="utf-8"))
    levels: dict[int, int] = {}
    for key, quest in data.items():
        if not isinstance(quest, dict):
            continue
        raw = quest.get("minLevel")
        if not isinstance(raw, int):
            listed = quest.get("list") or {}
            raw = listed.get("reqlevel")
        if isinstance(raw, int) and raw > 0:
            levels[int(key)] = raw
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


def apply(levels: dict[int, int]) -> tuple[dict[int, int], list[str]]:
    used: dict[int, int] = {}
    missing: list[str] = []
    for path in guide_files():
        text = path.read_text(encoding="utf-8")
        goals = parse_goals(text, "guide", str(path.relative_to(ROOT)), None)
        if not goals:
            continue
        changed = False
        for goal in goals:
            quest_id = goal.quest_id
            if quest_id is None:
                continue
            level = levels.get(quest_id)
            if level is None:
                missing.append(f"{path.relative_to(ROOT)} {goal.id} quest {quest_id}")
                continue
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
    levels = load_min_levels()
    used, missing = apply(levels)
    FIXTURE.parent.mkdir(parents=True, exist_ok=True)
    FIXTURE.write_text(
        json.dumps({str(quest_id): level for quest_id, level in sorted(used.items())}, indent=2)
        + "\n",
        encoding="utf-8",
    )
    print(f"stamped {len(used)} quests into {FIXTURE.relative_to(ROOT)}")
    if missing:
        print(f"{len(missing)} guide steps have no wow-database minLevel:")
        for line in missing:
            print(" ", line)


if __name__ == "__main__":
    main()
