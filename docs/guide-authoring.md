# Guide authoring

Rules for `Guides/Leveling/`, `Guides/Loremaster/`, `Guides/Dungeons/`, `Guides/Class/`, and `Guides/Miscellaneous/`. The engine tests in `tests/lua/run.lua` cover behaviour; `tests/lua/lint.lua` catches common data mistakes. Class quests are a supported guide type. Class guides use `category = "Class Quests"`. Collection guides such as library books use `category = "Miscellaneous Guides"`; the library label is **Miscellaneous**.

## Miscellaneous guides

Guides in `Guides/Miscellaneous/` cover optional world collection routes that are not zone leveling chapters. Use `category = "Miscellaneous Guides"`. Book pickup steps are usually `kind = "note"` with map pins; use `complete = QuestState(questID, "completed")` when the Forever turn-in quest id is verified, otherwise omit `complete` so the player marks the step with the tracker **Complete** button (stored in the completion ledger). Milestone reward quests use normal accept and turn-in steps with `dependsOn` on the book step that matches the collection tier in the authored order, not empty `dependsOn` on the accept.

## Class quests

One guide per class lives in `Guides/Class/`. The library label is Class. Each guide is the classic class route with Forever class quests woven in. Put class, race, and faction on every step. Use the database race list. A quest offered to both factions stays open to both. When the database leaves the race blank, keep a race lock only when a single-faction classic guide names that race.

Use the pinned quest's applicability, including its prerequisites. Some Horde paladin quests apply to all Horde races; the Undead starter remains an Undead branch.

Dungeon and PvP class quests stay in the dungeon guides. Raid attunements and raid quest routes use `category = "Raid Quests"`. A quest with no giver, objectives, and turn-in is named in the class guide header. Revisit it when the database records those. Do not invent a giver or a coordinate. Starter chapters still weave class quests whose givers are already on that route. The full chain stays in the class guide.

## Ordered leveling and class itineraries

All leveling and class guides use `routeMode = "ordered"`. Their `goals` array is the action order. Prerequisites do not choose the next action. Existing guides in other categories retain their scheduler. The new class dungeon prerequisite itinerary also uses ordered execution.

Author pickups, objective outings, intermediate pickups, returns, and turn-ins separately. Keep directions in `text`; the tracker adds live counts separately. Use `questObjective.count` for a verified partial count checkpoint. Before a quest pickup, use `complete.item = { name = "Item", minCount = quantity }` for verified material collection. An item starter instruction may use `instructionOnly = true` with observed bag or quest state so skipping it passes only that instruction. Use an observed level checkpoint before gated work, with the required level in its text. Set `checkpointQuest` to the guarded quest ID and copy verified `alternativeQuests` so completed or excluded quest work does not leave an unrelated level gate. This metadata does not turn the checkpoint into a quest action. Manual confirmation belongs only on unobservable instructions without quest completion conditions.

For preparation that consumes an intermediate item during an active quest, set `rememberPreparation` to that quest ID. Completion is retained only after observing the item state while the quest is active; abandoning the quest resets it. This records instruction progress and grants no quest credit. Set `instructionOnly = true` so a direct skip passes only that preparation.

`requiredQuests` contains verified prerequisite groups with `mode`, `quests`, and optional `conditions`. Ordered routes have no soft prerequisite exceptions. Unknown state, unavailable pickups, missing active quests, and unmet requirements block the current action. Explicit quest skips cascade through these groups within the selected guide; they never grant observed quest completion.

Define shared class actions in `ClassChains.lua` and reference them with `classAction`. Each itinerary keeps its own action ID, conditions, destination, and position. Keep dungeon prerequisites in the Dungeon library with an observed completion handoff from the class route. The Class Dungeon Prerequisites itinerary follows those actions in order; existing dungeon guides retain their scheduling behavior.

Record chapter visits and insertion points in `route-manifest.json`. `route-conversion-audit.json` records the pinned facts, removed imports, and exclusions. Legacy import and append tools refuse to overwrite ordered guides. Update an itinerary through explicit reviewed action positions.

