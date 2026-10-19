"""Verify reviewed zone coverage without a developer's database checkout."""
import json
import re
import sys
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / 'tools'))
from weave_loremaster import parse_goals


class LoremasterSources(unittest.TestCase):
    def test_every_catalog_candidate_has_a_reviewed_disposition(self):
        audits = sorted((ROOT / 'docs/loremaster').glob('*.json'))
        self.assertTrue(audits)
        for path in audits:
            audit = json.loads(path.read_text())
            self.assertEqual(audit['sourcePriority'], ['wowhead', 'questiedb', 'allthethings', 'foreverclient'])
            self.assertTrue(audit['sources']['sourceHashes'])
            self.assertEqual(audit['sources']['compilation']['compilationFormatVersion'], 2)
            guide = next(p for p in (ROOT / 'Guides/Loremaster').glob('*.lua')
                         if f'id = "{audit["guide"]}"' in p.read_text())
            goals = parse_goals(guide.read_text(), 'guide', str(guide), None)
            actions = {g.id for g in goals}
            indices = {g.id: i for i, g in enumerate(goals)}
            if audit.get('upstream'):
                pickups = {g.quest_id for g in goals if g.kind == 'accept'}
                self.assertLessEqual(set(audit.get('supportingQuests', [])), pickups)

            self.assertEqual(sorted(audit['spineActions'], key=indices.__getitem__), audit['spineActions'])
            for visit in audit['placements']:
                self.assertIn(visit['anchor'], actions)
                self.assertTrue(set(visit['actions']) <= actions)
                self.assertTrue(visit['reason'])
            for quest, entry in audit['quests'].items():
                with self.subTest(zone=path.stem, quest=quest):
                    self.assertIn(entry['status'], {'spine', 'included', 'excluded', 'other-zone', 'unresolved'})
                    self.assertTrue(entry['reason'])
                    authored = {g.kind for g in goals if g.quest_id == int(quest)}
                    if entry['status'] == 'included':
                        self.assertTrue({'accept', 'turnin'} <= authored)
                        self.assertTrue(entry['evidence'])
                    elif entry['status'] in {'excluded', 'other-zone', 'unresolved'}:
                        self.assertFalse(authored)

    def test_expanded_return_levels_use_suitable_spine_visits(self):
        bands = json.loads((ROOT / 'tests/fixtures/reference_bands.json').read_text())
        for path in (ROOT / 'Guides/Loremaster').glob('*.lua'):
            text = path.read_text()
            if 'loremasterExpanded = true' not in text:
                continue
            goals = parse_goals(text, '', str(path), None)
            sources = []
            for i, goal in enumerate(goals):
                source = re.search(r'sourceGuide = "([^"\n]+)"', goal.raw)
                if source and source[1] in bands:
                    sources.append((i, bands[source[1]]['max']))
            for i, goal in enumerate(goals):
                if '-extra-' not in goal.id or not goal.id.endswith('-level'):
                    continue
                level = int(re.search(r'requiredLevel = (\d+)', goal.raw)[1])
                suitable = [position for position, maximum in sources if maximum >= level]
                if suitable:
                    self.assertTrue(any(position < i for position in suitable),
                                    f'{path.name}: {goal.id} precedes its recommended visit band')
                elif sources:
                    self.assertGreater(i, max(position for position, _ in sources),
                                       f'{path.name}: {goal.id} needs a later return after the spine')

    def test_faction_order_check_detects_a_real_same_faction_inversion(self):
        import shutil
        import subprocess
        runner = shutil.which('lua5.1')
        if not runner: self.skipTest('Lua 5.1 is required')
        source = (ROOT / 'tests/lua/loremaster_zones.lua').read_text()
        mutation = """local goals=ns.guides['loremaster-arathi-highlands'].goals
local objective, target
for i,g in ipairs(goals) do if g.id=='horde-extra-652-objective' then objective=table.remove(goals,i);break end end
assert(objective)
for i,g in ipairs(goals) do if g.id=='horde-extra-652-turnin' then target=i end end
table.insert(goals,target+1,objective)
"""
        source = source.replace("local serialize =", mutation + "local serialize =", 1)
        result = subprocess.run([runner, '-'], input=source, text=True, capture_output=True, cwd=ROOT)
        self.assertNotEqual(result.returncode, 0)
        self.assertIn('completes objectives before returning: horde-extra-652-objective', result.stderr)

    def test_dun_morogh_ownership_and_prerequisite_evidence(self):
        audit = json.loads((ROOT / 'docs/loremaster/dun-morogh.json').read_text())
        quests = audit['quests']
        self.assertEqual(quests['95041']['evidence']['wowhead']['prerequisiteReferences'], [412])
        self.assertEqual(quests['95041']['status'], 'included')
        self.assertEqual(quests['466']['status'], 'other-zone')
        self.assertEqual(quests['467']['status'], 'other-zone')
        self.assertEqual(quests['98423']['status'], 'excluded')
        self.assertTrue(any(q['status'] == 'other-zone' and q['catalogs'] == ['ironforge']
                            for q in quests.values()))

    def test_stormwind_pickup_does_not_assign_arathi_work_to_elwynn(self):
        audit = json.loads((ROOT / 'docs/loremaster/elwynn-forest.json').read_text())
        malin = audit['quests']['690']
        self.assertEqual(malin['status'], 'other-zone')
        self.assertIn('Arathi Highlands', malin['evidence']['questiedb']['objectivesText'][0])
        self.assertTrue(any(p['areaID'] == 1519 for p in malin['locations']['start']))


if __name__ == '__main__':
    unittest.main()
