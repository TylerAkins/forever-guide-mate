---
name: zone-loremaster-guide
description: Add or update a Forever GuideMate zone Loremaster guide so it follows the leveling route and weaves in zone quests the route skips. Use when adding a zone, rewriting a Loremaster route, or deciding where an extra quest belongs.
---

# Zone Loremaster guide

Loremaster finishes the zone. The walk is the leveling route, plus every zone quest that route left out.

Zephras Isle stays a Leveling guide. Do not move it into Loremaster.

## Do this

1. Open the zone's leveling chapters, lowest level first. Converted chapters are in `Guides/Leveling/`. A chapter whose title still ends in `(Era)` is in `Guides/Era/`. That step list is the spine. Keep its accepts, objectives, and turn-ins in that order. Leave hub-to-hub travel steps out. TomTom already points at the next pin, and those steps do not auto-clear. Keep a travel step when the quest is to discover or investigate that place, and give it the same `complete` condition as that objective so it clears when the discovery is done.
2. Open the Wowhead Forever zone quest page, for example `https://www.wowhead.com/forever/quests/kalimdor/durotar`.
3. Every quest on that page that is not already on the spine gets woven in. Do not drop a quest the spine already runs.
4. Compare shared quest-chain edges with the leveling route. Register verified prerequisites in `QuestPrerequisites.lua` using `all` or `any` semantics.
5. Register the guide, then run the checks at the bottom.

`tools/weave_loremaster.py` does steps 1-3 for the zones it lists. Read its output before shipping. A quest it could not read is named in the guide header. Fix that by hand rather than inventing a pin.

## Where an extra quest goes

Use the first rule that fits.

1. **Series follow-up.** It continues a quest already on the route. Put it immediately after that quest's turn-in. The accept or handoff `dependsOn` that turn-in.
2. **Same giver.** The route already stops at this NPC at the quest's recommended level. Accept it with the other accepts on that visit, before anyone leaves. Do its objectives on the trip that leaves. Turn it in with that NPC's turn-ins. A giver you met earlier does not count when this quest's recommended level is still ahead.
3. **Nearest stop.** Nothing above matched. Insert the whole quest beside the closest pin, after quests of a lower recommended level. Inside a leveling chapter, a Wowhead level above that chapter's end does not count as the route having reached it. The quest waits at the end of the chapter.

Leave it out of the first wave when the guide does not know the NPC offers it yet. A follow-up that needs a turn-in keeps `dependsOn` on that turn-in.

## Shape of a quest

- Prefer one API-driven objective step when all client objectives belong to the same outing; it cycles through unfinished objective rows. Split objectives only when the route needs separate locations. Split objective steps depend on the accept, not on each other, and the turn-in depends on every split objective. See [docs/guide-authoring.md](../../docs/guide-authoring.md).
- A handoff has a separate accept at the giver and turn-in at the recipient. The accept depends on the previous turn-in and completes on `activeOrCompleted`; the turn-in depends on that accept and completes on `completed`. Never combine them as `Accept ..., then ...`.
- Use `gossip` for a dialogue action required between acceptance and turn-in. It depends on the accept and completes from the matching client objective or quest-complete state.
- A kill or a collect still has its own accept step.
- A provided item, such as a quest item the giver hands you, is not its own step. Say how to use it on the objective that needs it.
- An item that starts an optional quest is not a required step. Mention it on a step the player is already doing. Gate the turn-in, and every later step, with `quest` state `activeOrCompleted`.
- An elite step says `This is an elite. Bring a group.` Use Forever's creature rank. A normal named target does not get that sentence.
- Keep prerequisite handoffs already present in the leveling route. Dungeon-only quests stay in the dungeon guides. Record every other intentional omission in the header.
- Put faction, class, race, and profession requirements on every step of that quest. A mismatch is left out of the percentage. The same quest's steps must carry the same conditions.
- A level requirement uses Wowhead's recommended level, the Level line, not the level the quest can be started. It stays in the percentage until the character reaches it.
- Use uiMap IDs. Wowhead area IDs are not map IDs.
- `flightTo` only on a travel hop. Say a flight path is available only when that character has learned it.
- If there is no saved pin, keep the nearest named landmark and say the guide follows the pin in the quest log. Do not invent a precise pin. Mark that step `useClientPin` so the addon uses the quest log pin while the quest is accepted.
- For a counted objective on a quest with two or more parts, pass the quest log label into `QuestObjective(questID, index, "label")` so completion stays correct if the client reorders objectives.
- Coordinates in these guides have not been validated in the Forever client.
- Priorities are unique. Number the route in order so a later hub cannot jump ahead.

Race ids: Orc 2, Troll 8, Tauren 6, Undead 5, Human 1, Dwarf 3, Night Elf 4, Gnome 7, Alliance Skyborne 95, Horde Skyborne 96.

## Camp example

Keep the leveling route's order when it already visits the camp. The Barrens route accepts Raptor Thieves and works that quest before Plainstrider Menace. A quest the route skipped, offered by someone the route already stops for, is accepted on that same visit, before the route leaves. Its follow-up still waits on the turn-in that unlocks it.

## Ship it

- Put the file in `Guides/Loremaster/` with `category = "Loremaster Guides"`. The library tag is already `Loremaster`, so the title is the zone name.
- One faction on the guide when the whole zone is that faction. Both factions in one file when the zone has both; put the faction on every step from that route.
- Add the file to `ForeverGuideMate.toc`, `tools/compile_addon.py`, `tests/test_contracts.py`, `tests/lua/run.lua`, and `tests/lua/lint.lua`.
- Assert one real chain, one quest split into objectives, the elite wording if the zone has an elite, and that omitted and dungeon quests are absent.
- Add a changelog line.
- If the change should publish (guides, engine, or TOC), bump `VERSION` by exactly one patch and refresh `CHANGELOG.md` plus `RELEASE_NOTES.md` (current release only, no email addresses). Merging that reviewed PR tags and publishes the GitHub Release and CurseForge package. See [docs/DEVELOPMENT.md](../../docs/DEVELOPMENT.md).
- Do not accept quests, turn in quests, or move the character from the addon.

```sh
python3 -m unittest discover -s tests
lua5.1 tests/lua/run.lua
lua5.1 tests/lua/lint.lua
python3 tools/guide_release.py validate-notes --version "$(tr -d '[:space:]' < VERSION)"
```