Run `tests/lua/ordered.lua`, `tests/lua/catalog.lua`, and `tests/lua/journeys.lua` with Lua 5.1 in addition to the existing engine, UI, lint, and accept-chain checks. Reference fixtures come from the supplied archive, not the production itinerary. Structural simulations do not establish in-game availability or destination accuracy; record client walkthrough coverage separately.

## Quest chains

Use one quest id end to end for accept, objectives, and turn-in on that quest.

- **Accept** — `accept-{questID}-…` with `QuestState(questID, "activeOrCompleted")`.
- **Objectives** — `objective-{questID}-…` with `QuestObjective(questID, index, "text")`.
- **Turn-in** — `turnin-{questID}-…` with `QuestState(questID, "completed")`.

Horde **Gathering the Cure** is quest **6128**. Alliance **Gathering the Cure** on Darkshore is quest **6123**. Do not copy an Alliance step id onto a Horde chain.

Every objective step that `dependsOn` an accept must use `QuestObjective` for **that same quest id**. The lint checks this.

## Multiple requirements on one quest

An objective step that completes on `QuestState(questID, "complete")` stays active until the whole quest is ready and displays the first unfinished objective row from the client. Use this for quests whose objectives belong to the same outing.

Split a quest into **one step per objective** only when the route needs to visit those objectives separately. Each split step `dependsOn` the accept, not on the other objectives. The turn-in `dependsOn` **every** objective step for that quest.

Example (Horde Barrens, quest 6128):

1. Kodo horns — `QuestObjective(6128, 2, "Kodo Horn")`
2. Earthroot — `QuestObjective(6128, 1, "Earthroot")`
3. Turn-in — `dependsOn` both objective step ids

Do not fold two requirements into one step’s completion unless the quest truly has a single objective in the log.

## Objective text in `QuestObjective`

When a quest has **two or more** objective steps with the same quest id, pass the **objective label text** as the third argument, for example `"Kodo Horn"` or `"Earthroot"`. The client can reorder objectives; index alone is not enough.

Use a substring that appears in the quest log text for that objective.

## Tracker text vs route pins

- The **tracker** shows the step’s `text` (the objective). On the map, `Continue toward …` pins are path dots only; they must not read as the step title while you are on that map.
- Keep **named** destination pins (`Travel to …`, NPC names, mob names). Era routes may still use `Continue toward …` coordinates between them; do not delete those pins to “simplify” a step.
- If there is **no saved pin**, set `useClientPin = true` and say the guide follows the quest log pin. Do not invent coordinates. The tracker shows the objective summary under the quest title when the client provides it, so the step does not read as only the landmark NPC.
- Registered guides prefer quest-log pins for objectives, gossip, and turn-ins. When the client reports several POIs for one quest, navigation picks the one nearest the player (authored coordinates are the fallback when no POI exists). Objective steps show the first unfinished objective row reported by the client, advancing through those rows as they complete. Set `useClientPin = false` on a step to keep a spine pin canonical. Accept steps stay authored because an unaccepted quest is not in the quest log; item-started quests also need an authored source.
- A Leveling accept with no route pin must still guide the player: `Use the … to accept …` for bag/item starts, or clear navigation copy (NPC and place, `Inside …` for dungeons, Deeprun tram directions). Pinless objectives and turn-ins should set `useClientPin = true` when there is no saved pin. Lint fails bare `Accept ….` steps with `route = nil`.
- At the pin, turn-in steps display `Turn in Quest Name.` using the client quest title, and accept steps display their authored `text`. Neither names the pin label, because imported labels are often the quest title rather than the NPC.
- **Route pin labels are not quest titles.** Use the NPC or place name on `label` and in `offMapText` (`Travel to Wharfmaster Dizzywig in Ratchet.`). Put the quest name in the step `text` (`Accept … from …`, `Turn in … to …`). Quest-title pins read like zone names, especially in-flight when the tracker shows `offMapText` instead of the flight-master line.

## Step structure

