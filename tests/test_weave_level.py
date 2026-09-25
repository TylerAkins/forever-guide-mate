import unittest

from tools.weave_loremaster import Goal, insert_quest, place_woven, recommended_level, set_min_level


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
