# Guide authoring

Rules for `Guides/Leveling/`, `Guides/Loremaster/`, `Guides/Dungeons/`, `Guides/Class/`, and `Guides/Miscellaneous/`. The engine tests in `tests/lua/run.lua` cover behaviour; `tests/lua/lint.lua` catches common data mistakes. Class quests are a supported guide type. Class guides use `category = "Class Quests"`. Collection guides such as library books use `category = "Miscellaneous Guides"`; the library label is **Miscellaneous**.

When changing a Casual or Starter quest that also appears in Loremaster, update its corresponding Loremaster actions in the same change, or document a supported intentional difference.

## Miscellaneous guides

Guides in `Guides/Miscellaneous/` cover optional world collection routes that are not zone leveling chapters. Use `category = "Miscellaneous Guides"`. Book pickup steps are usually `kind = "note"` with map pins; use `complete = QuestState(questID, "completed")` when the Forever turn-in quest id is verified, otherwise omit `complete` so the player marks the step with the tracker **Complete** button (stored in the completion ledger). Milestone reward quests use normal accept and turn-in steps with `dependsOn` on the book step that matches the collection tier in the authored order, not empty `dependsOn` on the accept.

TODO: Riverglades, Mount Hyjal, and Shen'dralas exploration guides. Add verified achievement criteria and waypoints when available.

## Class quests

One guide per class lives in `Guides/Class/`. The library label is Class. Each guide is the classic class route with Forever class quests woven in. Put class, race, and faction on every step. Use the database race list. A quest offered to both factions stays open to both. When the database leaves the race blank, keep a race lock only when a single-faction classic guide names that race.

Use the pinned quest's applicability, including its prerequisites. Some Horde paladin quests apply to all Horde races; the Undead starter remains an Undead branch.

Dungeon and PvP class quests stay in the dungeon guides. Raid attunements and raid quest routes use `category = "Raid Quests"`. A quest with no giver, objectives, and turn-in is named in the class guide header. Revisit it when the database records those. Do not invent a giver or a coordinate. Starter chapters still weave class quests whose givers are already on that route. The full chain stays in the class guide.

## Authored itineraries

All guides except Miscellaneous use `routeMode = "ordered"`. Their `goals` array is the action order. Do not put `priority` on these guides or their actions. Prerequisites and `dependsOn` do not choose the next action. Miscellaneous retains its priority scheduler for books and exploration. Exploration guide IDs stay unchanged after moving from Legacy Points.

Verified timed quests 28 and 29 (Trial of the Lake) use `finishBeforeContinuing`.
While one is in the quest log, ordered routes finish its remaining actions through
the Tajarri turn-in, then restore the interrupted route step. Inactive quests and
unrelated timer warnings retain authored order. This changes navigation only and
grants no quest completion credit.

Author pickups, objective outings, intermediate pickups, returns, and turn-ins separately. Keep directions in `text`; the tracker adds live counts separately. Use `questObjective.count` for a verified partial count checkpoint. Before a quest pickup, use `complete.item = { name = "Item", minCount = quantity }` for verified material collection. An item starter instruction may use `instructionOnly = true` with observed bag or quest state so skipping it passes only that instruction. Use an observed level checkpoint before gated work, with the required level in its text. Set `checkpointQuest` to the guarded quest ID and copy verified `alternativeQuests` so completed or excluded quest work does not leave an unrelated level gate. This metadata does not turn the checkpoint into a quest action. Manual confirmation belongs only on unobservable instructions without quest completion conditions. A repeatable quest never reports as turned in, so give its actions an `excludeWhen` condition describing when the reward is no longer needed (for example, the consuming quest is completed or the reward item is in the bags). Ordered routes drop an action while `excludeWhen` is true; other false `conditions` block the route instead.

A single item starter uses the watched bag-presence path, including bag-link fallback when the item count lookup is unavailable. A held starter may finish its preparation note while quest history loads; this does not accept or complete its quest. Quantities above one still require a verified count.

For preparation that consumes an intermediate item during an active quest, set `rememberPreparation` to that quest ID. Completion is retained only after observing the item state while the quest is active; abandoning the quest resets it. This records instruction progress and grants no quest credit. Set `instructionOnly = true` so a direct skip passes only that preparation.

