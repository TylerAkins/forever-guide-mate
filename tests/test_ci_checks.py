"""Behavioral coverage for CI selection and its required result gate."""

from __future__ import annotations

import importlib.util
import os
import subprocess
import sys
import tempfile
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SPEC = importlib.util.spec_from_file_location("ci_checks", ROOT / "tools/ci_checks.py")
assert SPEC and SPEC.loader
CI = importlib.util.module_from_spec(SPEC)
sys.modules[SPEC.name] = CI
SPEC.loader.exec_module(CI)


class SelectionTests(unittest.TestCase):
    def test_full_runs_select_every_check(self):
        self.assertEqual(dict.fromkeys(CI.CHECKS, True), CI.select_checks(["README.md"], full=True))

    def test_documentation_changes_skip_runtime_and_packaging(self):
        for path in ("README.md", "AGENTS.md", "CHANGELOG.md", "RELEASE_NOTES.md", "docs/guide-authoring.md"):
            with self.subTest(path=path):
                self.assertEqual({"python": True, "lua": False, "journeys": False, "package": False}, CI.select_checks([path]))

    def test_guide_and_shared_changes_keep_full_coverage(self):
        for path in ("Guides/Leveling/mulgore.lua", "Guides/Class/Shaman.lua", "Guides/Dungeons/CityOfDalaran.lua",
                     "Navigation.lua", "ClassChains.lua", "QuestPrerequisites.lua", "ForeverGuideMate.toc",
                     "tests/fixtures/reference_itineraries.lua", "tests/requirements.txt", ".github/workflows/ci.yml",
                     "new-unknown-input.json", "tools/import_classic_leveling.py", "docs/new-tool.py"):
            with self.subTest(path=path):
                self.assertTrue(all(CI.select_checks([path]).values()))

    def test_packaging_and_release_tools_do_not_need_runtime_journeys(self):
        expected = {"python": True, "lua": False, "journeys": False, "package": True}
        for path in (".pkgmeta", "tools/compile_addon.py", "tools/guide_release.py", "tools/update_forever_interface.py"):
            with self.subTest(path=path):
                self.assertEqual(expected, CI.select_checks([path]))

    def test_mixed_changes_union_checks_and_empty_changes_fail_safe(self):
        self.assertTrue(all(CI.select_checks([]).values()))
        self.assertTrue(all(CI.select_checks(["README.md", "Navigation.lua"]).values()))


class RequiredGateTests(unittest.TestCase):
    def results(self, paths):
        selected = CI.select_checks(paths)
        needs = {"plan": {"result": "success", "outputs": {
            name: str(value).lower() for name, value in selected.items()
        }}}
        needs.update({name: {"result": "success" if value else "skipped"} for name, value in selected.items()})
        return needs

    def test_intentionally_skipped_jobs_pass_the_required_gate(self):
        CI.check_results(self.results(["README.md"]))
        CI.check_results(self.results(["Navigation.lua"]))

    def test_selected_failures_cancellations_and_unexpected_skips_fail(self):
        for job in CI.CHECKS:
            for result in ("failure", "cancelled", "skipped", None):
                with self.subTest(job=job, result=result):
                    needs = self.results(["Navigation.lua"])
                    needs[job]["result"] = result
                    with self.assertRaises(ValueError):
                        CI.check_results(needs)

    def test_failed_or_missing_plan_cannot_turn_into_success(self):
        for result in ("failure", "cancelled", "skipped", None):
            needs = self.results(["README.md"])
            needs["plan"]["result"] = result
            with self.assertRaises(ValueError):
                CI.check_results(needs)
        needs = self.results(["README.md"])
        del needs["plan"]["outputs"]["journeys"]
        with self.assertRaises(ValueError):
            CI.check_results(needs)

    def test_unselected_job_failure_is_not_ignored(self):
        needs = self.results(["README.md"])
        needs["journeys"]["result"] = "failure"
        with self.assertRaises(ValueError):
            CI.check_results(needs)


