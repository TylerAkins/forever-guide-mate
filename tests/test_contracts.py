"""Project-contract tests for the Forever GuideMate engine."""
from __future__ import annotations

import importlib.util
import tempfile
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
REQUIRED_FILES = (
    ".github/workflows/ci.yml",
    ".github/workflows/release.yml",
    ".github/workflows/update-forever-interface.yml",
    ".github/ISSUE_TEMPLATE/bug_report.yml",
    ".github/ISSUE_TEMPLATE/config.yml",
    ".gitignore",
    ".pkgmeta",
    "AGENTS.md",
    "CHANGELOG.md",
    "RELEASE_NOTES.md",
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
    "MinimapButton.lua",
    "UI.lua",
    "TomTomWaypoints.lua",
    "Guides/Dungeons/RagefireChasm.lua",
    "Guides/Dungeons/WailingCaverns.lua",
    "Guides/Dungeons/RuinsOfLordaeron.lua",
    "Guides/Dungeons/Deadmines.lua",
    "Guides/Dungeons/HallOfThanes.lua",
    "Guides/Dungeons/ExcavationSiteWetlands.lua",
    "Guides/Dungeons/ShadowfangKeep.lua",
    "Guides/Dungeons/BlackfathomDeeps.lua",
    "Guides/Dungeons/Gnomeregan.lua",
    "Guides/Dungeons/TheStockade.lua",
    "Guides/Dungeons/ScarletMonasteryLibrary.lua",
    "Guides/Dungeons/RazorfenKraul.lua",
    "Guides/Dungeons/ScarletMonasteryGraveyard.lua",
    "Guides/Dungeons/RazorfenDowns.lua",
    "Guides/Dungeons/Uldaman.lua",
    "Guides/Dungeons/ScarletMonasteryArmory.lua",
    "Guides/Dungeons/ScarletMonasteryCathedral.lua",
    "Guides/Dungeons/ZulFarrak.lua",
    "Guides/Dungeons/Maraudon.lua",
    "Guides/Dungeons/MaraudonFoulsporeCavernOrange.lua",
    "Guides/Dungeons/MaraudonWickedGrottoPurple.lua",
    "Guides/Dungeons/TempleOfAtalHakkar.lua",
    "Guides/Dungeons/MaraudonEarthSongFallsInner.lua",
    "Guides/Dungeons/MaraudonPoisonFallsInner.lua",
    "Guides/Dungeons/OnyxiaSLairAttunement.lua",
    "Guides/Dungeons/Scholomance.lua",
    "Guides/Dungeons/BlackrockDepths.lua",
    "Guides/Dungeons/StratholmeLive.lua",
    "Guides/Dungeons/StratholmeUndead.lua",
    "Guides/Dungeons/DireMaulEast.lua",
    "Guides/Dungeons/DireMaulNorth.lua",
    "Guides/Dungeons/DireMaulWest.lua",
    "Guides/Dungeons/LowerBlackrockSpire.lua",
    "Guides/Dungeons/UpperBlackrockSpire.lua",
    "Guides/Dungeons/DireMaulNorthTribute.lua",
    "Guides/Dungeons/Tier05DungeonGearQuestline.lua",
    "Guides/Leveling/zephras-isle.lua",
    "Guides/Loremaster/Durotar.lua",
    "Guides/Loremaster/Mulgore.lua",
    "docs/guide-authoring.md",
    "docs/zone-loremaster-guides.md",
    "docs/DEVELOPMENT.md",
    ".cursor/skills/zone-loremaster-guide/SKILL.md",
    ".cursor/skills/era-forever-weave/SKILL.md",
    "tools/compile_addon.py",
    "tools/guide_release.py",
    "tools/update_forever_interface.py",
    "tests/test_contracts.py",
    "tests/test_guide_release.py",
    "tests/test_update_forever_interface.py",
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
        self.assertIn("## Category: Quests", lines)
        self.assertIn("## X-Category: Quests", lines)
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
                "QuestPrerequisites.lua",
                "QuestAudit.lua",
                "QuestDialog.lua",
                "Navigation.lua",
                "TomTomWaypoints.lua",
                "MapPins.lua",
                "MapPins.xml",
                "MinimapButton.lua",
                "UI.lua",
                "Guides/Dungeons/RagefireChasm.lua",
                "Guides/Dungeons/WailingCaverns.lua",
                "Guides/Dungeons/RuinsOfLordaeron.lua",
                "Guides/Dungeons/Deadmines.lua",
                "Guides/Dungeons/HallOfThanes.lua",
                "Guides/Dungeons/ExcavationSiteWetlands.lua",
                "Guides/Dungeons/ShadowfangKeep.lua",
                "Guides/Dungeons/BlackfathomDeeps.lua",
                "Guides/Dungeons/Gnomeregan.lua",
                "Guides/Dungeons/TheStockade.lua",
                "Guides/Dungeons/ScarletMonasteryLibrary.lua",
                "Guides/Dungeons/RazorfenKraul.lua",
                "Guides/Dungeons/ScarletMonasteryGraveyard.lua",
                "Guides/Dungeons/RazorfenDowns.lua",
                "Guides/Dungeons/Uldaman.lua",
                "Guides/Dungeons/ScarletMonasteryArmory.lua",
                "Guides/Dungeons/ScarletMonasteryCathedral.lua",
                "Guides/Dungeons/ZulFarrak.lua",
                "Guides/Dungeons/Maraudon.lua",
                "Guides/Dungeons/MaraudonFoulsporeCavernOrange.lua",
                "Guides/Dungeons/MaraudonWickedGrottoPurple.lua",
                "Guides/Dungeons/TempleOfAtalHakkar.lua",
                "Guides/Dungeons/MaraudonEarthSongFallsInner.lua",
                "Guides/Dungeons/MaraudonPoisonFallsInner.lua",
                "Guides/Dungeons/OnyxiaSLairAttunement.lua",
                "Guides/Dungeons/Scholomance.lua",
                "Guides/Dungeons/BlackrockDepths.lua",
                "Guides/Dungeons/StratholmeLive.lua",
                "Guides/Dungeons/StratholmeUndead.lua",
                "Guides/Dungeons/DireMaulEast.lua",
                "Guides/Dungeons/DireMaulNorth.lua",
                "Guides/Dungeons/DireMaulWest.lua",
                "Guides/Dungeons/LowerBlackrockSpire.lua",
                "Guides/Dungeons/UpperBlackrockSpire.lua",
                "Guides/Dungeons/DireMaulNorthTribute.lua",
                "Guides/Dungeons/Tier05DungeonGearQuestline.lua",
                "Guides/Leveling/zephras-isle.lua",
                "Guides/Loremaster/Durotar.lua",
                "Guides/Loremaster/Mulgore.lua",
                "Guides/Leveling/durotar.lua",
                "Guides/Leveling/mulgore.lua",
                "Guides/Leveling/tirisfal-glades.lua",
                "Guides/Leveling/the-barrens-part-1.lua",
                "Guides/Leveling/silverpine-forest.lua",
                "Guides/Leveling/stonetalon-mountains-part-1.lua",
                "Guides/Leveling/the-barrens-part-2.lua",
                "Guides/Leveling/stonetalon-mountains-part-2.lua",
                "Guides/Leveling/stonetalon-mountains-part-3.lua",
                "Guides/Leveling/the-barrens-part-3.lua",
                "Guides/Leveling/thousand-needles-part-1.lua",
                "Guides/Leveling/ashenvale-part-3.lua",
                "Guides/Leveling/stonetalon-mountains-part-4.lua",
                "Guides/Leveling/thousand-needles-part-2.lua",
                "Guides/Leveling/hillsbrad-foothills.lua",
                "Guides/Leveling/dun-morogh.lua",
                "Guides/Leveling/elwynn-forest.lua",
                "Guides/Leveling/teldrassil.lua",
                "Guides/Leveling/darkshore-part-1.lua",
                "Guides/Leveling/westfall.lua",
                "Guides/Leveling/loch-modan.lua",
                "Guides/Leveling/redridge-mountains-part-1.lua",
                "Guides/Leveling/darkshore-part-2.lua",
                "Guides/Leveling/ashenvale-part-1.lua",
                "Guides/Leveling/darkshore-part-3.lua",
                "Guides/Leveling/ashenvale-part-2.lua",
                "Guides/Leveling/wetlands.lua",
                "Guides/Leveling/redridge-mountains-part-2.lua",
                "Guides/Leveling/duskwood.lua",
                "Guides/Leveling/ashenvale-part-4.lua",
                "Guides/Class/Warrior.lua",
                "Guides/Class/Paladin.lua",
                "Guides/Class/Hunter.lua",
                "Guides/Class/Rogue.lua",
                "Guides/Class/Priest.lua",
                "Guides/Class/Shaman.lua",
                "Guides/Class/Mage.lua",
                "Guides/Class/Warlock.lua",
                "Guides/Class/Druid.lua",
            ],
        )
        self.assertIn("## SavedVariables: ForeverGuideMateDB", lines)
        self.assertIn("## SavedVariablesPerCharacter: ForeverGuideMateCharDB", lines)
        self.assertIn("## OptionalDeps: TomTom", lines)
        self.assertNotIn("## RequiredDeps: TomTom", lines)
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
        version = (ROOT / "VERSION").read_text(encoding="utf-8").strip()
        self.assertRegex(version, r"^\d+\.\d+\.\d+$")
        package = (ROOT / ".pkgmeta").read_text(encoding="utf-8")
        self.assertIn("package-as: ForeverGuideMate", package)
        self.assertIn("manual-changelog:", package)
        self.assertIn("filename: RELEASE_NOTES.md", package)
        for excluded in ("tests", "tools", ".github", "docs"):
            self.assertIn(f"  - {excluded}", package)

    def test_readme_documents_project_and_distribution(self) -> None:
        readme = (ROOT / "README.md").read_text(encoding="utf-8").lower()
        self.assertIn("open-source", readme)
        self.assertIn("world of warcraft: forever", readme)
        self.assertIn("github release", readme)
        self.assertIn("curseforge", readme)
        development = (ROOT / "docs/DEVELOPMENT.md").read_text(encoding="utf-8").lower()
        self.assertIn("local-development guide addon", development)

    def test_docs_only_changes_skip_release_version_gate(self) -> None:
        workflow = (ROOT / ".github/workflows/ci.yml").read_text(encoding="utf-8")
        self.assertIn("GUIDE_CONTENT_CHANGED=false", workflow)
        guide_diff = workflow.split("git diff --quiet", 1)[1].split(";", 1)[0]
        shipping_tokens = guide_diff.replace('"', "").replace("$BASE_SHA", "").replace("HEAD --", "").split()
        for docs_only in ("README.md", "docs/", "RELEASE_NOTES.md", "CHANGELOG.md"):
            self.assertNotIn(
                docs_only,
                shipping_tokens,
                f"{docs_only} must not require a VERSION bump by itself",
            )

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
                "MinimapButton.lua",
                "UI.lua",
                "Guides/Dungeons/RagefireChasm.lua",
                "Guides/Dungeons/WailingCaverns.lua",
                "Guides/Dungeons/RuinsOfLordaeron.lua",
                "Guides/Dungeons/Deadmines.lua",
                "Guides/Dungeons/HallOfThanes.lua",
                "Guides/Dungeons/ExcavationSiteWetlands.lua",
                "Guides/Dungeons/ShadowfangKeep.lua",
                "Guides/Dungeons/BlackfathomDeeps.lua",
                "Guides/Dungeons/Gnomeregan.lua",
                "Guides/Dungeons/TheStockade.lua",
                "Guides/Dungeons/ScarletMonasteryLibrary.lua",
                "Guides/Dungeons/RazorfenKraul.lua",
                "Guides/Dungeons/ScarletMonasteryGraveyard.lua",
                "Guides/Dungeons/RazorfenDowns.lua",
                "Guides/Dungeons/Uldaman.lua",
                "Guides/Dungeons/ScarletMonasteryArmory.lua",
                "Guides/Dungeons/ScarletMonasteryCathedral.lua",
                "Guides/Dungeons/ZulFarrak.lua",
                "Guides/Dungeons/Maraudon.lua",
                "Guides/Dungeons/MaraudonFoulsporeCavernOrange.lua",
                "Guides/Dungeons/MaraudonWickedGrottoPurple.lua",
                "Guides/Dungeons/TempleOfAtalHakkar.lua",
                "Guides/Dungeons/MaraudonEarthSongFallsInner.lua",
                "Guides/Dungeons/MaraudonPoisonFallsInner.lua",
                "Guides/Dungeons/OnyxiaSLairAttunement.lua",
                "Guides/Dungeons/Scholomance.lua",
                "Guides/Dungeons/BlackrockDepths.lua",
                "Guides/Dungeons/StratholmeLive.lua",
                "Guides/Dungeons/StratholmeUndead.lua",
                "Guides/Dungeons/DireMaulEast.lua",
                "Guides/Dungeons/DireMaulNorth.lua",
                "Guides/Dungeons/DireMaulWest.lua",
                "Guides/Dungeons/LowerBlackrockSpire.lua",
                "Guides/Dungeons/UpperBlackrockSpire.lua",
                "Guides/Dungeons/DireMaulNorthTribute.lua",
                "Guides/Dungeons/Tier05DungeonGearQuestline.lua",
                "Guides/Leveling/zephras-isle.lua",
                "Guides/Loremaster/Durotar.lua",
                "Guides/Loremaster/Mulgore.lua",
            )
        )
        for term in forbidden:
            self.assertNotIn(term.lower(), source.lower())
        dialog = (ROOT / "QuestDialog.lua").read_text(encoding="utf-8")
        self.assertIn("autoQuest", dialog)
        self.assertIn("AcceptQuest", dialog)
        self.assertIn("CompleteQuest", dialog)
        self.assertIn("GetQuestReward", dialog)

    def test_release_workflows_exist(self) -> None:
        workflow_names = sorted(path.name.lower() for path in (ROOT / ".github/workflows").iterdir())
        self.assertEqual(workflow_names, ["ci.yml", "release.yml", "update-forever-interface.yml"])

    def test_release_notes_match_version(self) -> None:
        version = (ROOT / "VERSION").read_text(encoding="utf-8").strip()
        notes = (ROOT / "RELEASE_NOTES.md").read_text(encoding="utf-8")
        self.assertIn(f"## {version} ", notes)
        self.assertEqual(1, notes.count("## "))

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
        for quest_id in (914, 959, 962, 1486, 1487, 1489, 1490, 1491, 3366, 6981):
            self.assertIn(str(quest_id), guide)
        for omitted_id in (999, 1500):
            self.assertNotIn(f"QuestState({omitted_id},", guide)
        self.assertIn('id = "dungeons-wailing-caverns"', guide)
        self.assertIn('category = "Dungeon Quest Guides"', guide)
        self.assertIn("level = { min = 15 }", guide)
        self.assertIn('{ faction = "Horde" }', guide)
        self.assertIn('{ faction = "Alliance" }', guide)
        self.assertIn("BOTH_FACTIONS", guide)

    def test_ruins_of_lordaeron_guide_covers_listed_quests(self) -> None:
        guide = (ROOT / "Guides/Dungeons/RuinsOfLordaeron.lua").read_text(encoding="utf-8")
        for quest_id in (92401, 92415, 92421, 92422, 95161, 95189, 95195, 95204, 95216, 95250, 97288, 97289, 97290, 97291, 97292):
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

    def test_excavation_site_wetlands_guide_covers_listed_quests(self) -> None:
        guide = (ROOT / "Guides/Dungeons/ExcavationSiteWetlands.lua").read_text(encoding="utf-8")
        for quest_id in (469, 98815, 95772, 95795, 95737, 95647, 95809, 95646, 95810, 98824, 95697, 95663, 95682, 95664, 98823):
            self.assertIn(str(quest_id), guide)
        self.assertIn('id = "dungeons-excavation-site-wetlands"', guide)
        self.assertIn('category = "Dungeon Quest Guides"', guide)
        self.assertIn("level = { min = 24 }", guide)
        self.assertIn('{ faction = "Alliance" }', guide)
        self.assertIn('{ faction = "Horde" }', guide)

    def test_zephras_isle_guide_covers_the_starter_path(self) -> None:
        guide = (ROOT / "Guides/Leveling/zephras-isle.lua").read_text(encoding="utf-8")
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

    def test_durotar_guide_is_loremaster_without_dungeons(self) -> None:
        guide = (ROOT / "Guides/Loremaster/Durotar.lua").read_text(encoding="utf-8")
        goals = guide.split("goals = {", 1)[-1]
        for quest_id in (4641, 788, 794, 837, 831, 924, 99052, 840, 5726, 5727):
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
        rules = (ROOT / ".cursor/skills/zone-loremaster-guide/SKILL.md").read_text(encoding="utf-8")
        self.assertIn("This is an elite. Bring a group.", rules)
        self.assertIn("activeOrCompleted", rules)
        self.assertIn('category = "Loremaster Guides"', rules)
        self.assertIn("leveling route", rules)
        self.assertIn("Zephras Isle", rules)
        self.assertIn("woven", rules)

    def test_mulgore_guide_is_loremaster_without_dungeons(self) -> None:
        guide = (ROOT / "Guides/Loremaster/Mulgore.lua").read_text(encoding="utf-8")
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

    def test_loremaster_routes_follow_leveling_and_keep_zone_quests(self) -> None:
        durotar = (ROOT / "Guides/Loremaster/Durotar.lua").read_text(encoding="utf-8")
        goals = durotar.split("goals = {", 1)[-1]
        self.assertIn("QuestState(1485,", goals)
        self.assertIn("QuestState(924,", goals)
        self.assertIn("follows the leveling route", durotar)
        mulgore = (ROOT / "Guides/Loremaster/Mulgore.lua").read_text(encoding="utf-8")
        self.assertIn("leveling route", mulgore)

    def test_era_leveling_guides_are_horde_routes(self) -> None:
        era_files = (
            "Guides/Leveling/durotar.lua",
            "Guides/Leveling/mulgore.lua",
            "Guides/Leveling/tirisfal-glades.lua",
            "Guides/Leveling/the-barrens-part-1.lua",
            "Guides/Leveling/silverpine-forest.lua",
            "Guides/Leveling/stonetalon-mountains-part-1.lua",
            "Guides/Leveling/the-barrens-part-2.lua",
            "Guides/Leveling/stonetalon-mountains-part-3.lua",
            "Guides/Leveling/the-barrens-part-3.lua",
            "Guides/Leveling/thousand-needles-part-1.lua",
            "Guides/Leveling/ashenvale-part-3.lua",
            "Guides/Leveling/stonetalon-mountains-part-4.lua",
            "Guides/Leveling/thousand-needles-part-2.lua",
            "Guides/Leveling/hillsbrad-foothills.lua",
            "Guides/Era/30-30-arathi-highlands.lua",
            "Guides/Era/30-31-stranglethorn-vale.lua",
            "Guides/Era/31-32-thousand-needles.lua",
            "Guides/Era/32-34-desolace.lua",
            "Guides/Era/34-36-stranglethorn-vale.lua",
            "Guides/Era/36-37-alterac-mountains.lua",
            "Guides/Era/37-38-arathi-highlands.lua",
            "Guides/Era/37-38-thousand-needles.lua",
            "Guides/Era/38-38-dustwallow-marsh.lua",
            "Guides/Era/38-40-stranglethorn-vale.lua",
            "Guides/Era/40-41-badlands.lua",
            "Guides/Era/41-42-swamp-of-sorrows.lua",
            "Guides/Era/42-43-stranglethorn-vale.lua",
            "Guides/Era/43-44-dustwallow-marsh.lua",
            "Guides/Era/44-44-desolace.lua",
            "Guides/Era/44-45-tanaris.lua",
            "Guides/Era/45-46-feralas.lua",
            "Guides/Era/46-47-azshara.lua",
            "Guides/Era/47-47-hinterlands.lua",
            "Guides/Era/47-47-stranglethorn-vale.lua",
            "Guides/Era/47-48-searing-gorge.lua",
            "Guides/Era/48-49-swamp-of-sorrows.lua",
            "Guides/Era/49-49-dustwallow-marsh.lua",
            "Guides/Era/49-50-feralas.lua",
            "Guides/Era/49-50-tanaris.lua",
            "Guides/Era/50-50-azshara.lua",
            "Guides/Era/50-51-hinterlands.lua",
            "Guides/Era/51-51-blasted-lands.lua",
            "Guides/Era/51-53-ungoro-crater.lua",
            "Guides/Era/53-54-burning-steppes.lua",
            "Guides/Era/54-54-felwood.lua",
            "Guides/Era/54-55-winterspring.lua",
            "Guides/Era/55-56-felwood.lua",
            "Guides/Era/56-56-western-plaguelands.lua",
            "Guides/Era/56-57-eastern-plaguelands.lua",
            "Guides/Era/57-58-western-plaguelands.lua",
            "Guides/Era/58-59-silithus.lua",
            "Guides/Era/59-60-winterspring.lua",
        )
        alliance_files = (
            "Guides/Leveling/dun-morogh.lua",
            "Guides/Leveling/elwynn-forest.lua",
            "Guides/Leveling/teldrassil.lua",
            "Guides/Leveling/darkshore-part-1.lua",
            "Guides/Leveling/westfall.lua",
            "Guides/Leveling/loch-modan.lua",
            "Guides/Leveling/redridge-mountains-part-1.lua",
            "Guides/Leveling/darkshore-part-2.lua",
            "Guides/Leveling/ashenvale-part-1.lua",
            "Guides/Leveling/stonetalon-mountains-part-2.lua",
            "Guides/Leveling/darkshore-part-3.lua",
            "Guides/Leveling/ashenvale-part-2.lua",
            "Guides/Leveling/wetlands.lua",
            "Guides/Leveling/redridge-mountains-part-2.lua",
            "Guides/Leveling/duskwood.lua",
            "Guides/Leveling/ashenvale-part-4.lua",
            "Guides/Era/30-31-wetlands.lua",
            "Guides/Era/31-32-hillsbrad-foothills.lua",
            "Guides/Era/32-33-stranglethorn-vale.lua",
            "Guides/Era/33-34-thousand-needles.lua",
            "Guides/Era/34-35-desolace.lua",
            "Guides/Era/36-37-stranglethorn-vale.lua",
            "Guides/Era/37-37-alterac-mountains.lua",
            "Guides/Era/37-38-arathi-highlands-alliance.lua",
            "Guides/Era/38-39-dustwallow-marsh.lua",
            "Guides/Era/39-40-stranglethorn-vale.lua",
            "Guides/Era/40-41-badlands-alliance.lua",
            "Guides/Era/41-42-swamp-of-sorrows-alliance.lua",
            "Guides/Era/42-43-stranglethorn-vale-alliance.lua",
            "Guides/Era/43-43-desolace.lua",
            "Guides/Era/43-44-tanaris.lua",
            "Guides/Era/44-46-feralas.lua",
            "Guides/Era/46-46-azshara.lua",
            "Guides/Era/46-46-hinterlands.lua",
            "Guides/Era/46-47-stranglethorn-vale.lua",
            "Guides/Era/47-48-searing-gorge-alliance.lua",
            "Guides/Era/48-49-feralas.lua",
            "Guides/Era/49-50-tanaris-alliance.lua",
            "Guides/Era/50-50-hinterlands.lua",
            "Guides/Era/50-51-blasted-lands.lua",
            "Guides/Era/51-52-ungoro-crater.lua",
            "Guides/Era/52-53-azshara.lua",
            "Guides/Era/53-54-felwood.lua",
            "Guides/Era/54-55-winterspring-alliance.lua",
            "Guides/Era/55-56-burning-steppes.lua",
            "Guides/Era/55-56-felwood-alliance.lua",
            "Guides/Era/56-57-western-plaguelands.lua",
            "Guides/Era/57-58-eastern-plaguelands.lua",
            "Guides/Era/57-58-western-plaguelands-alliance.lua",
            "Guides/Era/58-59-silithus-alliance.lua",
            "Guides/Era/59-60-winterspring-alliance.lua",
        )
        toc = (ROOT / "ForeverGuideMate.toc").read_text(encoding="utf-8")
        shipped = (ROOT / "tools/compile_addon.py").read_text(encoding="utf-8")
        rewritten_starters = {
            "Guides/Leveling/durotar.lua",
            "Guides/Leveling/mulgore.lua",
            "Guides/Leveling/tirisfal-glades.lua",
            "Guides/Leveling/dun-morogh.lua",
            "Guides/Leveling/elwynn-forest.lua",
            "Guides/Leveling/teldrassil.lua",
            "Guides/Leveling/westfall.lua",
            "Guides/Leveling/darkshore-part-1.lua",
            "Guides/Leveling/the-barrens-part-1.lua",
            "Guides/Leveling/silverpine-forest.lua",
            "Guides/Leveling/loch-modan.lua",
            "Guides/Leveling/redridge-mountains-part-1.lua",
            "Guides/Leveling/darkshore-part-2.lua",
            "Guides/Leveling/stonetalon-mountains-part-1.lua",
            "Guides/Leveling/ashenvale-part-1.lua",
            "Guides/Leveling/the-barrens-part-2.lua",
            "Guides/Leveling/stonetalon-mountains-part-2.lua",
            "Guides/Leveling/darkshore-part-3.lua",
            "Guides/Leveling/stonetalon-mountains-part-3.lua",
            "Guides/Leveling/redridge-mountains-part-2.lua",
            "Guides/Leveling/duskwood.lua",
            "Guides/Leveling/the-barrens-part-3.lua",
            "Guides/Leveling/thousand-needles-part-1.lua",
            "Guides/Leveling/ashenvale-part-2.lua",
            "Guides/Leveling/ashenvale-part-3.lua",
            "Guides/Leveling/ashenvale-part-4.lua",
            "Guides/Leveling/stonetalon-mountains-part-4.lua",
            "Guides/Leveling/thousand-needles-part-2.lua",
            "Guides/Leveling/wetlands.lua",
            "Guides/Leveling/hillsbrad-foothills.lua",
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
            if "(Era)" in head:
                self.assertNotIn(relative, toc)
                self.assertNotIn(relative, shipped)
            else:
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
            if "(Era)" in head:
                self.assertNotIn(relative, toc)
                self.assertNotIn(relative, shipped)
            else:
                self.assertIn(relative, toc)
                self.assertIn(relative, shipped)
        durotar = (ROOT / "Guides/Leveling/durotar.lua").read_text(encoding="utf-8")
        self.assertIn('id = "leveling-era-durotar"', durotar)
        self.assertIn('title = "Durotar"', durotar)
        self.assertIn("QuestState(4641,", durotar)
        self.assertIn("QuestObjective(786, 1)", durotar)
        self.assertIn("QuestObjective(786, 3)", durotar)
        self.assertIn("QuestState(752,", (ROOT / "Guides/Leveling/mulgore.lua").read_text(encoding="utf-8"))
        barrens = (ROOT / "Guides/Leveling/the-barrens-part-1.lua").read_text(encoding="utf-8")
        self.assertIn("QuestState(844,", barrens)
        self.assertIn("QuestState(98024,", barrens)
        self.assertIn("QuestState(97003,", barrens)
        self.assertNotIn("QuestState(97005,", barrens)
        self.assertNotIn("QuestState(95819,", barrens)
        self.assertNotIn("QuestState(98094,", barrens)
        westfall = (ROOT / "Guides/Leveling/westfall.lua").read_text(encoding="utf-8")
        self.assertIn('title = "Westfall"', westfall)
        self.assertIn("QuestState(92742,", westfall)
        self.assertIn("QuestState(98021,", westfall)
        self.assertNotIn("QuestState(92753,", westfall)
        self.assertNotIn("QuestState(93928,", westfall)
        silverpine = (ROOT / "Guides/Leveling/silverpine-forest.lua").read_text(encoding="utf-8")
        self.assertIn("QuestState(91920,", silverpine)
        self.assertNotIn("QuestState(95885,", silverpine)
        self.assertIn('id = "accept-429-wild-hearts"', silverpine)
        self.assertIn("Accept Wild Hearts from Rane Yorick", silverpine)
        self.assertNotIn("Dalar Dawnweaver in The Ivar Patch", silverpine)
        self.assertIn('dependsOn = { "turnin-429-wild-hearts" }', silverpine)
        self.assertIn('dependsOn = { "turnin-91921-return-to-quinn-again" }', silverpine)
        self.assertIn('dependsOn = { "turnin-99-arugal-s-folly" }', silverpine)
        self.assertIn('dependsOn = { "turnin-98298-arugals-folly" }', silverpine)
        barrens_olgra = (ROOT / "Guides/Leveling/the-barrens-part-1.lua").read_text(encoding="utf-8")
        self.assertIn('dependsOn = { "turnin-4921-lost-in-battle" }', barrens_olgra)
        tirisfal = (ROOT / "Guides/Leveling/tirisfal-glades.lua").read_text(encoding="utf-8")
        self.assertIn('dependsOn = { "turnin-356-rear-guard-patrol" }', tirisfal)
        teldrassil = (ROOT / "Guides/Leveling/teldrassil.lua").read_text(encoding="utf-8")
        self.assertIn('dependsOn = { "turnin-98391-the-sisterhood-of-elune" }', teldrassil)
        self.assertIn("Turn in Supplying the Sepulcher to Karos Razok", silverpine)
        prerequisites = (ROOT / "QuestPrerequisites.lua").read_text(encoding="utf-8")
        self.assertIn("quest = 430", prerequisites)
        self.assertIn("quests = { 429 }", prerequisites)
        self.assertIn("quest = 425", prerequisites)
        self.assertIn("quests = { 91921 }", prerequisites)
        self.assertIn("quest = 98299", prerequisites)
        self.assertIn("quests = { 98298 }", prerequisites)
        loch = (ROOT / "Guides/Leveling/loch-modan.lua").read_text(encoding="utf-8")
        self.assertIn("QuestState(86758,", loch)
        self.assertNotIn("QuestState(86776,", loch)
        redridge = (ROOT / "Guides/Leveling/redridge-mountains-part-2.lua").read_text(encoding="utf-8")
        self.assertIn("QuestState(98386,", redridge)
        self.assertNotIn("QuestState(95999,", redridge)
        duskwood = (ROOT / "Guides/Leveling/duskwood.lua").read_text(encoding="utf-8")
        self.assertIn("QuestState(96139,", duskwood)
        darkshore = (ROOT / "Guides/Leveling/darkshore-part-1.lua").read_text(encoding="utf-8")
        self.assertIn("QuestState(98025,", darkshore)
        self.assertNotIn("QuestState(97894,", darkshore)
        stonetalon = (ROOT / "Guides/Leveling/stonetalon-mountains-part-3.lua").read_text(encoding="utf-8")
        self.assertIn("QuestState(86576,", stonetalon)
        self.assertNotIn("QuestState(86574,", stonetalon)
        self.assertNotIn("QuestState(97538,", stonetalon)
        early = (ROOT / "Guides/Leveling/stonetalon-mountains-part-1.lua").read_text(encoding="utf-8")
        self.assertIn('title = "Stonetalon Mountains (Part 1)"', early)
        self.assertIn('id = "objective-1476-1-dalin-forgewright"', early)
        self.assertIn('id = "objective-1476-2-comar-villard"', early)
        self.assertIn('id = "objective-1069-deepmoss-spider-eggs"', early)
        self.assertIn("This is an elite. Bring a group.", early)
        self.assertNotIn("QuestState(86576,", early)
        self.assertNotIn("QuestState(97538,", early)
        self.assertNotIn("QuestState(79980,", early)
        self.assertNotIn("QuestState(79974,", early)
        self.assertNotIn("QuestState(80001,", early)
        alliance_stone = (ROOT / "Guides/Leveling/stonetalon-mountains-part-2.lua").read_text(encoding="utf-8")
        self.assertIn('title = "Stonetalon Mountains"', alliance_stone)
        stonetalon_horde_late = (ROOT / "Guides/Leveling/stonetalon-mountains-part-3.lua").read_text(
            encoding="utf-8"
        )
        self.assertIn('title = "Stonetalon Mountains (Part 2)"', stonetalon_horde_late)
        self.assertIn("QuestState(1093,", alliance_stone)
        self.assertNotIn("QuestState(86574,", alliance_stone)
        self.assertNotIn("QuestState(79980,", alliance_stone)
        self.assertNotIn("QuestState(79974,", alliance_stone)
        self.assertNotIn("QuestState(80001,", alliance_stone)
        ashenvale_leveling = (ROOT / "Guides/Leveling/ashenvale-part-1.lua").read_text(encoding="utf-8")
        self.assertIn('title = "Ashenvale (Part 1)"', ashenvale_leveling)
        self.assertIn("QuestState(1008,", ashenvale_leveling)
        self.assertNotIn("QuestState(79090,", ashenvale_leveling)
        southern = (ROOT / "Guides/Leveling/the-barrens-part-2.lua").read_text(encoding="utf-8")
        self.assertIn('id = "turnin-1069-deepmoss-spider-eggs"', southern)
        self.assertIn('id = "turnin-1094-further-instructions"', southern)
        self.assertIn('id = "turnin-882-ishamuhale"', southern)
        self.assertIn('id = "turnin-907-enraged-thunder-lizards"', southern)
        self.assertIn('id = "turnin-1483-ziz-fizziks"', early)
        self.assertIn('id = "turnin-1060-letter-to-jin-zil"', early)
        self.assertIn('id = "turnin-6562-trouble-in-the-deeps"', early)
        self.assertIn('id = "turnin-1483-ziz-fizziks"', alliance_stone)
        self.assertIn('id = "turnin-1034-the-ruins-of-stardust"', alliance_stone)
        self.assertIn('id = "objective-1134-pridewings-of-stonetalon"', alliance_stone)
        self.assertIn('id = "turnin-6421-boulderslide-ravine"', stonetalon)
        self.assertIn('id = "turnin-967-the-tower-of-althalaxx"', ashenvale_leveling)
        self.assertIn('{ quest = { id = 967, state = "completed" } }', ashenvale_leveling)
        westfall_turnin = (ROOT / "Guides/Leveling/westfall.lua").read_text(encoding="utf-8")
        self.assertIn('id = "turnin-109-report-to-gryan-stoutmantle"', westfall_turnin)
        self.assertIn('id = "turnin-860-sergra-darkthorn"', barrens)
        self.assertIn('id = "turnin-886-the-barrens-oases"', barrens)
        darkshore_later = (ROOT / "Guides/Leveling/darkshore-part-2.lua").read_text(encoding="utf-8")
        self.assertIn('id = "turnin-952-grove-of-the-ancients"', darkshore_later)
        ashenvale_later = (ROOT / "Guides/Leveling/ashenvale-part-2.lua").read_text(encoding="utf-8")
        self.assertIn('title = "Ashenvale (Part 2)"', ashenvale_later)
        self.assertIn('id = "turnin-1134-pridewings-of-stonetalon"', ashenvale_later)
        self.assertIn('id = "objective-1016-befouled-water-elemental"', ashenvale_later)
        self.assertIn('id = "objective-1016-elemental-bracers"', ashenvale_later)
        self.assertNotIn("QuestState(79090,", ashenvale_later)
        needles = (ROOT / "Guides/Leveling/thousand-needles-part-2.lua").read_text(encoding="utf-8")
        self.assertIn('title = "Thousand Needles (Part 2)"', needles)
        self.assertIn('id = "turnin-1063-the-elder-crone"', needles)
        self.assertIn('id = "objective-5064-1-secret-note-1"', needles)
        self.assertIn('id = "objective-5064-3-secret-note-3"', needles)
        wetlands = (ROOT / "Guides/Leveling/wetlands.lua").read_text(encoding="utf-8")
        self.assertIn('title = "Wetlands"', wetlands)
        self.assertIn('id = "turnin-1072-an-old-colleague"', wetlands)
        self.assertIn("QuestState(98197,", wetlands)
        self.assertIn('id = "objective-279-1-bluegill-murloc"', wetlands)
        self.assertIn('id = "objective-279-2-gobbler"', wetlands)
        self.assertNotIn("QuestState(98072,", wetlands)
        self.assertNotIn("QuestState(98459,", wetlands)
        self.assertIn("QuestState(98461,", wetlands)
        self.assertNotIn("QuestState(94494,", wetlands)
        southern_later = (ROOT / "Guides/Leveling/the-barrens-part-3.lua").read_text(encoding="utf-8")
        self.assertIn('title = "The Barrens (Part 3)"', southern_later)
        self.assertIn('id = "objective-879-1-kuz"', southern_later)
        self.assertIn('id = "objective-879-3-lok-orcbane"', southern_later)
        self.assertNotIn("QuestState(79192,", southern_later)
        self.assertNotIn("QuestState(98094,", southern_later)
        needles_early = (ROOT / "Guides/Leveling/thousand-needles-part-1.lua").read_text(encoding="utf-8")
        self.assertIn('title = "Thousand Needles (Part 1)"', needles_early)
        self.assertIn("QuestState(1149,", needles_early)
        horde_ashenvale = (ROOT / "Guides/Leveling/ashenvale-part-3.lua").read_text(encoding="utf-8")
        self.assertIn('title = "Ashenvale"', horde_ashenvale)
        self.assertIn("QuestState(97538,", horde_ashenvale)
        self.assertIn("This is an elite. Bring a group.", horde_ashenvale)
        self.assertNotIn("QuestState(79090,", horde_ashenvale)
        stonetalon_later = (ROOT / "Guides/Leveling/stonetalon-mountains-part-4.lua").read_text(encoding="utf-8")
        self.assertIn('title = "Stonetalon Mountains (Part 3)"', stonetalon_later)
        self.assertIn('id = "objective-97538-pigments-for-paints"', stonetalon_later)
        self.assertIn('id = "turnin-97538-pigments-for-paints"', stonetalon_later)
        self.assertIn('id = "objective-1068-1-xt-4"', stonetalon_later)
        self.assertIn('id = "objective-1068-2-xt-4"', stonetalon_later)
        self.assertNotIn("QuestState(79980,", stonetalon_later)
        self.assertNotIn("QuestState(79974,", stonetalon_later)
        self.assertNotIn("QuestState(86574,", stonetalon_later)
        hillsbrad = (ROOT / "Guides/Leveling/hillsbrad-foothills.lua").read_text(encoding="utf-8")
        self.assertIn('title = "Hillsbrad Foothills"', hillsbrad)
        self.assertIn("QuestState(494,", hillsbrad)
        self.assertIn("QuestState(95111,", hillsbrad)
        self.assertIn("QuestState(95125,", hillsbrad)
        self.assertIn("{ class = 2 }", hillsbrad)
        self.assertIn("{ race = 5 }", hillsbrad)
        self.assertNotIn("QuestState(98094,", hillsbrad)
        self.assertNotIn("QuestState(98095,", hillsbrad)
        self.assertNotIn("QuestState(95126,", hillsbrad)
        southern_text = (ROOT / "Guides/Leveling/the-barrens-part-3.lua").read_text(encoding="utf-8")
        self.assertIn("... and that note you found", southern_text)
        self.assertNotIn("QuestState(79007,", southern_text)
        self.assertIn("Hillsbrad Foothills", (ROOT / "Guides/Leveling/wetlands.lua").read_text(encoding="utf-8"))
        self.assertNotIn("Loch Modan", (ROOT / "Guides/Leveling/wetlands.lua").read_text(encoding="utf-8"))
        ashenvale_thirty = (ROOT / "Guides/Leveling/ashenvale-part-4.lua").read_text(encoding="utf-8")
        self.assertIn('title = "Ashenvale (Part 3)"', ashenvale_thirty)
        self.assertIn('id = "objective-1012-1-taneel-darkwood"', ashenvale_thirty)
        self.assertIn('id = "objective-1012-3-mavoris-cloudsbreak"', ashenvale_thirty)
        self.assertNotIn("QuestState(79090,", ashenvale_thirty)
        self.assertNotIn("QuestState(98461,", ashenvale_thirty)
        self.assertIn("QuestState(97250,", southern)
        self.assertIn("QuestState(98093,", southern)
        self.assertIn("QuestState(97279,", durotar)
        self.assertIn("QuestState(99052,", durotar)
        self.assertNotIn("QuestState(93739,", durotar)
        mulgore = (ROOT / "Guides/Leveling/mulgore.lua").read_text(encoding="utf-8")
        self.assertIn("QuestState(95805,", mulgore)
        self.assertIn("QuestState(97485,", mulgore)
        self.assertNotIn("QuestState(99196,", mulgore)
        teldrassil = (ROOT / "Guides/Leveling/teldrassil.lua").read_text(encoding="utf-8")
        self.assertIn("QuestState(97977,", teldrassil)
        self.assertIn("QuestState(98067,", teldrassil)
        self.assertNotIn("QuestState(8734,", teldrassil)
        elwynn = (ROOT / "Guides/Leveling/elwynn-forest.lua").read_text(encoding="utf-8")
        self.assertIn("QuestState(99127,", elwynn)
        self.assertNotIn("QuestState(91736,", elwynn)
        self.assertNotIn("QuestState(93963,", elwynn)
        dun = (ROOT / "Guides/Leveling/dun-morogh.lua").read_text(encoding="utf-8")
        self.assertIn("QuestState(98322,", dun)
        self.assertNotIn("QuestState(95041,", dun)
        tirisfal = (ROOT / "Guides/Leveling/tirisfal-glades.lua").read_text(encoding="utf-8")
        self.assertIn('title = "Tirisfal Glades"', tirisfal)
        self.assertNotIn('title = "1-12 Tirisfal Glades"', tirisfal)
        self.assertIn("QuestState(98389,", tirisfal)
        self.assertIn("QuestState(90902,", tirisfal)
        self.assertIn("QuestState(91209,", tirisfal)
        self.assertIn("QuestState(96895,", tirisfal)
        self.assertIn("QuestState(99153,", tirisfal)
        self.assertNotIn("QuestState(97891,", tirisfal)

    def test_lua_engine_tests_run_in_ci(self) -> None:
        workflow = (ROOT / ".github/workflows/ci.yml").read_text(encoding="utf-8")
        self.assertIn("lua5.1 tests/lua/run.lua", workflow)
        self.assertIn("lua5.1 tests/lua/ui.lua", workflow)
        self.assertIn("lua5.1 tests/lua/lint.lua", workflow)
        self.assertIn("tools/guide_release.py validate-notes", workflow)
        self.assertIn("BigWigsMods/packager", workflow)
        release = (ROOT / ".github/workflows/release.yml").read_text(encoding="utf-8")
        self.assertIn("BigWigsMods/packager@v2", release)
        self.assertIn("tools/guide_release.py validate", release)
        interface = (ROOT / ".github/workflows/update-forever-interface.yml").read_text(encoding="utf-8")
        self.assertIn('cron: "0 12 * * 3"', interface)
        self.assertIn("tools/update_forever_interface.py", interface)

    def test_ux_contract(self) -> None:
        core = (ROOT / "Core.lua").read_text(encoding="utf-8")
        ui = (ROOT / "UI.lua").read_text(encoding="utf-8")
        navigation = (ROOT / "Navigation.lua").read_text(encoding="utf-8")
        map_pins = (ROOT / "MapPins.lua").read_text(encoding="utf-8")
        toc = (ROOT / "ForeverGuideMate.toc").read_text(encoding="utf-8")
        self.assertIn("schemaVersion = 4", core)
        self.assertIn("hideInCombat = false", core)
        self.assertIn("showMinimapButton = true", core)
        self.assertIn("guideScale = 1", core)
        self.assertIn('point = "LEFT", relativePoint = "LEFT", x = 0, y = 0', core)
        self.assertNotIn('selectedGuide = "dungeons-ragefire-chasm-horde"', core)
        self.assertIn('point = "TOP", relativePoint = "TOP", x = 0, y = -90', core)
        self.assertIn("function UI:OpenTracker()", ui)
        self.assertIn("function UI:CloseTracker()", ui)
        self.assertIn("function UI:OpenGuideBrowser()", ui)
        self.assertIn("function UI:ToggleGuideBrowser()", ui)
        self.assertIn("function UI:ToggleGuideTracker()", ui)
        self.assertIn("function UI:OpenSettings()", ui)
        self.assertIn("function UI:CloseSettingsIfOpen()", ui)
        self.assertIn("if UI.PlayerInCombat() then return end", ui)
        self.assertIn("ForeverGuideMateMinimapButton", (ROOT / "MinimapButton.lua").read_text(encoding="utf-8"))
        self.assertIn("SetClampedToScreen(true)", ui)
        self.assertNotIn("CreateLine", ui)
        self.assertIn("TomTomWaypoints", ui)
        self.assertIn("AddWaypoint", (ROOT / "TomTomWaypoints.lua").read_text(encoding="utf-8"))
        self.assertNotIn("NavigationArrow", ui)
        self.assertIn("GetMapRectOnMap", navigation)
        self.assertIn('"Waypoint-MapPin-Tracked"', map_pins)
        self.assertIn("MapCanvasDataProviderMixin", map_pins)
        self.assertNotIn("AcquirePin", map_pins)
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
            loaded = [
                line.strip()
                for line in toc.splitlines()
                if line.strip() and not line.startswith("##")
            ]
            for name in loaded:
                self.assertTrue((output / name).is_file(), name)
            version = (ROOT / "VERSION").read_text(encoding="utf-8").strip()
            self.assertIn(f"## Version: {version}", toc.splitlines())
            self.assertNotIn("@project-version@", toc)
            for excluded in ("tests", "tools", ".github", "__pycache__"):
                self.assertFalse((output / excluded).exists())

    def test_remaining_forever_weaves(self) -> None:
        darkshore_part_1 = (ROOT / "Guides/Leveling/darkshore-part-1.lua").read_text(encoding="utf-8")
        darkshore_part_2 = (ROOT / "Guides/Leveling/darkshore-part-2.lua").read_text(encoding="utf-8")
        darkshore_part_3 = (ROOT / "Guides/Leveling/darkshore-part-3.lua").read_text(encoding="utf-8")
        wetlands = (ROOT / "Guides/Leveling/wetlands.lua").read_text(encoding="utf-8")
        self.assertIn('id = "accept-98461-unrequited-love"', darkshore_part_3)
        self.assertIn("level = { min = 21 }", darkshore_part_3[darkshore_part_3.find("accept-98461"):darkshore_part_3.find("accept-98461") + 400])
        self.assertNotIn("QuestState(98461,", darkshore_part_1)
        self.assertNotIn("QuestState(98461,", darkshore_part_2)
        self.assertIn('id = "turnin-98461-unrequited-love"', wetlands)
        self.assertIn('{ quest = { id = 98461, state = "active" } }', wetlands)

        dun_morogh = (ROOT / "Guides/Leveling/dun-morogh.lua").read_text(encoding="utf-8")
        grund = dun_morogh.find('id = "accept-97277-grund-and-gozwin"')
        coldridge = dun_morogh.find('id = "accept-179-dwarven-outfitters"')
        self.assertGreater(grund, coldridge)
        self.assertIn("level = { min = 6 }", dun_morogh[grund:grund + 350])
        self.assertIn("0.2860, 0.6740", dun_morogh[grund:grund + 900])

        mulgore = (ROOT / "Guides/Leveling/mulgore.lua").read_text(encoding="utf-8")
        self.assertIn("QuestState(76156,", mulgore)
        self.assertIn("QuestState(76240,", mulgore)
        self.assertNotIn("QuestState(76160,", mulgore)
        self.assertIn("{ class = { 1, 7, 11 } }", mulgore)
        self.assertIn("{ race = { 2, 6, 8 } }", mulgore)
        self.assertIn("{ class = 7 }", mulgore)

        shaman = (ROOT / "Guides/Class/Shaman.lua").read_text(encoding="utf-8")
        warrior = (ROOT / "Guides/Class/Warrior.lua").read_text(encoding="utf-8")
        druid = (ROOT / "Guides/Class/Druid.lua").read_text(encoding="utf-8")
        for quest_id in (76156, 76160, 76240):
            self.assertIn(f"QuestState({quest_id},", shaman)
        for quest_id in (76156, 76160):
            self.assertIn(f"QuestState({quest_id},", warrior)
            self.assertIn(f"QuestState({quest_id},", druid)
        self.assertNotIn("QuestState(76240,", warrior)
        self.assertNotIn("QuestState(76240,", druid)

        barrens = (ROOT / "Guides/Leveling/the-barrens-part-1.lua").read_text(encoding="utf-8")
        bruuz = barrens.find('id = "accept-92706-wanted-bruuz"')
        self.assertIn("priority = 2961", barrens[bruuz:bruuz + 200])
        self.assertNotIn("worked in Hillsbrad", barrens)

    def test_compiler_installs_into_wow_addons(self) -> None:
        compiler = compiler_module()
        configured = compiler.wow_addons_dir()
        self.assertEqual(
            configured.as_posix(),
            "/Applications/World of Warcraft/_classic_beta_/Interface/AddOns",
        )
        with tempfile.TemporaryDirectory() as temporary_directory:
            root = Path(temporary_directory)
            output = root / "build" / "ForeverGuideMate"
            addons = root / "AddOns"
            addons.mkdir()
            installed = compiler.install_addon(addons, output=output)
            self.assertEqual(installed, addons / "ForeverGuideMate")
            self.assertTrue((installed / "ForeverGuideMate.toc").is_file())
            self.assertFalse((installed / "tests").exists())
            missing = root / "missing"
            with self.assertRaises(FileNotFoundError):
                compiler.install_addon(missing, output=output)
