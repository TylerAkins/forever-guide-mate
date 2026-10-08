---
name: era-forever-weave
description: Weave Wowhead Forever quests into a Casual leveling chapter under Guides/Leveling. Use when deciding whether a new Forever quest belongs on the route or placing a woven quest.
---

# Era Forever weave

The 1–60 Casual spine lives in `Guides/Leveling/`. Weaving means inserting Forever quests that sit on the existing route — never rewriting the spine itself.

## Do this

1. Open the chapter in `Guides/Leveling/`. That step list is the spine. Keep its accepts, objectives, and turn-ins in that order. Leave hub-to-hub travel steps out. TomTom already points at the next pin, and those steps do not auto-clear. Keep a travel step when the quest is to discover or investigate that place, and give it the same `complete` condition as that objective so it clears when the discovery is done.
2. Open the Wowhead Forever zone quest page for the chapter's zone, for example `https://www.wowhead.com/forever/quests/eastern-kingdoms/westfall`. Read quest facts from [wow-database](https://github.com/TylerAkins/wow-database) (`export/forever/quests` or compiled zones when present). A Forever quest has `firstseenpatch` 16001 (or id ≥ 90000 in schema v2 exports). When `detail.questie.fields` is present, a positive `requiredLevel` is the offer gate and a positive `questLevel` is the step level. `0` and `-1` do not erase a nonzero Wowhead `reqlevel` or Level line. Without a Questie record, the recommended level is the Wowhead Level line (`Level: N`). A quest with no start pin is named in the guide header. Do not invent a pin.
3. Every quest on that page that the spine already runs stays as-is. Classic quests the spine left off stay off, unless a new quest requires them.
4. A new quest is woven in only when the route is already there, the quest is low-level and right there, or it is the first quest the route should accept. Anything else stays out (see below).
5. Class quests are part of this pass when their start pin is in the chapter zone or a capital/neighbor the route already visits. Put `class` and `race` on every step. Gate at offer level (`requiredLevel`).
6. Register verified prerequisites in `QuestPrerequisites.lua` using `all` or `any` semantics.
7. Run the checks at the bottom.

`tools/weave_loremaster.py` (`recommended_level`, `insert_quest`, `place_woven`) encodes placement helpers. Read its output before shipping.

## Where a new quest goes

Use the first rule that fits.

1. **Series follow-up.** It continues a quest already on the route. Put it immediately after that quest's turn-in. The accept or handoff `dependsOn` that turn-in.
2. **Same giver.** The route already stops at this NPC at the quest's recommended level. Accept it with the other accepts on that visit. Do its objectives on the trip that leaves. Turn it in with that NPC's turn-ins.
3. **Nearest stop.** Insert beside the closest pin, after quests of a lower recommended level. A Wowhead level above that chapter's end waits at the end of the chapter.

## What stays out

- Dungeon quests and outdoor lead-ins that belong to a dungeon guide (`Guides/Dungeons`). Name them in the leveling header.
- Grind stops and flight-point pickups.
- Drop and item starts until the item is in the log.
- Level 60 signs, second city trips, and work in another zone.
- Cloth donations on non-Skyborne chapters.
- Anything past the chapter's level unless it is the first quest the next stop accepts.
- A quest with no start pin. Name it in the header.

## Names

| | Leveling chapter |
| --- | --- |
| File | `Guides/Leveling/horde-desolace.lua` |
| `id` | `leveling-era-horde-desolace` |
| `title` | zone/faction title, no level prefix, no `(Era)` |

## Ship it

- Keep the file in `Guides/Leveling/` and registered in `ForeverGuideMate.toc` / `tools/compile_addon.py` / lint / run / contracts.
- Assert woven chains, split objectives, elite wording when needed, and omissions in the header.
- Bump `VERSION` one patch and refresh `CHANGELOG.md` plus `RELEASE_NOTES.md` when shipping.

```sh
python3 -m unittest discover -s tests
lua5.1 tests/lua/run.lua
lua5.1 tests/lua/lint.lua
lua5.1 tests/lua/audit_accept_chains.lua
python3 tools/guide_release.py validate-notes --version "$(tr -d '[:space:]' < VERSION)"
```
