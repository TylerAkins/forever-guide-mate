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
    "tools/compile_addon.py",
    "tests/test_contracts.py",
    "tests/lua/run.lua",
    "tests/lua/ui.lua",
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
            )
        )
        for term in forbidden:
            self.assertNotIn(term.lower(), source.lower())

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
        self.assertNotIn('{ faction = "Alliance" }', guide)

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
        self.assertNotIn("97963", guide)

    def test_lua_engine_tests_run_in_ci(self) -> None:
        workflow = (ROOT / ".github/workflows/ci.yml").read_text(encoding="utf-8")
        self.assertIn("lua5.1 tests/lua/run.lua", workflow)
        self.assertIn("lua5.1 tests/lua/ui.lua", workflow)

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
