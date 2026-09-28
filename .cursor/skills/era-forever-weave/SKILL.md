---
name: era-forever-weave
description: Weave Wowhead Forever quests into a classic Era leveling chapter and graduate it from Guides/Era to Guides/Leveling. Use when converting an (Era) chapter, deciding whether a new quest belongs on the route, or placing a woven quest.
---

# Era Forever weave

An `(Era)` chapter is a classic route that is not rewritten for Forever yet. It lives in `Guides/Era/` and is not loaded. A converted chapter lives in `Guides/Leveling/` with no `(Era)` in its title and is part of the 1-60 Era guide. Converting means weaving in the Forever quests that sit on the existing route — never rewriting the route itself.

## Do this

1. Open the chapter in `Guides/Era/`. That step list is the spine. Keep its accepts, objectives, and turn-ins in that order. Leave hub-to-hub travel steps out. TomTom already points at the next pin, and those steps do not auto-clear. Keep a travel step when the quest is to discover or investigate that place, and give it the same `complete` condition as that objective so it clears when the discovery is done.
2. Open the Wowhead Forever zone quest page for the chapter's zone, for example `https://www.wowhead.com/forever/quests/eastern-kingdoms/westfall`. Read quest facts from [wow-database](https://github.com/TylerAkins/wow-database), the compiled Forever zone files under `data/forever/compiled/zones/`. A Forever quest has `firstseenpatch` 16001. The recommended level is the Wowhead Level line in `infoboxMarkup` (`Level: N`). When `index.list.level` disagrees with that line, use the Level line. A quest the bundle could not place (no start pin) is named in the guide header. Do not invent a pin.
3. Every quest on that page that the spine already runs stays as-is. Classic quests the spine left off stay off, unless a new quest requires them.
4. A new quest is woven in only when the route is already there, the quest is low-level and right there, or it is the first quest the route should accept. Anything else stays out (see below).
5. Class quests are part of this pass. Read `data/forever/raw/sources/class_*.json` as well as the zone bundle. Also weave uncategorized Forever quests, such as The Adventurer, when the start or turn-in pin is in this chapter's zone. A class quest at or below the chapter level is woven when its start pin is in the chapter's zone, or in a capital or neighbor the route already visits. Put `class` and `race` on every step. Gate the step at the database minimum level (`reqlevel`), the level the NPC offers it. The full class chain also lives in `Guides/Class/`. A follow-up from the same trainer depends on the previous turn-in in that class chain.
6. Register verified prerequisites in `QuestPrerequisites.lua` using `all` or `any` semantics.
7. Graduate the chapter (see Ship it), then run the checks at the bottom.

`tools/weave_loremaster.py` (`recommended_level`, `insert_quest`, `place_woven`) encodes the level and placement rules below. Read its output before shipping. A quest it could not read is named in the guide header. Fix that by hand rather than inventing a pin.

## Where a new quest goes

Use the first rule that fits.

1. **Series follow-up.** It continues a quest already on the route. Put it immediately after that quest's turn-in. The accept or handoff `dependsOn` that turn-in.
2. **Same giver.** The route already stops at this NPC at the quest's recommended level. Accept it with the other accepts on that visit, before anyone leaves. Do its objectives on the trip that leaves. Turn it in with that NPC's turn-ins. A giver you met earlier does not count when this quest's recommended level is still ahead.
3. **Nearest stop.** Nothing above matched. Insert the whole quest beside the closest pin, after quests of a lower recommended level. Inside a leveling chapter, a Wowhead level above that chapter's end does not count as the route having reached it. The quest waits at the end of the chapter.

## Same trip

The published speed run, through about level 20, shows how a new Forever quest is placed. It does not replace the classic route. Past that, the speed run is not published. Place the woven quest on our spine the same way.

Classic accepts, objectives, and turn-ins stay in order. Move only the woven quest.

- Accept it on the visit where the route is already speaking to that giver, once the route has reached the quest's level. A giver met earlier does not count while the recommended level is still ahead.
- Do the objective on the classic trip that already kills those targets or walks through that spot. When the work matches several classic kills, finish the one objective step on the trip where the collect happens, not on the accept and not on the first kill.
- Turn it in with that NPC's turn-ins on the way back. Do not send the player back to town in the middle of the outing.
- If the quest is offered only after another turn-in, `dependsOn` that turn-in even when Wowhead lists no prerequisite.
- When the work is a different spot on a trip the route already takes, reuse that trip's pin. Do not invent a coordinate, and do not add a trip.
- If our spine visits the two neighboring classic steps in the opposite order, anchor the woven quest to the later step. Do not reorder the spine.
- Leave a woven step that is already on that trip. Leave class chains and their `dependsOn` order alone.
- The tracker stays on the current step until an earlier objective becomes ready, and then it turns back. A recommended level that is still above the steps ahead waits until after those steps, so dinging does not pull the player off the route. Bloodfury Trinkets waits at the end of 23-25 Stonetalon for that reason: the harpy kill is earlier, and the quest is level 26.
- A quest stays out when the start is another zone, a later chapter already walks that ground, or the quest is the middle of a chain this route never starts. Scramble is that chain: it begins in Westfall or the Field of Giants and only later reaches Pocket Litter. Name the omission in the header.
- A classic quest this chapter already accepts, and then never finishes, gets its objective on that same trip. Deepmoss Spider Eggs are collected in Sishir Canyon with Blood Feeders, and turned in on the next visit to Mebok.

## Hand it in

Search every guide, Leveling and Era, for an accept that has no turn-in. The hand-in goes in the later chapter that already stops at that NPC, on that visit, before the next quest the NPC gives. Do not add a second hand-in when another guide already has one.

