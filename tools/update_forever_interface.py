#!/usr/bin/env python3
"""Prepare a patch release when WoW Forever's TOC interface changes."""

from __future__ import annotations

import argparse
import re
import urllib.request
from dataclasses import dataclass
from datetime import UTC, datetime
from pathlib import Path

if __package__:
    from tools.guide_release import (
        Version,
        release_notes,
        replace_or_insert_changelog_entry,
    )
else:
    from guide_release import Version, release_notes, replace_or_insert_changelog_entry

ROOT = Path(__file__).resolve().parents[1]
VERSIONS_URL = "https://us.version.battle.net/v2/products/wow_classic_beta/versions"
TOC_NAME = "ForeverGuideMate.toc"

GAME_VERSION_RE = re.compile(r"^(\d+)\.(\d+)\.(\d+)\.(\d+)$")
INTERFACE_LINE_RE = re.compile(r"^## Interface:\s*(.+)$", re.MULTILINE)


@dataclass(frozen=True)
class GameBuild:
    version: str
    build_id: int
    interface: int


@dataclass(frozen=True)
class UpdateResult:
    changed: bool
    game_build: GameBuild
    addon_version: str | None = None


def interface_from_version(version: str) -> int:
    """Convert a game version such as 1.60.1.69913 to Interface 16001."""
    match = GAME_VERSION_RE.fullmatch(version)
    if not match:
        raise ValueError(f"Invalid WoW Forever game version: {version}")
    major, minor, patch, _ = (int(part) for part in match.groups())
    return int(f"{major}{minor:02d}{patch:02d}")


def parse_versions(text: str, *, region: str = "us") -> GameBuild:
    """Read one region from Blizzard's pipe-delimited product version feed."""
    lines = [line.strip() for line in text.splitlines() if line.strip()]
    if not lines:
        raise ValueError("Blizzard version feed is empty")

    headers = [field.split("!", 1)[0] for field in lines[0].split("|")]
    required = {"Region", "BuildId", "VersionsName"}
    if not required.issubset(headers):
        raise ValueError("Blizzard version feed is missing required columns")

    for line in lines[1:]:
        if line.startswith("##"):
            continue
        values = line.split("|")
        if len(values) != len(headers):
            raise ValueError("Blizzard version feed contains a malformed row")
        row = dict(zip(headers, values, strict=True))
        if row["Region"] != region:
            continue
        try:
            build_id = int(row["BuildId"])
        except ValueError as exc:
            raise ValueError("Blizzard build ID is not numeric") from exc
        version = row["VersionsName"]
        return GameBuild(version, build_id, interface_from_version(version))

    raise ValueError(f"Blizzard version feed has no {region!r} region")


def fetch_versions(url: str = VERSIONS_URL) -> str:
    """Fetch Blizzard's public WoW Forever beta version feed."""
    with urllib.request.urlopen(url, timeout=30) as response:
        return response.read().decode("utf-8")


def current_interfaces(toc: str) -> list[int]:
    """Return the numeric interfaces declared by the addon TOC."""
    match = INTERFACE_LINE_RE.search(toc)
    if not match:
        raise ValueError("TOC is missing an Interface line")
    try:
        interfaces = [int(value.strip()) for value in match.group(1).split(",")]
    except ValueError as exc:
        raise ValueError("TOC Interface values must be numeric") from exc
    if not interfaces:
        raise ValueError("TOC has no Interface values")
    return interfaces


def prepare_update(
    game_build: GameBuild,
    *,
    root: Path = ROOT,
    release_date: str | None = None,
    dry_run: bool = False,
) -> UpdateResult:
    """Prepare release files if Blizzard reports a newer Forever interface."""
    toc_path = root / TOC_NAME
    version_path = root / "VERSION"
    changelog_path = root / "CHANGELOG.md"
    release_notes_path = root / "RELEASE_NOTES.md"

    toc = toc_path.read_text(encoding="utf-8")
    interfaces = current_interfaces(toc)
    if game_build.interface in interfaces:
        return UpdateResult(False, game_build)
    if game_build.interface < max(interfaces):
        raise ValueError(
            f"Refusing to downgrade Interface {max(interfaces)} to "
            f"{game_build.interface}"
        )

    current_version = Version.parse(version_path.read_text(encoding="utf-8"))
    next_version = current_version.next_patch()
    updated_toc = INTERFACE_LINE_RE.sub(
        f"## Interface: {game_build.interface}", toc, count=1
    )
    date_value = release_date or datetime.now(UTC).date().isoformat()
    entry = (
        f"## {next_version} - {date_value}\n\n"
        f"- Update WoW Forever compatibility for game build "
        f"{game_build.version} (Interface {game_build.interface}).\n"
    )
    updated_changelog = replace_or_insert_changelog_entry(
        changelog_path.read_text(encoding="utf-8"), next_version, entry
    )

    if not dry_run:
        toc_path.write_text(updated_toc, encoding="utf-8")
        version_path.write_text(f"{next_version}\n", encoding="utf-8")
        changelog_path.write_text(updated_changelog, encoding="utf-8")
        release_notes_path.write_text(
            release_notes(entry, next_version), encoding="utf-8"
        )

    return UpdateResult(True, game_build, str(next_version))


def _parse_args(argv: list[str] | None = None) -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--versions-file",
        type=Path,
        help="read a saved Blizzard versions response instead of fetching it",
    )
    parser.add_argument("--root", type=Path, default=ROOT)
    parser.add_argument("--date")
    parser.add_argument("--dry-run", action="store_true")
    return parser.parse_args(argv)


def main(argv: list[str] | None = None) -> int:
    args = _parse_args(argv)
    versions = (
        args.versions_file.read_text(encoding="utf-8")
        if args.versions_file
        else fetch_versions()
    )
    result = prepare_update(
        parse_versions(versions),
        root=args.root,
        release_date=args.date,
        dry_run=args.dry_run,
    )
    if result.changed:
        action = "Would prepare" if args.dry_run else "Prepared"
        print(
            f"{action} v{result.addon_version} for game build "
            f"{result.game_build.version} (Interface {result.game_build.interface})"
        )
    else:
        print(
            f"Interface {result.game_build.interface} is already supported; "
            "no update needed"
        )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
