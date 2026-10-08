# Forever GuideMate

**Forever GuideMate is a minimalist, free, open-source questing guide for World of Warcraft: Forever. It shows the next quest step and tracks destinations with Blizzard Map Pins or optional [TomTom](https://www.curseforge.com/wow/addons/tomtom). It reads your quest log.**

Blizzard Map Pins is the default waypoint provider. Choose optional TomTom under Navigation in addon settings.

It does not accept quests, choose rewards, move the character, or take protected gameplay actions. A guide the character cannot use says Ineligible. Coordinates in the shipped guides have not been validated in the Forever client.

Opening a leveling or Loremaster chapter midway resumes a valid saved step or returns to the earliest unfinished eligible route step. After starters, **Forever Casual Route** (Alliance or Horde) is the 1–60 spine: Casual leveling order with Forever quests woven on top, as one flat guide (no zone chapter title). Use **Skip** on Casual or dungeon guides to hard-skip a step and its dependents after a confirm; Loremaster cannot skip. **Sync** resyncs from the quest log and keeps skips; **Reset skips on this guide** in options clears them. Completed quest history comes from the client, and verified quest prerequisites are followed automatically. If a giver does not offer an expected quest and no verified prerequisite is registered, the tracker stops with a diagnostic instead of silently skipping the quest.

Quest-step rules are in [docs/guide-authoring.md](docs/guide-authoring.md). Loremaster weave rules are in [docs/zone-loremaster-guides.md](docs/zone-loremaster-guides.md).

## Guide Types

- Class Quests
- Dungeon Quests
- Leveling Quests
- Loremaster

## Todo

### Loremaster

Write or restore a Loremaster guide for each questing zone. Use the Wowhead Forever zone page, leave dungeon quests in the dungeon guides, and record intentional omissions in the guide header. Procedure: [docs/zone-loremaster-guides.md](docs/zone-loremaster-guides.md).

**Alliance:** Teldrassil, Dun Morogh, Elwynn Forest, Darkshore, Loch Modan, Westfall, Wetlands

**Horde:** Tirisfal Glades, The Barrens, Silverpine Forest

**Both factions:** Duskwood, Redridge Mountains, Ashenvale, Stonetalon Mountains, Thousand Needles, Hillsbrad Foothills, Alterac Mountains, Arathi Highlands, Stranglethorn Vale, Desolace, Dustwallow Marsh, Badlands, Swamp of Sorrows, Tanaris, Feralas, The Hinterlands, Searing Gorge, Azshara, Felwood, Un'Goro Crater, Burning Steppes, Blasted Lands, Western Plaguelands, Eastern Plaguelands, Silithus, Winterspring

Capitals are not separate Loremaster guides. Capital quests belong on the zone route that already visits them.

### Dungeon quests

Classic dungeon guides ship for RFC through Sunken Temple (plus Forever HoT / RoL / Excavation / Dalaran attunement). Keep improving objective how-to text and Forever quest coverage. Later: remaining BRD / Spire / Dire Maul / Scholo / Strat polish and unfinished raid attunements.

### Era chapters still needing a Forever weave

The 1–60 Casual spine lives entirely under `Guides/Leveling/`. Forever weaves for each zone follow `.cursor/skills/era-forever-weave/SKILL.md` and stay in that folder.

## Installation and navigation

Copy the compiled `ForeverGuideMate` folder into `World of Warcraft/Interface/AddOns`. TomTom is optional. Navigation settings also expose Blizzard's shared in-world destination marker setting.

Close the tracker to clear GuideMate’s owned destination, then reopen it from the AddOn compartment, the minimap fallback, or the AddOns settings panel. On the same continent, a flight path the character already has says to take the flight path there. If that path is not known, the guide stays on the road, boat, or zeppelin. Across continents, a known flight path is used to reach the dock. Otherwise the guide walks. Boats, zeppelins, and flight masters follow Wowhead's Forever world map, including the Riverglades gryphon and wind rider and the Zephras Isle zeppelins.

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

## Releases

Stable releases are numbered GitHub Releases from annotated `v*` tags, with CurseForge packages built from the same tag via its native automatic packager. Merges to `main` produce a commit-specific preview artifact for testing. `RELEASE_NOTES.md` holds the CurseForge changelog for the current version only. The repo, guide, and interface update procedures are in [docs/DEVELOPMENT.md](docs/DEVELOPMENT.md).

## License

Licensed under [GPL-3.0-or-later](LICENSE).
