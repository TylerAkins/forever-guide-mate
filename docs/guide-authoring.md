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

## Before you ship

```sh
python3 -m unittest discover -s tests
lua5.1 tests/lua/run.lua
lua5.1 tests/lua/lint.lua
```

Add focused assertions in `tests/lua/run.lua` when you fix a chain that broke in game (wrong quest id, early turn-in, and similar).

Changing a turn-in’s `dependsOn` or splitting objectives can leave **stale completion ledger** entries from the old route. While that quest is still in your log, turn-in credit from the ledger is ignored and cleared until the quest is actually turned in, so a new objective is not skipped.

Loremaster-specific weave rules stay in [zone-loremaster-guides.md](zone-loremaster-guides.md) and `.cursor/skills/zone-loremaster-guide/SKILL.md`.
