#!/usr/bin/env python3
"""Every guide quest step uses the level the weave writes.

Classic quests use the offer level. A Forever quest from patch 16001 uses
the Wowhead Level line when that line is higher than Requires level.
"""

from __future__ import annotations

import json
import re
import sys
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "tools"))

from weave_loremaster import parse_goals  # noqa: E402

FIXTURE = ROOT / "tests" / "fixtures" / "quest_min_levels.json"
# Quests that appear in guides but intentionally have no fixture minimum.
UNLEVELED: set[int] = set()
LEVEL_RE = re.compile(r"level = \{\s*min = (\d+)\s*\}")


def guide_files() -> list[Path]:
    files = []
    for folder in ("Leveling", "Loremaster", "Dungeons"):
        files.extend(sorted((ROOT / "Guides" / folder).glob("*.lua")))
    return files


class QuestMinLevelTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.levels = {int(quest_id): level for quest_id, level in json.loads(FIXTURE.read_text()).items()}
        cls.goals = []
        for path in guide_files():
            text = path.read_text(encoding="utf-8")
            for goal in parse_goals(text, "guide", str(path.relative_to(ROOT)), None):
                if goal.quest_id is not None:
                    cls.goals.append(goal)

    def test_fixture_uses_offer_level_unless_a_new_quest_has_a_higher_level_line(self) -> None:
        self.assertEqual(self.levels[837], 6)
        self.assertEqual(self.levels[784], 3)
        self.assertEqual(self.levels[97225], 9)
        self.assertEqual(self.levels[96821], 6)
        self.assertEqual(self.levels[99142], 5)

    def test_every_database_quest_is_gated_at_its_minimum(self) -> None:
        seen = {goal.quest_id for goal in self.goals}
        self.assertEqual(seen - set(self.levels), UNLEVELED)
        missing = []
        for goal in self.goals:
            quest_id = goal.quest_id
            if quest_id in UNLEVELED:
                continue
            expected = self.levels[quest_id]
            found = [int(value) for value in LEVEL_RE.findall(goal.raw)]
            if expected <= 1:
                if found:
                    missing.append(f"{goal.source_file} {goal.id} still gates level {found[0]}")
            elif found != [expected]:
                missing.append(
                    f"{goal.source_file} {goal.id} expected level {expected}, found {found or 'none'}"
                )
        self.assertEqual(missing, [])


if __name__ == "__main__":
    unittest.main()
