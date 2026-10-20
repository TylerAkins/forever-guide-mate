"""Advisory ordering must preserve the authored spine and verified chains."""
import sys
import unittest
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'tools'))


class AdvisoryOrderingTests(unittest.TestCase):
    def ordering(self):
        import loremaster_ordering
        return loremaster_ordering

    def test_upstream_places_extra_actions_between_existing_visits(self):
        result = self.ordering().weave(['a', 'b'], ['x', 'y'], ['a', 'x', 'y', 'b'], {})
        self.assertEqual(result, ['a', 'x', 'y', 'b'])

    def test_upstream_cannot_reverse_casual_or_verified_dependencies(self):
        result = self.ordering().weave(['a', 'b'], ['x'], ['b', 'x', 'a'], {'x': ['b']})
        self.assertEqual(result, ['a', 'b', 'x'])

    def test_missing_upstream_actions_remain_in_the_route(self):
        result = self.ordering().weave(['a', 'b'], ['x'], [], {'x': ['a'], 'b': ['x']})
        self.assertEqual(result, ['a', 'x', 'b'])

    def test_unresolvable_prerequisite_cycle_is_reported(self):
        with self.assertRaisesRegex(ValueError, 'cycle'):
            self.ordering().weave(['a', 'b'], ['x'], [], {'x': ['b'], 'a': ['x']})

    def test_old_format_parser_extracts_actions_without_executing_lua(self):
        source = '''ZygorGuidesViewer:RegisterGuide("Ding80\\\\Loremaster\\\\Darkshore",[[
step
..accept Test##123
.kill 3 Enemy##456 |q 123/1
step
..turnin Test##123
]])'''
        actions = self.ordering().parse_upstream(source, 'Alliance', 'guide.lua')
        self.assertEqual([(a['kind'], a['quest']) for a in actions],
                         [('accept', 123), ('objective', 123), ('turnin', 123)])
        self.assertTrue(all(a['faction'] == 'Alliance' for a in actions))
        self.assertIn('Darkshore', actions[0]['chapter'])


if __name__ == '__main__':
    unittest.main()
