# Adding a zone Loremaster guide

Use this when adding the next zone. The Barrens (`Guides/Leveling/TheBarrens.lua`), Durotar (`Guides/Leveling/Durotar.lua`), and Mulgore (`Guides/Leveling/Mulgore.lua`) are the working examples.

## Source

Start from the Wowhead Forever zone page, for example `https://www.wowhead.com/forever/quests/kalimdor/durotar`. That page is the quest list. Open each quest for the chain, the objective text, and the map pins. Horde is the first route. Do a zone in real chain order, and pick up nearby work before running back across the zone.

## Route rules

- Cover the quests on that zone page. Record every intentional omission in the guide header.
- Leave dungeon quests out. Those stay in the dungeon guides.
- An elite step says `This is an elite. Bring a group.`
- Each quest objective is its own step. Those steps depend on the accept, not on each other, so a finished pin cannot become the active pin again. The turn-in depends on the objectives.
- A provided item, such as a blackjack the quest gives you, is not its own step. Say how to use it on the objective that needs it.
- Follow the Wowhead series. A follow-up accept depends on the previous turn-in.
- A follow-up that only sends you to another NPC is that visit, not a separate accept step on the giver. Say to accept it in the visit text. The pin is the NPC you still have to reach. Same-name parts, such as Samophlange and The Missing Shipment, work this way.
- Use uiMap IDs (Durotar `1411`, the Barrens `1413`, Orgrimmar `1454`). Wowhead area IDs are not map IDs.
- Put a `flightTo` value only on a travel hop. A visit to a quest NPC keeps its own pin.
- Say a flight path is available only when that character has learned it. The travel code already does this. Do not send the player to a flight master for an unknown path.
- If Wowhead has no pin, say so in the step and mark the nearest named landmark. Do not invent a precise pin.
- Coordinates in these guides have not been validated in the Forever client.

## Timers

A quest on a timer finishes within the next two or three steps. Put `timer` on the step that starts the clock. The value is seconds.

- A timer of 30 minutes or less is the next step, ahead of other same-zone work. Any timer with 30 minutes or less remaining is treated the same way. The Flawed Power Stone is 30 minutes and belongs to The Demon Seed: `timer = { seconds = 30 * 60, quest = 924 }` on the stone step. The altar step depends on that stone step.
- A longer timer finishes the step you are on, then the timed chain is next. Need for a Cure and Apothecary Zamah are 45 minutes: `timer = 45 * 60` on the accept.
- When the quest log reports time allowed or time left, that clock is used. A client without those calls is left alone.
- Skipping a timed step leaves it for later.

## Who can reach 100%

A character who finishes every step they can actually take should reach 100%.

- Put faction, class, race, and profession requirements on the steps that have them. A permanent mismatch is left out of the percentage.
- Put the race on every step of that quest: the accept, each objective, and the turn-in. A mismatch counts as that step being finished, so a later shared quest can open. The client race ids are Orc 2, Troll 8, Tauren 6, Undead 5, Human 1, Dwarf 3, Night Elf 4, Gnome 7, Alliance Skyborne 95, and Horde Skyborne 96. Orc and troll together are `race = { 2, 8 }`.
- A level requirement stays in the percentage until the character reaches it.
- Omit unused quests, repeatable class buffs, and promo quests that are not offered to every character. Name them in the header.
- Include shared and side-unknown quests when the zone page lists them and a Horde character can take them.
- A drop that starts an optional quest does not get a required step. Gate the turn-in with `quest` state `activeOrCompleted`, so a missing drop does not block 100%.

## Ship the guide

- Register the file in `ForeverGuideMate.toc` and `tools/compile_addon.py`.
- Add the file to `tests/test_contracts.py` and load it from `tests/lua/run.lua`.
- Assert a real chain, one split multi-objective quest, the elite wording, and that omitted and dungeon quests are absent.
- Add a short changelog note.
- Do not accept quests, turn in quests, or move the character from the addon.
