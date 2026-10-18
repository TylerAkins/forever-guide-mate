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
