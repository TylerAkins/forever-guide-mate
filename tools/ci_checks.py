#!/usr/bin/env python3
"""Select conservative CI coverage and check the required job results."""

from __future__ import annotations

import argparse
import json
import os
import subprocess
from pathlib import Path

CHECKS = ("python", "lua", "journeys", "package")
DOC_FILES = {"README.md", "AGENTS.md", "CHANGELOG.md", "RELEASE_NOTES.md"}
PACKAGING_FILES = {
    ".pkgmeta", "tools/compile_addon.py", "tools/guide_release.py",
    "tools/update_forever_interface.py",
}


def select_checks(paths: list[str], *, full: bool = False) -> dict[str, bool]:
    if full or not paths:
        return dict.fromkeys(CHECKS, True)
    selected = dict.fromkeys(CHECKS, False)
    selected["python"] = True
    for path in paths:
        if path in DOC_FILES or (path.startswith("docs/") and path.endswith(".md")):
            continue
        if path in PACKAGING_FILES:
            selected["package"] = True
        else:
            # Guides share the catalog, prerequisites, and Casual route. Unknown
            # paths and test infrastructure must also retain full coverage.
            return dict.fromkeys(CHECKS, True)
    return selected


def changed_paths(base: str, head: str, *, root: Path = Path(".")) -> list[str]:
    merge_base = subprocess.check_output(
        ["git", "merge-base", base, head], cwd=root, text=True,
    ).strip()
    output = subprocess.check_output(
        ["git", "diff", "--name-only", "--no-renames", "-z", merge_base, head, "--"], cwd=root,
    )
    return [os.fsdecode(path) for path in output.split(b"\0") if path]


def check_results(needs: dict) -> None:
    if needs.get("plan", {}).get("result") != "success":
        raise ValueError("CI selection or release validation did not succeed")
    selected = needs["plan"].get("outputs", {})
    for name in CHECKS:
        flag = selected.get(name)
        if flag not in ("true", "false"):
            raise ValueError(f"Missing or invalid selection for {name}: {flag!r}")
        result = needs.get(name, {}).get("result")
        allowed = {"success"} if flag == "true" else {"success", "skipped"}
        if result not in allowed:
            raise ValueError(f"{name}: expected {sorted(allowed)}, got {result!r}")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--full", action="store_true")
    parser.add_argument("--paths", nargs="*")
    parser.add_argument("--base")
    parser.add_argument("--head", default="HEAD")
    parser.add_argument("--output", type=Path, help="Append GitHub job outputs to this file")
    parser.add_argument("--check-results", action="store_true", help="Check NEEDS_JSON from the required CI job")
    args = parser.parse_args()
    if args.check_results:
        check_results(json.loads(os.environ["NEEDS_JSON"]))
        print("All selected CI checks and release validation passed.")
        return 0
    if args.base and args.paths is not None:
        parser.error("Choose --base or --paths, not both")
    paths = changed_paths(args.base, args.head) if args.base and not args.full else (args.paths or [])
    selected = select_checks(paths, full=args.full)
    print(json.dumps({"paths": paths, "checks": selected}, indent=2))
    outputs = "".join(f"{name}={str(value).lower()}\n" for name, value in selected.items())
    if args.output:
        with args.output.open("a") as stream:
            stream.write(outputs)
    summary = os.environ.get("GITHUB_STEP_SUMMARY")
    if summary:
        with open(summary, "a") as stream:
            stream.write("## Selected CI checks\n\n")
            for name, value in selected.items():
                stream.write(f"- {name}: {'run' if value else 'skip'}\n")
            stream.write("\nRelease notes and applicable release intent are always validated.\n")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
