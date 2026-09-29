#!/usr/bin/env python3
"""One-shot renames for leveling guide files and chapter ids. See git history."""

from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]

RENAMES: list[tuple[str, str, str, str]] = [
    # (old_file, new_file, old_id, new_id)
    ("1-12-durotar.lua", "durotar.lua", "leveling-era-durotar", "leveling-era-durotar"),
    ("1-12-mulgore.lua", "mulgore.lua", "leveling-era-mulgore", "leveling-era-mulgore"),
    (
        "1-12-tirisfal-glades.lua",
        "tirisfal-glades.lua",
        "leveling-era-tirisfal-glades",
        "leveling-era-tirisfal-glades",
    ),
    ("1-12-dun-morogh.lua", "dun-morogh.lua", "leveling-era-dun-morogh", "leveling-era-dun-morogh"),
    (
        "1-12-elwynn-forest.lua",
        "elwynn-forest.lua",
        "leveling-era-elwynn-forest",
        "leveling-era-elwynn-forest",
    ),
    ("1-12-teldrassil.lua", "teldrassil.lua", "leveling-era-teldrassil", "leveling-era-teldrassil"),
    ("ZephrasIsle.lua", "zephras-isle.lua", "leveling-zephras-isle", "leveling-zephras-isle"),
    (
        "12-20-barrens.lua",
        "the-barrens-part-1.lua",
        "leveling-era-the-barrens-part-1",
        "leveling-era-the-barrens-part-1",
    ),
    (
        "22-23-southern-barrens.lua",
        "the-barrens-part-2.lua",
        "leveling-era-the-barrens-part-2",
        "leveling-era-the-barrens-part-2",
    ),
    (
        "12-20-silverpine-forest.lua",
        "silverpine-forest.lua",
        "leveling-era-silverpine-forest",
        "leveling-era-silverpine-forest",
    ),
    ("12-17-westfall.lua", "westfall.lua", "leveling-era-westfall", "leveling-era-westfall"),
    (
        "12-17-darkshore.lua",
        "darkshore-part-1.lua",
        "leveling-era-darkshore-part-1",
        "leveling-era-darkshore-part-1",
    ),
    (
        "20-21-darkshore.lua",
        "darkshore-part-2.lua",
        "leveling-era-darkshore-part-2",
        "leveling-era-darkshore-part-2",
    ),
    (
        "23-24-darkshore.lua",
        "darkshore-part-3.lua",
        "leveling-era-darkshore-part-3",
        "leveling-era-darkshore-part-3",
    ),
    ("17-18-loch-modan.lua", "loch-modan.lua", "leveling-era-loch-modan", "leveling-era-loch-modan"),
    (
        "18-20-redridge-mountains.lua",
        "redridge-mountains-part-1.lua",
        "leveling-era-redridge-mountains-part-1",
        "leveling-era-redridge-mountains-part-1",
    ),
    (
        "27-28-redridge-mountains.lua",
        "redridge-mountains-part-2.lua",
        "leveling-era-redridge-mountains-part-2",
        "leveling-era-redridge-mountains-part-2",
    ),
    ("21-22-ashenvale.lua", "ashenvale.lua", "leveling-era-ashenvale", "leveling-era-ashenvale"),
    (
        "20-22-stonetalon-mountains.lua",
        "stonetalon-mountains-part-1.lua",
        "leveling-era-stonetalon-mountains-part-1",
        "leveling-era-stonetalon-mountains-part-1",
    ),
    (
        "22-23-stonetalon-mountains.lua",
        "stonetalon-mountains-part-2.lua",
        "leveling-era-stonetalon-mountains-part-2",
        "leveling-era-stonetalon-mountains-part-2",
    ),
    (
        "23-25-stonetalon-mountains.lua",
        "stonetalon-mountains-part-3.lua",
        "leveling-era-stonetalon-mountains-part-3",
        "leveling-era-stonetalon-mountains-part-3",
    ),
    ("28-29-duskwood.lua", "duskwood.lua", "leveling-era-duskwood", "leveling-era-duskwood"),
]

TEXT_ROOTS = [
    ROOT,
]


def replace_in_tree(old: str, new: str) -> int:
    count = 0
    for base in TEXT_ROOTS:
        for path in base.rglob("*"):
            if not path.is_file():
                continue
            if path.suffix not in {".lua", ".py", ".md", ".yml", ".toml"} and path.name not in {
                "ForeverGuideMate.toc",
            }:
                continue
            if ".git" in path.parts or ".compiled" in path.parts:
                continue
            text = path.read_text(encoding="utf-8")
            if old not in text:
                continue
            path.write_text(text.replace(old, new), encoding="utf-8")
            count += 1
    return count


def main() -> None:
    level_dir = ROOT / "Guides" / "Leveling"
    for old_name, new_name, old_id, new_id in RENAMES:
        old_path = level_dir / old_name
        new_path = level_dir / new_name
        if not old_path.exists() and new_path.exists():
            continue
        if not old_path.exists():
            raise SystemExit(f"missing {old_path}")
        if old_id != new_id:
            text = old_path.read_text(encoding="utf-8")
            text = text.replace(f'id = "{old_id}"', f'id = "{new_id}"', 1)
            old_path.write_text(text, encoding="utf-8")
        old_path.rename(new_path)

    # Longest ids first so partial replacements do not collide.
    pairs = sorted(
        {(old_id, new_id) for _, _, old_id, new_id in RENAMES if old_id != new_id},
        key=lambda item: len(item[0]),
        reverse=True,
    )
    for old_id, new_id in pairs:
        replace_in_tree(old_id, new_id)

    path_pairs = sorted(
        {
            (f"Guides/Leveling/{old}", f"Guides/Leveling/{new}")
            for old, new, _, _ in RENAMES
            if old != new
        },
        key=lambda item: len(item[0]),
        reverse=True,
    )
    for old_path, new_path in path_pairs:
        replace_in_tree(old_path, new_path)

    print("Renamed leveling guides and updated references.")


if __name__ == "__main__":
    main()
