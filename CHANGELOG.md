# Changelog

All notable changes to this project are documented here.

## 0.1.0 - 2026-09-23

- Created the initial repository and addon scaffold.
- Added the guide engine, objective-style tracker, guide library, persistent completion progress, navigation arrow, active-route map pin, and the initial Ragefire Chasm quest guide.
- Added the Wailing Caverns dungeon quest guide for level 15.
- Added the Ruins of Lordaeron dungeon quest guide for level 16.
- Added the Deadmines dungeon quest guide for level 15 and the Hall of Thanes dungeon quest guide for level 10.
- The guide library lists guides from lowest level to highest, with a gold line between rows.
- Guide library rows now show the guide type, such as Dungeon, before eligibility.
- Replaced the built-in navigation arrow with TomTom waypoints. TomTom is a required dependency. Cross-continent steps point at the boat or zeppelin that reaches the destination.
- Added the Forever boat, zeppelin, and flight-master network from Wowhead's world map, including Riverglades and Zephras Isle.
- The guide tracker starts on the left edge, vertically centered. No guide is selected until the player chooses one, and that choice is saved.
- Dungeon guides that do not apply show Ineligible instead of a faction or level reason.
- Added the Zephras Isle leveling guide for Skyborne characters, levels 1-14.
- A quest step that is only behind a higher level requirement no longer counts as finished, so the guide does not send players to Foul Matriarch before they can meet Aetheen of the Gales.
- Skyborne racial steps use the client race ids: Alliance 95 and Horde 96.
- Exploring the Horde now visits Nazgrel, Vol'jin, Cairne, and Sylvanas as separate steps. A finished visit stays finished, and the Undercity leg names the zeppelin.
- Added the Barrens Loremaster guide. Dungeon quests stay in their dungeon guides. Elite steps say to bring a group.
- Thunder Bluff steps no longer send you to a flight master after you are already in Mulgore or Thunder Bluff. From Mulgore, the route points at the southwest elevator.
- A known flight path says "Take the flight path to X." If that path has not been learned, the step walks instead of sending you to a flight master.
- The Orgrimmar zeppelin to Undercity is the south platform. The north platform goes to Stranglethorn.
- Added the Durotar Loremaster guide. The rules for the next zone are in docs/zone-loremaster-guides.md.
- Added the Mulgore Loremaster guide. Camp quests are picked up together, and the tauren well chain stays on tauren characters.
- Timed guide quests finish before other ready steps. Need for a Cure and Apothecary Zamah are 45 minute timers. The Flawed Power Stone is a 30 minute timer, so the Demon Seed altar is the next step.
- Race-locked steps name the race on the accept, the objectives, and the turn-in. A Horde Skyborne at level 14 can finish the Barrens without the orc, troll, or tauren flight quests.
- After the Lieutenant's Insignia is returned, Hidden Enemies points at Neeru Fireblade. Exhausting his dialogue finishes that step when the quest log marks the objective done.
- A follow-up that only sends you to another NPC no longer stops on an accept step at the giver. Hidden Enemies, The Missing Shipment, Samophlange, and the Zephras delivery visits point at the next person. New zone guides follow the Handoffs section in docs/zone-loremaster-guides.md.
- Flight points learned at a flight master stay known after the window closes, including from other flight masters.
- The Crossroads and Sen'jin Village accept the quests offered on that visit before leaving camp. Plainstrider Menace, Raptor Thieves, Disrupt the Attacks, and Harpy Raiders are one trip. New zone guides follow the Camp pickups section in docs/zone-loremaster-guides.md.
- Journey to the Crossroads from Thrall is Horde Skyborne. A troll or orc is no longer sent there for a quest Thrall does not offer.
