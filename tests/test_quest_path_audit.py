import unittest

from tools.audit_quest_paths import (
    Requirement,
    audit,
    catalog_quest,
    requirement_from_record,
)
from tools.weave_loremaster import Goal, parse_goals


def goal(quest_id, kind="accept", depends=None, source="Guides/Leveling/zone.lua", raw=""):
    return Goal(
        raw=raw,
        id=f"{kind}-{quest_id}",
        kind=kind,
        priority=quest_id,
        quest_id=quest_id,
        text="",
        labels=[],
        depends=depends or [],
        origin="test",
        source_file=source,
    )


def compiled(quest_id, *, patch=16001, requirements=None, fields=None, level=10, reqlevel=5):
    return {
        "id": quest_id,
        "list": {"id": quest_id, "level": level, "reqlevel": reqlevel, "firstseenpatch": patch, "name": "Sample"},
        "minLevel": reqlevel,
        "classes": [],
        "detail": {
            "requirements": requirements or {},
            "questie": {"fields": fields or {}},
        },
    }


class RequirementMappingTests(unittest.TestCase):
    def test_all_of_is_mode_all(self):
        record = compiled(1, requirements={"allOf": [2, 3]})
        self.assertEqual(requirement_from_record(record), Requirement("all", [2, 3]))

    def test_any_of_is_mode_any(self):
        record = compiled(1, requirements={"anyOf": [4]})
        self.assertEqual(requirement_from_record(record), Requirement("any", [4]))

    def test_pre_quest_group_is_mode_all_when_requirements_are_empty(self):
        record = compiled(1, fields={"preQuestGroup": [8, 9]})
        self.assertEqual(requirement_from_record(record), Requirement("all", [8, 9]))

    def test_both_groups_stay_mixed(self):
        record = compiled(1, requirements={"allOf": [2], "anyOf": [3]})
        mapped = requirement_from_record(record)
        self.assertEqual(mapped.mode, "mixed")
        self.assertEqual(mapped.quests, [2, 3])


class FallbackTests(unittest.TestCase):
    def test_zero_questie_level_keeps_the_wowhead_step_level(self):
        record = compiled(1, fields={"questLevel": 0, "requiredLevel": 0}, level=11, reqlevel=5)
        catalog = catalog_quest(1, record)
        self.assertEqual(catalog.step_level, 11)

    def test_missing_questie_record_uses_wowhead_fields(self):
        record = {
            "id": 50,
            "list": {"level": 8, "reqlevel": 4, "firstseenpatch": 11302},
            "minLevel": 4,
            "classes": [],
            "detail": {},
        }
        catalog = catalog_quest(50, record)
        self.assertFalse(catalog.forever)
        self.assertIsNone(catalog.requirement)
        self.assertEqual(catalog.step_level, 4)

    def test_classic_id_resolves_from_a_compiled_record(self):
        record = compiled(22, patch=11302, requirements={"anyOf": [21]}, level=6, reqlevel=4)
        findings = audit(
            [goal(22), goal(21, kind="turnin")],
            {22: record, 21: compiled(21, patch=11302)},
            {},
        )
        missing = [item for item in findings if item.category == "missing-prerequisite"]
        self.assertEqual(len(missing), 1)
        self.assertFalse(missing[0].forever)
        self.assertIn("21", missing[0].message)


class PrerequisiteCoverageTests(unittest.TestCase):
    def test_same_file_turn_in_dependency_covers_a_prerequisite(self):
        child = goal(30, depends=["turnin-20"])
        parent = goal(20, kind="turnin")
        parent.id = "turnin-20"
        findings = audit(
            [child, parent],
            {30: compiled(30, requirements={"allOf": [20]}), 20: compiled(20)},
            {},
        )
        self.assertFalse(any(item.category == "missing-prerequisite" for item in findings))

    def test_registered_mode_mismatch_is_reported(self):
        findings = audit(
            [goal(30)],
            {30: compiled(30, requirements={"anyOf": [20]})},
            {30: Requirement("all", [20])},
        )
        modes = [item for item in findings if item.category == "prerequisite-mode"]
        self.assertEqual(len(modes), 1)
        self.assertIn("any", modes[0].message)


class ConditionParseTests(unittest.TestCase):
    def test_parse_goals_reads_class_race_and_level(self):
        text = """
        goals = {
            {
                id = "accept-1",
                kind = "accept",
                priority = 1,
                conditions = {
                    all = {
                        { class = 9 },
                        { race = 2 },
                        { skill = 171 },
                        { level = { min = 4 } },
                    },
                },
                text = "Accept Sample.",
                complete = QuestState(1485, "activeOrCompleted"),
            },
        }
        """
        parsed = parse_goals(text, "test", "Guides/Leveling/zone.lua", None)
        self.assertEqual(parsed[0].classes, [9])
        self.assertEqual(parsed[0].races, [2])
        self.assertEqual(parsed[0].skills, [171])
        self.assertEqual(parsed[0].level_min, 4)

    def test_parse_goals_resolves_skill_constants(self):
        text = """
        local SKILL = { BLACKSMITHING = 164 }
        goals = {
            {
                id = "accept-1",
                kind = "accept",
                priority = 1,
                conditions = { all = { { profession = { skillLineID = SKILL.BLACKSMITHING } } } },
                text = "Accept Sample.",
                complete = QuestState(1, "activeOrCompleted"),
            },
        }
        """
        parsed = parse_goals(text, "test", "Guides/Leveling/zone.lua", None)
        self.assertEqual(parsed[0].skills, [164])


if __name__ == "__main__":
    unittest.main()
