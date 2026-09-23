# Forever GuideMate

Forever GuideMate is a local-development guide addon for World of Warcraft: Forever. Version `0.1.0` contains the first engine framework and one Horde Ragefire Chasm dungeon quest guide.

The addon uses a compact Blizzard objective-style tracker, a searchable guide library, completion progress, a guide-specific navigation arrow, and a Blizzard map pin for the active route waypoint. Close the tracker to hide both guide surfaces, then reopen it from the AddOn compartment, the minimap fallback, or the AddOns settings panel. It observes player and quest state but does not accept quests, choose rewards, move the character, or perform protected gameplay actions. The included public Classic quest data and coordinates have not yet been validated in the Forever client.

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
