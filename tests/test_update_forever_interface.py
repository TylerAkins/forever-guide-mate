#!/usr/bin/env python3
"""Tests for automated WoW Forever interface updates."""

from __future__ import annotations

import sys
import tempfile
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT))

from tools import update_forever_interface

VERSIONS = """\
Region!STRING:0|BuildId!DEC:4|VersionsName!String:0
## seqn = 1
us|69913|1.60.1.69913
eu|69913|1.60.1.69913
"""


class ForeverInterfaceUpdateTests(unittest.TestCase):
    def test_parses_forever_build_and_interface(self) -> None:
        build = update_forever_interface.parse_versions(VERSIONS)

        self.assertEqual("1.60.1.69913", build.version)
        self.assertEqual(69913, build.build_id)
        self.assertEqual(16001, build.interface)

    def test_rejects_malformed_version_and_feed(self) -> None:
        with self.assertRaisesRegex(ValueError, "Invalid WoW Forever"):
            update_forever_interface.interface_from_version("1.60.1")
        with self.assertRaisesRegex(ValueError, "missing required columns"):
            update_forever_interface.parse_versions("Region!STRING:0|BuildId!DEC:4\n")

    def test_new_interface_prepares_patch_release_idempotently(self) -> None:
        with tempfile.TemporaryDirectory() as temp_dir:
            root = self._repository_fixture(Path(temp_dir))
            build = update_forever_interface.GameBuild("1.60.2.70123", 70123, 16002)

            result = update_forever_interface.prepare_update(
                build, root=root, release_date="2026-09-23"
            )

            self.assertTrue(result.changed)
            self.assertEqual("0.1.1", result.addon_version)
            self.assertIn(
                "## Interface: 16002",
                (root / "ForeverGuideMate.toc").read_text(encoding="utf-8"),
            )
            self.assertEqual("0.1.1\n", (root / "VERSION").read_text(encoding="utf-8"))
            changelog = (root / "CHANGELOG.md").read_text(encoding="utf-8")
            self.assertIn("## 0.1.1 - 2026-09-23", changelog)
            self.assertIn("1.60.2.70123 (Interface 16002)", changelog)
            notes = (root / "RELEASE_NOTES.md").read_text(encoding="utf-8")
            self.assertIn("## 0.1.1 - 2026-09-23", notes)
            self.assertIn("1.60.2.70123 (Interface 16002)", notes)
            self.assertEqual(1, notes.count("## "))

            second = update_forever_interface.prepare_update(build, root=root)
            self.assertFalse(second.changed)

    def test_current_interface_and_build_only_changes_are_no_ops(self) -> None:
        with tempfile.TemporaryDirectory() as temp_dir:
            root = self._repository_fixture(Path(temp_dir))
            before = self._release_files(root)

            result = update_forever_interface.prepare_update(
                update_forever_interface.GameBuild("1.60.1.79999", 79999, 16001),
                root=root,
            )

            self.assertFalse(result.changed)
            self.assertEqual(before, self._release_files(root))

    def test_dry_run_reports_without_writing(self) -> None:
        with tempfile.TemporaryDirectory() as temp_dir:
            root = self._repository_fixture(Path(temp_dir))
            before = self._release_files(root)

            result = update_forever_interface.prepare_update(
                update_forever_interface.GameBuild("1.60.2.70123", 70123, 16002),
                root=root,
                release_date="2026-09-23",
                dry_run=True,
            )

            self.assertTrue(result.changed)
            self.assertEqual("0.1.1", result.addon_version)
            self.assertEqual(before, self._release_files(root))

    def test_refuses_interface_downgrade(self) -> None:
        with tempfile.TemporaryDirectory() as temp_dir:
            root = self._repository_fixture(Path(temp_dir), interface=16002)
            build = update_forever_interface.GameBuild("1.60.1.69913", 69913, 16001)

            with self.assertRaisesRegex(ValueError, "Refusing to downgrade"):
                update_forever_interface.prepare_update(build, root=root)

    @staticmethod
    def _repository_fixture(root: Path, *, interface: int = 16001) -> Path:
        (root / "ForeverGuideMate.toc").write_text(
            f"## Interface: {interface}\n## Version: @project-version@\n",
            encoding="utf-8",
        )
        (root / "VERSION").write_text("0.1.0\n", encoding="utf-8")
        (root / "CHANGELOG.md").write_text(
            "# Changelog\n\nNotable changes.\n\n"
            "## 0.1.0 - 2026-09-19\n\n- Existing release.\n",
            encoding="utf-8",
        )
        (root / "RELEASE_NOTES.md").write_text(
            "## 0.1.0 - 2026-09-19\n\n- Existing release.\n",
            encoding="utf-8",
        )
        return root

    @staticmethod
    def _release_files(root: Path) -> dict[str, str]:
        return {
            name: (root / name).read_text(encoding="utf-8")
            for name in (
                "ForeverGuideMate.toc",
                "VERSION",
                "CHANGELOG.md",
                "RELEASE_NOTES.md",
            )
        }


if __name__ == "__main__":
    unittest.main()
