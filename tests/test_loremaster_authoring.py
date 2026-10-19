"""Source precedence and unsupported mechanics are explicit authoring boundaries."""
import sys
import unittest
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'tools'))


class SourcePolicyTests(unittest.TestCase):
    def facts(self, sources):
        import loremaster_sources
        return loremaster_sources.quest_facts(123, {'sourceData': {
            name: {'attributes': facts, 'revision': name} for name, facts in sources.items()}})

    def test_explicit_empty_wowhead_restrictions_win_over_other_sources(self):
        facts = self.facts({'wowhead': {'races': [], 'classes': [], 'requiredLevel': 10},
                            'questiedb': {'requiredRaces': [1], 'requiredClasses': [8], 'requiredLevel': 20}})
        self.assertEqual(facts['races'], [])
        self.assertEqual(facts['classes'], [])
        self.assertEqual(facts['offer'], 10)

    def test_predecessors_use_explicit_group_semantics_not_references(self):
        facts = self.facts({'wowhead': {'prerequisiteReferences': [99]},
                            'questiedb': {'preQuestGroup': [10, 11]}})
        self.assertEqual(facts['requirements'], [{'mode': 'all', 'quests': [10, 11]}])
        self.assertNotIn(99, facts['requirements'][0]['quests'])

    def test_signed_prerequisites_remain_unresolved(self):
        facts = self.facts({'questiedb': {'preQuestSingle': [-10]}})
        self.assertTrue(facts['unresolved'])
        self.assertEqual(facts['requirements'], [])

    def test_zero_offer_minimum_uses_next_positive_observation(self):
        facts = self.facts({'wowhead': {'requiredLevel': 0}, 'questiedb': {'requiredLevel': 12}})
        self.assertEqual(facts['offer'], 12)

    def test_unsupported_reputation_is_not_silently_ignored(self):
        facts = self.facts({'questiedb': {'requiredMinRep': [529, 3000]}})
        self.assertTrue(any('requiredMinRep' in reason for reason in facts['unresolved']))
        self.assertEqual(facts['evidence']['questiedb']['requiredMinRep'], [529, 3000])

    def test_conflicting_faction_and_races_remain_unresolved(self):
        facts = self.facts({'wowhead': {'faction': 'Alliance', 'races': [2, 6, 8]}})
        self.assertTrue(any('faction' in reason.lower() for reason in facts['unresolved']))

    def test_objective_omits_return_instruction(self):
        from author_zone_loremaster import build_actions
        facts = self.facts({'wowhead': {'name': 'Test', 'mapper': {'objectives': {'1': {'zone': 'Durotar', 'levels': [[
            {'point': 'start', 'coord': [10,20], 'name': 'First', 'id': 1},
            {'point': 'requirement', 'coord': [15,20], 'name': 'Target', 'id': 3},
            {'point': 'end', 'coord': [20,20], 'name': 'Second', 'id': 2}]]}}}},
            'questiedb': {'objectivesText': ['Defeat the target, then return to Second.']}})
        goal = next(g for g in build_actions(facts, 'Horde') if g['kind'] == 'objective')
        self.assertEqual(goal['text'], 'Defeat the target.')

    def test_source_item_without_wowhead_markup_is_preserved(self):
        facts = self.facts({'questiedb': {'sourceItemId': 2794}})
        self.assertEqual(facts['item'], {'id': 2794, 'name': None})
        self.assertEqual(facts['evidence']['questiedb']['sourceItemId'], 2794)

    def test_lua_keyword_keys_are_quoted(self):
        from loremaster_sources import lua
        self.assertIn('["not"]', lua({'not': {'profession': {'skillLineID': 333}}}))

    def test_profession_actions_use_engine_skill_line_contract(self):
        from author_zone_loremaster import build_actions
        facts = self.facts({'wowhead': {'name': 'Test', 'requiredLevel': 1,
             'mapper': {'objectives': {'1': {'zone': 'Durotar', 'levels': [[
                 {'point': 'start', 'coord': [10, 20], 'name': 'First', 'id': 1},
                 {'point': 'end', 'coord': [20, 20], 'name': 'Second', 'id': 2}]]}}}},
             'questiedb': {'requiredSkill': [333, 1]}})
        for goal in build_actions(facts, 'Horde'):
            profession = next(c['profession'] for c in goal['conditions']['all'] if 'profession' in c)
            self.assertEqual(profession, {'skillLineID': 333, 'minRank': 1})

    def test_restricted_ancestor_allows_completed_history_but_excludes_cold_entry(self):
        import shutil
        import subprocess
        from loremaster_sources import prerequisite_availability, lua
        runner = shutil.which('lua5.1')
        if not runner: self.skipTest('Lua 5.1 is required')
        parent = self.facts({'wowhead': {'races': [1], 'classes': []}})
        parent['id'] = 10
        child = self.facts({'questiedb': {'preQuestSingle': [10]}})
        condition = prerequisite_availability(123, {10: parent, 123: child})
        source = """local n={}; assert(loadfile('GuideEngine.lua'))('FGM',n)
local condition = %s
local s={raceID=2,classID=1,faction='Horde',level=60,quests={},completedQuests={},questLogKnown=true,questCompletionKnown=true}
assert(n.EvaluateCondition(condition,s)==false,'Restricted ancestor excludes cold entry')
s.completedQuests[10]=true
assert(n.EvaluateCondition(condition,s)==true,'Observed predecessor history allows midway entry')
""" % lua(condition)
        subprocess.run([runner,'-'],input=source,text=True,check=True,cwd=Path(__file__).resolve().parents[1])

