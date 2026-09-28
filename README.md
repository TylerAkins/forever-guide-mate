# Forever GuideMate

Forever GuideMate is a minimalist, free, open-source leveling guide for World of Warcraft: Forever. It shows the next quest step, a searchable guide library, and hands the next point to [TomTom](https://www.curseforge.com/wow/addons/tomtom). It reads player and quest state. It does not accept quests, choose rewards, move the character, or take protected gameplay actions.

A guide the character cannot use says Ineligible. Coordinates in the shipped guides have not been validated in the Forever client.

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

## Shipped guides

### Leveling

Each chapter is its own library row. Zephras Isle stays separate. Opening a chapter stays on that chapter. Steps the other faction cannot take are skipped. The starter follows your race, or the starter zone you are standing in, until you open another chapter.

**Alliance**

- 1–14 Zephras Isle (Skyborne)
- 1–12 Dun Morogh, Elwynn Forest, and Teldrassil (capital stops included)
- 12–17 Westfall; 12–17, 20–21, and 23–24 Darkshore
- 17–18 Loch Modan
- 18–20 and 27–28 Redridge Mountains
- 21–22 Ashenvale
- 28–29 Duskwood

**Horde**

- 1–14 Zephras Isle (Skyborne)
- 1–12 Durotar, Mulgore, and Tirisfal Glades (capital stops included)
- 12–20 The Barrens and 12–20 Silverpine Forest
- 20–22 Stonetalon Mountains; 22–23 Southern Barrens; 23–25 Stonetalon Mountains

Converted chapters include Forever quests woven into the existing Era route. Remaining `(Era)` chapters live in `Guides/Era/` until converted; see [Era conversion](#era-chapters-not-yet-loaded).

### Loremaster

Zone guides follow the leveling route and weave in zone quests that route skips. Dungeon-only quests stay in the dungeon guides.

| Guide | Faction |
| --- | --- |
| Durotar | Horde |
| Mulgore | Horde |

Other Loremaster files were removed from the package until each zone is rewritten from its leveling spine. See [Todo](#todo).

### Dungeons

| Guide | Faction | Level |
| --- | --- | --- |
| Ragefire Chasm | Horde | 9 |
| Hall of Thanes | Alliance | 10 |
| The Deadmines | Alliance | 15 |
| Wailing Caverns | Alliance and Horde | 15 |
| Ruins of Lordaeron | Alliance and Horde | 16 |

Hall of Thanes, the Deadmines, Wailing Caverns, and Ruins of Lordaeron use the Forever dungeon lists. Ragefire Chasm still follows the classic list and needs a Forever pass.

### Class quests

| Guide | Who |
| --- | --- |
| Warrior | Alliance and Horde |
| Paladin | Alliance, and Undead on Horde |
| Hunter | Alliance and Horde |
| Rogue | Alliance and Horde |
| Priest | Alliance and Horde |
| Shaman | Horde, plus the Alliance shaman quests Forever added |
| Mage | Alliance and Horde |
| Warlock | Alliance and Horde |
| Druid | Alliance and Horde, including Moonglade |

Each guide is the classic class route with Forever class quests woven in. Race and faction are on every step. Horde has no Orc, Troll, Tauren, or Horde Skyborne paladin quests in the database. Dungeon class quests stay in the dungeon guides. Starter chapters still include the class quests whose givers are already on that route.

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

**Alliance (examples):** Ashenvale 24–24 and 29–30; Stonetalon 22–23; Wetlands; mid- and high-level zones through Winterspring

**Horde (examples):** Stonetalon 20–22 and 27–27; Southern Barrens 25–25; Thousand Needles; Ashenvale 26–27; mid- and high-level zones through Winterspring

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
