import json
import shutil
import subprocess
import sys
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
LUA = shutil.which('lua5.1')


@unittest.skipUnless(LUA, 'Lua 5.1 is required for the runtime coverage report')
class LoremasterReportTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        result = subprocess.run([sys.executable, 'tools/loremaster_report.py', '--lua', LUA],
                                cwd=ROOT, capture_output=True, text=True, check=True)
        cls.report = json.loads(result.stdout)

    def test_visitor_and_profession_views_use_registered_restrictions(self):
        profiles = self.report['zephras-isle']['profiles']
        for name in ['Undead Paladin', 'Tauren Druid']:
            visitor = profiles[name]
            self.assertIn(92514, visitor['levelingQuests'])
            self.assertIn(92514, visitor['loremasterQuests'])
            self.assertNotIn(94493, visitor['loremasterQuests'])
            self.assertNotIn(98284, visitor['loremasterQuests'])
            self.assertIn(98284, profiles[name + ' professions']['loremasterQuests'])

    def test_equal_counts_do_not_hide_changed_sets(self):
        profile = self.report['mulgore']['profiles']['Tauren Druid']
        self.assertEqual(profile['leveling'], profile['loremaster'])
        self.assertIn(99196, profile['added'])
        self.assertIn(76156, profile['omitted'])
        self.assertNotIn(95041, self.report['dun-morogh']['supporting'])