class ZonePreparationTests(unittest.TestCase):
    def prepare(self, quests, source_goals=(), upstream_order=(), revision=None, registered=None):
        import gzip
        import json
        import tempfile
        from unittest.mock import patch
        import author_zone_loremaster as author
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        root = Path(self.temp.name)
        (root / 'data/forever/compiled/zones').mkdir(parents=True)
        (root / 'data/forever/compilation').mkdir(parents=True)
        (root / 'data/forever/compiled/zones/redridge-mountains.json').write_text(json.dumps({
            'zone': {'zoneId': 44}, 'quests': {str(q): {} for q in quests}}))
        (root / 'data/forever/compilation/manifest.json').write_text('{"compilationFormatVersion":2}')
        with gzip.open(root / 'data/forever/compilation/records.jsonl.gz', 'wt') as stream:
            for q, fields in quests.items():
                wh = {'name': f'Quest {q}', 'faction': 'Horde', 'races': [], 'classes': [],
                      'requiredLevel': 10, 'questLevel': 10, 'zoneId': 44,
                      'wowheadCatalog': {'list': {'firstseenpatch': 11302}},
                      'mapper': {'objectives': {'44': {'zone': 'Redridge Mountains', 'levels': [[
                          {'point': 'start', 'id': 1, 'name': 'First', 'coord': [10,20]},
                          {'point': 'end', 'id': 2, 'name': 'Second', 'coord': [20,20]}]]}}}}
                wh.update(fields.pop('wowhead', {}))
                attrs = {'sourceData': {'wowhead': {'attributes': wh, 'revision': 'wh'},
                                       'questiedb': {'attributes': fields, 'revision': 'qd'}}}
                stream.write(json.dumps({'entityType': 'quest', 'entityId': str(q), 'attributes': attrs})+'\n')
        snapshot = {'guides': [{'id': 'leveling-source', 'category': 'Leveling Quest Guides',
                    'conditions': {'faction': 'Horde'}, 'goals': list(source_goals)}], 'prerequisites': registered or {}}
        spec = {'zone': 'Redridge Mountains', 'slug': 'redridge-mountains', 'file': 'Guides/Loremaster/RedridgeMountains.lua'}
        with patch.object(author, 'ROOT', root), patch.object(author.subprocess, 'check_output', return_value=revision or author.UPSTREAM_COMMIT), patch.object(author.subprocess, 'run'), patch.object(author, 'upstream_actions', return_value=(list(upstream_order), {})):
            text, audit = author.prepare(spec, root, root, snapshot)
        return text, audit

    def test_any_prerequisite_does_not_become_all_completion_dependencies(self):
        text, audit = self.prepare({10: {}, 11: {}, 12: {'preQuestSingle': [10, 11]}})
        from weave_loremaster import parse_goals, goal_field
        accept = next(g for g in parse_goals(text, '', '', None) if g.quest_id == 12 and g.kind == 'accept')
        self.assertIn('mode = "any"', goal_field(accept.raw, 'requiredQuests'))
        self.assertTrue(all('level' in dependency for dependency in accept.depends))

    def test_excluded_zone_prerequisite_blocks_candidate_without_importing_it(self):
        text, audit = self.prepare({10: {'wowhead': {'mapper': {'objectives': {'1': {'zone': 'Mount Hyjal', 'levels': [[{'point': 'start', 'name': 'Forbidden', 'coord': [1,2]}]]}}}}}, 12: {'preQuestSingle': [10]}})
        self.assertIsNone(text)
        self.assertEqual(audit['quests']['12']['status'], 'unresolved')
        self.assertEqual(audit['quests']['10']['status'], 'unresolved')

    def test_unavailable_conditional_prerequisite_only_excludes_its_applicable_branch(self):
        import shutil
        import subprocess
        from weave_loremaster import parse_goals
        quests = {10: {'wowhead': {'mapper': {'objectives': {'1': {'zone': 'Mount Hyjal', 'levels': [[{'point': 'start', 'name': 'Forbidden', 'coord': [1,2]}]]}}}}}, 12: {}}
        text, audit = self.prepare(quests, registered={'12': [{'mode':'all','quests':[10],'conditions':{'class':8}}]})
        self.assertEqual(audit['quests']['12']['status'], 'included')
        goal = next(g for g in parse_goals(text, '', '', None) if g.quest_id == 12 and g.kind == 'accept')
        runner = shutil.which('lua5.1')
        if not runner: self.skipTest('Lua 5.1 is required')
        source = """local n={}; assert(loadfile('GuideEngine.lua'))('FGM',n); assert(loadfile('OrderedRoutes.lua'))('FGM',n)
local goal = %s
local s={raceID=2,classID=1,faction='Horde',level=60,quests={},completedQuests={},questLogKnown=true,questCompletionKnown=true}
assert(not n.OrderedRoutes:ExcludedAction(goal,s),'Unrelated class remains eligible')
s.classID=8
assert(n.OrderedRoutes:ExcludedAction(goal,s),'Missing applicable predecessor excludes cold entry')
s.completedQuests[10]=true
assert(not n.OrderedRoutes:ExcludedAction(goal,s),'Observed history restores midway entry')
""" % goal.raw
        subprocess.run([runner,'-'],input=source,text=True,check=True,cwd=Path(__file__).resolve().parents[1])

    def test_mismatched_upstream_revision_is_rejected(self):
        with self.assertRaisesRegex(ValueError, 'Expected upstream'):
            self.prepare({}, revision='different')


if __name__ == '__main__':
    unittest.main()
