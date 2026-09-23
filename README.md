# Forever GuideMate

Forever GuideMate is a local-development guide addon for World of Warcraft: Forever. Version `0.1.0` contains the first engine framework, dungeon quest guides for Ragefire Chasm, Wailing Caverns, the Ruins of Lordaeron, the Deadmines, and the Hall of Thanes, the Skyborne starter guide for Zephras Isle, and the Barrens Loremaster guide.

The addon uses a compact Blizzard objective-style tracker, a searchable guide library, and completion progress. Navigation is handled by [TomTom](https://www.curseforge.com/wow/addons/tomtom): GuideMate gives TomTom the next boat, zeppelin, flight master, or road point instead of drawing its own arrow. Boats, zeppelins, and flight masters follow Wowhead's Forever world map, including the classic network plus the Riverglades gryphon and wind rider and the Zephras Isle zeppelins. On the same continent, the waypoint is the local flight master. Across continents, it is the dock, or the flight master that reaches that dock. Close the tracker to clear the TomTom waypoint, then reopen it from the AddOn compartment, the minimap fallback, or the AddOns settings panel. It observes player and quest state but does not accept quests, choose rewards, move the character, or perform protected gameplay actions. The included public Classic quest data and coordinates have not yet been validated in the Forever client.

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

Compile the addon:

```sh
python3 tools/compile_addon.py
```

The compiled addon appears at `.compiled/ForeverGuideMate`. Copy that `ForeverGuideMate` folder into your World of Warcraft AddOns directory to install it manually.

No release or publishing automation is configured.

## License

Licensed under [GPL-3.0-or-later](LICENSE).
