import unittest

from tools.weave_loremaster import (
    Goal,
    fit_priorities,
    insert_quest,
    parse_goals,
    place_woven,
    recommended_level,
    set_min_level,
)


def step(ident, quest_id, kind="accept", text="", priority=0, depends=None, raw=None):
    body = raw or (
        '{\n            id = "%s",\n            kind = "%s",\n            priority = %d,\n            text = "%s",\n        }'
        % (ident, kind, priority, text)
    )
    return Goal(
        raw=body,
        id=ident,
        kind=kind,
        priority=priority,
        quest_id=quest_id,
        text=text,
        labels=[],
        depends=depends or [],
        origin="test",
    )


class RecommendedLevelTests(unittest.TestCase):
    def test_level_wins_over_start_level(self):
        self.assertEqual(recommended_level({"level": 20, "reqlevel": 15}), 20)

    def test_start_level_is_only_a_fallback(self):
        self.assertEqual(recommended_level({"reqlevel": 15}), 15)

    def test_page_level_line(self):
        html = "[li]Level: 20[/li][li]Requires level 15[/li]"
        self.assertEqual(recommended_level(html=html), 20)


class InsertQuestTests(unittest.TestCase):
    def test_early_giver_does_not_take_a_higher_recommended_quest(self):
        poster = step("accept-poster", 895, text="Accept WANTED: Baron Longshore from The Poster.", priority=10)
        later = step("accept-later", 900, text="Accept The Missing Shipment from Gazlowe.", priority=20)
        bruuz = step("accept-bruuz", 92706, text="Accept WANTED: Bruuz from The Poster.", priority=1)
        levels = {895: 16, 900: 20, 92706: 20}
        placed = insert_quest([poster, later], [bruuz], levels)
        self.assertEqual([goal.id for goal in placed], ["accept-poster", "accept-bruuz", "accept-later"])

    def test_same_giver_at_the_recommended_level_still_groups(self):
        early = step("accept-early", 100, text="Accept Something from Gazlowe.", priority=10)
        visit = step("accept-visit", 200, text="Accept Another from Gazlowe.", priority=20)
        extra = step("accept-extra", 300, text="Accept Extra from Gazlowe.", priority=1)
        levels = {100: 12, 200: 20, 300: 20}
        placed = insert_quest([early, visit], [extra], levels)
        self.assertEqual([goal.id for goal in placed], ["accept-early", "accept-visit", "accept-extra"])

    def test_series_follow_up_stays_on_its_turn_in(self):
        turnin = step("turnin-parent", 1, kind="turnin", text="Turn in Parent to Gazlowe.", priority=10)
        later = step("accept-later", 2, text="Accept Later from Gazlowe.", priority=20)
        follow = step(
            "accept-follow",
            3,
            text="Accept Follow from Gazlowe.",
            depends=["turnin-parent"],
            priority=1,
        )
        levels = {1: 12, 2: 20, 3: 20}
        placed = insert_quest([turnin, later], [follow], levels)
        self.assertEqual([goal.id for goal in placed], ["turnin-parent", "accept-follow", "accept-later"])


class PlaceWovenTests(unittest.TestCase):
    def test_early_quest_moves_and_uses_recommended_level(self):
        poster = step("accept-poster", 895, text="Accept WANTED: Baron Longshore from the poster.", priority=100)
        bruuz = step(
            "accept-bruuz",
            92706,
            text="Accept WANTED: Bruuz from the poster.",
            priority=110,
            raw=(
                '{\n            id = "accept-bruuz",\n            kind = "accept",\n'
                "            priority = 110,\n            conditions = { level = { min = 15 } },\n"
                '            text = "Accept WANTED: Bruuz from the poster.",\n        }'
            ),
        )
        later = step("accept-later", 900, text="Accept Later work from Gazlowe.", priority=200)
        levels = {895: 16, 900: 20, 92706: 20}
        placed = place_woven([poster, bruuz, later], {92706}, levels)
        self.assertEqual([goal.id for goal in placed], ["accept-poster", "accept-bruuz", "accept-later"])
        self.assertIn("level = { min = 20 }", placed[1].raw)
        self.assertGreater(placed[1].priority, poster.priority)
        self.assertLess(placed[1].priority, later.priority)

    def test_spine_quest_is_left_in_place(self):
        poster = step(
            "accept-poster",
            895,
            text="Accept WANTED: Baron Longshore from the poster.",
            priority=100,
            raw=(
                '{\n            id = "accept-poster",\n            kind = "accept",\n'
                "            priority = 100,\n            conditions = { level = { min = 11 } },\n"
                '            text = "Accept WANTED: Baron Longshore from the poster.",\n        }'
            ),
        )
        placed = place_woven([poster], set(), {895: 16})
        self.assertEqual(placed[0].id, "accept-poster")
        self.assertIn("level = { min = 11 }", placed[0].raw)


