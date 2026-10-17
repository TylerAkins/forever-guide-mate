import tempfile
import unittest
from pathlib import Path
from unittest.mock import patch

from tools import apply_quest_min_levels as stamping


class LevelStampingTests(unittest.TestCase):
    def test_default_analysis_does_not_write_guides(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            path = root / 'ordered.lua'
            original = '''ns:RegisterGuide({ routeMode = "ordered", goals = {
                { id = "combat", kind = "objective", text = "Fight",
                  conditions = { all = { { level = { min = 10 } } } },
                  complete = { quest = { id = 95981, state = "complete" } } }
            } })'''
            path.write_text(original)
            with (
                patch.object(stamping, 'ROOT', root),
                patch.object(stamping, 'guide_files', return_value=[path]),
            ):
                stamping.apply({95981: {'step': 20, 'offer': 10}})
            self.assertEqual(path.read_text(), original)

    def test_explicit_write_rejects_ordered_guides_before_any_file_changes(self):
        for route_mode in ('routeMode = "ordered"', "routeMode='ordered'"):
            with self.subTest(route_mode=route_mode), tempfile.TemporaryDirectory() as directory:
                root = Path(directory)
                legacy = root / 'legacy.lua'
                ordered = root / 'ordered.lua'
                original = '''ns:RegisterGuide({ goals = {
                    { id = "combat", kind = "objective", text = "Fight",
                      conditions = { all = { { level = { min = 10 } } } },
                      complete = { quest = { id = 95981, state = "complete" } } }
                } })'''
                legacy.write_text(original)
                ordered_text = original.replace('goals =', route_mode + ', goals =')
                ordered.write_text(ordered_text)
                with (
                    patch.object(stamping, 'ROOT', root),
                    patch.object(stamping, 'guide_files', return_value=[legacy, ordered]),
                ):
                    with self.assertRaisesRegex(ValueError, 'ordered'):
                        stamping.apply({95981: {'step': 20, 'offer': 10}}, write=True)
                self.assertEqual(legacy.read_text(), original)
                self.assertEqual(ordered.read_text(), ordered_text)

    def test_legacy_writes_remain_explicit_and_preserve_unrelated_text(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            path = root / 'legacy.lua'
            path.write_text('''-- Keep this instruction.
ns:RegisterGuide({ goals = {
    { id = "combat", kind = "objective", text = "Fight",
      conditions = { all = { { level = { min = 10 } } } },
      complete = { quest = { id = 95981, state = "complete" } } }
} })''')
            with (
                patch.object(stamping, 'ROOT', root),
                patch.object(stamping, 'guide_files', return_value=[path]),
            ):
                stamping.apply({95981: {'step': 20, 'offer': 10}}, write=True)
            self.assertIn('min = 20', path.read_text())
            self.assertTrue(path.read_text().startswith('-- Keep this instruction.'))

    def test_cli_preview_leaves_guides_and_test_expectations_unchanged(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            guide = root / 'legacy.lua'
            original = '''ns:RegisterGuide({ goals = {
                { id = "combat", kind = "objective", text = "Fight",
                  conditions = { all = { { level = { min = 10 } } } },
                  complete = { quest = { id = 95981, state = "complete" } } }
            } })'''
            guide.write_text(original)
            fixture = root / 'tests/fixtures/quest_min_levels.json'
            fixture.parent.mkdir(parents=True)
            fixture.write_text('{"reviewed": true}\n')
            with (
                patch.object(stamping, 'ROOT', root),
                patch.object(stamping, 'guide_files', return_value=[guide]),
                patch.object(stamping, 'load_min_levels', return_value={95981: {'step': 20, 'offer': 10}}),
                patch('sys.argv', ['apply_quest_min_levels.py', '--database', str(root)]),
            ):
                stamping.main()
            self.assertEqual(guide.read_text(), original)
            self.assertEqual(fixture.read_text(), '{"reviewed": true}\n')
