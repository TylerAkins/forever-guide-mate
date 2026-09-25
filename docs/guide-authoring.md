# Guide authoring

Rules for `Guides/Leveling/`, `Guides/Loremaster/`, and `Guides/Dungeons/`. The engine tests in `tests/lua/run.lua` cover behaviour; `tests/lua/lint.lua` catches common data mistakes.

## Quest chains

Use one quest id end to end for accept, objectives, and turn-in on that quest.

- **Accept** — `accept-{questID}-…` with `QuestState(questID, "activeOrCompleted")`.
- **Objectives** — `objective-{questID}-…` with `QuestObjective(questID, index, "text")`.
- **Turn-in** — `turnin-{questID}-…` with `QuestState(questID, "completed")`.

Horde **Gathering the Cure** is quest **6128**. Alliance **Gathering the Cure** on Darkshore is quest **6123**. Do not copy an Alliance step id onto a Horde chain.

Every objective step that `dependsOn` an accept must use `QuestObjective` for **that same quest id**. The lint checks this.

## Multiple requirements on one quest

When a quest needs more than one item or kill count, split it into **one step per objective**. Each step `dependsOn` the accept, not on the other objectives. The turn-in `dependsOn` **every** objective step for that quest.

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
- If there is **no saved pin**, set `useClientPin = true` and say the guide follows the quest log pin. Do not invent coordinates.

## `dependsOn` and conditions

- Put faction, class, race, and level gates on **every** step of a quest, not only the accept.
- A handoff step depends on the previous turn-in. A turn-in depends on all objective steps for that quest.
- Do not point `dependsOn` at a step the player has not reached yet unless that is intentional gating.

### When an accept may have no `dependsOn`

Many **camp pickup** accepts intentionally have an empty `dependsOn`: the route visits an NPC and several quests are picked up together. That is fine.

An accept must **not** use empty `dependsOn` when the client only offers the quest **after another quest is turned in**. Example: **Nara Wildmane (1490)** only appears after **Hamuul Runetotem (1489)** at Elder Rise. The accept must `dependsOn` the **1489 turn-in** step. Copying a step from a dungeon guide without copying its `dependsOn` chain is a common mistake.

The engine treats any accept with no `dependsOn` as **always ready** for routing. A bad chain lets the tracker jump to that accept early (especially after reload or stale saved progress).

### Registered quest prerequisites

`QuestPrerequisites.lua` is the repository-owned quest-chain catalog. Register a verified prerequisite with `ns:RegisterQuestPrerequisite({ quest = ..., mode = "all"|"any", quests = {...}, conditions = ... })`. The engine attaches matching turn-in goals to leveling and Loremaster accepts, validates references and cycles, and routes to missing prerequisites before showing the dependent accept. Dungeon guides retain their focused pickup behavior.

Use `all` when every listed quest must be turned in. Use `any` only for true alternative breadcrumbs where one completed branch unlocks the quest. Conditions belong on the catalog entry when the chain differs by faction, race, or class. Do not copy prerequisite data from another add-on; verify it independently.

When copying WC / RFC / other dungeon chains into a leveling chapter, compare the **dungeon guide** `dependsOn` and turn-in NPC pins, not just the accept text.

## Data checks beyond CI

| Check | Command | What it catches |
|--------|---------|----------------|
| CI lint | `lua5.1 tests/lua/lint.lua` | Wrong objective quest ids, mismatched conditions, incomplete turn-in dependencies, registered prerequisite errors, and more |
| Chain audit | `lua5.1 tests/lua/audit_accept_chains.lua` | Enforces registered prerequisite references (same rules as lint, quick standalone pass) |
| Quest giver audit | in game on gossip | Rewinds through a registered prerequisite or blocks with a diagnostic; it never silently skips (see `QuestAudit.lua`) |

### Data requiring manual review

- **Wrong turn-in NPC** on the last route pin (1490 was turning in at Hamuul instead of Nara) — compare dungeon guides and Wowhead; no automated check.
- **Alliance vs Horde quest id mix-ups** — partially covered by objective/accept id lint (6128 vs 6123).

After editing chains, run lint and the chain audit. Add a verified catalog entry when a quest requires an earlier quest turn-in.

## Mid-guide recovery

Leveling and Loremaster guides are exhaustive chapters. When opened midway, the engine keeps a valid saved step; otherwise it selects the earliest unfinished eligible route goal. Map proximity breaks ties only and cannot jump over earlier work. Completed or active quests come from client truth, which overrides stale manual, ledger, inferred, or deferred completion. While the quest APIs are still loading, the saved step remains in place.

If a giver does not offer an accept, do not add a skip workaround. Register and include the verified prerequisite chain. If no verified chain exists, the tracker deliberately stops and reports the quest ID and NPC so the route can be corrected.

## Before you ship

```sh
python3 -m unittest discover -s tests
lua5.1 tests/lua/run.lua
lua5.1 tests/lua/lint.lua
lua5.1 tests/lua/audit_accept_chains.lua
python3 tools/guide_release.py validate-notes --version "$(tr -d '[:space:]' < VERSION)"
```

If the change should publish (guides, engine, or TOC), bump `VERSION` by exactly one patch and refresh `CHANGELOG.md` plus `RELEASE_NOTES.md` (current release only). Merging that reviewed PR tags and publishes the GitHub Release and CurseForge package. Release mechanics are in [DEVELOPMENT.md](DEVELOPMENT.md).

Add focused assertions in `tests/lua/run.lua` when you fix a chain that broke in game (wrong quest id, early turn-in, and similar).

Changing a turn-in’s `dependsOn` or splitting objectives can leave **stale completion ledger** entries from the old route. While that quest is still in your log, turn-in credit from the ledger is ignored and cleared until the quest is actually turned in, so a new objective is not skipped.

The addon saves **active step per guide** (`activeGoalByGuide`). Reload and switching away and back should return to the same step, not the first open quest in the chapter.

Loremaster-specific weave rules stay in [zone-loremaster-guides.md](zone-loremaster-guides.md) and `.cursor/skills/zone-loremaster-guide/SKILL.md`.
