"""Project-contract tests for the Forever GuideMate engine."""
from __future__ import annotations

import importlib.util
import tempfile
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
REQUIRED_FILES = (
    ".github/workflows/ci.yml",
    ".github/ISSUE_TEMPLATE/bug_report.yml",
    ".github/ISSUE_TEMPLATE/config.yml",
    ".gitignore",
    ".pkgmeta",
    "AGENTS.md",
    "CHANGELOG.md",
    "LICENSE",
    "README.md",
    "VERSION",
    "ForeverGuideMate.toc",
    "Core.lua",
    "PlayerState.lua",
    "Travel.lua",
    "Taxi.lua",
    "GuideEngine.lua",
    "QuestAudit.lua",
    "QuestDialog.lua",
    "Navigation.lua",
    "MapPins.lua",
    "MapPins.xml",
    "UI.lua",
    "TomTomWaypoints.lua",
    "Guides/Dungeons/RagefireChasm.lua",
    "Guides/Dungeons/WailingCaverns.lua",
    "Guides/Dungeons/RuinsOfLordaeron.lua",
    "Guides/Dungeons/Deadmines.lua",
    "Guides/Dungeons/HallOfThanes.lua",
    "Guides/Leveling/ZephrasIsle.lua",
    "Guides/Leveling/Durotar.lua",
    "Guides/Leveling/Mulgore.lua",
    "Guides/Leveling/TheBarrens.lua",
    "Guides/Leveling/Teldrassil.lua",
    "docs/zone-loremaster-guides.md",
    "tools/compile_addon.py",
    "tests/test_contracts.py",
    "tests/lua/run.lua",
    "tests/lua/ui.lua",
    "tests/lua/lint.lua",
    "tests/requirements.txt",
)


def compiler_module():
    spec = importlib.util.spec_from_file_location("compiler", ROOT / "tools/compile_addon.py")
    assert spec is not None and spec.loader is not None
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


