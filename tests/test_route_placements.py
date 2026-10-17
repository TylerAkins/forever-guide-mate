"""Keep higher-level additions within an authored, suitable zone visit."""
import json
import re
import sys
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / 'tools'))
from weave_loremaster import parse_goals


def goals(name):
    path = ROOT / 'Guides/Leveling' / (name + '.lua')
    return parse_goals(path.read_text(), 'guide', str(path), None)


class RoutePlacementTests(unittest.TestCase):
    def test_extra_quests_fit_the_reference_visit_level_band(self):
        bands = json.loads((ROOT / 'tests/fixtures/reference_bands.json').read_text())
        levels = json.loads((ROOT / 'tests/fixtures/quest_min_levels.json').read_text())
        reference = (ROOT / 'tests/fixtures/reference_itineraries.lua').read_text()
        chapters = re.findall(r'\["([^"\n]+)"\] = \{(.*?)\n    \}', reference, re.S)
        self.assertEqual(len(chapters), 84)
        self.assertEqual(set(bands), {chapter for chapter, _ in chapters})
        for chapter, actions in chapters:
            source_quests = {int(q) for q in re.findall(r'\{"[^"\n]+",(\d+),', actions)}
            filename = chapter.removeprefix('leveling-era-')
            for goal in goals(filename):
                quest = goal.quest_id
                if not quest or quest in source_quests or goal.classes or 'classAction' in goal.raw or 'woven-class-' in goal.id:
                    continue
                with self.subTest(chapter=chapter, action=goal.id):
                    self.assertLessEqual(levels[str(quest)]['step'], bands[chapter]['max'])


    def test_silverpine_additions_use_the_later_sepulcher_visit(self):
        early = goals('horde-silverpine-forest')
        later = goals('horde-hillsbrad-foothills')
        moved = {95981, 98298, 98299}
        self.assertFalse(moved & {g.quest_id for g in early})
        start = next(i for i, g in enumerate(later) if g.kind == 'accept' and g.quest_id == 493)
        end = next(i for i, g in enumerate(later) if g.kind == 'accept' and g.quest_id == 494)
        for quest in moved:
            actions = [(i, g.kind) for i, g in enumerate(later) if g.quest_id == quest]
            self.assertEqual([kind for _, kind in actions], ['accept', 'objective', 'turnin'])
            self.assertTrue(all(start < i < end for i, _ in actions))

    def test_additions_without_a_suitable_later_visit_are_omitted(self):
        for name, quests in {
            'alliance-duskwood-and-redridge-mountains': {96138},
            'horde-ashenvale': {97538},
            'horde-stonetalon-mountains': {97538},
            'alliance-westfall': {92747, 98407},
            'dun-morogh': {96391},
        }.items():
            with self.subTest(guide=name):
                self.assertFalse(quests & {g.quest_id for g in goals(name)})
        self.assertIn(98407, {g.quest_id for g in goals('alliance-redridge-and-westfall')})
