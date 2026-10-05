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
    "Guides/Leveling/durotar.lua",
    "Guides/Leveling/mulgore.lua",
    "Guides/Leveling/tirisfal-glades.lua",
    "Guides/Leveling/the-barrens-part-1.lua",
    "Guides/Leveling/silverpine-forest.lua",
    "Guides/Leveling/stonetalon-mountains-part-1.lua",
    "Guides/Leveling/the-barrens-part-2.lua",
    "Guides/Leveling/stonetalon-mountains-part-2.lua",
    "Guides/Leveling/stonetalon-mountains-part-3.lua",
    "Guides/Leveling/the-barrens-part-3.lua",
    "Guides/Leveling/thousand-needles-part-1.lua",
    "Guides/Leveling/ashenvale-part-3.lua",
    "Guides/Leveling/stonetalon-mountains-part-4.lua",
    "Guides/Leveling/thousand-needles-part-2.lua",
    "Guides/Leveling/hillsbrad-foothills.lua",
    "Guides/Leveling/dun-morogh.lua",
    "Guides/Leveling/elwynn-forest.lua",
    "Guides/Leveling/teldrassil.lua",
    "Guides/Leveling/darkshore-part-1.lua",
    "Guides/Leveling/westfall.lua",
    "Guides/Leveling/loch-modan.lua",
    "Guides/Leveling/redridge-mountains-part-1.lua",
    "Guides/Leveling/darkshore-part-2.lua",
    "Guides/Leveling/ashenvale-part-1.lua",
    "Guides/Leveling/darkshore-part-3.lua",
    "Guides/Leveling/ashenvale-part-2.lua",
    "Guides/Leveling/wetlands.lua",
    "Guides/Leveling/redridge-mountains-part-2.lua",
    "Guides/Leveling/duskwood.lua",
    "Guides/Leveling/ashenvale-part-4.lua",
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