class ContractTests(unittest.TestCase):
    def test_required_files_exist(self) -> None:
        for name in REQUIRED_FILES:
            self.assertTrue((ROOT / name).is_file(), name)

    def test_toc_contract(self) -> None:
        lines = (ROOT / "ForeverGuideMate.toc").read_text(encoding="utf-8").splitlines()
        self.assertIn("## Interface: 16001", lines)
        self.assertIn("## Title: Forever GuideMate", lines)
        self.assertIn("## X-Website: https://github.com/TylerAkins/forever-guide-mate", lines)
        self.assertIn("## X-Source: https://github.com/TylerAkins/forever-guide-mate", lines)
        self.assertIn("## X-Issues: https://github.com/TylerAkins/forever-guide-mate/issues", lines)
        self.assertEqual(
            [line for line in lines if line and not line.startswith("##")],
            [
                "Core.lua",
                "PlayerState.lua",
                "Travel.lua",
                "Taxi.lua",
                "GuideEngine.lua",
                "QuestAudit.lua",
                "QuestDialog.lua",
                "Navigation.lua",
                "TomTomWaypoints.lua",
                "MapPins.lua",
                "MapPins.xml",
                "UI.lua",
                "Guides/Dungeons/RagefireChasm.lua",
                "Guides/Dungeons/WailingCaverns.lua",
                "Guides/Dungeons/RuinsOfLordaeron.lua",
                "Guides/Dungeons/Deadmines.lua",
                "Guides/Dungeons/HallOfThanes.lua",
                "Guides/Leveling/ZephrasIsle.lua",
                "Guides/Leveling/Durotar.lua",
                "Guides/Leveling/Mulgore.lua",
                "Guides/Leveling/TheBarrens.lua",
                "Guides/Leveling/Teldrassil.lua",
                "Guides/Leveling/Era/1-12-durotar.lua",
                "Guides/Leveling/Era/1-12-mulgore.lua",
                "Guides/Leveling/Era/1-12-tirisfal-glades.lua",
                "Guides/Leveling/Era/12-20-barrens.lua",
                "Guides/Leveling/Era/12-20-silverpine-forest.lua",
                "Guides/Leveling/Era/20-22-stonetalon-mountains.lua",
                "Guides/Leveling/Era/22-23-southern-barrens.lua",
                "Guides/Leveling/Era/23-25-stonetalon-mountains.lua",
                "Guides/Leveling/Era/25-25-southern-barrens.lua",
                "Guides/Leveling/Era/25-26-thousand-needles.lua",
                "Guides/Leveling/Era/26-27-ashenvale.lua",
                "Guides/Leveling/Era/27-27-stonetalon-mountains.lua",
                "Guides/Leveling/Era/27-29-thousand-needles.lua",
                "Guides/Leveling/Era/29-30-hillsbrad-foothills.lua",
                "Guides/Leveling/Era/30-30-arathi-highlands.lua",
                "Guides/Leveling/Era/30-31-stranglethorn-vale.lua",
                "Guides/Leveling/Era/31-32-thousand-needles.lua",
                "Guides/Leveling/Era/32-34-desolace.lua",
                "Guides/Leveling/Era/34-36-stranglethorn-vale.lua",
                "Guides/Leveling/Era/36-37-alterac-mountains.lua",
                "Guides/Leveling/Era/37-38-arathi-highlands.lua",
                "Guides/Leveling/Era/37-38-thousand-needles.lua",
                "Guides/Leveling/Era/38-38-dustwallow-marsh.lua",
                "Guides/Leveling/Era/38-40-stranglethorn-vale.lua",
                "Guides/Leveling/Era/40-41-badlands.lua",
                "Guides/Leveling/Era/41-42-swamp-of-sorrows.lua",
                "Guides/Leveling/Era/42-43-stranglethorn-vale.lua",
                "Guides/Leveling/Era/43-44-dustwallow-marsh.lua",
                "Guides/Leveling/Era/44-44-desolace.lua",
                "Guides/Leveling/Era/44-45-tanaris.lua",
                "Guides/Leveling/Era/45-46-feralas.lua",
                "Guides/Leveling/Era/46-47-azshara.lua",
                "Guides/Leveling/Era/47-47-hinterlands.lua",
                "Guides/Leveling/Era/47-47-stranglethorn-vale.lua",
                "Guides/Leveling/Era/47-48-searing-gorge.lua",
                "Guides/Leveling/Era/48-49-swamp-of-sorrows.lua",
                "Guides/Leveling/Era/49-49-dustwallow-marsh.lua",
                "Guides/Leveling/Era/49-50-feralas.lua",
                "Guides/Leveling/Era/49-50-tanaris.lua",
                "Guides/Leveling/Era/50-50-azshara.lua",
                "Guides/Leveling/Era/50-51-hinterlands.lua",
                "Guides/Leveling/Era/51-51-blasted-lands.lua",
                "Guides/Leveling/Era/51-53-ungoro-crater.lua",
                "Guides/Leveling/Era/53-54-burning-steppes.lua",
                "Guides/Leveling/Era/54-54-felwood.lua",
                "Guides/Leveling/Era/54-55-winterspring.lua",
                "Guides/Leveling/Era/55-56-felwood.lua",
                "Guides/Leveling/Era/56-56-western-plaguelands.lua",
                "Guides/Leveling/Era/56-57-eastern-plaguelands.lua",
                "Guides/Leveling/Era/57-58-western-plaguelands.lua",
                "Guides/Leveling/Era/58-59-silithus.lua",
                "Guides/Leveling/Era/59-60-winterspring.lua",
                "Guides/Leveling/Era/1-12-dun-morogh.lua",
                "Guides/Leveling/Era/1-12-elwynn-forest.lua",
                "Guides/Leveling/Era/1-12-teldrassil.lua",
                "Guides/Leveling/Era/12-17-darkshore.lua",
                "Guides/Leveling/Era/12-17-westfall.lua",
                "Guides/Leveling/Era/17-18-loch-modan.lua",
                "Guides/Leveling/Era/18-20-redridge-mountains.lua",
                "Guides/Leveling/Era/20-21-darkshore.lua",
                "Guides/Leveling/Era/21-22-ashenvale.lua",
                "Guides/Leveling/Era/22-23-stonetalon-mountains.lua",
                "Guides/Leveling/Era/23-24-darkshore.lua",
                "Guides/Leveling/Era/24-24-ashenvale.lua",
                "Guides/Leveling/Era/24-27-wetlands.lua",
                "Guides/Leveling/Era/27-28-redridge-mountains.lua",
                "Guides/Leveling/Era/28-29-duskwood.lua",
                "Guides/Leveling/Era/29-30-ashenvale.lua",
                "Guides/Leveling/Era/30-31-wetlands.lua",
                "Guides/Leveling/Era/31-32-hillsbrad-foothills.lua",
                "Guides/Leveling/Era/32-33-stranglethorn-vale.lua",
                "Guides/Leveling/Era/33-34-thousand-needles.lua",
                "Guides/Leveling/Era/34-35-desolace.lua",
                "Guides/Leveling/Era/36-37-stranglethorn-vale.lua",
                "Guides/Leveling/Era/37-37-alterac-mountains.lua",
                "Guides/Leveling/Era/37-38-arathi-highlands-alliance.lua",
                "Guides/Leveling/Era/38-39-dustwallow-marsh.lua",
                "Guides/Leveling/Era/39-40-stranglethorn-vale.lua",
                "Guides/Leveling/Era/40-41-badlands-alliance.lua",
                "Guides/Leveling/Era/41-42-swamp-of-sorrows-alliance.lua",
                "Guides/Leveling/Era/42-43-stranglethorn-vale-alliance.lua",
                "Guides/Leveling/Era/43-43-desolace.lua",
                "Guides/Leveling/Era/43-44-tanaris.lua",
                "Guides/Leveling/Era/44-46-feralas.lua",
                "Guides/Leveling/Era/46-46-azshara.lua",
                "Guides/Leveling/Era/46-46-hinterlands.lua",
                "Guides/Leveling/Era/46-47-stranglethorn-vale.lua",
                "Guides/Leveling/Era/47-48-searing-gorge-alliance.lua",
                "Guides/Leveling/Era/48-49-feralas.lua",
                "Guides/Leveling/Era/49-50-tanaris-alliance.lua",
                "Guides/Leveling/Era/50-50-hinterlands.lua",
                "Guides/Leveling/Era/50-51-blasted-lands.lua",
                "Guides/Leveling/Era/51-52-ungoro-crater.lua",
                "Guides/Leveling/Era/52-53-azshara.lua",
                "Guides/Leveling/Era/53-54-felwood.lua",
                "Guides/Leveling/Era/54-55-winterspring-alliance.lua",
                "Guides/Leveling/Era/55-56-burning-steppes.lua",
                "Guides/Leveling/Era/55-56-felwood-alliance.lua",
                "Guides/Leveling/Era/56-57-western-plaguelands.lua",
                "Guides/Leveling/Era/57-58-eastern-plaguelands.lua",
                "Guides/Leveling/Era/57-58-western-plaguelands-alliance.lua",
                "Guides/Leveling/Era/58-59-silithus-alliance.lua",
                "Guides/Leveling/Era/59-60-winterspring-alliance.lua",
            ],
        )
        self.assertIn("## SavedVariables: ForeverGuideMateDB", lines)
        self.assertIn("## SavedVariablesPerCharacter: ForeverGuideMateCharDB", lines)
        self.assertIn("## Dependencies: TomTom", lines)
        self.assertIn("## RequiredDeps: TomTom", lines)
        self.assertFalse(any("Dependencies:" in line and "TomTom" not in line for line in lines))

    def test_namespace_and_registration_contract(self) -> None:
        core = (ROOT / "Core.lua").read_text(encoding="utf-8")
        engine = (ROOT / "GuideEngine.lua").read_text(encoding="utf-8")
        guide = (ROOT / "Guides/Dungeons/RagefireChasm.lua").read_text(encoding="utf-8")
        self.assertIn("local ADDON_NAME, ns = ...", core)
        self.assertIn("ForeverGuideMate = ns", core)
        self.assertIn("function ns:RegisterGuide(guide)", engine)
        self.assertIn('id = "dungeons-ragefire-chasm-horde"', guide)
        self.assertIn('category = "Dungeon Quest Guides"', guide)

    def test_version_and_packaging_contract(self) -> None:
        self.assertEqual((ROOT / "VERSION").read_text(encoding="utf-8").strip(), "0.1.0")
        package = (ROOT / ".pkgmeta").read_text(encoding="utf-8")
        self.assertIn("package-as: ForeverGuideMate", package)
        for excluded in (".compiled", "tests", "tools", ".github"):
            self.assertIn(f"  - {excluded}", package)

    def test_readme_documents_local_engine(self) -> None:
        readme = (ROOT / "README.md").read_text(encoding="utf-8").lower()
        self.assertIn("local-development guide addon", readme)
        self.assertIn("no release or publishing automation", readme)

    def test_runtime_has_no_gameplay_automation_or_probe_code(self) -> None:
        forbidden = (
            "AcceptQuest",
            "CompleteQuest",
            "GetQuestReward",
            "SelectGossipOption",
            "ConfirmAcceptQuest",
            "SLASH_",
            "Probe",
        )
        source = "\n".join(
            (ROOT / name).read_text(encoding="utf-8")
            for name in (
                "Core.lua",
                "PlayerState.lua",
                "Travel.lua",
                "Taxi.lua",
                "GuideEngine.lua",
                "QuestAudit.lua",
                "Navigation.lua",
                "TomTomWaypoints.lua",
                "MapPins.lua",
                "MapPins.xml",
                "UI.lua",
                "Guides/Dungeons/RagefireChasm.lua",
                "Guides/Dungeons/WailingCaverns.lua",
                "Guides/Dungeons/RuinsOfLordaeron.lua",
                "Guides/Dungeons/Deadmines.lua",
                "Guides/Dungeons/HallOfThanes.lua",
                "Guides/Leveling/ZephrasIsle.lua",
                "Guides/Leveling/Durotar.lua",
                "Guides/Leveling/Mulgore.lua",
                "Guides/Leveling/TheBarrens.lua",
                "Guides/Leveling/Teldrassil.lua",
            )
        )
        for term in forbidden:
            self.assertNotIn(term.lower(), source.lower())
        dialog = (ROOT / "QuestDialog.lua").read_text(encoding="utf-8")
        self.assertIn("autoQuest", dialog)
        self.assertIn("AcceptQuest", dialog)
        self.assertIn("CompleteQuest", dialog)
        self.assertIn("GetQuestReward", dialog)

    def test_no_release_workflow_exists(self) -> None:
        workflow_names = [path.name.lower() for path in (ROOT / ".github/workflows").iterdir()]
        self.assertEqual(workflow_names, ["ci.yml"])

    def test_rfc_guide_covers_required_quests_and_conditions(self) -> None:
        guide = (ROOT / "Guides/Dungeons/RagefireChasm.lua").read_text(encoding="utf-8")
        for quest_id in (5722, 5723, 5724, 5725, 5726, 5727, 5728, 5729, 5730, 5761):
            self.assertIn(str(quest_id), guide)
        self.assertIn('{ faction = "Horde" }', guide)
        self.assertIn("level = { min = 9 }", guide)
        self.assertIn("BARRENS = 1413", guide)
        self.assertIn("THUNDER_BLUFF = 1456", guide)

    def test_wailing_caverns_guide_covers_listed_quests(self) -> None:
        guide = (ROOT / "Guides/Dungeons/WailingCaverns.lua").read_text(encoding="utf-8")
        for quest_id in (914, 959, 962, 999, 1486, 1487, 1489, 1490, 1491, 1500, 3366, 6981):
            self.assertIn(str(quest_id), guide)
        self.assertIn('id = "dungeons-wailing-caverns"', guide)
        self.assertIn('category = "Dungeon Quest Guides"', guide)
        self.assertIn("level = { min = 15 }", guide)
        self.assertIn('{ faction = "Horde" }', guide)
        self.assertIn('{ faction = "Alliance" }', guide)
        self.assertIn("BOTH_FACTIONS", guide)

    def test_ruins_of_lordaeron_guide_covers_listed_quests(self) -> None:
        guide = (ROOT / "Guides/Dungeons/RuinsOfLordaeron.lua").read_text(encoding="utf-8")
        for quest_id in (92415, 92421, 92422, 95161, 95189, 95195, 95204, 95216, 95250, 97288, 97289, 97290, 97291, 97292):
            self.assertIn(str(quest_id), guide)
        self.assertIn('id = "dungeons-ruins-of-lordaeron"', guide)
        self.assertIn("level = { min = 16 }", guide)
        self.assertIn('{ faction = "Horde" }', guide)
        self.assertIn('{ faction = "Alliance" }', guide)
        ui = (ROOT / "UI.lua").read_text(encoding="utf-8")
        self.assertIn('category:match("^(.-) Quest Guides$")', ui)

    def test_deadmines_guide_covers_listed_quests(self) -> None:
        guide = (ROOT / "Guides/Dungeons/Deadmines.lua").read_text(encoding="utf-8")
        for quest_id in (166, 167, 168, 214, 2040):
            self.assertIn(str(quest_id), guide)
        self.assertIn('id = "dungeons-the-deadmines"', guide)
        self.assertIn('category = "Dungeon Quest Guides"', guide)
        self.assertIn("level = { min = 15 }", guide)
        self.assertIn('{ faction = "Alliance" }', guide)
        self.assertNotIn('{ faction = "Horde" }', guide)
        self.assertIn("DEADMINES = 36", guide)

    def test_hall_of_thanes_guide_covers_listed_quests(self) -> None:
        guide = (ROOT / "Guides/Dungeons/HallOfThanes.lua").read_text(encoding="utf-8")
        for quest_id in (96391, 96393, 96394, 96395, 96403, 98423):
            self.assertIn(str(quest_id), guide)
        self.assertIn('id = "dungeons-hall-of-thanes"', guide)
        self.assertIn('category = "Dungeon Quest Guides"', guide)
        self.assertIn("level = { min = 10 }", guide)
        self.assertIn('{ faction = "Alliance" }', guide)
        self.assertIn("IRONFORGE = 1455", guide)

    def test_zephras_isle_guide_covers_the_starter_path(self) -> None:
        guide = (ROOT / "Guides/Leveling/ZephrasIsle.lua").read_text(encoding="utf-8")
        for quest_id in (92460, 92472, 92579, 92701, 92640, 94490, 94946, 95349):
            self.assertIn(str(quest_id), guide)
        self.assertNotIn("78197", guide.split("Secrets of Undeath (78197)", 1)[-1])
        self.assertIn('id = "leveling-zephras-isle"', guide)
        self.assertIn('category = "Leveling Quest Guides"', guide)
        self.assertIn("level = { min = 1 }", guide)
        self.assertIn("ZEPHRAS = 2521", guide)
        self.assertIn('{ faction = "Horde" }', guide)
        self.assertIn('{ faction = "Alliance" }', guide)
        self.assertIn("{ class = 7 }", guide)
        self.assertIn("RACE_ALLIANCE = 95", guide)
        self.assertIn("RACE_HORDE = 96", guide)
        self.assertNotIn("97963", guide)

    def test_barrens_guide_is_loremaster_without_dungeons(self) -> None:
        guide = (ROOT / "Guides/Leveling/TheBarrens.lua").read_text(encoding="utf-8")
        for quest_id in (844, 871, 894, 900, 906, 97003, 6543, 98024):
            self.assertIn(str(quest_id), guide)
        for dungeon_id in (3369, 3370, 914, 1489, 1491):
            self.assertNotIn(str(dungeon_id), guide.split("goals = {", 1)[-1])
        self.assertIn('id = "leveling-the-barrens"', guide)
        self.assertIn('category = "Loremaster Guides"', guide)
        self.assertIn("level = { min = 9 }", guide)
        self.assertIn('{ faction = "Horde" }', guide)
        self.assertIn('{ faction = "Alliance" }', guide)
        self.assertIn("This is an elite. Bring a group.", guide)
        self.assertIn('id = "objective-900-samophlange-1"', guide)
        self.assertIn('id = "objective-900-samophlange-2"', guide)
        self.assertIn('id = "objective-900-samophlange-3"', guide)
        self.assertIn("BARRENS = 1413", guide)

    def test_durotar_guide_is_loremaster_without_dungeons(self) -> None:
        guide = (ROOT / "Guides/Leveling/Durotar.lua").read_text(encoding="utf-8")
        goals = guide.split("goals = {", 1)[-1]
        for quest_id in (4641, 788, 794, 837, 831, 924, 99052, 840):
            self.assertIn(f"QuestState({quest_id},", goals)
        for omitted_id in (787, 5843, 807, 810, 814, 820, 5722, 5723):
            self.assertNotIn(f"QuestState({omitted_id},", goals)
            self.assertNotIn(f"QuestObjective({omitted_id},", goals)
        self.assertIn('id = "leveling-durotar"', guide)
        self.assertIn('category = "Loremaster Guides"', guide)
        self.assertIn("level = { min = 1 }", guide)
        self.assertIn('{ faction = "Horde" }', guide)
        self.assertIn("This is an elite. Bring a group.", guide)
        self.assertIn("BLACKSMITHING = 164", guide)
        self.assertIn("LEATHERWORKING = 165", guide)
        self.assertIn("ENCHANTING = 333", guide)
        for goal_id, skill in (
            ("accept-96873-a-pain-in-the-neck", "SKILL.ENCHANTING"),
            ("accept-96874-this-is-spinal-axe", "SKILL.BLACKSMITHING"),
            ("accept-96875-beasts-of-thunder-ridge", "SKILL.LEATHERWORKING"),
        ):
            block = goals.split(f'id = "{goal_id}"', 1)[1].split("route = {", 1)[0]
            self.assertIn(f"profession = {{ skillLineID = {skill} }}", block)
        self.assertIn('id = "objective-837-encroachment-1"', guide)
        self.assertIn('id = "objective-837-encroachment-4"', guide)
        self.assertIn("DUROTAR = 1411", guide)
        rules = (ROOT / "docs/zone-loremaster-guides.md").read_text(encoding="utf-8")
        self.assertIn("This is an elite. Bring a group.", rules)
        self.assertIn("activeOrCompleted", rules)
        self.assertIn('category = "Loremaster Guides"', rules)
        self.assertIn("not a leveling route", rules)
        self.assertIn("Zephras Isle", rules)

    def test_mulgore_guide_is_loremaster_without_dungeons(self) -> None:
        guide = (ROOT / "Guides/Leveling/Mulgore.lua").read_text(encoding="utf-8")
        goals = guide.split("goals = {", 1)[-1]
        for quest_id in (752, 747, 748, 754, 745, 772, 98427, 854):
            self.assertIn(f"QuestState({quest_id},", goals)
        for omitted_id in (774, 5844, 99196):
            self.assertNotIn(f"QuestState({omitted_id},", goals)
            self.assertNotIn(f"QuestObjective({omitted_id},", goals)
        self.assertIn('id = "leveling-mulgore"', guide)
        self.assertIn('category = "Loremaster Guides"', guide)
        self.assertIn("level = { min = 1 }", guide)
        self.assertIn('{ faction = "Horde" }', guide)
        self.assertIn("{ race = 6 }", guide)
        self.assertIn("{ class = 7 }", guide)
        self.assertIn("This is an elite. Bring a group.", guide)
        self.assertIn('id = "objective-745-sharing-the-land-1"', guide)
        self.assertIn('id = "objective-745-sharing-the-land-3"', guide)
        self.assertIn("MULGORE = 1412", guide)

    def test_teldrassil_guide_is_loremaster_without_dungeons(self) -> None:
        guide = (ROOT / "Guides/Leveling/Teldrassil.lua").read_text(encoding="utf-8")
        goals = guide.split("goals = {", 1)[-1]
        for quest_id in (456, 921, 7383, 483, 2499, 3522, 490):
            self.assertIn(f"QuestState({quest_id},", goals)
        for omitted_id in (5842, 8734, 934):
            self.assertNotIn(f"QuestState({omitted_id},", goals)
            self.assertNotIn(f"QuestObjective({omitted_id},", goals)
        self.assertIn('id = "leveling-teldrassil"', guide)
        self.assertIn('title = "Teldrassil"', guide)
        self.assertNotIn("(Loremaster)", guide.split("goals = {", 1)[0])
        self.assertIn('category = "Loremaster Guides"', guide)
        self.assertIn("level = { min = 1 }", guide)
        self.assertIn('{ faction = "Alliance" }', guide)
        self.assertIn("This is an elite. Bring a group.", guide)
        self.assertIn('id = "objective-456-the-balance-of-nature-1"', guide)
        self.assertIn('id = "objective-456-the-balance-of-nature-2"', guide)
        self.assertIn('id = "objective-483-the-relics-of-wakening-1"', guide)
        self.assertIn('id = "objective-483-the-relics-of-wakening-4"', guide)
        self.assertIn("TELDRASSIL = 1438", guide)
        self.assertIn("DARNASSUS = 1457", guide)

    def test_era_leveling_guides_are_horde_routes(self) -> None:
        era_files = (
            "Guides/Leveling/Era/1-12-durotar.lua",
            "Guides/Leveling/Era/1-12-mulgore.lua",
            "Guides/Leveling/Era/1-12-tirisfal-glades.lua",
            "Guides/Leveling/Era/12-20-barrens.lua",
            "Guides/Leveling/Era/12-20-silverpine-forest.lua",
            "Guides/Leveling/Era/20-22-stonetalon-mountains.lua",
            "Guides/Leveling/Era/22-23-southern-barrens.lua",
            "Guides/Leveling/Era/23-25-stonetalon-mountains.lua",
            "Guides/Leveling/Era/25-25-southern-barrens.lua",
            "Guides/Leveling/Era/25-26-thousand-needles.lua",
            "Guides/Leveling/Era/26-27-ashenvale.lua",
            "Guides/Leveling/Era/27-27-stonetalon-mountains.lua",
            "Guides/Leveling/Era/27-29-thousand-needles.lua",
            "Guides/Leveling/Era/29-30-hillsbrad-foothills.lua",
            "Guides/Leveling/Era/30-30-arathi-highlands.lua",
            "Guides/Leveling/Era/30-31-stranglethorn-vale.lua",
            "Guides/Leveling/Era/31-32-thousand-needles.lua",
            "Guides/Leveling/Era/32-34-desolace.lua",
            "Guides/Leveling/Era/34-36-stranglethorn-vale.lua",
            "Guides/Leveling/Era/36-37-alterac-mountains.lua",
            "Guides/Leveling/Era/37-38-arathi-highlands.lua",
            "Guides/Leveling/Era/37-38-thousand-needles.lua",
            "Guides/Leveling/Era/38-38-dustwallow-marsh.lua",
            "Guides/Leveling/Era/38-40-stranglethorn-vale.lua",
            "Guides/Leveling/Era/40-41-badlands.lua",
            "Guides/Leveling/Era/41-42-swamp-of-sorrows.lua",
            "Guides/Leveling/Era/42-43-stranglethorn-vale.lua",
            "Guides/Leveling/Era/43-44-dustwallow-marsh.lua",
            "Guides/Leveling/Era/44-44-desolace.lua",
            "Guides/Leveling/Era/44-45-tanaris.lua",
            "Guides/Leveling/Era/45-46-feralas.lua",
            "Guides/Leveling/Era/46-47-azshara.lua",
            "Guides/Leveling/Era/47-47-hinterlands.lua",
            "Guides/Leveling/Era/47-47-stranglethorn-vale.lua",
            "Guides/Leveling/Era/47-48-searing-gorge.lua",
            "Guides/Leveling/Era/48-49-swamp-of-sorrows.lua",
            "Guides/Leveling/Era/49-49-dustwallow-marsh.lua",
            "Guides/Leveling/Era/49-50-feralas.lua",
            "Guides/Leveling/Era/49-50-tanaris.lua",
            "Guides/Leveling/Era/50-50-azshara.lua",
            "Guides/Leveling/Era/50-51-hinterlands.lua",
            "Guides/Leveling/Era/51-51-blasted-lands.lua",
            "Guides/Leveling/Era/51-53-ungoro-crater.lua",
            "Guides/Leveling/Era/53-54-burning-steppes.lua",
            "Guides/Leveling/Era/54-54-felwood.lua",
            "Guides/Leveling/Era/54-55-winterspring.lua",
            "Guides/Leveling/Era/55-56-felwood.lua",
            "Guides/Leveling/Era/56-56-western-plaguelands.lua",
            "Guides/Leveling/Era/56-57-eastern-plaguelands.lua",
            "Guides/Leveling/Era/57-58-western-plaguelands.lua",
            "Guides/Leveling/Era/58-59-silithus.lua",
            "Guides/Leveling/Era/59-60-winterspring.lua",
        )
        alliance_files = (
            "Guides/Leveling/Era/1-12-dun-morogh.lua",
            "Guides/Leveling/Era/1-12-elwynn-forest.lua",
            "Guides/Leveling/Era/1-12-teldrassil.lua",
            "Guides/Leveling/Era/12-17-darkshore.lua",
            "Guides/Leveling/Era/12-17-westfall.lua",
            "Guides/Leveling/Era/17-18-loch-modan.lua",
            "Guides/Leveling/Era/18-20-redridge-mountains.lua",
            "Guides/Leveling/Era/20-21-darkshore.lua",
            "Guides/Leveling/Era/21-22-ashenvale.lua",
            "Guides/Leveling/Era/22-23-stonetalon-mountains.lua",
            "Guides/Leveling/Era/23-24-darkshore.lua",
            "Guides/Leveling/Era/24-24-ashenvale.lua",
            "Guides/Leveling/Era/24-27-wetlands.lua",
            "Guides/Leveling/Era/27-28-redridge-mountains.lua",
            "Guides/Leveling/Era/28-29-duskwood.lua",
            "Guides/Leveling/Era/29-30-ashenvale.lua",
            "Guides/Leveling/Era/30-31-wetlands.lua",
            "Guides/Leveling/Era/31-32-hillsbrad-foothills.lua",
            "Guides/Leveling/Era/32-33-stranglethorn-vale.lua",
            "Guides/Leveling/Era/33-34-thousand-needles.lua",
            "Guides/Leveling/Era/34-35-desolace.lua",
            "Guides/Leveling/Era/36-37-stranglethorn-vale.lua",
            "Guides/Leveling/Era/37-37-alterac-mountains.lua",
            "Guides/Leveling/Era/37-38-arathi-highlands-alliance.lua",
            "Guides/Leveling/Era/38-39-dustwallow-marsh.lua",
            "Guides/Leveling/Era/39-40-stranglethorn-vale.lua",
            "Guides/Leveling/Era/40-41-badlands-alliance.lua",
            "Guides/Leveling/Era/41-42-swamp-of-sorrows-alliance.lua",
            "Guides/Leveling/Era/42-43-stranglethorn-vale-alliance.lua",
            "Guides/Leveling/Era/43-43-desolace.lua",
            "Guides/Leveling/Era/43-44-tanaris.lua",
            "Guides/Leveling/Era/44-46-feralas.lua",
            "Guides/Leveling/Era/46-46-azshara.lua",
            "Guides/Leveling/Era/46-46-hinterlands.lua",
            "Guides/Leveling/Era/46-47-stranglethorn-vale.lua",
            "Guides/Leveling/Era/47-48-searing-gorge-alliance.lua",
            "Guides/Leveling/Era/48-49-feralas.lua",
            "Guides/Leveling/Era/49-50-tanaris-alliance.lua",
            "Guides/Leveling/Era/50-50-hinterlands.lua",
            "Guides/Leveling/Era/50-51-blasted-lands.lua",
            "Guides/Leveling/Era/51-52-ungoro-crater.lua",
            "Guides/Leveling/Era/52-53-azshara.lua",
            "Guides/Leveling/Era/53-54-felwood.lua",
            "Guides/Leveling/Era/54-55-winterspring-alliance.lua",
            "Guides/Leveling/Era/55-56-burning-steppes.lua",
            "Guides/Leveling/Era/55-56-felwood-alliance.lua",
            "Guides/Leveling/Era/56-57-western-plaguelands.lua",
            "Guides/Leveling/Era/57-58-eastern-plaguelands.lua",
            "Guides/Leveling/Era/57-58-western-plaguelands-alliance.lua",
            "Guides/Leveling/Era/58-59-silithus-alliance.lua",
            "Guides/Leveling/Era/59-60-winterspring-alliance.lua",
        )
        toc = (ROOT / "ForeverGuideMate.toc").read_text(encoding="utf-8")
        shipped = (ROOT / "tools/compile_addon.py").read_text(encoding="utf-8")
        rewritten_starters = {
            "Guides/Leveling/Era/1-12-durotar.lua",
            "Guides/Leveling/Era/1-12-mulgore.lua",
            "Guides/Leveling/Era/1-12-tirisfal-glades.lua",
            "Guides/Leveling/Era/1-12-dun-morogh.lua",
            "Guides/Leveling/Era/1-12-elwynn-forest.lua",
            "Guides/Leveling/Era/1-12-teldrassil.lua",
        }
        for relative in era_files:
            guide = (ROOT / relative).read_text(encoding="utf-8")
            head, goals = guide.split("goals = {", 1)
            self.assertIn('category = "Leveling Quest Guides"', head)
            if relative in rewritten_starters:
                self.assertNotIn("(Era)", head)
            else:
                self.assertIn("(Era)", head)
            self.assertIn('{ faction = "Horde" }', head)
            self.assertNotIn("Alliance", head)
            self.assertNotIn("flight path", goals.lower())
            self.assertNotIn("grind", goals.lower())
            self.assertNotIn("npc:", goals.lower())
            self.assertNotIn("item:", goals.lower())
            self.assertIn(relative, toc)
            self.assertIn(relative, shipped)
        for relative in alliance_files:
            guide = (ROOT / relative).read_text(encoding="utf-8")
            head, goals = guide.split("goals = {", 1)
            self.assertIn('category = "Leveling Quest Guides"', head)
            if relative in rewritten_starters:
                self.assertNotIn("(Era)", head)
            else:
                self.assertIn("(Era)", head)
            self.assertIn('{ faction = "Alliance" }', head)
            self.assertNotIn("Horde", head)
            self.assertNotIn("flight path", goals.lower())
            self.assertNotIn("grind", goals.lower())
            self.assertNotIn("npc:", goals.lower())
            self.assertNotIn("item:", goals.lower())
            self.assertIn(relative, toc)
            self.assertIn(relative, shipped)
        durotar = (ROOT / "Guides/Leveling/Era/1-12-durotar.lua").read_text(encoding="utf-8")
        self.assertIn('id = "leveling-era-1-12-durotar"', durotar)
        self.assertIn('title = "1-12 Durotar"', durotar)
        self.assertIn("QuestState(4641,", durotar)
        self.assertIn("QuestObjective(786, 1)", durotar)
        self.assertIn("QuestObjective(786, 3)", durotar)
        self.assertIn("QuestState(752,", (ROOT / "Guides/Leveling/Era/1-12-mulgore.lua").read_text(encoding="utf-8"))
        self.assertIn("QuestState(844,", (ROOT / "Guides/Leveling/Era/12-20-barrens.lua").read_text(encoding="utf-8"))
        self.assertIn("QuestState(97279,", durotar)
        self.assertIn("QuestState(99052,", durotar)
        self.assertNotIn("QuestState(93739,", durotar)
        mulgore = (ROOT / "Guides/Leveling/Era/1-12-mulgore.lua").read_text(encoding="utf-8")
        self.assertIn("QuestState(95805,", mulgore)
        self.assertIn("QuestState(97485,", mulgore)
        self.assertNotIn("QuestState(99196,", mulgore)
        teldrassil = (ROOT / "Guides/Leveling/Era/1-12-teldrassil.lua").read_text(encoding="utf-8")
        self.assertIn("QuestState(97977,", teldrassil)
        self.assertIn("QuestState(98067,", teldrassil)
        self.assertNotIn("QuestState(8734,", teldrassil)
        elwynn = (ROOT / "Guides/Leveling/Era/1-12-elwynn-forest.lua").read_text(encoding="utf-8")
        self.assertIn("QuestState(99127,", elwynn)
        self.assertNotIn("QuestState(91736,", elwynn)
        self.assertNotIn("QuestState(93963,", elwynn)
        dun = (ROOT / "Guides/Leveling/Era/1-12-dun-morogh.lua").read_text(encoding="utf-8")
        self.assertIn("QuestState(98322,", dun)
        self.assertNotIn("QuestState(95041,", dun)
        tirisfal = (ROOT / "Guides/Leveling/Era/1-12-tirisfal-glades.lua").read_text(encoding="utf-8")
        self.assertIn("QuestState(98389,", tirisfal)
        self.assertIn("QuestState(96895,", tirisfal)
        self.assertNotIn("QuestState(97891,", tirisfal)

    def test_lua_engine_tests_run_in_ci(self) -> None:
        workflow = (ROOT / ".github/workflows/ci.yml").read_text(encoding="utf-8")
        self.assertIn("lua5.1 tests/lua/run.lua", workflow)
        self.assertIn("lua5.1 tests/lua/ui.lua", workflow)
        self.assertIn("lua5.1 tests/lua/lint.lua", workflow)

    def test_ux_contract(self) -> None:
        core = (ROOT / "Core.lua").read_text(encoding="utf-8")
        ui = (ROOT / "UI.lua").read_text(encoding="utf-8")
        navigation = (ROOT / "Navigation.lua").read_text(encoding="utf-8")
        map_pins = (ROOT / "MapPins.lua").read_text(encoding="utf-8")
        toc = (ROOT / "ForeverGuideMate.toc").read_text(encoding="utf-8")
        self.assertIn("schemaVersion = 3", core)
        self.assertIn('point = "LEFT", relativePoint = "LEFT", x = 0, y = 0', core)
        self.assertNotIn('selectedGuide = "dungeons-ragefire-chasm-horde"', core)
        self.assertIn('point = "TOP", relativePoint = "TOP", x = 0, y = -90', core)
        self.assertIn("function UI:OpenTracker()", ui)
        self.assertIn("function UI:CloseTracker()", ui)
        self.assertIn("function UI:OpenGuideBrowser()", ui)
        self.assertIn("function UI:ToggleGuideBrowser()", ui)
        self.assertIn("SetClampedToScreen(true)", ui)
        self.assertNotIn("CreateLine", ui)
        self.assertIn("TomTomWaypoints", ui)
        self.assertIn("AddWaypoint", (ROOT / "TomTomWaypoints.lua").read_text(encoding="utf-8"))
        self.assertNotIn("NavigationArrow", ui)
        self.assertIn("GetMapRectOnMap", navigation)
        self.assertIn('"Waypoint-MapPin-Tracked"', map_pins)
        self.assertIn("MapCanvasDataProviderMixin", map_pins)
        self.assertIn("mapCanvas.AcquirePin", map_pins)
        self.assertIn("## AddonCompartmentFunc: ForeverGuideMate_OnAddonCompartmentClick", toc)

    def test_compiler_dry_run_and_build_output(self) -> None:
        compiler = compiler_module()
        with tempfile.TemporaryDirectory() as temporary_directory:
            output = Path(temporary_directory) / "ForeverGuideMate"
            expected = [output / name for name in compiler.SHIPPED]
            self.assertEqual(compiler.compile_addon(output, dry_run=True), expected)
            self.assertFalse(output.exists())
            built = compiler.compile_addon(output)
            self.assertEqual(built, expected)
            actual = {
                path.relative_to(output).as_posix()
                for path in output.rglob("*")
                if path.is_file()
            }
            self.assertEqual(actual, set(compiler.SHIPPED))
            toc = (output / "ForeverGuideMate.toc").read_text(encoding="utf-8")
            self.assertIn("## Version: 0.1.0", toc.splitlines())
            self.assertNotIn("@project-version@", toc)
            for excluded in ("tests", "tools", ".github", "__pycache__"):
                self.assertFalse((output / excluded).exists())
