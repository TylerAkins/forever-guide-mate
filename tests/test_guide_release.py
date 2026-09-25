#!/usr/bin/env python3
"""Tests for automated Forever GuideMate release validation."""

from __future__ import annotations

import importlib.util
import sys
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SCRIPT = ROOT / "tools" / "guide_release.py"
SPEC = importlib.util.spec_from_file_location("guide_release", SCRIPT)
assert SPEC and SPEC.loader
GUIDE_RELEASE = importlib.util.module_from_spec(SPEC)
sys.modules[SPEC.name] = GUIDE_RELEASE
SPEC.loader.exec_module(GUIDE_RELEASE)


class GuideReleaseTests(unittest.TestCase):
    def test_release_notes_reject_stale_versions_and_email_addresses(self) -> None:
        version = GUIDE_RELEASE.Version.parse("0.1.1")
        with self.assertRaisesRegex(ValueError, "exactly one release heading"):
            GUIDE_RELEASE.validate_release_notes("## 0.1.0 - old\n", version)
        with self.assertRaisesRegex(ValueError, "email addresses"):
            GUIDE_RELEASE.validate_release_notes(
                "## 0.1.1 - current\n\n- Contact developer@example.com.\n",
                version,
            )

    def test_repository_release_notes_match_current_version(self) -> None:
        version = GUIDE_RELEASE.Version.parse((ROOT / "VERSION").read_text(encoding="utf-8"))
        GUIDE_RELEASE.validate_release_notes(
            (ROOT / "RELEASE_NOTES.md").read_text(encoding="utf-8"), version
        )

    def test_invalid_versions_fail(self) -> None:
        with self.assertRaisesRegex(ValueError, "Invalid stable version"):
            GUIDE_RELEASE.Version.parse("v0.1.0")

    def test_automated_release_requires_exact_patch_and_content_change(self) -> None:
        self.assertIsNone(
            GUIDE_RELEASE.plan_automated_release(
                "0.1.0",
                "0.1.0",
                release_content_changed=False,
            )
        )
        self.assertEqual(
            "v0.1.1",
            GUIDE_RELEASE.plan_automated_release(
                "0.1.0",
                "0.1.1",
                release_content_changed=True,
            ),
        )
        with self.assertRaisesRegex(ValueError, "must advance from 0.1.0 to 0.1.1"):
            GUIDE_RELEASE.plan_automated_release(
                "0.1.0",
                "0.1.2",
                release_content_changed=True,
            )

    def test_tag_planning_rejects_collisions(self) -> None:
        self.assertEqual("create", GUIDE_RELEASE.plan_tag(None, "abc123"))
        self.assertEqual("reuse", GUIDE_RELEASE.plan_tag("abc123", "abc123"))
        with self.assertRaisesRegex(ValueError, "already points to"):
            GUIDE_RELEASE.plan_tag("abc123", "def456")


if __name__ == "__main__":
    unittest.main()
