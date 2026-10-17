#!/usr/bin/env python3
"""Preview legacy level stamps; explicit writes refuse ordered guides.

When the local wow-database checkout has a Questie overlay, a positive
questLevel is the step level and a positive requiredLevel is the offer
gate. Zero and -1 leave the Wowhead value. Without that overlay, a Forever
quest from patch 16001 uses the Level line when that line is at least 5
levels above Requires level. Classic quests use the offer level. Dungeon
guides always stay on the offer level. Class quests stay on the offer
level. Steps for a quest share that gate. A minimum of 1 is not written.
"""

from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from quest_database import load_min_levels
from weave_loremaster import parse_goals, replace_goals, set_min_level

ROOT = Path(__file__).resolve().parents[1]
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


def apply(levels: dict[int, dict[str, int]], *, write: bool = False) -> tuple[dict[int, int], list[str]]:
    used: dict[int, int] = {}
    missing: list[str] = []
    sources = [(path, path.read_text(encoding="utf-8")) for path in guide_files()]
    if write:
        ordered = [
            str(path.relative_to(ROOT)) for path, text in sources
            if re.search(r"\brouteMode\s*=\s*(['\"])ordered\1", text)
        ]
        if ordered:
            raise ValueError("Cannot bulk-stamp ordered guides; edit their itinerary explicitly: " + ", ".join(ordered))
    for path, text in sources:
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
            if write:
                rendered = ",\n        ".join(goal.raw for goal in goals)
                path.write_text(replace_goals(text, rendered), encoding="utf-8")
            else:
                print(f"Would update {path.relative_to(ROOT)}")
    return used, missing


def main() -> None:
    parser = argparse.ArgumentParser(description="Preview legacy quest level stamps without changing guides or fixtures.")
    parser.add_argument("--database", type=Path, default=ROOT.parent / "wow-database")
    parser.add_argument("--write", action="store_true", help="Write legacy guides; refuses ordered guides before any writes")
    args = parser.parse_args()
    levels = load_min_levels(database_root=args.database)
    try:
        used, missing = apply(levels, write=args.write)
    except ValueError as error:
        parser.error(str(error))
    print(f"Checked {len(used)} quests. Test expectations were not modified.")
    for line in missing:
        print("Review:", line)


if __name__ == "__main__":
    main()