Use `accept`, `objective`, `turnin`, and `gossip` as distinct steps. An ordinary quest has one accept, one API-driven objective step, and one turn-in. Use `gossip` instead of `objective` when progress requires choosing dialogue, then complete it with the matching `QuestObjective` or quest-complete condition. Do not combine acceptance, objectives, gossip, or turn-in into one step.

Delivery and breadcrumb quests still use separate records. The accept points at the giver and completes on `activeOrCompleted`; the turn-in points at the recipient and depends on the accept. Never write `Accept ..., then ...` in one record. The all-guide lint enforces this for active, Loremaster, Dungeon, and Era source guides.

## Chapter titles

Use the zone name for the `title` field. When the **same faction** returns to that zone on the 1–60 route, add `(Part 2)`, `(Part 3)`, and so on in route order.

Part numbers are **per faction**, not shared across Alliance and Horde. If only one faction has a chapter in a zone, omit the part suffix. If two factions both visit a zone but on different chapters, number each faction’s visits from 1 within that faction only.

Example: Horde Stonetalon is `(Part 1)` then `(Part 2)`; Alliance Stonetalon is a single chapter titled `Stonetalon Mountains` with no part suffix. Internal chapter ids and filenames may still use `part-1`, `part-2` slugs for load order; only the displayed `title` follows this rule.

Leveling chapters use zone/faction slugs under `Guides/Leveling/` (for example `horde-desolace.lua`, id `leveling-era-horde-desolace`). Forever weave rules are in `.cursor/skills/era-forever-weave/SKILL.md`.

## `dependsOn` and conditions

- Put faction, class, race, and level gates on **every** step of a quest, not only the accept.
- When wow-database has `detail.questie.fields` for that quest, a positive `questLevel` is the level gate and a positive `requiredLevel` is the offer level. `0` and `-1` leave the existing Wowhead number. `detail.requirements.allOf` registers as mode `all`. `anyOf` registers as mode `any`. Register the chain in `QuestPrerequisites.lua` only when the prerequisite turn-in is already earlier in that guide.
- A handoff step depends on the previous turn-in. A turn-in depends on all objective steps for that quest.
- Do not point `dependsOn` at a step the player has not reached yet unless that is intentional gating.

### Detour weave checklist

When a chapter copies a block from another route, treat the source as canonical and the copy as a detour. Named pairs live in `tests/lua/guide_data_checks.lua` (`DetourCoveragePairs`).

Lint also compares **every shipped leveling chapter** with every other shipped leveling chapter. For a shared quest id (step ids `accept-`, `turnin-`, `objective-`, or `gossip-` plus that id), a strict subset fails unless that `guideID:questID` is in `CoverageGapAllowlist` with a chapter that still has the missing steps. The current list is a baseline of existing gaps, not a sign-off that each one is intentional. Era archive files and class guides are printed by `audit_accept_chains.lua` and do not fail lint. Add an allowlist row only for a real handoff to a named later chapter, not to hide a dropped turn-in on a detour.

### Gated accepts

If the client offers quest B only after quest A is turned in, the accept for B must `dependsOn` the `turnin-A-…` step, or `RegisterQuestPrerequisite` must name A and that turn-in step must appear earlier in the same guide. Priority alone does not hold the accept.

### Accept-only deferral

An accept with no turn-in in the same chapter is allowed when the turn-in lives in a later chapter, dungeon, or class guide. `lua5.1 tests/lua/audit_accept_chains.lua` and `lint.lua` fail if an accept has **no turn-in in any shipped guide**. Instant/auto omits go in `OrphanAcceptAllowlist`. Same-chapter denylist remains `SameChapterTurninRequired`.

### Skip lineage (player Skip, not soft defer)

Casual and dungeon guides support hard **Skip** with a cascade confirm when dependents would also leave the route. Skipped steps satisfy `dependsOn` for routing but do not raise completion percent. Loremaster guides disable Skip. Sync keeps skips and only clears ones the client has already finished. **Reset skips on this guide** in the options panel clears every skip on the open guide. Previous clears the returned step’s skip. Do not author soft “skip for now” / grind-only / set-hearth stops on Casual or starter chapters.

