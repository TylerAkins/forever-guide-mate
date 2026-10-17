import json
import tempfile
import unittest
from pathlib import Path

from tools.quest_database import load_min_levels


class QuestLevelSourceTests(unittest.TestCase):
    def test_partial_exports_preserve_recommendations_and_fill_missing_quests(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            index = root / 'index.json'
            index.write_text(json.dumps({
                '95981': {'id': 95981, 'minLevel': 10, 'list': {
                    'level': 20, 'reqlevel': 10, 'firstseenpatch': 16001}},
                '96821': {'id': 96821, 'minLevel': 1, 'list': {
                    'level': 6, 'reqlevel': 1, 'firstseenpatch': 16001}},
            }))
            export = root / 'export/forever/quests'
            export.mkdir(parents=True)
            (export / '0001.json').write_text(json.dumps({'quests': {
                '95981': {'id': 95981, 'requiredLevel': 10},
                '96821': {'id': 96821, 'questLevel': 0, 'requiredLevel': -1},
                '99411': {'id': 99411, 'requiredLevel': 5},
            }}))
            levels = load_min_levels(index, root)
            self.assertEqual(levels[95981], {'step': 20, 'offer': 10})
            self.assertEqual(levels[96821], {'step': 6, 'offer': 1})
            self.assertEqual(levels[99411], {'step': 5, 'offer': 5})

    def test_path_audit_and_level_loader_use_the_same_partial_sources(self):
        from tools.audit_quest_paths import load_quest_records
        from tools.weave_loremaster import step_level

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            index = root / 'data/forever/raw/quest_index.json'
            index.parent.mkdir(parents=True)
            index.write_text(json.dumps({'95981': {
                'id': 95981, 'minLevel': 10,
                'list': {'level': 20, 'reqlevel': 10, 'firstseenpatch': 16001},
            }}))
            export = root / 'export/forever/quests'
            export.mkdir(parents=True)
            (export / '0001.json').write_text(json.dumps({'quests': {
                '95981': {'id': 95981, 'requiredLevel': 10},
            }}))
            audited = load_quest_records(root)
            self.assertEqual(step_level(audited[95981]), 20)
            self.assertEqual(load_min_levels(index, root)[95981]['step'], 20)

    def test_export_chain_replaces_old_chain_but_preserves_navigation_and_levels(self):
        from tools.audit_quest_paths import Requirement, requirement_from_record
        from tools.quest_database import load_quest_records
        from tools.weave_loremaster import step_level

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            compiled = root / 'data/forever/compiled/zones'
            compiled.mkdir(parents=True)
            (compiled / 'silverpine.json').write_text(json.dumps({'quests': {'95981': {
                'index': {'list': {'level': 20, 'reqlevel': 10, 'firstseenpatch': 16001}},
                'detail': {'startPins': [{'mapID': 1421}],
                           'requirements': {'allOf': [99]},
                           'questie': {'fields': {'preQuestGroup': [99]}}},
            }}}))
            export = root / 'export/forever/quests'
            export.mkdir(parents=True)
            (export / '0001.json').write_text(json.dumps({'quests': {'95981': {
                'id': 95981, 'requiredLevel': 10, 'preQuestSingle': [479],
            }}}))
            record = load_quest_records(root)[95981]
            self.assertEqual(requirement_from_record(record), Requirement('any', [479]))
            self.assertEqual(step_level(record), 20)
            self.assertEqual(record['detail']['startPins'], [{'mapID': 1421}])

    def test_explicit_index_does_not_load_an_unrequested_sibling_database(self):
        from unittest.mock import patch
        from tools import quest_database

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            index = root / 'fixed-index.json'
            index.write_text(json.dumps({'99': {'id': 99, 'minLevel': 9}}))
            export = root / 'workspace/wow-database/export/forever/quests'
            export.mkdir(parents=True)
            (export / '0001.json').write_text(json.dumps({'quests': {
                '99411': {'id': 99411, 'requiredLevel': 5},
            }}))
            with patch.object(quest_database, '__file__', str(root / 'workspace/addon/tools/quest_database.py')):
                self.assertEqual(load_min_levels(index_path=index), {99: {'step': 9, 'offer': 9}})
