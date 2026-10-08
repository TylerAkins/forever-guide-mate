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
    "UITheme.lua",
    "UI.lua",
    "TomTomWaypoints.lua",
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
    "Guides/Dungeons/RagefireChasm.lua",
    "Guides/Dungeons/WailingCaverns.lua",
    "Guides/Dungeons/RuinsOfLordaeron.lua",
    "Guides/Dungeons/Deadmines.lua",
    "Guides/Dungeons/HallOfThanes.lua",
    "Guides/Dungeons/ExcavationSiteWetlands.lua",
    "Guides/Dungeons/CityOfDalaranAttunement.lua",
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
    "Guides/Leveling/tirisfal-glades.lua",
    "Guides/Leveling/mulgore.lua",
    "Guides/Leveling/durotar.lua",
    "Guides/Leveling/horde-silverpine-forest.lua",
    "Guides/Leveling/horde-the-barrens-and-stonetalon-mountain.lua",
    "Guides/Leveling/horde-ashenvale.lua",
    "Guides/Leveling/horde-hillsbrad-foothills.lua",
    "Guides/Leveling/horde-the-barrens.lua",
    "Guides/Leveling/horde-stonetalon-mountains.lua",
    "Guides/Leveling/horde-ashenvale-part-2.lua",
    "Guides/Leveling/horde-thousand-needles.lua",
    "Guides/Leveling/horde-hillsbrad-foothills-part-2.lua",
    "Guides/Leveling/horde-arathi-highlands.lua",
    "Guides/Leveling/horde-thousand-needles-part-2.lua",
    "Guides/Leveling/horde-desolace.lua",
    "Guides/Leveling/horde-stranglethorn-vale.lua",
    "Guides/Leveling/horde-dustwallow-marsh.lua",
    "Guides/Leveling/horde-alterac-mountains-and-arathi-highlands.lua",
    "Guides/Leveling/horde-badlands.lua",
    "Guides/Leveling/horde-stranglethorn-vale-and-swamp-of-sorrows.lua",
    "Guides/Leveling/horde-desolace-part-2.lua",
    "Guides/Leveling/horde-tanaris.lua",
    "Guides/Leveling/horde-dustwallow-marsh-part-2.lua",
    "Guides/Leveling/horde-tanaris-part-2.lua",
    "Guides/Leveling/horde-feralas.lua",
    "Guides/Leveling/horde-stranglethorn-vale-part-2.lua",
    "Guides/Leveling/horde-swamp-of-sorrows.lua",
    "Guides/Leveling/horde-tanaris-and-dustwallow-marsh.lua",
    "Guides/Leveling/horde-the-hinterlands.lua",
    "Guides/Leveling/horde-feralas-and-ungoro-crater.lua",
    "Guides/Leveling/horde-stranglethorn-vale-and-swamp-of-sorrows-part-2.lua",
    "Guides/Leveling/horde-blasted-lands.lua",
    "Guides/Leveling/horde-searing-gorge.lua",
    "Guides/Leveling/horde-burning-steppes-and-azshara.lua",
    "Guides/Leveling/horde-felwood-and-winterspring.lua",
    "Guides/Leveling/horde-ungoro-crater.lua",
    "Guides/Leveling/horde-azshara.lua",
    "Guides/Leveling/horde-felwood-and-winterspring-part-2.lua",
    "Guides/Leveling/horde-western-and-eastern-plaguelands.lua",
    "Guides/Leveling/horde-winterspring.lua",
    "Guides/Leveling/horde-silithus.lua",
    "Guides/Leveling/elwynn-forest.lua",
    "Guides/Leveling/dun-morogh.lua",
    "Guides/Leveling/teldrassil.lua",
    "Guides/Leveling/alliance-westfall.lua",
    "Guides/Leveling/alliance-darkshore.lua",
    "Guides/Leveling/alliance-loch-modan.lua",
    "Guides/Leveling/alliance-redridge-and-westfall.lua",
    "Guides/Leveling/alliance-darkshore-part-2.lua",
    "Guides/Leveling/alliance-ashenvale-and-stonetalon-mountains.lua",
    "Guides/Leveling/alliance-wetlands.lua",
    "Guides/Leveling/alliance-duskwood-and-redridge-mountains.lua",
    "Guides/Leveling/alliance-wetlands-part-2.lua",
    "Guides/Leveling/alliance-stonetalon-mountains-and-ashenvale.lua",
    "Guides/Leveling/alliance-duskwood-and-stranglethorn-vale.lua",
    "Guides/Leveling/alliance-hillsbrad-foothills-and-arathi-highlands.lua",
    "Guides/Leveling/alliance-dustwallow-marsh-and-thousand-needles.lua",
    "Guides/Leveling/alliance-stranglethorn-vale.lua",
    "Guides/Leveling/alliance-desolace.lua",
    "Guides/Leveling/alliance-stranglethorn-vale-part-2.lua",
    "Guides/Leveling/alliance-swamp-of-sorrows.lua",
    "Guides/Leveling/alliance-arathi-highlands-and-alterac-mountains.lua",
    "Guides/Leveling/alliance-dustwallow-marsh.lua",
    "Guides/Leveling/alliance-desolace-part-2.lua",
    "Guides/Leveling/alliance-badlands.lua",
    "Guides/Leveling/alliance-stranglethorn-vale-part-3.lua",
    "Guides/Leveling/alliance-swamp-of-sorrows-part-2.lua",
    "Guides/Leveling/alliance-tanaris.lua",
    "Guides/Leveling/alliance-feralas-and-tanaris.lua",
    "Guides/Leveling/alliance-the-hinterlands.lua",
    "Guides/Leveling/alliance-tanaris-part-2.lua",
    "Guides/Leveling/alliance-ungoro-crater.lua",
    "Guides/Leveling/alliance-stranglethorn-vale-part-4.lua",
    "Guides/Leveling/alliance-searing-gorge.lua",
    "Guides/Leveling/alliance-blasted-lands-and-burning-steppes.lua",
    "Guides/Leveling/alliance-western-plaguelands.lua",
    "Guides/Leveling/alliance-azshara-and-felwood.lua",
    "Guides/Leveling/alliance-feralas-and-azshara.lua",
    "Guides/Leveling/alliance-ungoro-crater-part-2.lua",
    "Guides/Leveling/alliance-winterspring-and-felwood.lua",
    "Guides/Leveling/alliance-burning-steppes.lua",
    "Guides/Leveling/alliance-western-and-eastern-plaguelands.lua",
    "Guides/Leveling/alliance-winterspring.lua",
    "Guides/Leveling/alliance-silithus.lua",
    "Guides/Class/Warrior.lua",
    "Guides/Class/Paladin.lua",
    "Guides/Class/Hunter.lua",
    "Guides/Class/Rogue.lua",
    "Guides/Class/Priest.lua",
    "Guides/Class/Shaman.lua",
    "Guides/Class/Mage.lua",
    "Guides/Class/Warlock.lua",
    "Guides/Class/Druid.lua",
    "Guides/Miscellaneous/LibraryBooks.lua",
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
        load_order = [line for line in lines if line and not line.startswith("##")]
        self.assertIn("Core.lua", load_order)
        self.assertIn("SkipLineage.lua", load_order)
        self.assertLess(load_order.index("Core.lua"), load_order.index("GuideEngine.lua"))
        self.assertLess(load_order.index("GuideEngine.lua"), load_order.index("SkipLineage.lua"))
        for path in load_order:
            self.assertTrue((ROOT / path).is_file(), f"missing TOC load path: {path}")
        # Horde Casual spine: Silverpine before Barrens in registration order.
        if "Guides/Leveling/horde-silverpine-forest.lua" in load_order:
            self.assertLess(
                load_order.index("Guides/Leveling/horde-silverpine-forest.lua"),
                load_order.index("Guides/Leveling/horde-the-barrens-and-stonetalon-mountain.lua"),
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

    def test_library_books_guide_registers_miscellaneous_category(self) -> None:
        guide = (ROOT / "Guides/Miscellaneous/LibraryBooks.lua").read_text(encoding="utf-8")
        self.assertIn('id = "misc-library-books"', guide)
        self.assertIn('category = "Miscellaneous Guides"', guide)
        self.assertIn("QuestState(78150,", guide)
        self.assertIn("QuestState(79536,", guide)
        self.assertIn("QuestState(82208,", guide)
        self.assertIn('dependsOn = { "book-baxtan-destructive-magics" }', guide)
        self.assertIn('dependsOn = { "book-conjurers-codex" }', guide)
        self.assertIn('dependsOn = { "book-scourge-misunderstood" }', guide)
        self.assertGreaterEqual(guide.count('kind = "note"'), 35)
        ui = (ROOT / "UI.lua").read_text(encoding="utf-8")
        self.assertIn('category == "Miscellaneous Guides"', ui)

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
                "UITheme.lua",
                "UI.lua",
                "Guides/Dungeons/RagefireChasm.lua",
                "Guides/Dungeons/WailingCaverns.lua",
                "Guides/Dungeons/RuinsOfLordaeron.lua",
                "Guides/Dungeons/Deadmines.lua",
                "Guides/Dungeons/HallOfThanes.lua",
                "Guides/Dungeons/ExcavationSiteWetlands.lua",
                "Guides/Dungeons/CityOfDalaranAttunement.lua",
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

    def test_city_of_dalaran_attunement_guide_covers_horde_key_chain(self) -> None:
        guide = (ROOT / "Guides/Dungeons/CityOfDalaranAttunement.lua").read_text(encoding="utf-8")
        for quest_id in (544, 93680, 545, 92434, 96984):
            self.assertIn(str(quest_id), guide)
        self.assertNotIn("accept-556-", guide)
        self.assertNotIn("accept-557-", guide)
        self.assertIn('id = "dungeons-city-of-dalaran-attunement"', guide)
        self.assertIn('category = "Dungeon Quest Guides"', guide)
        self.assertIn("level = { min = 30 }", guide)
        self.assertIn('{ faction = "Horde" }', guide)
        self.assertNotIn('{ faction = "Alliance" }', guide)
        self.assertIn("accept-96984-heart-of-disruption", guide)

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
        horde_files = (
            "Guides/Leveling/durotar.lua",
            "Guides/Leveling/mulgore.lua",
            "Guides/Leveling/tirisfal-glades.lua",
            "Guides/Leveling/horde-silverpine-forest.lua",
            "Guides/Leveling/horde-the-barrens-and-stonetalon-mountain.lua",
            "Guides/Leveling/horde-ashenvale.lua",
            "Guides/Leveling/horde-thousand-needles.lua",
            "Guides/Leveling/horde-hillsbrad-foothills-part-2.lua",
            "Guides/Leveling/horde-silithus.lua",
        )
        alliance_files = (
            "Guides/Leveling/dun-morogh.lua",
            "Guides/Leveling/elwynn-forest.lua",
            "Guides/Leveling/teldrassil.lua",
            "Guides/Leveling/alliance-westfall.lua",
            "Guides/Leveling/alliance-darkshore.lua",
            "Guides/Leveling/alliance-loch-modan.lua",
            "Guides/Leveling/alliance-duskwood-and-stranglethorn-vale.lua",
            "Guides/Leveling/alliance-silithus.lua",
        )
        toc = (ROOT / "ForeverGuideMate.toc").read_text(encoding="utf-8")
        for path in horde_files + alliance_files:
            self.assertTrue((ROOT / path).is_file(), path)
            self.assertIn(path, toc)
            text = (ROOT / path).read_text(encoding="utf-8")
            self.assertIn("casualSpine = true", text)
            if path in horde_files:
                self.assertIn('{ faction = "Horde" }', text)
                self.assertNotIn('{ faction = "Alliance" }', text)
            else:
                self.assertIn('{ faction = "Alliance" }', text)
                self.assertNotIn('{ faction = "Horde" }', text)
        silverpine = (ROOT / "Guides/Leveling/horde-silverpine-forest.lua").read_text(encoding="utf-8")
        self.assertIn("{ race = 5 }", silverpine)
        load_order = [
            line.strip()
            for line in toc.splitlines()
            if line.strip().startswith("Guides/")
        ]
        self.assertLess(
            load_order.index("Guides/Leveling/horde-silverpine-forest.lua"),
            load_order.index("Guides/Leveling/horde-the-barrens-and-stonetalon-mountain.lua"),
        )


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
        """Forever quests (id >= 90000) are ported onto Casual Leveling spines."""
        darkshore = (ROOT / "Guides/Leveling/alliance-darkshore.lua").read_text(encoding="utf-8")
        darkshore2 = (ROOT / "Guides/Leveling/alliance-darkshore-part-2.lua").read_text(encoding="utf-8")
        wetlands = (ROOT / "Guides/Leveling/alliance-wetlands.lua").read_text(encoding="utf-8")
        # Woven steps use woven- ids; quest state still carries Forever ids.
        self.assertTrue(
            "QuestState(98461," in darkshore2 or "QuestState(98461," in wetlands
            or "woven-" in darkshore2,
            "Forever Unrequited Love weave should appear on Alliance Darkshore/Wetlands spine",
        )
        dun_morogh = (ROOT / "Guides/Leveling/dun-morogh.lua").read_text(encoding="utf-8")
        self.assertIn("casualSpine = true", dun_morogh)
        self.assertTrue(
            "97277" in dun_morogh or "woven-" in dun_morogh,
            "Dun Morogh Forever weave (Grund) should be present or woven-",
        )
        mulgore = (ROOT / "Guides/Leveling/mulgore.lua").read_text(encoding="utf-8")
        self.assertIn("casualSpine = true", mulgore)
        barrens = (
            ROOT / "Guides/Leveling/horde-the-barrens-and-stonetalon-mountain.lua"
        ).read_text(encoding="utf-8")
        self.assertIn("casualSpine = true", barrens)
        self.assertTrue(
            any(token in barrens for token in ("woven-", "QuestState(9", "QuestObjective(9")),
            "Barrens Casual spine should carry Forever woven steps",
        )
        shaman = (ROOT / "Guides/Class/Shaman.lua").read_text(encoding="utf-8")
        self.assertIn("QuestState(76156,", shaman)


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
