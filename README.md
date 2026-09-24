# Forever GuideMate

Forever GuideMate is a local-development guide addon for World of Warcraft: Forever. It tracks the next quest step, shows completion in a searchable library, and hands the next point to [TomTom](https://www.curseforge.com/wow/addons/tomtom). It reads player and quest state. It does not accept quests, choose rewards, move the character, or take protected gameplay actions.

A guide the character cannot use says Ineligible. The faction stays listed beside that. Coordinates in the shipped guides have not been validated in the Forever client.

The rules for the next Loremaster zone are in [docs/zone-loremaster-guides.md](docs/zone-loremaster-guides.md).

## Current guides

### Leveling

| Guide | Who | Notes |
| --- | --- | --- |
| Zephras Isle (Skyborne) | Alliance and Horde Skyborne | Levels 1–14. Written from the Forever quest list. |
| 1–60 Era | Alliance and Horde | One library row. Alliance and Horde chapters share it. A step the other faction cannot take is skipped. The starter follows your race, or the starter zone you are standing in. Later chapters follow in listed order. The row shows the chapter you are on. |

Chapters whose titles still end in `(Era)` are the classic route. They have not had a Forever pass yet.

### Era chapters with Forever quests

These chapters already include the new Forever quests that sit on the existing route. Their titles no longer end in `(Era)`.

**Alliance**

- 1–12 Dun Morogh, Elwynn Forest, and Teldrassil, including the Ironforge, Stormwind, and Darnassus stops those routes already make
- 12–17 Westfall
- 12–17, 20–21, and 23–24 Darkshore
- 17–18 Loch Modan
- 18–20 and 27–28 Redridge Mountains
- 28–29 Duskwood

**Horde**

- 1–12 Durotar, Mulgore, and Tirisfal Glades, including the Orgrimmar, Thunder Bluff, and Undercity stops those routes already make
- 12–20 Silverpine Forest
- 12–20 Barrens and 22–23 Southern Barrens
- 23–25 Stonetalon Mountains

Ashenvale’s Forever list had no new quests when it was checked. Those chapters still use the classic route and still say `(Era)`.

### Loremaster

These finish a zone’s quests. They can be followed while leveling, but that is not what they are written for. Dungeon quests stay in the dungeon guides.

| Guide | Faction |
| --- | --- |
| Teldrassil | Alliance |
| Durotar | Horde |
| Mulgore | Horde |
| The Barrens | Horde |

### Dungeon quests

| Guide | Faction | Level |
| --- | --- | --- |
| Ragefire Chasm | Horde | 9 |
| Hall of Thanes | Alliance | 10 |
| The Deadmines | Alliance | 15 |
| Wailing Caverns | Alliance and Horde | 15 |
| Ruins of Lordaeron | Alliance and Horde | 16 |

Hall of Thanes, the Deadmines, Wailing Caverns, and the Ruins of Lordaeron were written from the Forever dungeon lists. Ragefire Chasm was written from the classic list and still needs that Forever pass.

### Class quests

No class-quest guide ships yet. That work is its own section, listed under Todo.

## Todo

### Loremaster

Write a Loremaster guide for every remaining questing zone. Cover the Wowhead Forever zone page, leave dungeon quests in the dungeon guides, and record every intentional omission in the guide header.

**Alliance**

- Elwynn Forest
- Dun Morogh
- Westfall
- Loch Modan
- Darkshore
- Redridge Mountains
- Duskwood
- Wetlands

**Horde**

- Tirisfal Glades
- Silverpine Forest

**Both factions**

- Ashenvale
- Stonetalon Mountains
- Thousand Needles
- Hillsbrad Foothills
- Alterac Mountains
- Arathi Highlands
- Stranglethorn Vale
- Desolace
- Dustwallow Marsh
- Badlands
- Swamp of Sorrows
- Tanaris
- Feralas
- The Hinterlands
- Searing Gorge
- Azshara
- Felwood
- Un'Goro Crater
- Burning Steppes
- Blasted Lands
- Western Plaguelands
- Eastern Plaguelands
- Silithus
- Winterspring

Capitals are not their own Loremaster guides. Stormwind, Ironforge, Darnassus, Orgrimmar, Thunder Bluff, and Undercity quests belong on the zone route that already visits them.

### Dungeon quests

Ragefire Chasm still needs a pass against the Forever dungeon list.

These instances do not have a quest guide yet:

- Shadowfang Keep
- The Stockade
- Blackfathom Deeps
- Gnomeregan
- Razorfen Kraul
- Scarlet Monastery
- Razorfen Downs
- Uldaman
- Zul'Farrak
- Maraudon
- Temple of Atal'Hakkar
- Blackrock Depths
- Lower Blackrock Spire
- Upper Blackrock Spire
- Dire Maul
- Scholomance
- Stratholme

Raid quests and attunements are not written yet: Zul'Gurub, Molten Core, Onyxia's Lair, Blackwing Lair, Ruins of Ahn'Qiraj, Temple of Ahn'Qiraj, and Naxxramas.

### Class quests

Class quests will be a new guide section, separate from the zone routes. None of these exist yet. Each class needs its own Forever pass:

- Warrior
- Paladin
- Hunter
- Rogue
- Priest
- Shaman
- Mage
- Warlock
- Druid, including the Moonglade chain

### Era chapters that still need Forever support

Walk each chapter against the Wowhead Forever zone page. Add a new quest only when the route is already there, the quest is low-level and right there, or it is the first quest to accept. Leave classic quests that were left off the route off, unless a new quest requires them. Drop and item starts appear only after the item is in the log. When a chapter is done, drop `(Era)` from its title.

**Alliance**

- Ashenvale: 21–22, 24–24, 29–30
- Stonetalon Mountains: 22–23
- Wetlands: 24–27, 30–31
- Hillsbrad Foothills: 31–32
- Stranglethorn Vale: 32–33, 36–37, 39–40, 42–43, 46–47
- Thousand Needles: 33–34
- Desolace: 34–35, 43–43
- Alterac Mountains: 37–37
- Arathi Highlands: 37–38
- Dustwallow Marsh: 38–39
- Badlands: 40–41
- Swamp of Sorrows: 41–42
- Tanaris: 43–44, 49–50
- Feralas: 44–46, 48–49
- Azshara: 46–46, 52–53
- The Hinterlands: 46–46, 50–50
- Searing Gorge: 47–48
- Blasted Lands: 50–51
- Un'Goro Crater: 51–52
- Felwood: 53–54, 55–56
- Burning Steppes: 55–56
- Western Plaguelands: 56–57, 57–58
- Eastern Plaguelands: 57–58
- Silithus: 58–59
- Winterspring: 54–55, 59–60

**Horde**

- Stonetalon Mountains: 20–22, 27–27
- Southern Barrens: 25–25
- Thousand Needles: 25–26, 27–29, 31–32, 37–38
- Ashenvale: 26–27
- Hillsbrad Foothills: 29–30
- Arathi Highlands: 30–30, 37–38
- Stranglethorn Vale: 30–31, 34–36, 38–40, 42–43, 47–47
- Desolace: 32–34, 44–44
- Alterac Mountains: 36–37
- Dustwallow Marsh: 38–38, 43–44, 49–49
- Badlands: 40–41
- Swamp of Sorrows: 41–42, 48–49
- Tanaris: 44–45, 49–50
- Feralas: 45–46, 49–50
- Azshara: 46–47, 50–50
- The Hinterlands: 47–47, 50–51
- Searing Gorge: 47–48
- Blasted Lands: 51–51
- Un'Goro Crater: 51–53
- Burning Steppes: 53–54
- Felwood: 54–54, 55–56
- Winterspring: 54–55, 59–60
- Western Plaguelands: 56–56, 57–58
- Eastern Plaguelands: 56–57
- Silithus: 58–59

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

No release or publishing automation is configured.

## License

Licensed under [GPL-3.0-or-later](LICENSE).
