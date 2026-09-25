# Forever GuideMate

Forever GuideMate is a local-development guide addon for World of Warcraft: Forever. Version `0.1.0` contains the first engine framework, dungeon quest guides for Ragefire Chasm, Wailing Caverns, the Ruins of Lordaeron, the Deadmines, and the Hall of Thanes, the Skyborne starter guide for Zephras Isle, Horde Loremaster guides for Durotar, Mulgore, and the Barrens, and the Alliance Loremaster guide for Teldrassil. The Loremaster guides are for finishing a zone's quests. They can be followed while leveling, but that is not what they are written for. Zephras Isle is the leveling guide. Era leveling is one Leveling guide, 1-60 Era. Alliance and Horde chapters live in that guide. A step the other faction cannot take is skipped. The starter follows your race, or the starter zone you are standing in, and the other starters stay off your route. Later chapters follow in listed order. The library row shows the chapter you are on. These routes follow the classic path until they are rewritten for Forever. A guide you cannot use says Ineligible. The faction is listed beside that, and the row does not use a step reason. The Teldrassil Loremaster guide is Alliance only, and its title is Teldrassil because the row tag already says Loremaster. Loremaster routes follow the leveling path and weave in the zone quests that path skips. The rules for the next zone are in [docs/zone-loremaster-guides.md](docs/zone-loremaster-guides.md).

The addon uses a compact Blizzard objective-style tracker, a searchable guide library, and completion progress. Navigation is handled by [TomTom](https://www.curseforge.com/wow/addons/tomtom): GuideMate gives TomTom the next boat, zeppelin, flight master, or road point instead of drawing its own arrow. Boats, zeppelins, and flight masters follow Wowhead's Forever world map, including the classic network plus the Riverglades gryphon and wind rider and the Zephras Isle zeppelins. On the same continent, a flight path the character already has says to take the flight path there. If that path is not known, the guide stays on the road, boat, or zeppelin. Across continents, a known flight path is used to reach the dock. Otherwise the guide walks. Close the tracker to clear the TomTom waypoint, then reopen it from the AddOn compartment, the minimap fallback, or the AddOns settings panel. It observes player and quest state but does not accept quests, choose rewards, move the character, or perform protected gameplay actions. The included public Classic quest data and coordinates have not yet been validated in the Forever client.

## Required dependency

TomTom is required. Forever GuideMate does not load without it. Install TomTom from CurseForge before copying this addon into the AddOns folder:

https://www.curseforge.com/wow/addons/tomtom

The CurseForge app also reads `RequiredDeps: TomTom` from `ForeverGuideMate.toc` and installs TomTom when GuideMate itself is installed from CurseForge. For a manual install, place the `TomTom` folder next to `ForeverGuideMate` in `World of Warcraft/Interface/AddOns`.

## Development

Run the project-contract tests:

```sh
python3 -m unittest discover -s tests
```

Run the Lua 5.1 engine and UI tests:

```sh
lua5.1 tests/lua/run.lua
lua5.1 tests/lua/ui.lua
```

Lint the shipped guide data:

```sh
lua5.1 tests/lua/lint.lua
```

Compile the addon:

```sh
python3 tools/compile_addon.py
```

The compiled addon appears at `.compiled/ForeverGuideMate`. Copy that `ForeverGuideMate` folder into your World of Warcraft AddOns directory to install it manually.

No release or publishing automation is configured.

## License

Licensed under [GPL-3.0-or-later](LICENSE).