class WorkflowCoverageTests(unittest.TestCase):
    def test_full_workflow_retains_every_suite_and_complete_class_matrix(self):
        import re
        workflow = (ROOT / ".github/workflows/ci.yml").read_text()
        for suite in ("run", "ordered", "catalog", "journeys", "ui", "lint", "audit_accept_chains"):
            self.assertIn(f"lua5.1 tests/lua/{suite}.lua", workflow)
        matrix = re.search(r"^        class: \[(.*?)\]$", workflow, re.MULTILINE)
        self.assertIsNotNone(matrix)
        self.assertEqual([1, 2, 3, 4, 5, 7, 8, 9, 11], [int(value) for value in matrix[1].split(",")])
        self.assertIn("FGM_FULL_MATRIX: '1'", workflow)
        self.assertIn("FGM_MATRIX_CLASS: ${{ matrix.class }}", workflow)
        self.assertIn("fail-fast: false", workflow)
        self.assertNotIn("python3 tests/test_guide_release.py", workflow)
        self.assertNotIn("python3 tests/test_update_forever_interface.py", workflow)

    def test_required_check_waits_for_every_job_and_runs_after_skips(self):
        workflow = (ROOT / ".github/workflows/ci.yml").read_text()
        gate = workflow.split("\n  validate:\n", 1)[1]
        self.assertIn("if: ${{ always() }}", gate)
        self.assertIn("needs: [plan, python, lua, journeys, package]", gate)
        self.assertIn("NEEDS_JSON: ${{ toJSON(needs) }}", gate)
        self.assertIn("tools/ci_checks.py --check-results", gate)
        self.assertIn("  workflow_dispatch:", workflow)
        self.assertNotIn("continue-on-error", workflow)


class PullRequestDiffTests(unittest.TestCase):
    def test_merge_base_diff_keeps_deleted_and_both_renamed_paths(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            env = dict(os.environ, GIT_AUTHOR_NAME="Fixture", GIT_AUTHOR_EMAIL="fixture@example.invalid",
                       GIT_COMMITTER_NAME="Fixture", GIT_COMMITTER_EMAIL="fixture@example.invalid",
                       GIT_CONFIG_GLOBAL=os.devnull, GIT_CONFIG_NOSYSTEM="1")
            def git(*args):
                return subprocess.check_output(["git", *args], cwd=root, env=env, text=True, stderr=subprocess.PIPE).strip()
            def commit():
                git("add", "--all")
                git("commit", "-qm", "fixture")
                return git("rev-parse", "HEAD")
            git("init", "-q")
            (root / "Core.lua").write_text("runtime")
            (root / "Navigation.lua").write_text("navigation")
            original = commit()
            git("checkout", "-qb", "fixture-head")
            (root / "docs").mkdir()
            (root / "Core.lua").rename(root / "docs/core.md")
            (root / "Navigation.lua").unlink()
            (root / "docs/new file.md").write_text("new docs")
            head = commit()
            git("checkout", "-qb", "fixture-base", original)
            (root / "base-only.md").write_text("unrelated base advance")
            base = commit()
            paths = CI.changed_paths(base, head, root=root)
            self.assertEqual({"Core.lua", "Navigation.lua", "docs/core.md", "docs/new file.md"}, set(paths))
            self.assertTrue(all(CI.select_checks(paths).values()))
            failed = subprocess.run(
                [sys.executable, str(ROOT / "tools/ci_checks.py"), "--base", "not-a-revision", "--head", head],
                cwd=root, capture_output=True, text=True,
            )
            self.assertNotEqual(0, failed.returncode)

    def test_cli_outputs_booleans_and_full_override(self):
        with tempfile.TemporaryDirectory() as directory:
            output = Path(directory) / "outputs"
            subprocess.run([sys.executable, str(ROOT / "tools/ci_checks.py"), "--full", "--paths", "README.md",
                            "--output", str(output)], check=True, capture_output=True, text=True)
            self.assertEqual({f"{name}=true" for name in CI.CHECKS}, set(output.read_text().splitlines()))


if __name__ == "__main__":
    unittest.main()
