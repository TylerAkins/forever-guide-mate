#!/usr/bin/env python3
"""Port Forever-only quest steps from a previous Leveling tree onto Casual spines.

Forever quests are treated as QuestState/QuestObjective ids >= 90000 (Forever
patch content in this repo's woven Leveling chapters). Classic Casual spine
quests stay untouched; woven steps are appended with woven- ids.
"""

from __future__ import annotations

import argparse
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]

# Old Leveling slug stem -> new Casual Leveling relative path (under Guides/Leveling).
OLD_TO_NEW = {
    "durotar": "durotar.lua",
    "mulgore": "mulgore.lua",
    "tirisfal-glades": "tirisfal-glades.lua",
    "elwynn-forest": "elwynn-forest.lua",
    "dun-morogh": "dun-morogh.lua",
    "teldrassil": "teldrassil.lua",
    "the-barrens-part-1": "horde-the-barrens-and-stonetalon-mountain.lua",
    "the-barrens-part-2": "horde-the-barrens.lua",
    "the-barrens-part-3": "horde-the-barrens.lua",
    "silverpine-forest": "horde-silverpine-forest.lua",
    "stonetalon-mountains-part-1": "horde-the-barrens-and-stonetalon-mountain.lua",
    "stonetalon-mountains-part-2": "horde-the-barrens-and-stonetalon-mountain.lua",
    "stonetalon-mountains-part-3": "horde-stonetalon-mountains.lua",
    "stonetalon-mountains-part-4": "horde-stonetalon-mountains.lua",
    "thousand-needles-part-1": "horde-thousand-needles.lua",
    "thousand-needles-part-2": "horde-thousand-needles.lua",
    "ashenvale-part-1": "alliance-ashenvale-and-stonetalon-mountains.lua",
    "ashenvale-part-2": "alliance-ashenvale-and-stonetalon-mountains.lua",
    "ashenvale-part-3": "horde-ashenvale.lua",
    "ashenvale-part-4": "horde-ashenvale-part-2.lua",
    "hillsbrad-foothills": "horde-hillsbrad-foothills.lua",
    "westfall": "alliance-westfall.lua",
    "darkshore-part-1": "alliance-darkshore.lua",
    "darkshore-part-2": "alliance-darkshore-part-2.lua",
    "darkshore-part-3": "alliance-darkshore-part-2.lua",
    "loch-modan": "alliance-loch-modan.lua",
    "redridge-mountains-part-1": "alliance-redridge-and-westfall.lua",
    "redridge-mountains-part-2": "alliance-duskwood-and-redridge-mountains.lua",
    "wetlands": "alliance-wetlands.lua",
    "duskwood": "alliance-duskwood-and-redridge-mountains.lua",
}

QUEST_ID = re.compile(r"(?:QuestState|QuestObjective)\((\d+)")


def forever_quest_ids(block: str) -> set[int]:
    return {int(m.group(1)) for m in QUEST_ID.finditer(block) if int(m.group(1)) >= 90000}


def extract_goal_blocks(text: str) -> list[tuple[str, str]]:
    """Extract top-level goal tables from a RegisterGuide goals list."""
    marker = "goals = {"
    start = text.find(marker)
    if start < 0:
        return []
    i = start + len(marker)
    out: list[tuple[str, str]] = []
    n = len(text)
    while i < n:
        while i < n and text[i] in " \t\r\n,":
            i += 1
        if i >= n or text[i] == "}":
            break
        if text[i] != "{":
            i += 1
            continue
        depth = 0
        j = i
        while j < n:
            ch = text[j]
            if ch == "{":
                depth += 1
            elif ch == "}":
                depth -= 1
                if depth == 0:
                    j += 1
                    break
            j += 1
        block = text[i:j].rstrip()
        if not block.endswith(","):
            block += ","
        gid_m = re.search(r'id = "([^"]+)"', block)
        if gid_m:
            out.append((gid_m.group(1), block))
        i = j
    return out


def extract_woven_blocks(path: Path) -> list[tuple[str, str]]:
    text = path.read_text(encoding="utf-8")
    blocks = extract_goal_blocks(text)
    forever_ids: set[int] = set()
    for _, block in blocks:
        forever_ids |= forever_quest_ids(block)
    if not forever_ids:
        return []
    # Include every step that touches a Forever quest id so accept chains keep
    # their turn-ins for ApplyQuestPrerequisites.
    out = []
    for gid, block in blocks:
        qids = {int(m.group(1)) for m in QUEST_ID.finditer(block)}
        if qids & forever_ids:
            out.append((gid, "        " + block.lstrip()))
    return out


def next_priority(text: str) -> int:
    prios = [int(x) for x in re.findall(r"priority = (\d+)", text)]
    return (max(prios) + 10) if prios else 10


MAP_NAME_TO_ID = {
    "DUROTAR": 1411,
    "MULGORE": 1412,
    "BARRENS": 1413,
    "THE_BARRENS": 1413,
    "TIRISFAL": 1420,
    "TIRISFAL_GLADES": 1420,
    "SILVERPINE": 1421,
    "SILVERPINE_FOREST": 1421,
    "STONETALON": 1442,
    "STONETALON_MOUNTAINS": 1442,
    "ASHENVALE": 1440,
    "HILLSBRAD": 1424,
    "HILLSBRAD_FOOTHILLS": 1424,
    "WESTFALL": 1436,
    "DARKSHORE": 1439,
    "LOCH_MODAN": 1432,
    "REDRIDGE": 1433,
    "REDRIDGE_MOUNTAINS": 1433,
    "WETLANDS": 1437,
    "DUSKWOOD": 1431,
    "ELWYNN": 1429,
    "ELWYNN_FOREST": 1429,
    "DUN_MOROGH": 1426,
    "TELDRASSIL": 1438,
    "ORGRIMMAR": 1454,
    "THUNDER_BLUFF": 1456,
    "UNDERCITY": 1458,
    "STORMWIND": 1453,
    "STORMWIND_CITY": 1453,
    "IRONFORGE": 1455,
    "DARNASSUS": 1457,
    "THOUSAND_NEEDLES": 1441,
}