### Forever Casual Route composition

`FinalizeGuides` merges non-starter `leveling-era-*` chapters into `leveling-casual-alliance` and `leveling-casual-horde` with `compactLibrary = true`. Starters stay individual library guides. The spine comes from `tools/import_classic_leveling.py`; Forever steps are woven afterward (`tools/port_forever_weaves.py` or the era-forever-weave skill). Casual is one flat route in the tracker (no zone chapter title); segments exist only for composition. Step `text` must say how to finish the objective (mob/object, until condition, item-start loot → use → accept).

### When an accept may have no `dependsOn`

Many **camp pickup** accepts intentionally have an empty `dependsOn`: the route visits an NPC and several quests are picked up together. That is fine.

An accept must **not** use empty `dependsOn` when the client only offers the quest **after another quest is turned in**. Example: **Nara Wildmane (1490)** only appears after **Hamuul Runetotem (1489)** at Elder Rise. The accept must `dependsOn` the **1489 turn-in** step. Copying a step from a dungeon guide without copying its `dependsOn` chain is a common mistake.

The engine treats any accept with no `dependsOn` as **always ready** for routing. A bad chain lets the tracker jump to that accept early (especially after reload or stale saved progress).

### Registered quest prerequisites

`QuestPrerequisites.lua` is the repository-owned quest-chain catalog. Register a verified prerequisite with `ns:RegisterQuestPrerequisite({ quest = ..., mode = "all"|"any", quests = {...}, conditions = ... })`. The engine attaches matching turn-in goals to leveling and Loremaster accepts, validates references and cycles, and routes to missing prerequisites before showing the dependent accept. Dungeon and raid guides follow authored priority. They do not skip ahead to every quest on the player's current map. After the player passes a step, later ready steps come before the route jumps backward. Once an accept, turn-in, or gossip at a pin is done, other ready steps at that same pin come before the route leaves.

Use `all` when every listed quest must be turned in. Use `any` only for true alternative breadcrumbs where one completed branch unlocks the quest. Conditions belong on the catalog entry when the chain differs by faction, race, or class. Do not copy prerequisite data from another add-on; verify it independently.

When copying WC / RFC / other dungeon chains into a leveling chapter, compare the **dungeon guide** `dependsOn` and turn-in NPC pins, not just the accept text.

### Class-branch turn-ins (example: warlock Vile Familiars)

Some quests use **different quest ids** for the same narrative beat (Durotar **792** vs warlock **1485 / 1499**). The engine treats a class-ineligible turn-in step as **satisfied** for routing, so a single `dependsOn` on only the non-warlock turn-in is **not** enough.

For any accept the client only offers after **either** branch is turned in, list **both** turn-in goal ids on the accept:

```lua
dependsOn = { "turnin-792-vile-familiars", "turnin-1499-vile-familiars" },
```

Do **not** rely on `RegisterQuestPrerequisite` `mode = "any"` alone for this pattern: the skipped branch still counts as done for warlocks.

CI enforces known class-branch gates (`tests/lua/guide_data_checks.lua`) and keeps Era leveling accepts aligned with Loremaster turn-in gates for Durotar and Mulgore.

## Data checks beyond CI

| Check | Command | What it catches |
|--------|---------|----------------|
| CI lint | `lua5.1 tests/lua/lint.lua` | Wrong objective quest ids, mismatched conditions, incomplete turn-in dependencies, registered prerequisite errors, and more |
| Chain audit | `lua5.1 tests/lua/audit_accept_chains.lua` | Enforces registered prerequisite references (same rules as lint, quick standalone pass) |
| Era vs Loremaster accept gates | part of `lua5.1 tests/lua/lint.lua` | Era chapter accept must match Loremaster `dependsOn` when Loremaster gates on a prior turn-in or objective |
| Class-branch turn-ins | part of `lua5.1 tests/lua/lint.lua` | Curated dual `dependsOn` rules (e.g. Burning Blade Medallion and Lazy Peons vs 792 and 1499) |
| Quest giver audit | in game on gossip | Rewinds through a registered prerequisite or blocks with a diagnostic; it never silently skips (see `QuestAudit.lua`) |

