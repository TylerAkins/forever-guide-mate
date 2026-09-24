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
    "Guides/Era/1-12-durotar.lua",
    "Guides/Era/1-12-mulgore.lua",
    "Guides/Era/1-12-tirisfal-glades.lua",
    "Guides/Era/12-20-barrens.lua",
    "Guides/Era/12-20-silverpine-forest.lua",
    "Guides/Era/20-22-stonetalon-mountains.lua",
    "Guides/Era/22-23-southern-barrens.lua",
    "Guides/Era/23-25-stonetalon-mountains.lua",
    "Guides/Era/25-25-southern-barrens.lua",
    "Guides/Era/25-26-thousand-needles.lua",
    "Guides/Era/26-27-ashenvale.lua",
    "Guides/Era/27-27-stonetalon-mountains.lua",
    "Guides/Era/27-29-thousand-needles.lua",
    "Guides/Era/29-30-hillsbrad-foothills.lua",
    "Guides/Era/30-30-arathi-highlands.lua",
    "Guides/Era/30-31-stranglethorn-vale.lua",
    "Guides/Era/31-32-thousand-needles.lua",
    "Guides/Era/32-34-desolace.lua",
    "Guides/Era/34-36-stranglethorn-vale.lua",
    "Guides/Era/36-37-alterac-mountains.lua",
    "Guides/Era/37-38-arathi-highlands.lua",
    "Guides/Era/37-38-thousand-needles.lua",
    "Guides/Era/38-38-dustwallow-marsh.lua",
    "Guides/Era/38-40-stranglethorn-vale.lua",
    "Guides/Era/40-41-badlands.lua",
    "Guides/Era/41-42-swamp-of-sorrows.lua",
    "Guides/Era/42-43-stranglethorn-vale.lua",
    "Guides/Era/43-44-dustwallow-marsh.lua",
    "Guides/Era/44-44-desolace.lua",
    "Guides/Era/44-45-tanaris.lua",
    "Guides/Era/45-46-feralas.lua",
    "Guides/Era/46-47-azshara.lua",
    "Guides/Era/47-47-hinterlands.lua",
    "Guides/Era/47-47-stranglethorn-vale.lua",
    "Guides/Era/47-48-searing-gorge.lua",
    "Guides/Era/48-49-swamp-of-sorrows.lua",
    "Guides/Era/49-49-dustwallow-marsh.lua",
    "Guides/Era/49-50-feralas.lua",
    "Guides/Era/49-50-tanaris.lua",
    "Guides/Era/50-50-azshara.lua",
    "Guides/Era/50-51-hinterlands.lua",
    "Guides/Era/51-51-blasted-lands.lua",
    "Guides/Era/51-53-ungoro-crater.lua",
    "Guides/Era/53-54-burning-steppes.lua",
    "Guides/Era/54-54-felwood.lua",
    "Guides/Era/54-55-winterspring.lua",
    "Guides/Era/55-56-felwood.lua",
    "Guides/Era/56-56-western-plaguelands.lua",
    "Guides/Era/56-57-eastern-plaguelands.lua",
    "Guides/Era/57-58-western-plaguelands.lua",
    "Guides/Era/58-59-silithus.lua",
    "Guides/Era/59-60-winterspring.lua",
    "Guides/Era/1-12-dun-morogh.lua",
    "Guides/Era/1-12-elwynn-forest.lua",
    "Guides/Era/1-12-teldrassil.lua",
    "Guides/Era/12-17-darkshore.lua",
    "Guides/Era/12-17-westfall.lua",
    "Guides/Era/17-18-loch-modan.lua",
    "Guides/Era/18-20-redridge-mountains.lua",
    "Guides/Era/20-21-darkshore.lua",
    "Guides/Era/21-22-ashenvale.lua",
    "Guides/Era/22-23-stonetalon-mountains.lua",
    "Guides/Era/23-24-darkshore.lua",
    "Guides/Era/24-24-ashenvale.lua",
    "Guides/Era/24-27-wetlands.lua",
    "Guides/Era/27-28-redridge-mountains.lua",
    "Guides/Era/28-29-duskwood.lua",
    "Guides/Era/29-30-ashenvale.lua",
    "Guides/Era/30-31-wetlands.lua",
    "Guides/Era/31-32-hillsbrad-foothills.lua",
    "Guides/Era/32-33-stranglethorn-vale.lua",
    "Guides/Era/33-34-thousand-needles.lua",
    "Guides/Era/34-35-desolace.lua",
    "Guides/Era/36-37-stranglethorn-vale.lua",
    "Guides/Era/37-37-alterac-mountains.lua",
    "Guides/Era/37-38-arathi-highlands-alliance.lua",
    "Guides/Era/38-39-dustwallow-marsh.lua",
    "Guides/Era/39-40-stranglethorn-vale.lua",
    "Guides/Era/40-41-badlands-alliance.lua",
    "Guides/Era/41-42-swamp-of-sorrows-alliance.lua",
    "Guides/Era/42-43-stranglethorn-vale-alliance.lua",
    "Guides/Era/43-43-desolace.lua",
    "Guides/Era/43-44-tanaris.lua",
    "Guides/Era/44-46-feralas.lua",
    "Guides/Era/46-46-azshara.lua",
    "Guides/Era/46-46-hinterlands.lua",
    "Guides/Era/46-47-stranglethorn-vale.lua",
    "Guides/Era/47-48-searing-gorge-alliance.lua",
    "Guides/Era/48-49-feralas.lua",
    "Guides/Era/49-50-tanaris-alliance.lua",
    "Guides/Era/50-50-hinterlands.lua",
    "Guides/Era/50-51-blasted-lands.lua",
    "Guides/Era/51-52-ungoro-crater.lua",
    "Guides/Era/52-53-azshara.lua",
    "Guides/Era/53-54-felwood.lua",
    "Guides/Era/54-55-winterspring-alliance.lua",
    "Guides/Era/55-56-burning-steppes.lua",
    "Guides/Era/55-56-felwood-alliance.lua",
    "Guides/Era/56-57-western-plaguelands.lua",
    "Guides/Era/57-58-eastern-plaguelands.lua",
    "Guides/Era/57-58-western-plaguelands-alliance.lua",
    "Guides/Era/58-59-silithus-alliance.lua",
    "Guides/Era/59-60-winterspring-alliance.lua",
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