- A handoff in another file, with no objectives, is gated with quest state `active` and completes on `completed`. It only shows while the quest is still in the log.
- A quest whose objectives are already done in an earlier chapter is gated with state `complete`. The hand-in waits until that work is finished. If a later chapter still has objectives for it, leave the turn-in for the chapter that finishes the work and then stops at the NPC.
- Do not `dependsOn` a step id from another file. Quest state is the cross-guide gate. In the same file, the turn-in `dependsOn` the accept and every objective of that quest, and it keeps that quest's conditions. Every step of one quest in one file has to carry the same conditions.
- Put the turn-in on the visit where the route is already standing at the recipient, not in the middle of the outing that picked the quest up. Report to Gryan Stoutmantle is accepted in Elwynn and turned in on the first Sentinel Hill visit. Letter to Jin'Zil is accepted at the Crossroads and turned in on the first Malaka'jin visit.
- If no chapter stops at the recipient, name the quest in the accept chapter's header. Do not add a city trip or a new camp stop to finish it. Report to Kadrak stays named, because no chapter stops at Kadrak.

## What stays out

- Dungeon quests. They stay in the dungeon guides.
- Grind stops and flight-point pickups. They are never part of the route.
- Drop and item starts until the item is in the log. Gate the turn-in, and every later step, with `quest` state `activeOrCompleted`, and mention the item on a step the player is already doing.
- Level 60 signs, second city trips, and work in another zone.
- Skyborne city tours and cloth donations on non-Skyborne chapters.
- Anything past the chapter's level unless it is the first quest the next stop accepts.
- A quest the guide does not know the NPC offers yet. A follow-up that needs a turn-in keeps `dependsOn` on that turn-in.
- A class quest with no start pin. Name it in the chapter header. Do not invent a giver or a coordinate.

Record every intentional omission in the guide header, for example: `Destruction in Deadmines is a dungeon quest.`

## Shape of a quest

- Prefer one API-driven objective step when all client objectives belong to the same outing; it cycles through unfinished objective rows. Split objectives only when the route needs separate locations. Split objective steps depend on the accept, not on each other, and the turn-in depends on every split objective. See [docs/guide-authoring.md](../../docs/guide-authoring.md).
- A handoff has a separate accept at the giver and turn-in at the recipient. The accept depends on the previous turn-in and completes on `activeOrCompleted`; the turn-in depends on that accept and completes on `completed`. Never combine them as `Accept ..., then ...`.
- Use `gossip` for a dialogue action required between acceptance and turn-in. It depends on the accept and completes from the matching client objective or quest-complete state.
- A kill or a collect still has its own accept step.
- A provided item, such as a quest item the giver hands you, is not its own step. Say how to use it on the objective that needs it.
- An elite step says `This is an elite. Bring a group.` Use Forever's creature rank. A normal named target does not get that sentence.
- Put faction, class, race, and profession requirements on every step of that quest. A mismatch is left out of the percentage. The same quest's steps must carry the same conditions.
- A level requirement on a classic quest is the level the NPC offers it (Requires level). A Forever quest from patch 16001 uses the Wowhead Level line when that line is at least 5 levels above Requires level, because a new page often leaves Requires level at a default. A smaller gap stays on the offer level. Class quests stay on the offer level. The step stays in the percentage until the character reaches it.
- Use uiMap IDs. Wowhead area IDs are not map IDs.
- `flightTo` only on a travel hop. Say a flight path is available only when that character has learned it.
- If there is no saved pin, keep the nearest named landmark and say the guide follows the pin in the quest log. Do not invent a precise pin. Mark that step `useClientPin` so the addon uses the quest log pin while the quest is accepted.
- For a counted objective on a quest with two or more parts, pass the quest log label into `QuestObjective(questID, index, "label")` so completion stays correct if the client reorders objectives.
- Coordinates in these guides have not been validated in the Forever client.
- Priorities are unique. Number the route in order so a later hub cannot jump ahead. Repairing a route keeps fractional priorities.

Race ids: Orc 2, Troll 8, Tauren 6, Undead 5, Human 1, Dwarf 3, Night Elf 4, Gnome 7, Alliance Skyborne 95, Horde Skyborne 96.

## Converted example

The Westfall chapter (`Guides/Leveling/12-17-westfall.lua`) kept the classic Darkshire loop and wove in the Forever quests standing on it. Its header names what stayed out and why. The Duskwood chapter (`Guides/Leveling/28-29-duskwood.lua`) did the same for the Darkshire and Raven Hill loop. An unconverted chapter (`Guides/Era/24-24-ashenvale.lua`) still says `not rewritten for Forever yet` and keeps `(Era)` in its title.

## Ship it

- Drop `(Era)` from the title, move the file from `Guides/Era/` to `Guides/Leveling/`, and add it to `ForeverGuideMate.toc`, `tools/compile_addon.py`, `tests/test_contracts.py`, `tests/lua/run.lua`, and `tests/lua/lint.lua`.
- Assert one real woven chain, one quest split into objectives, the elite wording if the chapter has an elite, and that omitted, dungeon, grind, and flight-pickup steps are absent.
- Add a changelog line.
- If the change should publish (it almost always should for a converted chapter), bump `VERSION` by exactly one patch and refresh `CHANGELOG.md` plus `RELEASE_NOTES.md` (current release only, no email addresses). Merging that reviewed PR tags and publishes the GitHub Release and CurseForge package. See [docs/DEVELOPMENT.md](../../docs/DEVELOPMENT.md).
- Do not accept quests, turn in quests, or move the character from the addon.

```sh
python3 -m unittest discover -s tests
lua5.1 tests/lua/run.lua
lua5.1 tests/lua/lint.lua
python3 tools/guide_release.py validate-notes --version "$(tr -d '[:space:]' < VERSION)"
```
