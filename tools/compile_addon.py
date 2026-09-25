#!/usr/bin/env python3
"""Build the local install tree for Forever GuideMate."""
from __future__ import annotations

import argparse
import shutil
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
OUTPUT = ROOT / ".compiled" / "ForeverGuideMate"
SHIPPED = (
    "ForeverGuideMate.toc",
    "Core.lua",
    "PlayerState.lua",
    "Travel.lua",
    "Taxi.lua",
    "GuideEngine.lua",
    "QuestAudit.lua",
    "QuestDialog.lua",
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
    "Guides/Loremaster/Durotar.lua",
    "Guides/Loremaster/Mulgore.lua",
    "Guides/Loremaster/TheBarrens.lua",
    "Guides/Loremaster/Teldrassil.lua",
    "Guides/Loremaster/LochModan.lua",
    "Guides/Loremaster/Westfall.lua",
    "Guides/Loremaster/DunMorogh.lua",
    "Guides/Loremaster/Duskwood.lua",
    "Guides/Loremaster/RedridgeMountains.lua",
    "Guides/Loremaster/SilverpineForest.lua",
    "Guides/Loremaster/ElwynnForest.lua",
    "Guides/Loremaster/Ashenvale.lua",
    "Guides/Loremaster/Darkshore.lua",
    "Guides/Loremaster/StonetalonMountains.lua",
    "Guides/Era/1-12-durotar.lua",
    "Guides/Era/1-12-mulgore.lua",
    "Guides/Era/1-12-tirisfal-glades.lua",
    "Guides/Era/12-20-barrens.lua",
    "Guides/Era/12-20-silverpine-forest.lua",
    "Guides/Era/22-23-southern-barrens.lua",
    "Guides/Era/23-25-stonetalon-mountains.lua",
    "Guides/Era/1-12-dun-morogh.lua",
    "Guides/Era/1-12-elwynn-forest.lua",
    "Guides/Era/1-12-teldrassil.lua",
    "Guides/Era/12-17-darkshore.lua",
    "Guides/Era/12-17-westfall.lua",
    "Guides/Era/17-18-loch-modan.lua",
    "Guides/Era/18-20-redridge-mountains.lua",
    "Guides/Era/20-21-darkshore.lua",
    "Guides/Era/23-24-darkshore.lua",
    "Guides/Era/27-28-redridge-mountains.lua",
    "Guides/Era/28-29-duskwood.lua",
    "README.md",
    "CHANGELOG.md",
    "LICENSE",
)


def project_version() -> str:
    """Return the intentionally fixed local-development version."""
    return (ROOT / "VERSION").read_text(encoding="utf-8").strip()


def source_files() -> list[Path]:
    """Return shipped sources, failing clearly for missing required files."""
    files = [ROOT / name for name in SHIPPED]
    missing = [path.name for path in files if not path.is_file()]
    if missing:
        raise FileNotFoundError(f"Missing required shipped file(s): {', '.join(missing)}")
    return files


def compile_addon(output: Path = OUTPUT, *, dry_run: bool = False) -> list[Path]:
    """Copy exactly the shipped files into one compiled addon directory."""
    files = source_files()
    destinations = [output / source.relative_to(ROOT) for source in files]
    if dry_run:
        return destinations

    if output.exists():
        shutil.rmtree(output)
    output.mkdir(parents=True, exist_ok=False)
    for source, destination in zip(files, destinations, strict=True):
        destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(source, destination)

    toc = output / "ForeverGuideMate.toc"
    toc.write_text(
        toc.read_text(encoding="utf-8").replace("@project-version@", project_version()),
        encoding="utf-8",
    )
    return destinations


def main() -> None:
    """Compile the addon or list the files that would be compiled."""
    parser = argparse.ArgumentParser()
    parser.add_argument("--dry-run", action="store_true")
    args = parser.parse_args()
    files = compile_addon(dry_run=args.dry_run)
    if args.dry_run:
        print(f"Would build {len(files)} files in {OUTPUT}")
        print("\n".join(str(path) for path in files))
    else:
        print(f"Built {len(files)} files in {OUTPUT}")


if __name__ == "__main__":
    main()