### Data requiring manual review

- **Wrong turn-in NPC** on the last route pin (1490 was turning in at Hamuul instead of Nara) — compare dungeon guides and Wowhead; no automated check.
- **Alliance vs Horde quest id mix-ups** — partially covered by objective/accept id lint (6128 vs 6123).

After editing chains, run lint and the chain audit. Add a verified catalog entry when a quest requires an earlier quest turn-in.

### Before merging route changes (manual smoke)

On a **fresh** character matching the edited chapter, walk until the changed quests unlock. Confirm the tracker does not point at an accept before the NPC offers it. For Durotar, spot-check **orc warlock** (Ruzan → Zureetha Vile Familiars) and a non-warlock orc through **Lazy Peons** and **Burning Blade Medallion**. Use **Sync** after skipping an early step; skipped accepts with no quest in the log should reopen.

## Mid-guide recovery

Leveling and Loremaster guides are exhaustive chapters. When opened midway, the engine keeps a valid saved step; otherwise it selects the earliest unfinished eligible route goal. Map proximity breaks ties only and cannot jump over earlier work. Completed or active quests come from client truth, which overrides stale manual, ledger, inferred, or deferred completion. While the quest APIs are still loading, the saved step remains in place.

If a giver does not offer an accept, do not add a skip workaround. Register and include the verified prerequisite chain. If no verified chain exists, the tracker deliberately stops and reports the quest ID and NPC so the route can be corrected.

## Before you ship

```sh
python3 -m unittest discover -s tests
lua5.1 tests/lua/run.lua
lua5.1 tests/lua/ordered.lua
lua5.1 tests/lua/catalog.lua
FGM_FULL_MATRIX=1 lua5.1 tests/lua/journeys.lua
lua5.1 tests/lua/ui.lua
lua5.1 tests/lua/lint.lua
lua5.1 tests/lua/audit_accept_chains.lua
python3 tools/guide_release.py validate-notes --version "$(tr -d '[:space:]' < VERSION)"
```

If the change should publish (guides, engine, or TOC), bump `VERSION` by exactly one patch and refresh `CHANGELOG.md` plus `RELEASE_NOTES.md` (current release only). Merging that reviewed PR tags and publishes the GitHub Release and CurseForge package. Release mechanics are in [DEVELOPMENT.md](DEVELOPMENT.md).

Add focused assertions in `tests/lua/run.lua` when you fix a chain that broke in game (wrong quest id, early turn-in, and similar).

Changing a turn-in’s `dependsOn` or splitting objectives can leave **stale completion ledger** entries from the old route. While that quest is still in your log, turn-in credit from the ledger is ignored and cleared until the quest is actually turned in, so a new objective is not skipped.

The addon saves **active step per guide** (`activeGoalByGuide`). Reload and switching away and back should return to the same step, not the first open quest in the chapter.

Loremaster-specific weave rules stay in [zone-loremaster-guides.md](zone-loremaster-guides.md) and `.cursor/skills/zone-loremaster-guide/SKILL.md`. Era chapter conversion rules are in `.cursor/skills/era-forever-weave/SKILL.md`. Forever quest facts come from [wow-database](https://github.com/TylerAkins/wow-database) (`data/forever/compiled/`). A positive Questie `questLevel` is the step level. `0` and `-1` leave the Wowhead level.

Ordered routes keep authored instructions and pins. Registration enables `useQuestNavigation` for ordinary quest objectives and turn-ins independently of `useClientPin`. Blizzard navigation is selected for a matching single unfinished objective or a completed quest turn-in, with the authored destination as fallback. Travel and checkpoint instructions retain their explicit destination. Set `useQuestNavigation = false` for an interaction requiring a specific authored destination.