class ChapterCeilingTests(unittest.TestCase):
    def test_a_spine_rating_above_the_chapter_does_not_count(self):
        opener = step(
            "accept-harpies",
            6282,
            text="Accept Harpies Threaten from Maggran Earthbinder.",
            priority=50,
        )
        trinkets = step(
            "accept-trinkets",
            86576,
            text="Accept Bloodfury Trinkets from Maggran Earthbinder.",
            priority=51,
        )
        later = step("accept-later", 6393, text="Accept Elemental War from Tsunaman.", priority=200)
        levels = {6282: 26, 86576: 26, 6393: 25}
        placed = place_woven([opener, trinkets, later], {86576}, levels, ceiling=25)
        self.assertEqual([goal.id for goal in placed], ["accept-harpies", "accept-later", "accept-trinkets"])
        self.assertIn("level = { min = 26 }", placed[-1].raw)

    def test_a_second_pass_does_not_reorder_quests_already_at_the_stop(self):
        opener = step("accept-opener", 100, text="Accept First from Gazlowe.", priority=10)
        low = step("accept-low", 200, text="Accept Low from Gazlowe.", priority=20)
        high = step("accept-high", 300, text="Accept High from Gazlowe.", priority=21)
        later = step("accept-later", 400, text="Accept Later from Gazlowe.", priority=30)
        levels = {100: 12, 200: 20, 300: 21, 400: 21}
        once = place_woven([opener, low, high, later], {200, 300}, levels)
        twice = place_woven(once, {200, 300}, levels)
        self.assertEqual([goal.id for goal in twice], [goal.id for goal in once])

    def test_the_same_rating_keeps_the_quest_when_the_chapter_reaches_it(self):
        opener = step(
            "accept-harpies",
            6282,
            text="Accept Harpies Threaten from Maggran Earthbinder.",
            priority=50,
        )
        trinkets = step(
            "accept-trinkets",
            86576,
            text="Accept Bloodfury Trinkets from Maggran Earthbinder.",
            priority=51,
        )
        levels = {6282: 26, 86576: 26}
        placed = place_woven([opener, trinkets], {86576}, levels, ceiling=26)
        self.assertEqual([goal.id for goal in placed], ["accept-harpies", "accept-trinkets"])


class PriorityTests(unittest.TestCase):
    def test_fractional_priority_survives_parsing(self):
        text = """
        ns:RegisterGuide({
            goals = {
                {
                    id = "objective-cold",
                    kind = "objective",
                    priority = 781.5,
                    text = "Collect the rifles.",
                },
            },
        })
        """
        goals = parse_goals(text, "guide", "Guides/Leveling/1-12-dun-morogh.lua", None)
        self.assertEqual(goals[0].priority, 781.5)

    def test_a_repair_shift_keeps_the_fraction(self):
        before = step("before", 1, priority=780, raw='{\n            id = "before",\n            priority = 780,\n            kind = "accept",\n            text = "Before.",\n        }')
        moved = step("moved", 9, priority=100, raw='{\n            id = "moved",\n            priority = 100,\n            kind = "accept",\n            text = "Moved.",\n        }')
        neighbor = step("neighbor", 2, priority=781, raw='{\n            id = "neighbor",\n            priority = 781,\n            kind = "objective",\n            text = "Neighbor.",\n        }')
        fraction = step(
            "fraction",
            3,
            priority=781.5,
            raw='{\n            id = "fraction",\n            priority = 781.5,\n            kind = "objective",\n            text = "Fraction.",\n        }',
        )
        fit_priorities([before, moved, neighbor, fraction], {9})
        priorities = [goal.priority for goal in (before, moved, neighbor, fraction)]
        self.assertEqual(len(priorities), len(set(priorities)))
        self.assertEqual(fraction.priority, 782.5)
        self.assertIn("priority = 782.5", fraction.raw)


class SetMinLevelTests(unittest.TestCase):
    def test_replaces_start_level(self):
        raw = '{\n            conditions = { level = { min = 15 } },\n            text = "Accept it.",\n        }'
        self.assertIn("level = { min = 20 }", set_min_level(raw, 20))
        self.assertNotIn("min = 15", set_min_level(raw, 20))

    def test_adds_level_beside_other_conditions(self):
        raw = (
            "{\n            conditions = {\n                all = {\n"
            "                    { faction = \"Horde\" },\n                },\n            },\n"
            '            text = "Accept it.",\n        }'
        )
        updated = set_min_level(raw, 20)
        self.assertIn("{ level = { min = 20 } },", updated)
        self.assertIn('{ faction = "Horde" }', updated)


if __name__ == "__main__":
    unittest.main()
