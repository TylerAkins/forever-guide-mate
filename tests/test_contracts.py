"""Project-contract tests for the minimal addon scaffold."""
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
    "tools/compile_addon.py",
    "tests/test_contracts.py",
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
        self.assertEqual([line for line in lines if line and not line.startswith("##")], ["Core.lua"])
        self.assertFalse(any("SavedVariables" in line for line in lines))
        self.assertFalse(any("Dependencies" in line for line in lines))

    def test_minimal_namespace_shell(self) -> None:
        core = (ROOT / "Core.lua").read_text(encoding="utf-8")
        self.assertIn("local ADDON_NAME, ns = ...", core)
        self.assertIn("ForeverGuideMate = ns", core)
        for forbidden in ("RegisterEvent", "CreateFrame", "SLASH_", "InterfaceOptions"):
            self.assertNotIn(forbidden, core)

    def test_version_and_packaging_contract(self) -> None:
        self.assertEqual((ROOT / "VERSION").read_text(encoding="utf-8").strip(), "0.1.0")
        self.assertIn("package-as: ForeverGuideMate", (ROOT / ".pkgmeta").read_text(encoding="utf-8"))

    def test_readme_says_scaffold(self) -> None:
        self.assertIn("only the initial addon scaffold", (ROOT / "README.md").read_text(encoding="utf-8").lower())

    def test_no_guide_or_probe_data_exists(self) -> None:
        forbidden = ("Probe", "ATT", "guide database")
        source = "\n".join(
            (ROOT / name).read_text(encoding="utf-8")
            for name in ("ForeverGuideMate.toc", "Core.lua")
        )
        for term in forbidden:
            self.assertNotIn(term.lower(), source.lower())

    def test_no_release_workflow_exists(self) -> None:
        workflow_names = [path.name.lower() for path in (ROOT / ".github/workflows").iterdir()]
        self.assertEqual(workflow_names, ["ci.yml"])

    def test_compiler_dry_run_and_build_output(self) -> None:
        compiler = compiler_module()
        with tempfile.TemporaryDirectory() as temporary_directory:
            output = Path(temporary_directory) / "ForeverGuideMate"
            expected = [output / name for name in compiler.SHIPPED]
            self.assertEqual(compiler.compile_addon(output, dry_run=True), expected)
            self.assertFalse(output.exists())
            built = compiler.compile_addon(output)
            self.assertEqual(built, expected)
            self.assertEqual({path.name for path in output.iterdir()}, set(compiler.SHIPPED))
            toc = (output / "ForeverGuideMate.toc").read_text(encoding="utf-8")
            self.assertIn("0.1.0", toc)
            self.assertNotIn("@project-version@", toc)
            for excluded in ("tests", "tools", ".github", "__pycache__"):
                self.assertFalse((output / excluded).exists())