`requiredQuests` contains verified prerequisite groups with `mode`, `quests`, and optional `conditions`. Ordered routes have no soft prerequisite exceptions. Unknown state, unavailable pickups, missing active quests, and unmet requirements block the current action. Explicit quest skips cascade through these groups within the selected guide; they never grant observed quest completion.

Define shared class actions in `ClassChains.lua` and reference them with `classAction`. Each itinerary keeps its own action ID, conditions, destination, and position. Keep dungeon prerequisites in the Dungeon library with an observed completion handoff from the class route. Dungeon and raid guides include their outdoor pickups, instance work, subsequent runs, and returns in array order. Observed instance-entry instructions remain completed after leaving the instance. Direct repeatable hand-ins that never enter the quest log use explicit instructions; confirming those instructions grants no quest completion.

The route remains quest-only: the supplied reference includes grind and level-up instructions that are intentionally not imported. Simulations verify order and observed progress, not sufficient XP. Do not add isolated level gates as a substitute for a suitable zone visit.

Loremaster guides use ordered zone itineraries. Retired guide selections migrate to an available Loremaster guide; their saved completion ledgers remain archived. See [zone-loremaster-guides.md](zone-loremaster-guides.md) for capital ownership and source selection.

Run `go run ./cmd/loremaster-report` to inspect combined and character-specific pickup sets. Read [coverage and verification](loremaster-coverage.md) for source conflicts and walkthrough gaps.

Record chapter visits and insertion points in `route-manifest.json`. `route-conversion-audit.json` records the pinned facts, removed imports, and exclusions. Legacy import and append tools refuse to overwrite ordered guides. Update an itinerary through explicit reviewed action positions.

Run `tests/lua/authored.lua`, `tests/lua/ordered.lua`, `tests/lua/catalog.lua`, and `tests/lua/journeys.lua` with Lua 5.1 in addition to the existing engine, UI, lint, and accept-chain checks. Reference fixtures come from the supplied archive, not the production itinerary. Structural simulations do not establish in-game availability or destination accuracy; record client walkthrough coverage separately.

### Editing an existing route

Use this before moving, re-gating, or retargeting steps in a shipped guide.

