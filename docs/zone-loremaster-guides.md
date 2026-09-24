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
- Follow the Wowhead series. A follow-up accept depends on the previous turn-in, except for a handoff. Camp pickups batch the accepts that are already offered. They do not start a follow-up early.
- Use uiMap IDs (Durotar `1411`, the Barrens `1413`, Orgrimmar `1454`). Wowhead area IDs are not map IDs.
- Put a `flightTo` value only on a travel hop. A visit to a quest NPC keeps its own pin.
- Say a flight path is available only when that character has learned it. The travel code already does this. Do not send the player to a flight master for an unknown path.
- If Wowhead has no pin, say so in the step and mark the nearest named landmark. Do not invent a precise pin.
- Coordinates in these guides have not been validated in the Forever client.

## Camp pickups

The guide has one active step, and a lower priority runs first. A quest already offered at the same camp waits until every lower step is finished, including the far objectives of the quest accepted just before it. Each quest left behind is another trip across the zone.

At a camp, accept every quest those NPCs will offer on that visit before any objective that leaves the camp. Do that wave of objectives, turn them in, then accept the follow-ups those turn-ins just unlocked, then leave again.

- A follow-up that needs a turn-in keeps `dependsOn` on that turn-in. The Zhevra depends on Plainstrider Menace. The Disruption Ends and Supplies for the Crossroads depend on Disrupt the Attacks. Without that dependency, a low priority tries to accept a quest the NPC does not offer yet, and the step sticks.
- A level gate stays on the step. Harpy Raiders is level 12. Below that level the step is skipped, and the next visit that meets the level picks it up.
- A kill or a collect keeps its own accept step. A handoff stays one visit.
- Leave a quest out of the first wave when the guide does not know it is offered yet. Fungal Spores stays with The Barrens Oases. Forgotten Pools stays behind that breadcrumb.
- Priorities are unique. Put the wave in the numbers between the camp's first accept and the next chain, so a later hub does not jump ahead.

The Barrens Crossroads is the example. Once Plainstrider Menace is available, also accept Raptor Thieves, Disrupt the Attacks, and Harpy Raiders before killing beaks. Turn those in together. Then accept The Zhevra, The Disruption Ends, Supplies for the Crossroads, and Harpy Lieutenants before the next trip. Sen'jin Village accepts Practical Prey, A Solvent Spirit, Zalazane, and Minshina's Skull with Thwarting Kolkar Aggression, before the Kolkar plans. Mulgore's Camp Narache already accepts its first quests together.

## Handoffs

A handoff is a follow-up whose only work is to reach another NPC: deliver an item, speak with them, report back, or turn the quest in there. Same-name parts are handoffs too. The Missing Shipment, Samophlange, and Hidden Enemies are the examples.

The visit is one step. It depends on the previous turn-in. The text says to accept the follow-up, then names the visit. The pin is the NPC you still have to reach. There is no accept step on the giver.

The Missing Shipment is turned in to Wharfmaster Dizzywig. Gazlowe offers it after Southsea Freebooters, and the step still depends on that turn-in:

```lua
{
    id = "turnin-890-the-missing-shipment",
    kind = "turnin",
    text = "Accept The Missing Shipment from Gazlowe, then turn it in to Wharfmaster Dizzywig.",
    dependsOn = { "turnin-887-southsea-freebooters" },
    complete = QuestState(890, "completed"),
    route = {
        Point(MAP.BARRENS, 0.632, 0.384, "Wharfmaster Dizzywig",
            "Travel to Wharfmaster Dizzywig."),
    },
},
```

A talk that finishes a quest log objective, and then sends you back to the giver, is an objective step. It completes when that quest is `complete`. Hidden Enemies after the Lieutenant's Insignia:

```lua
{
    id = "gauge-neeru",
    kind = "objective",
    text = "Accept Thrall's next Hidden Enemies task, then show the insignia to Neeru Fireblade and exhaust his dialogue.",
    dependsOn = { "turnin-hidden-enemies-1" },
    complete = QuestState(5727, "complete"),
    route = {
        Point(MAP.ORGRIMMAR, 0.496, 0.506, "Neeru Fireblade in the Cleft of Shadow"),
    },
},
```

A talk that ends the quest is a turn-in and completes when that quest is `completed`.

A kill or a collect still has its own accept step on the giver. The objective steps depend on that accept. The pin stays with the giver until the quest is in the log, then it moves to the camp. Folding that accept would send the player to the camp with nothing to do.

An accept step on the giver, with the next pin on someone else, is the broken shape. The guide sits on "Accept the next quest" after the turn-in, including when the follow-up has the same name, until the player presses Next.

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
- A breadcrumb that names the elemental plane, or that rewards Windshapers reputation, is Skyborne. Journey to the Crossroads from Thrall (98024) is Horde Skyborne. Orcs and trolls reach the Crossroads through Meats to Orgrimmar. Tauren take Kirge Sternhorn's Journey to the Crossroads (854).
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
