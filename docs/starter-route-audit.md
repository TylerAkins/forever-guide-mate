# Starter route audit

This pass covers the Tauren, Orc/Troll, Undead, Human, Dwarf/Gnome, and Night Elf starters. Skyborne actions and the Zephras Isle guide are unchanged. The guides still retain their class travel and later-zone detours; local work now runs on the matching starter-zone visits before those detours.

## Route changes

| Starter | Placement and coverage |
| --- | --- |
| Mulgore | Preserve the agreed return after bear form. Collect Wildmane teeth, prowler claws, and Arra'chea's horn on the northern outing; cleanse the last well before the closing Thunder Bluff deliveries. Add 759, 760, 770, and 776. |
| Durotar | Complete Valley of Trials introductions before Sen'jin, combine the Sen'jin, Echo Isles, Tiragarde, and Thunder Ridge chains with their existing outings, and finish the northern chain before Tirisfal. Add 828, 827, 829, 832, 809, 924, 840, and 842. Dark Storms is available to every class, as required by the Margoz chain. |
| Tirisfal | Complete Deathknell introductions before Brill, pick up Tomb Weed after Doom Weed and before Balnir, and finish local work before the Durotar detour. Keep the priest's foreign pickup before its Undercity delivery. Add 590, 86784, 372, 408, and the complete 405 → 357 → 366 → 409 → 411 chain. |
| Elwynn | Complete Northshire introductions before Goldshire, collect mine and lake quests before their outings, and finish the local chains before Westfall and the mountain detours. Add 88, 59, 46, 176, 123, and 147. |
| Dun Morogh | Finish Coldridge introductions before Kharanos. Combine the den, western, ranch, and quarry quests with their existing outings, and make city deliveries during the Ironforge visit. Add 314 and the 96408 → 96392 → 96390 chain, with optional 96391. |
| Teldrassil | Finish Shadowglen introductions before Dolanaar. Combine the barrow quests and escort, then finish the Oracle, lake, and Temple work before Auberdine. Add 483, 486, 2541, 2561, 87288, 2399, 2498, 2499, 927, and 941. |

The 42 new quests account for 108 quest actions, plus observed level checkpoints. Item-started quests 770, 832, 123, 96391, and 927 are conditional on finding their starter item or already carrying the quest. Their follow-ups remain conditional until the preceding quest is turned in. The route does not require camping rare creatures or waiting for rare drops. Elite objectives explicitly recommend a group.

New actions use the verified acceptance level, rather than requiring the player to grind to the quest's displayed level. Existing level gates are preserved. Prerequisites use the completed turn-in state, including while the preceding quest is ready but still in the log.

Traditions of the Bluff now follows the beta vendor route through Nida, Nata, Mahu, and Naal, then combines and spreads incense at the Hunter Rise ceremonial site before returning to Eylah. Purchased components and prepared incense remain observed after they are consumed, and abandoning the quest clears that preparation. Fizsprocket's Notes uses the Mulgore Expansion Plans starter and three separate ground-page stops in the mine.

## Sources and conflicting records

Classic chain edges, acceptance levels, and item starters were checked against the Forever Questie export at revision `cd4ac42468061cad65db3bf39163e5a2375e21f4`, alongside the compiled zone records in `wow-database/data/forever/compiled/zones/`. Existing authored NPC pins take precedence over stale coordinates for the same NPC. Quest objectives retain authored fallback pins and use the existing client quest navigation.

The [Relics of Wakening](https://www.wowhead.com/forever/quest=483/the-relics-of-wakening) series is 475 → 476 → 483 → 486. [The Sleeping Druid](https://www.wowhead.com/forever/quest=2541/the-sleeping-druid) begins a separate 2541 → 2561 chain. The compiled records' circular 483 ↔ 2541 relationship is not used.

[A Visitor to Dun Morogh](https://www.wowhead.com/forever/quest=96408/a-visitor-to-dun-morogh) leads to [Farsen's Watch](https://www.wowhead.com/forever/quest=96392/farsens-watch), then [Nip 'Em in the Bud](https://www.wowhead.com/forever/quest=96390/nip-em-in-the-bud). The compiled saddle/powder prerequisite list for Farsen's Watch came from nearby-work commentary and is not used.

The [Prodigal Lich](https://www.wowhead.com/forever/quest=405/the-prodigal-lich) chain includes The Lich's Identity (357). Proving Allegiance includes taking a Candle of Beckoning and summoning Lillith at the altar. The Demon Seed includes taking the expiring Flawed Power Stone and using it before its timer expires. Their auxiliary repeatable item interactions are instructions within the parent quest, rather than standalone repeatable entries.

## Exclusions and unresolved acquisition

- Profession training remains outside the universal leveling route: Durotar 96873/96874/96875, Elwynn 91753, and Dun Morogh 95041/95217.
- Repeatable exchanges, donation interactions, unused records, and obsolete welcome quests are not added. Elwynn 7961/7962 have no supported local acquisition path.
- Dun Morogh 415 is an alternate breadcrumb into the existing 413 path. Adding it after accepting 413 would create an unavailable pickup and another return trip.
- Teldrassil 934 is the obsolete duplicate of the existing 7383 Oracle phial quest. Elwynn 91736 is the reward interaction associated with the existing Apple Treat quest, without a supported ordinary quest pickup.
- Durotar 787 is an alternate introductory path; the route already uses 4641 and 788. Durotar 785 has no verified giver or item acquisition path.
- Elwynn 95771 has no verified giver or acquisition path. Mulgore 76156/76160/76240 have class-specific interaction descriptions but unresolved branch prerequisites, so no guessed chain gates are added.
- The Underground Map's subsequent Hall of Thanes content remains in dungeon scope.

## Verification

Goal-index assertions cover the intended visits, and production-engine journeys cover all six starters. Focused cases cover prerequisite turn-ins and rare-item absence, discovery, consumption, and active follow-up recovery. The original reference fixtures are retained; Tirisfal's home-zone and Durotar outings are checked independently because their relative placement changed.

Simulated journeys do not establish live NPC availability, changed terrain, escort behavior, or group encounter difficulty. Client walkthroughs remain required before treating those observations as verified.