1. **Trace execution order.** List the steps around the edit in the order the player meets them: list position, `conditions`, `excludeWhen`, `requiredQuests`, quest state, and `instructionOnly` steps. In scheduler guides, also trace `priority` and `dependsOn`. Do not read the route from priority values alone.
2. **Map destinations.** Note each step's destination and the visit that reaches it. Mark the first visit to each hub. A turn-in placed before that visit, or after the player leaves, adds a trip. A quick pass through a hub to finish an objective does not move turn-ins off the visit that the route and lint guards (`RequiredGoalDependencies`) assign; do not delete or loosen a guard to fit a new placement. Update the chapter's visits in `docs/route-manifest.json` when a step changes visits.
3. **Write the sequence and gates separately.** State which accept starts a chain, which turn-in must not gate it, and which later chain waits. Example: Sparring Match is accepted after Palemane Rock without waiting for The Longwalkers turn-in, and The Ravaged Caravan stays after the Sparring Match turn-in in list order.
4. **Check pins and text.** The route pin and `text` name the intended destination. Add escort or follow-up instructions only when the quest requires them.
5. **Test behavior.** Assert goal-index order for the changed steps, the `requiredQuests` and `conditions` gates that must hold, and the gates that must stay absent. Use a `journey` in `tests/lua/ordered.lua` for a player-visible sequence. Write expectations from the requested player journey, not from the edited guide, so a test cannot confirm the mistake. Priority comparisons do not test an ordered route.
6. **Before committing.** Confirm the branch contains current `origin/main` (`git fetch origin && git merge-base --is-ancestor origin/main HEAD`) and review the full diff against it. When ordered actions move or change gates, bump the guide's own `revision` if it is not merged into the Casual route; for a merged Casual chapter, bump the faction's first merged chapter in TOC order (the Casual route copies only that revision). Update release metadata as in [Before you ship](#before-you-ship).
7. **Pull requests.** Open or update a PR only when asked. Draft the description from the final diff, and show the exact title and body for approval before posting.

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

- **Quest pickup pin source:** Use [AllTheThings' Forever data](https://github.com/ATTWoWAddon/AllTheThings/blob/master/.contrib/.db/forever/zones/kalimdor/mulgore.lua) as the primary source for quest IDs and giver identities. Check current Forever beta quest records when a pin disagrees with the NPC's position, especially in zones whose terrain changed. Record confirmed differences as explicit exceptions instead of copying stale ATT coordinates.
- Mulgore's current [Forever quest records](https://wowforever.wclbox.com/en/renwu/mulgore) place these givers at:
  - Camp Narache: Chief Hawkwind 43.9, 76.7; Greatmother Hawkwind 48.8, 80.9; Grull Hawkwind 44.5, 77.5; Seer Graytongue 42.5, 90.1; Brave Windfeather 44.2, 77.0; Seer Ravenfeather 44.3, 76.8; Harutt Thunderhorn 43.7, 76.7; Lanka Farshot 44.0, 76.4; Gart Mistrunner and Meela Dawnstrider 44.6, 76.6.
  - Bloodhoof Village and nearby: Innkeeper Kauth 45.9, 64.2; Skorn Whitecloud 46.0, 63.4; Maur Raincaller 46.2, 60.8; Harken Windtotem 47.6, 62.7; Mull Thunderhorn 47.5, 63.6; Ruul Eagletalon 46.5, 64.9; Baine Bloodhoof 46.7, 63.4; Zarlman Two-Moons 46.9, 61.2; Gennia Runetotem 47.5, 63.0; Yaw Sharpmane 46.9, 59.6; Narm Skychaser 47.4, 62.5; Morin Cloudstalker patrols the path near 50.0, 62.6 (look along the path if he is not at the pin); Brave Wildrunner 46.7, 63.8; Krang Stonehoof 48.4, 63.7; Var'jun 46.2, 62.3.
  - Other Mulgore givers: Antur Fallow 39.2, 81.2; Perith Stormhoof 33.1, 65.9; Seer Wiserunner 34.3, 43.3; Lorekeeper Raintotem 57.0, 34.5; Ancestral Spirit 58.3, 30.7.
  - Harken Windtotem's current in-game position is 47.6, 62.7; WCLBox records 47.7, 62.7. Use the in-game position. Mulgore guide pins use these coordinates for the relevant giver.
- Route Sharing the Land (745) through Palemane Rock alongside The Longwalkers (98430): take 745 from Baine before traveling to Perith, kill its Palemane objectives in the cave, then accept 98430 from Perith and escort him out. Accept Sparring Match (99108) from Krang Stonehoof in Bloodhoof Village right after accepting Thunderhorn Cleansing; it does not wait for The Longwalkers turn-in. The Ravaged Caravan (749) stays after the Sparring Match turn-in in list order. Turn in The Longwalkers to Cairne on the Journey into Thunder Bluff visit, right after the Journey into Thunder Bluff turn-in to Cairne and after Rite of Wisdom and A Sacred Burial. The Dwarven Digging forge stop is not that visit; lint enforces placement after the Journey into Thunder Bluff turn-in. Use the cave spawn pins for Palemane Tanner and Skinner at 35.6, 63.4 and Palemane Poacher at 30.8, 60.4; the mobs also spawn at southern camps.
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
- Keep offer minima separate from recommended quest levels. A recommendation informs placement within a suitable visit, not an automatic gate on every action. The local export includes ATT level fields under `detail.questie.fields`; that adapter name does not prove a Questie source. Review disagreements between exported and Wowhead offer minima before changing gates. `0` and `-1` do not replace positive source values. `detail.requirements.allOf` registers as mode `all`. `anyOf` registers as mode `any`. Register the chain in `QuestPrerequisites.lua` only when the prerequisite turn-in is already earlier in that guide.
- A handoff step depends on the previous turn-in. A turn-in depends on all objective steps for that quest.
- Do not point `dependsOn` at a step the player has not reached yet unless that is intentional gating.

### Detour weave checklist

When a chapter copies a block from another route, treat the source as canonical and the copy as a detour. Named pairs live in `tests/lua/guide_data_checks.lua` (`DetourCoveragePairs`).

Lint also compares **every shipped leveling chapter** with every other shipped leveling chapter. For a shared quest id (step ids `accept-`, `turnin-`, `objective-`, or `gossip-` plus that id), a strict subset fails unless that `guideID:questID` is in `CoverageGapAllowlist` with a chapter that still has the missing steps. The current list is a baseline of existing gaps, not a sign-off that each one is intentional. Era archive files and class guides are printed by `audit_accept_chains.lua` and do not fail lint. Add an allowlist row only for a real handoff to a named later chapter, not to hide a dropped turn-in on a detour.

### Gated accepts

If the client offers quest B only after quest A is turned in, the accept for B must `dependsOn` the `turnin-A-…` step, or `RegisterQuestPrerequisite` must name A and that turn-in step must appear earlier in the same guide. Priority alone does not hold the accept. Those links satisfy lint and scheduler guides; in ordered routes only the accept's list position and `requiredQuests` hold it, so list A in `requiredQuests` too.

### Accept-only deferral

An accept with no turn-in in the same chapter is allowed when the turn-in lives in a later chapter, dungeon, or class guide. `luajit -joff tests/lua/audit_accept_chains.lua` and `lint.lua` fail if an accept has **no turn-in in any shipped guide**. Instant/auto omits go in `OrphanAcceptAllowlist`. Same-chapter denylist remains `SameChapterTurninRequired`.

### Skip lineage (player Skip, not soft defer)

Casual and dungeon guides support hard **Skip** with a cascade confirm when dependents would also leave the route. Skipped steps satisfy `dependsOn` for routing but do not raise completion percent. Loremaster guides disable Skip. Sync keeps skips and only clears ones the client has already finished. **Reset skips on this guide** in the options panel clears every skip on the open guide. Previous clears the returned step’s skip. Do not author soft “skip for now” / grind-only / set-hearth stops on Casual or starter chapters.

### Forever Casual Route composition

`FinalizeGuides` merges non-starter `leveling-era-*` chapters into `leveling-casual-alliance` and `leveling-casual-horde` with `compactLibrary = true`. Starters stay individual library guides. The spine comes from `go run ./cmd/import-classic-leveling`; Forever steps can be ported with `go run ./cmd/port-forever-weaves` or the era-forever-weave skill. Casual is one flat route in the tracker (no zone chapter title); segments exist only for composition. Step `text` must say how to finish the objective (mob/object, until condition, item-start loot → use → accept).

### When an accept may have no `dependsOn`

Many **camp pickup** accepts intentionally have an empty `dependsOn`: the route visits an NPC and several quests are picked up together. That is fine.

An accept must **not** use empty `dependsOn` when the client only offers the quest **after another quest is turned in**. Example: **Nara Wildmane (1490)** only appears after **Hamuul Runetotem (1489)** at Elder Rise. The accept must `dependsOn` the **1489 turn-in** step and, on ordered routes, list 1489 in `requiredQuests`. Copying a step from a dungeon guide without copying its `dependsOn` chain is a common mistake.

In scheduler guides, the engine treats any accept with no `dependsOn` as **always ready** for routing. A bad chain lets the tracker jump to that accept early (especially after reload or stale saved progress).

### Registered quest prerequisites

`QuestPrerequisites.lua` is the repository-owned quest-chain catalog. Register a verified prerequisite with `ns:RegisterQuestPrerequisite({ quest = ..., mode = "all"|"any", quests = {...}, conditions = ... })`. For scheduler guides, the engine attaches matching turn-in goals to accepts and validates references and cycles. Ordered routes do not attach these gates: put the prerequisite in the accept's `requiredQuests` and keep the catalog entry, which lint still checks. Dungeon and raid guides follow their array order. A later pickup on the current map does not preempt the current action.

Use `all` when every listed quest must be turned in. Use `any` only for true alternative breadcrumbs where one completed branch unlocks the quest. Conditions belong on the catalog entry when the chain differs by faction, race, or class. Do not copy prerequisite data from another add-on; verify it independently.

When copying WC / RFC / other dungeon chains into a leveling chapter, compare the **dungeon guide** `dependsOn` and turn-in NPC pins, not just the accept text.

### Class-branch turn-ins (example: warlock Vile Familiars)

Some quests use **different quest ids** for the same narrative beat (Durotar **792** vs warlock **1485 / 1499**). The engine treats a class-ineligible turn-in step as **satisfied** for routing, so a single `dependsOn` on only the non-warlock turn-in is **not** enough.

For any accept the client only offers after **either** branch is turned in, list **both** turn-in goal ids on the accept:

```lua
dependsOn = { "turnin-792-vile-familiars", "turnin-1499-vile-familiars" },
```

Do **not** rely on `RegisterQuestPrerequisite` `mode = "any"` alone for this pattern: the skipped branch still counts as done for warlocks.

CI enforces known class-branch gates (`tests/lua/guide_data_checks.lua`).

## Data checks beyond CI

| Check | Command | What it catches |
|--------|---------|----------------|
| CI lint | `luajit -joff tests/lua/lint.lua` | Wrong objective quest ids, mismatched conditions, incomplete turn-in dependencies, registered prerequisite errors, and more |
| Chain audit | `luajit -joff tests/lua/audit_accept_chains.lua` | Enforces registered prerequisite references (same rules as lint, quick standalone pass) |
| Authored contracts | `luajit -joff tests/lua/authored.lua` | Category placement, priority removal, prerequisite pickup order, and retired Loremaster selection migration |
| Class-branch turn-ins | part of `luajit -joff tests/lua/lint.lua` | Curated dual `dependsOn` rules (e.g. Burning Blade Medallion and Lazy Peons vs 792 and 1499) |
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
go test ./...
luajit -joff tests/lua/run.lua
luajit -joff tests/lua/authored.lua
luajit -joff tests/lua/ordered.lua
luajit -joff tests/lua/catalog.lua
FGM_FULL_MATRIX=1 luajit -joff tests/lua/journeys.lua
FGM_DUNGEONS=1 luajit -joff tests/lua/journeys.lua
FGM_LOREMASTER=1 luajit -joff tests/lua/journeys.lua
luajit -joff tests/lua/ui.lua
luajit -joff tests/lua/lint.lua
luajit -joff tests/lua/audit_accept_chains.lua
go run ./cmd/guide-release validate-notes --version "$(tr -d '[:space:]' < VERSION)"
```

If the change should publish (guides, engine, or TOC), bump `VERSION` by exactly one patch and refresh `CHANGELOG.md` plus `RELEASE_NOTES.md` (current release only). Merging that reviewed PR tags and publishes the GitHub Release and CurseForge package. Release mechanics are in [DEVELOPMENT.md](DEVELOPMENT.md).

Add focused assertions in `tests/lua/run.lua` when you fix a chain that broke in game (wrong quest id, early turn-in, and similar).

Changing a turn-in’s `dependsOn` or splitting objectives can leave **stale completion ledger** entries from the old route. While that quest is still in your log, turn-in credit from the ledger is ignored and cleared until the quest is actually turned in, so a new objective is not skipped.

The addon saves **active step per guide** (`activeGoalByGuide`). Reload and switching away and back should return to the same step, not the first open quest in the chapter.

Loremaster-specific weave rules stay in [zone-loremaster-guides.md](zone-loremaster-guides.md) and `.cursor/skills/zone-loremaster-guide/SKILL.md`. Era chapter conversion rules are in `.cursor/skills/era-forever-weave/SKILL.md`. Loremaster facts and levels come from the QuestieDB Forever preview export and Questie's Forever policy export; see [DEVELOPMENT.md](DEVELOPMENT.md) for generation commands and the [migration review](loremaster/questiedb-migration.md) for source gaps. Existing Casual level fixtures retain their documented Questie policy.

Ordered routes keep authored instructions and fallback pins. Registration enables `useQuestNavigation` for ordinary quest objectives and turn-ins independently of `useClientPin`. Blizzard navigation is selected when the current objective is unfinished or the quest is ready to turn in, with authored coordinates as fallback if the client has no quest destination. Travel and checkpoint instructions retain their explicit destination. Set `useQuestNavigation = false` for an interaction requiring a specific authored destination.
