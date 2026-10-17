#!/usr/bin/env python3
"""Every quest action meets its source-backed minimum level.

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

from weave_loremaster import goal_field, parse_goals  # noqa: E402

FIXTURE = ROOT / "tests" / "fixtures" / "quest_min_levels.json"
# These two records are absent from the partial source snapshot. Preserve their
# previous gates until the scrape supplies levels; do not infer offer levels.
UNVERIFIED = {95737, 96774}
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
                if goal.quest_id is not None and goal.kind in {"accept", "objective", "turnin", "gossip"}:
                    cls.goals.append(goal)

    def test_fixture_uses_offer_level_unless_a_new_quest_has_a_higher_level_line(self) -> None:
        self.assertEqual(self.levels[837]["step"], 6)
        self.assertEqual(self.levels[784]["step"], 3)
        self.assertEqual(self.levels[97225]["step"], 9)
        self.assertEqual(self.levels[96821]["step"], 6)
        self.assertEqual(self.levels[99142]["step"], 5)

    def test_watching_the_roads_preserves_offer_and_recommended_levels(self) -> None:
        self.assertEqual(self.levels[95981], {"step": 20, "offer": 10})

    def test_every_quest_action_meets_its_level_floor(self) -> None:
        seen = {goal.quest_id for goal in self.goals}
        self.assertTrue(self.goals, "Level audit must parse quest actions from current guides")
        self.assertEqual(seen, set(self.levels))
        self.assertEqual({q for q, record in self.levels.items() if record.get("unverified")}, UNVERIFIED)
        missing = []
        for goal in self.goals:
            record = self.levels[goal.quest_id]
            expected = record["step"]
            if goal.source_file.startswith("Guides/Dungeons/"):
                expected = record["offer"] or expected
            found = [int(value) for value in LEVEL_RE.findall(goal_field(goal.raw, "conditions") or "")]
            actual = max(found, default=1)
            if actual < expected:
                missing.append(f"{goal.source_file} {goal.id} needs at least {expected}, found {actual}")
        self.assertEqual(len(missing), 0, f"{len(missing)} quest actions are below their level floor:\n" + "\n".join(missing[:20]))


if __name__ == "__main__":
    unittest.main()
