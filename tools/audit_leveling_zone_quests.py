#!/usr/bin/env python3
"""Report Forever zone quests missing from loaded leveling guides.

Compares Wowhead Forever zone lists to quest IDs in Guides/Leveling/*.lua.
Dungeon quests and INTENTIONAL_OMISSIONS are excluded. This is a review aid,
not a CI gate.
"""

from __future__ import annotations

import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "tools"))

from weave_loremaster import (  # noqa: E402
    INTENTIONAL_OMISSIONS,
    dungeon_quest_ids,
    parse_goals,
    recommended_level,
    zone_quest_summaries,
)

# Leveling chapter → Wowhead zone list (one or more URLs) and level band from filename.
CHAPTERS: list[dict] = [
    {
        "file": "Guides/Leveling/durotar.lua",
        "urls": ["https://www.wowhead.com/forever/quests/kalimdor/durotar"],
        "level_max": 12,
    },
    {
        "file": "Guides/Leveling/mulgore.lua",
        "urls": ["https://www.wowhead.com/forever/quests/kalimdor/mulgore"],
        "level_max": 12,
    },
    {
        "file": "Guides/Leveling/tirisfal-glades.lua",
        "urls": ["https://www.wowhead.com/forever/quests/eastern-kingdoms/tirisfal-glades"],
        "level_max": 12,
    },
    {
        "file": "Guides/Leveling/dun-morogh.lua",
        "urls": ["https://www.wowhead.com/forever/quests/eastern-kingdoms/dun-morogh"],
        "level_max": 12,
    },
    {
        "file": "Guides/Leveling/elwynn-forest.lua",
        "urls": ["https://www.wowhead.com/forever/quests/eastern-kingdoms/elwynn-forest"],
        "level_max": 12,
    },
    {
        "file": "Guides/Leveling/teldrassil.lua",
        "urls": ["https://www.wowhead.com/forever/quests/kalimdor/teldrassil"],
        "level_max": 12,
    },
    {
        "file": "Guides/Leveling/zephras-isle.lua",
        "urls": ["https://www.wowhead.com/forever/quests/kalimdor/zephras-isle"],
        "level_max": 14,
    },
    {
        "file": "Guides/Leveling/the-barrens-part-1.lua",
        "urls": ["https://www.wowhead.com/forever/quests/kalimdor/the-barrens"],
        "level_max": 20,
    },
    {
        "file": "Guides/Leveling/the-barrens-part-2.lua",
        "urls": ["https://www.wowhead.com/forever/quests/kalimdor/the-barrens"],
        "level_max": 23,
    },
    {
        "file": "Guides/Leveling/silverpine-forest.lua",
        "urls": ["https://www.wowhead.com/forever/quests/eastern-kingdoms/silverpine-forest"],
        "level_max": 20,
    },
    {
        "file": "Guides/Leveling/westfall.lua",
        "urls": ["https://www.wowhead.com/forever/quests/eastern-kingdoms/westfall"],
        "level_max": 17,
    },
    {
        "file": "Guides/Leveling/darkshore-part-1.lua",
        "urls": ["https://www.wowhead.com/forever/quests/kalimdor/darkshore"],
        "level_max": 17,
    },
    {
        "file": "Guides/Leveling/darkshore-part-2.lua",
        "urls": ["https://www.wowhead.com/forever/quests/kalimdor/darkshore"],
        "level_max": 21,
    },
    {
        "file": "Guides/Leveling/darkshore-part-3.lua",
        "urls": ["https://www.wowhead.com/forever/quests/kalimdor/darkshore"],
        "level_max": 24,
    },
    {
        "file": "Guides/Leveling/loch-modan.lua",
        "urls": ["https://www.wowhead.com/forever/quests/eastern-kingdoms/loch-modan"],
        "level_max": 18,
    },
    {
        "file": "Guides/Leveling/redridge-mountains-part-1.lua",
        "urls": ["https://www.wowhead.com/forever/quests/eastern-kingdoms/redridge-mountains"],
        "level_max": 20,
    },
    {
        "file": "Guides/Leveling/redridge-mountains-part-2.lua",
        "urls": ["https://www.wowhead.com/forever/quests/eastern-kingdoms/redridge-mountains"],
        "level_max": 28,
    },
    {
        "file": "Guides/Leveling/ashenvale.lua",
        "urls": ["https://www.wowhead.com/forever/quests/kalimdor/ashenvale"],
        "level_max": 22,
    },
    {
        "file": "Guides/Leveling/stonetalon-mountains-part-1.lua",
        "urls": ["https://www.wowhead.com/forever/quests/kalimdor/stonetalon-mountains"],
        "level_max": 22,
    },
    {
        "file": "Guides/Leveling/stonetalon-mountains-part-2.lua",
        "urls": ["https://www.wowhead.com/forever/quests/kalimdor/stonetalon-mountains"],
        "level_max": 23,
    },
    {
        "file": "Guides/Leveling/stonetalon-mountains-part-3.lua",
        "urls": ["https://www.wowhead.com/forever/quests/kalimdor/stonetalon-mountains"],
        "level_max": 25,
    },
    {
        "file": "Guides/Leveling/duskwood.lua",
        "urls": ["https://www.wowhead.com/forever/quests/eastern-kingdoms/duskwood"],
        "level_max": 29,
    },
]


def quest_ids_in_file(relative: str) -> set[int]:
    text = (ROOT / relative).read_text(encoding="utf-8")
    return {goal.quest_id for goal in parse_goals(text, "guide", relative, None) if goal.quest_id}


def main() -> int:
    dungeons = dungeon_quest_ids()
    skip = dungeons | INTENTIONAL_OMISSIONS
    missing_by_chapter: dict[str, list[str]] = {}

    for chapter in CHAPTERS:
        present = quest_ids_in_file(chapter["file"])
        level_max = chapter["level_max"]
        seen_ids: set[int] = set()
        for url in chapter["urls"]:
            for summary in zone_quest_summaries(url):
                quest_id = int(summary["id"])
                if quest_id in seen_ids:
                    continue
                seen_ids.add(quest_id)
                if summary.get("firstseenpatch") != 16001:
                    continue
                if quest_id in present or quest_id in skip:
                    continue
                name = summary.get("name") or f"Quest {quest_id}"
                if "unused" in name.lower() or name.strip() in {"Welcome!", "<UNUSED>"}:
                    continue
                level = recommended_level(summary)
                if level > level_max + 2:
                    continue
                missing_by_chapter.setdefault(chapter["file"], []).append(
                    f"{name} ({quest_id}, level {level})"
                )

    for path, items in sorted(missing_by_chapter.items()):
        if not items:
            continue
        print(f"\n{path}:")
        for line in sorted(items):
            print(f"  - {line}")

    if not any(missing_by_chapter.values()):
        print("No missing Forever zone quests in configured level bands.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
