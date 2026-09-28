# Forever GuideMate

**Forever GuideMate is a minimalist, free, open-source questing guide for World of Warcraft: Forever. It shows the next quest step and hands that point to [TomTom](https://www.curseforge.com/wow/addons/tomtom). It reads your quest log.**

Requires [TomTom](https://www.curseforge.com/wow/addons/tomtom). The CurseForge app installs it with this addon.

It does not accept quests, choose rewards, move the character, or take protected gameplay actions. A guide the character cannot use says Ineligible. Coordinates in the shipped guides have not been validated in the Forever client.

Opening a leveling or Loremaster chapter midway resumes a valid saved step or returns to the earliest unfinished eligible route step. Completed quest history comes from the client, and verified quest prerequisites are followed automatically. Use the tracker's **Sync** button to discard its saved position and find the earliest unfinished step again without resetting completed or skipped steps. If a giver does not offer an expected quest and no verified prerequisite is registered, the tracker stops with a diagnostic instead of silently skipping the quest.

Quest-step rules are in [docs/guide-authoring.md](docs/guide-authoring.md). Loremaster weave rules are in [docs/zone-loremaster-guides.md](docs/zone-loremaster-guides.md).

## Guide layout

| Folder | Contents |
| --- | --- |
| `Guides/Leveling/` | Zephras Isle and converted Era chapters (no `(Era)` in the title) |
| `Guides/Era/` | Unconverted Era chapters (not loaded by the addon) |
| `Guides/Loremaster/` | Zone-completion guides |
| `Guides/Dungeons/` | Dungeon quest guides |
| `Guides/Class/` | Supported class-quest guides, one per class |

Only files listed in `ForeverGuideMate.toc` appear in the addon.

## Current supported guides

### Leveling

Each chapter is its own library row. Opening a chapter stays on that chapter.

**Alliance**

| Levels | Chapters |
| --- | --- |
| 1–12 | Dun Morogh, Elwynn Forest, and Teldrassil |
| 1–14 | Zephras Isle |
| 12–17 | Westfall and Darkshore |
| 17–18 | Loch Modan |
| 18–20 | Redridge Mountains |
| 20–21 | Darkshore |
| 21–22 | Ashenvale |
| 22–23 | Stonetalon Mountains |
| 23–24 | Darkshore |
| 24–24 | Ashenvale |
| 24–27 | Wetlands |
| 27–28 | Redridge Mountains |
| 28–29 | Duskwood |
| 29–30 | Ashenvale |

**Horde**

| Levels | Chapters |
| --- | --- |
| 1–12 | Durotar, Mulgore, and Tirisfal Glades |
| 1–14 | Zephras Isle |
| 12–20 | The Barrens and Silverpine Forest |
| 20–22 | Stonetalon Mountains |
| 22–23 | Southern Barrens |
| 23–25 | Stonetalon Mountains |
| 25–25 | Southern Barrens |
| 25–26 | Thousand Needles |
| 26–27 | Ashenvale |
| 27–27 | Stonetalon Mountains |
| 27–29 | Thousand Needles |
| 29–30 | Hillsbrad Foothills |

Converted chapters include Forever quests woven into the existing route. Remaining `(Era)` chapters live in `Guides/Era/` until converted; see [Era conversion](#era-chapters-not-yet-loaded).

### Dungeons

| Guide | Faction | Level |
| --- | --- | --- |
| Ragefire Chasm | Horde | 9+ |
| Hall of Thanes | Alliance | 10+ |
| The Deadmines | Alliance | 15+ |
| Wailing Caverns | Alliance and Horde | 15+ |
| Ruins of Lordaeron | Alliance and Horde | 16+ |

### Class quests

| Guide | Faction |
| --- | --- |
| Warrior | Alliance and Horde |
| Paladin | Alliance and Horde |
| Hunter | Alliance and Horde |
| Rogue | Alliance and Horde |
| Priest | Alliance and Horde |
| Shaman | Alliance and Horde |
| Mage | Alliance and Horde |
| Warlock | Alliance and Horde |
| Druid | Alliance and Horde |

### Loremaster (lowest priority for development right now)

- **Alliance:** None
- **Horde:** Durotar, Mulgore (needs more testing)
- **Both:** None

## Todo

### Loremaster

Write or restore a Loremaster guide for each questing zone. Use the Wowhead Forever zone page, leave dungeon quests in the dungeon guides, and record intentional omissions in the guide header. Procedure: [docs/zone-loremaster-guides.md](docs/zone-loremaster-guides.md).

**Alliance:** Teldrassil, Dun Morogh, Elwynn Forest, Darkshore, Loch Modan, Westfall, Wetlands

**Horde:** Tirisfal Glades, The Barrens, Silverpine Forest

**Both factions:** Duskwood, Redridge Mountains, Ashenvale, Stonetalon Mountains, Thousand Needles, Hillsbrad Foothills, Alterac Mountains, Arathi Highlands, Stranglethorn Vale, Desolace, Dustwallow Marsh, Badlands, Swamp of Sorrows, Tanaris, Feralas, The Hinterlands, Searing Gorge, Azshara, Felwood, Un'Goro Crater, Burning Steppes, Blasted Lands, Western Plaguelands, Eastern Plaguelands, Silithus, Winterspring

Capitals are not separate Loremaster guides. Capital quests belong on the zone route that already visits them.

### Dungeon quests

- Ragefire Chasm: Forever list pass
- No guide yet: Shadowfang Keep, The Stockade, Blackfathom Deeps, Gnomeregan, Razorfen Kraul, Scarlet Monastery, Razorfen Downs, Uldaman, Zul'Farrak, Maraudon, Temple of Atal'Hakkar, Blackrock Depths, Lower and Upper Blackrock Spire, Dire Maul, Scholomance, Stratholme
- Raids and attunements not started (Zul'Gurub through Naxxramas)

### Era chapters not yet loaded

Walk each `Guides/Era/` chapter against the Wowhead Forever zone page, weave new quests per `.cursor/skills/era-forever-weave/SKILL.md`, then drop `(Era)` from the title, move the file to `Guides/Leveling/`, and add it to `ForeverGuideMate.toc` and `tools/compile_addon.py`.

**Alliance (examples):** Wetlands 30–31; Hillsbrad Foothills 31–32; mid- and high-level zones through Winterspring

**Horde (examples):** Arathi Highlands 30–30; Stranglethorn Vale 30–31; Thousand Needles 31–32; mid- and high-level zones through Winterspring

The full chapter list is the filenames under `Guides/Era/`.

## Required dependency

TomTom is required. Forever GuideMate does not load without it. Install TomTom from CurseForge before copying this addon into the AddOns folder:

https://www.curseforge.com/wow/addons/tomtom

The CurseForge app also reads `RequiredDeps: TomTom` from `ForeverGuideMate.toc` and installs TomTom when GuideMate itself is installed from CurseForge. For a manual install, place the `TomTom` folder next to `ForeverGuideMate` in `World of Warcraft/Interface/AddOns`.

Close the tracker to clear the TomTom waypoint, then reopen it from the AddOn compartment, the minimap fallback, or the AddOns settings panel. On the same continent, a flight path the character already has says to take the flight path there. If that path is not known, the guide stays on the road, boat, or zeppelin. Across continents, a known flight path is used to reach the dock. Otherwise the guide walks. Boats, zeppelins, and flight masters follow Wowhead's Forever world map, including the Riverglades gryphon and wind rider and the Zephras Isle zeppelins.

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
