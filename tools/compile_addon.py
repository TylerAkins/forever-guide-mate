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
    "Guides/Leveling/Durotar.lua",
    "Guides/Leveling/Mulgore.lua",
    "Guides/Leveling/TheBarrens.lua",
    "Guides/Leveling/Teldrassil.lua",
    "Guides/Leveling/Era/1-12-durotar.lua",
    "Guides/Leveling/Era/1-12-mulgore.lua",
    "Guides/Leveling/Era/1-12-tirisfal-glades.lua",
    "Guides/Leveling/Era/12-20-barrens.lua",
    "Guides/Leveling/Era/12-20-silverpine-forest.lua",
    "Guides/Leveling/Era/20-22-stonetalon-mountains.lua",
    "Guides/Leveling/Era/22-23-southern-barrens.lua",
    "Guides/Leveling/Era/23-25-stonetalon-mountains.lua",
    "Guides/Leveling/Era/25-25-southern-barrens.lua",
    "Guides/Leveling/Era/25-26-thousand-needles.lua",
    "Guides/Leveling/Era/26-27-ashenvale.lua",
    "Guides/Leveling/Era/27-27-stonetalon-mountains.lua",
    "Guides/Leveling/Era/27-29-thousand-needles.lua",
    "Guides/Leveling/Era/29-30-hillsbrad-foothills.lua",
    "Guides/Leveling/Era/30-30-arathi-highlands.lua",
    "Guides/Leveling/Era/30-31-stranglethorn-vale.lua",
    "Guides/Leveling/Era/31-32-thousand-needles.lua",
    "Guides/Leveling/Era/32-34-desolace.lua",
    "Guides/Leveling/Era/34-36-stranglethorn-vale.lua",
    "Guides/Leveling/Era/36-37-alterac-mountains.lua",
    "Guides/Leveling/Era/37-38-arathi-highlands.lua",
    "Guides/Leveling/Era/37-38-thousand-needles.lua",
    "Guides/Leveling/Era/38-38-dustwallow-marsh.lua",
    "Guides/Leveling/Era/38-40-stranglethorn-vale.lua",
    "Guides/Leveling/Era/40-41-badlands.lua",
    "Guides/Leveling/Era/41-42-swamp-of-sorrows.lua",
    "Guides/Leveling/Era/42-43-stranglethorn-vale.lua",
    "Guides/Leveling/Era/43-44-dustwallow-marsh.lua",
    "Guides/Leveling/Era/44-44-desolace.lua",
    "Guides/Leveling/Era/44-45-tanaris.lua",
    "Guides/Leveling/Era/45-46-feralas.lua",
    "Guides/Leveling/Era/46-47-azshara.lua",
    "Guides/Leveling/Era/47-47-hinterlands.lua",
    "Guides/Leveling/Era/47-47-stranglethorn-vale.lua",
    "Guides/Leveling/Era/47-48-searing-gorge.lua",
    "Guides/Leveling/Era/48-49-swamp-of-sorrows.lua",
    "Guides/Leveling/Era/49-49-dustwallow-marsh.lua",
    "Guides/Leveling/Era/49-50-feralas.lua",
    "Guides/Leveling/Era/49-50-tanaris.lua",
    "Guides/Leveling/Era/50-50-azshara.lua",
    "Guides/Leveling/Era/50-51-hinterlands.lua",
    "Guides/Leveling/Era/51-51-blasted-lands.lua",
    "Guides/Leveling/Era/51-53-ungoro-crater.lua",
    "Guides/Leveling/Era/53-54-burning-steppes.lua",
    "Guides/Leveling/Era/54-54-felwood.lua",
    "Guides/Leveling/Era/54-55-winterspring.lua",
    "Guides/Leveling/Era/55-56-felwood.lua",
    "Guides/Leveling/Era/56-56-western-plaguelands.lua",
    "Guides/Leveling/Era/56-57-eastern-plaguelands.lua",
    "Guides/Leveling/Era/57-58-western-plaguelands.lua",
    "Guides/Leveling/Era/58-59-silithus.lua",
    "Guides/Leveling/Era/59-60-winterspring.lua",
    "Guides/Leveling/Era/1-12-dun-morogh.lua",
    "Guides/Leveling/Era/1-12-elwynn-forest.lua",
    "Guides/Leveling/Era/1-12-teldrassil.lua",
    "Guides/Leveling/Era/12-17-darkshore.lua",
    "Guides/Leveling/Era/12-17-westfall.lua",
    "Guides/Leveling/Era/17-18-loch-modan.lua",
    "Guides/Leveling/Era/18-20-redridge-mountains.lua",
    "Guides/Leveling/Era/20-21-darkshore.lua",
    "Guides/Leveling/Era/21-22-ashenvale.lua",
    "Guides/Leveling/Era/22-23-stonetalon-mountains.lua",
    "Guides/Leveling/Era/23-24-darkshore.lua",
    "Guides/Leveling/Era/24-24-ashenvale.lua",
    "Guides/Leveling/Era/24-27-wetlands.lua",
    "Guides/Leveling/Era/27-28-redridge-mountains.lua",
    "Guides/Leveling/Era/28-29-duskwood.lua",
    "Guides/Leveling/Era/29-30-ashenvale.lua",
    "Guides/Leveling/Era/30-31-wetlands.lua",
    "Guides/Leveling/Era/31-32-hillsbrad-foothills.lua",
    "Guides/Leveling/Era/32-33-stranglethorn-vale.lua",
    "Guides/Leveling/Era/33-34-thousand-needles.lua",
    "Guides/Leveling/Era/34-35-desolace.lua",
    "Guides/Leveling/Era/36-37-stranglethorn-vale.lua",
    "Guides/Leveling/Era/37-37-alterac-mountains.lua",
    "Guides/Leveling/Era/37-38-arathi-highlands-alliance.lua",
    "Guides/Leveling/Era/38-39-dustwallow-marsh.lua",
    "Guides/Leveling/Era/39-40-stranglethorn-vale.lua",
    "Guides/Leveling/Era/40-41-badlands-alliance.lua",
    "Guides/Leveling/Era/41-42-swamp-of-sorrows-alliance.lua",
    "Guides/Leveling/Era/42-43-stranglethorn-vale-alliance.lua",
    "Guides/Leveling/Era/43-43-desolace.lua",
    "Guides/Leveling/Era/43-44-tanaris.lua",
    "Guides/Leveling/Era/44-46-feralas.lua",
    "Guides/Leveling/Era/46-46-azshara.lua",
    "Guides/Leveling/Era/46-46-hinterlands.lua",
    "Guides/Leveling/Era/46-47-stranglethorn-vale.lua",
    "Guides/Leveling/Era/47-48-searing-gorge-alliance.lua",
    "Guides/Leveling/Era/48-49-feralas.lua",
    "Guides/Leveling/Era/49-50-tanaris-alliance.lua",
    "Guides/Leveling/Era/50-50-hinterlands.lua",
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
