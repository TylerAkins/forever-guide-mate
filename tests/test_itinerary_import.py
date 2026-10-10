"""Legacy conversion must preserve explicit objective and branch meaning."""
import importlib.util
import sys
import tempfile
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location('itinerary_import', ROOT / 'tools/import_classic_leveling.py')
importer = importlib.util.module_from_spec(spec)
sys.modules[spec.name] = importer
spec.loader.exec_module(importer)


class ItineraryImportTests(unittest.TestCase):
    def test_context_tags_do_not_become_objectives(self):
        for action in ('kill Mottled Boar##3098', 'collect Feather##4739', 'use Sapta##6635', 'click Altar##123'):
            with self.subTest(action=action):
                self.assertEqual(importer.parse_step(action + ' |q 4641\nClick to Continue |confirm', 'Horde', 1), [])
                self.assertEqual(importer.parse_step(action + '\n|q 4641/1', 'Horde', 1), [])

    def test_explicit_count_and_line_scoped_branches(self):
        parsed = importer.parse_step('talk Marshal McBride##197\naccept Simple Letter##3100 |only if Human Warrior\naccept Consecrated Letter##3101 |only if Human Paladin', 'Alliance', 1)
        self.assertEqual([(g.quest_id, g.classes, g.races) for g in parsed], [(3100, [1], [1]), (3101, [2], [1])])
        parsed = importer.parse_step('collect 2 Feather##4739 |q 747/1', 'Horde', 1)
        self.assertEqual((parsed[0].objective_index, parsed[0].count), (1, 2))
        self.assertNotIn(9, importer.parse_only('not Warlock', 'Horde')[0])

    def test_action_destination_overrides_entrance_waypoint(self):
        parsed = importer.parse_step(
            "Leave the tunnel |goto Tanaris 69.63,42.37\n"
            "talk J.D. Collie##9117\n"
            "turnin Aquementas##4005 |goto Un'Goro Crater/0 41.92,2.70",
            'Alliance', 58,
        )
        self.assertEqual(parsed[0].map_id, 1449)
        self.assertAlmostEqual(parsed[0].x, .4192)
        self.assertAlmostEqual(parsed[0].y, .027)

    def test_ordered_guides_cannot_be_overwritten(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            target = root / 'mulgore.lua'
            content = 'routeMode = "ordered"\n'
            target.write_text(content)
            guide = importer.ParsedGuide('Mulgore', 'Horde', 1, 'mulgore', True)
            with self.assertRaisesRegex(ValueError, 'legacy import is disabled'):
                importer.write_guides([guide], root, False)
            self.assertEqual(target.read_text(), content)