def woven_goal_id(old_id: str) -> str:
    return "woven-" + re.sub(r"[^a-z0-9-]+", "-", old_id.lower()).strip("-")


def rewrite_depends(
    block: str,
    available_ids: set[str],
) -> str:
    """Keep dependsOn entries that resolve on the target spine (woven or native)."""

    def repl(match: re.Match[str]) -> str:
        body = match.group(1)
        kept: list[str] = []
        for dep in re.findall(r'"([^"]+)"', body):
            woven = woven_goal_id(dep)
            if woven in available_ids or dep in available_ids:
                kept.append(woven if woven in available_ids else dep)
            elif f'id = "{woven}"' in body:
                kept.append(woven)
        if not kept:
            return ""
        quoted = ", ".join(f'"{item}"' for item in kept)
        return f"\n            dependsOn = {{ {quoted} }},"

    return re.sub(r"\n\s*dependsOn = \{([^}]*)\},", repl, block)


def rewrite_block(
    block: str,
    new_id: str,
    priority: int,
    available_ids: set[str],
) -> str | None:
    # Skip profession / skill-gated woven steps that need extra locals.
    if re.search(r"\bSKILL\b|\bPROFESSION\b|\bSpell\b", block):
        return None
    block = re.sub(r'id = "[^"]+"', f'id = "{new_id}"', block, count=1)
    block = re.sub(r"priority = [\d.]+", f"priority = {priority}", block, count=1)
    block = rewrite_depends(block, available_ids | {new_id})

    def map_repl(match: re.Match[str]) -> str:
        key = match.group(1)
        mid = MAP_NAME_TO_ID.get(key)
        return str(mid) if mid is not None else match.group(0)

    block = re.sub(r"\bMAP\.([A-Z0-9_]+)\b", map_repl, block)
    if re.search(r"\bMAP\.[A-Z0-9_]+\b", block):
        return None
    return block


def append_woven(target: Path, blocks: list[tuple[str, str]]) -> int:
    if not target.exists() or not blocks:
        return 0
    text = target.read_text(encoding="utf-8")
    if re.search(r'routeMode\s*=\s*"ordered"', text):
        raise ValueError(f"Authored itinerary {target} requires an explicit insertion point; append weaving is retired.")
    existing_forever = set()
    for m in QUEST_ID.finditer(text):
        qid = int(m.group(1))
        if qid >= 90000:
            existing_forever.add(qid)
    available_ids = set(re.findall(r'id = "([^"]+)"', text))
    for old_id, _ in blocks:
        available_ids.add(woven_goal_id(old_id))
    priority = next_priority(text)
    added = []
    for old_id, block in blocks:
        qids = {int(m.group(1)) for m in QUEST_ID.finditer(block)}
        if not (qids & existing_forever) and not forever_quest_ids(block):
            # Block was selected as part of a Forever chain; keep it.
            if not qids:
                continue
        new_id = woven_goal_id(old_id)
        if f'id = "{new_id}"' in text:
            continue
        rewritten = rewrite_block(block, new_id, priority, available_ids)
        if not rewritten:
            continue
        added.append(rewritten)
        priority += 10
    if not added:
        return 0
    # Insert before closing of goals = { ... },
    marker = "\n    },\n})"
    idx = text.rfind(marker)
    if idx < 0:
        marker = "\n    },\n}\n)"
        idx = text.rfind("\n    },\n})")
    if idx < 0:
        raise SystemExit(f"cannot find goals close in {target}")
    insert = "\n".join(added)
    # Ensure trailing comma on previous last goal
    before = text[:idx].rstrip()
    if not before.endswith(","):
        before += ","
    text = before + "\n" + insert + text[idx:]
    # Header note
    if "Forever weaves ported" not in text:
        text = text.replace(
            "-- Forever weaves are applied in a separate pass.\n",
            "-- Forever weaves ported from prior Leveling chapters (quest id >= 90000).\n",
            1,
        )
    if re.search(r'routeMode\s*=\s*"ordered"', text):
        raise ValueError(f"Authored itinerary {target} requires an explicit insertion point; append weaving is retired.")
    target.write_text(text, encoding="utf-8")
    return len(added)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--old-dir",
        type=Path,
        default=Path("/tmp/fgm-old-leveling"),
        help="Directory of previous Guides/Leveling *.lua",
    )
    args = parser.parse_args()
    if not args.old_dir.is_dir():
        raise SystemExit(f"missing old leveling dir {args.old_dir}")

    totals: dict[str, int] = {}
    for old_name, new_rel in OLD_TO_NEW.items():
        old_path = args.old_dir / f"{old_name}.lua"
        if not old_path.exists():
            continue
        blocks = extract_woven_blocks(old_path)
        target = ROOT / "Guides" / "Leveling" / new_rel
        n = append_woven(target, blocks)
        if n:
            totals[new_rel] = totals.get(new_rel, 0) + n
            print(f"{old_name} -> {new_rel}: +{n} woven steps")
    print(f"ported into {len(totals)} guides, {sum(totals.values())} steps")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
