#!/usr/bin/env python3
"""Build the local install tree for Forever GuideMate."""
from __future__ import annotations

import argparse
import json
import shutil
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
OUTPUT = ROOT / ".compiled" / "ForeverGuideMate"
INSTALL_CONFIG = ROOT / "install.json"
DEFAULT_WOW_ADDONS = "/Applications/World of Warcraft/_classic_beta_/Interface/AddOns"
SHIPPED = (
    "ForeverGuideMate.toc",
    "Core.lua",
    "PlayerState.lua",
    "Travel.lua",
    "Taxi.lua",
    "GuideEngine.lua",
    "SkipLineage.lua",
    "QuestPrerequisites.lua",
    "QuestAudit.lua",
    "QuestDialog.lua",
    "Navigation.lua",
    "TomTomWaypoints.lua",
    "MapPins.lua",
    "MapPins.xml",
    "MinimapButton.lua",
    "UITheme.lua",
    "UI.lua",
    "Guides/Dungeons/RagefireChasm.lua",
    "Guides/Dungeons/WailingCaverns.lua",
    "Guides/Dungeons/RuinsOfLordaeron.lua",
    "Guides/Dungeons/Deadmines.lua",
    "Guides/Dungeons/HallOfThanes.lua",
    "Guides/Dungeons/ExcavationSiteWetlands.lua",
    "Guides/Dungeons/CityOfDalaranAttunement.lua",
    "Guides/Dungeons/ShadowfangKeep.lua",
    "Guides/Dungeons/BlackfathomDeeps.lua",
    "Guides/Dungeons/Gnomeregan.lua",
    "Guides/Dungeons/TheStockade.lua",
    "Guides/Dungeons/ScarletMonasteryLibrary.lua",
    "Guides/Dungeons/RazorfenKraul.lua",
    "Guides/Dungeons/ScarletMonasteryGraveyard.lua",
    "Guides/Dungeons/RazorfenDowns.lua",
    "Guides/Dungeons/Uldaman.lua",
    "Guides/Dungeons/ScarletMonasteryArmory.lua",
    "Guides/Dungeons/ScarletMonasteryCathedral.lua",
    "Guides/Dungeons/ZulFarrak.lua",
    "Guides/Dungeons/Maraudon.lua",
    "Guides/Dungeons/MaraudonFoulsporeCavernOrange.lua",
    "Guides/Dungeons/MaraudonWickedGrottoPurple.lua",
    "Guides/Dungeons/TempleOfAtalHakkar.lua",
    "Guides/Dungeons/MaraudonEarthSongFallsInner.lua",
    "Guides/Dungeons/MaraudonPoisonFallsInner.lua",
    "Guides/Dungeons/OnyxiaSLairAttunement.lua",
    "Guides/Dungeons/Scholomance.lua",
    "Guides/Dungeons/BlackrockDepths.lua",
    "Guides/Dungeons/StratholmeLive.lua",
    "Guides/Dungeons/StratholmeUndead.lua",
    "Guides/Dungeons/DireMaulEast.lua",
    "Guides/Dungeons/DireMaulNorth.lua",
    "Guides/Dungeons/DireMaulWest.lua",
    "Guides/Dungeons/LowerBlackrockSpire.lua",
    "Guides/Dungeons/UpperBlackrockSpire.lua",
    "Guides/Dungeons/DireMaulNorthTribute.lua",
    "Guides/Dungeons/Tier05DungeonGearQuestline.lua",
                            "Guides/Leveling/zephras-isle.lua",
    "Guides/Loremaster/Durotar.lua",
    "Guides/Loremaster/Mulgore.lua",
    "Guides/Leveling/tirisfal-glades.lua",
    "Guides/Leveling/mulgore.lua",
    "Guides/Leveling/durotar.lua",
    "Guides/Leveling/horde-silverpine-forest.lua",
    "Guides/Leveling/horde-the-barrens-and-stonetalon-mountain.lua",
    "Guides/Leveling/horde-ashenvale.lua",
    "Guides/Leveling/horde-hillsbrad-foothills.lua",
    "Guides/Leveling/horde-the-barrens.lua",
    "Guides/Leveling/horde-stonetalon-mountains.lua",
    "Guides/Leveling/horde-ashenvale-part-2.lua",
    "Guides/Leveling/horde-thousand-needles.lua",
    "Guides/Leveling/horde-hillsbrad-foothills-part-2.lua",
    "Guides/Leveling/horde-arathi-highlands.lua",
    "Guides/Leveling/horde-thousand-needles-part-2.lua",
    "Guides/Leveling/horde-desolace.lua",
    "Guides/Leveling/horde-stranglethorn-vale.lua",
    "Guides/Leveling/horde-dustwallow-marsh.lua",
    "Guides/Leveling/horde-alterac-mountains-and-arathi-highlands.lua",
    "Guides/Leveling/horde-badlands.lua",
    "Guides/Leveling/horde-stranglethorn-vale-and-swamp-of-sorrows.lua",
    "Guides/Leveling/horde-desolace-part-2.lua",
    "Guides/Leveling/horde-tanaris.lua",
    "Guides/Leveling/horde-dustwallow-marsh-part-2.lua",
    "Guides/Leveling/horde-tanaris-part-2.lua",
    "Guides/Leveling/horde-feralas.lua",
    "Guides/Leveling/horde-stranglethorn-vale-part-2.lua",
    "Guides/Leveling/horde-swamp-of-sorrows.lua",
    "Guides/Leveling/horde-tanaris-and-dustwallow-marsh.lua",
    "Guides/Leveling/horde-the-hinterlands.lua",
    "Guides/Leveling/horde-feralas-and-ungoro-crater.lua",
    "Guides/Leveling/horde-stranglethorn-vale-and-swamp-of-sorrows-part-2.lua",
    "Guides/Leveling/horde-blasted-lands.lua",
    "Guides/Leveling/horde-searing-gorge.lua",
    "Guides/Leveling/horde-burning-steppes-and-azshara.lua",
    "Guides/Leveling/horde-felwood-and-winterspring.lua",
    "Guides/Leveling/horde-ungoro-crater.lua",
    "Guides/Leveling/horde-azshara.lua",
    "Guides/Leveling/horde-felwood-and-winterspring-part-2.lua",
    "Guides/Leveling/horde-western-and-eastern-plaguelands.lua",
    "Guides/Leveling/horde-winterspring.lua",
    "Guides/Leveling/horde-silithus.lua",
    "Guides/Leveling/elwynn-forest.lua",
    "Guides/Leveling/dun-morogh.lua",
    "Guides/Leveling/teldrassil.lua",
    "Guides/Leveling/alliance-westfall.lua",
    "Guides/Leveling/alliance-darkshore.lua",
    "Guides/Leveling/alliance-loch-modan.lua",
    "Guides/Leveling/alliance-redridge-and-westfall.lua",
    "Guides/Leveling/alliance-darkshore-part-2.lua",
    "Guides/Leveling/alliance-ashenvale-and-stonetalon-mountains.lua",
    "Guides/Leveling/alliance-wetlands.lua",
    "Guides/Leveling/alliance-duskwood-and-redridge-mountains.lua",
    "Guides/Leveling/alliance-wetlands-part-2.lua",
    "Guides/Leveling/alliance-stonetalon-mountains-and-ashenvale.lua",
    "Guides/Leveling/alliance-duskwood-and-stranglethorn-vale.lua",
    "Guides/Leveling/alliance-hillsbrad-foothills-and-arathi-highlands.lua",
    "Guides/Leveling/alliance-dustwallow-marsh-and-thousand-needles.lua",
    "Guides/Leveling/alliance-stranglethorn-vale.lua",
    "Guides/Leveling/alliance-desolace.lua",
    "Guides/Leveling/alliance-stranglethorn-vale-part-2.lua",
    "Guides/Leveling/alliance-swamp-of-sorrows.lua",
    "Guides/Leveling/alliance-arathi-highlands-and-alterac-mountains.lua",
    "Guides/Leveling/alliance-dustwallow-marsh.lua",
    "Guides/Leveling/alliance-desolace-part-2.lua",
    "Guides/Leveling/alliance-badlands.lua",
    "Guides/Leveling/alliance-stranglethorn-vale-part-3.lua",
    "Guides/Leveling/alliance-swamp-of-sorrows-part-2.lua",
    "Guides/Leveling/alliance-tanaris.lua",
    "Guides/Leveling/alliance-feralas-and-tanaris.lua",
    "Guides/Leveling/alliance-the-hinterlands.lua",
    "Guides/Leveling/alliance-tanaris-part-2.lua",
    "Guides/Leveling/alliance-ungoro-crater.lua",
    "Guides/Leveling/alliance-stranglethorn-vale-part-4.lua",
    "Guides/Leveling/alliance-searing-gorge.lua",
    "Guides/Leveling/alliance-blasted-lands-and-burning-steppes.lua",
    "Guides/Leveling/alliance-western-plaguelands.lua",
    "Guides/Leveling/alliance-azshara-and-felwood.lua",
    "Guides/Leveling/alliance-feralas-and-azshara.lua",
    "Guides/Leveling/alliance-ungoro-crater-part-2.lua",
    "Guides/Leveling/alliance-winterspring-and-felwood.lua",
    "Guides/Leveling/alliance-burning-steppes.lua",
    "Guides/Leveling/alliance-western-and-eastern-plaguelands.lua",
    "Guides/Leveling/alliance-winterspring.lua",
    "Guides/Leveling/alliance-silithus.lua",
    "Guides/Class/Warrior.lua",
    "Guides/Class/Paladin.lua",
    "Guides/Class/Hunter.lua",
    "Guides/Class/Rogue.lua",
    "Guides/Class/Priest.lua",
    "Guides/Class/Shaman.lua",
    "Guides/Class/Mage.lua",
    "Guides/Class/Warlock.lua",
    "Guides/Class/Druid.lua",
    "Guides/Miscellaneous/LibraryBooks.lua",
    "README.md",
    "CHANGELOG.md",
    "RELEASE_NOTES.md",
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


def wow_addons_dir(override: str | None = None) -> Path:
    """Return the AddOns directory from --wow-addons, install.json, or the default."""
    if override:
        return Path(override).expanduser()
    if INSTALL_CONFIG.is_file():
        data = json.loads(INSTALL_CONFIG.read_text(encoding="utf-8"))
        configured = data.get("wow_addons") if isinstance(data, dict) else None
        if isinstance(configured, str) and configured.strip():
            return Path(configured).expanduser()
    return Path(DEFAULT_WOW_ADDONS)


def install_addon(addons_dir: Path | None = None, *, output: Path = OUTPUT) -> Path:
    """Compile the addon and copy it into the WoW AddOns folder."""
    destination_root = addons_dir or wow_addons_dir()
    if not destination_root.is_dir():
        raise FileNotFoundError(
            f"WoW AddOns directory does not exist: {destination_root}. "
            f"Set wow_addons in {INSTALL_CONFIG.name}."
        )
    compile_addon(output)
    destination = destination_root / output.name
    if destination.exists():
        shutil.rmtree(destination)
    shutil.copytree(output, destination)
    return destination


def main() -> None:
    """Compile the addon or list the files that would be compiled."""
    parser = argparse.ArgumentParser()
    parser.add_argument("--dry-run", action="store_true")
    parser.add_argument(
        "--install",
        action="store_true",
        help="Copy the compiled addon into the WoW AddOns directory from install.json",
    )
    parser.add_argument(
        "--wow-addons",
        help="AddOns directory to use with --install, instead of install.json",
    )
    args = parser.parse_args()
    if args.install and args.dry_run:
        parser.error("--install cannot be combined with --dry-run")
    if args.install:
        destination = install_addon(wow_addons_dir(args.wow_addons))
        print(f"Installed {destination}")
        return
    files = compile_addon(dry_run=args.dry_run)
    if args.dry_run:
        print(f"Would build {len(files)} files in {OUTPUT}")
        print("\n".join(str(path) for path in files))
    else:
        print(f"Built {len(files)} files in {OUTPUT}")


if __name__ == "__main__":
    main()
