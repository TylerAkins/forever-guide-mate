# Quest level review

Reviewed October 16, 2026. This is an investigation of the existing 330 failing action checks, not an itinerary change. All authored guide arrays, priorities, and level gates remain unchanged.

## What the count means

The 330 actions cover 113 distinct quest IDs across 23 guide files: 116 accepts, 114 turn-ins, 99 objective actions, and one gossip action. An objective action is not necessarily combat. A low per-action gate is not proof that the player reaches that action below the recommended level.

| Review result | Actions | Interpretation |
| --- | ---: | --- |
| Earlier checkpoint meets the expected level | 51 | Keep the visit unless another problem is found. |
| Coverage differs by character branch | 48 | Review each applicable branch’s earned XP. |
| No sufficient earlier explicit checkpoint | 215 | Progression is unproven; an XP calculation is needed. |
| Non-ordered Loremaster/dungeon guides | 16 | Review source levels and scheduler behavior separately. |

These categories partition the actions, not the quest IDs. One quest can have different coverage at its pickup, objective, and return. They are triage results, not 330 confirmed routing defects.

## Evidence and limits

The live checkout was copied into `/private/tmp/fgm-route-review-snapshot` after each JSON file was validated and checked for changes during its read. Its `snapshot.json` contains the hashes of all 69 input files. The raw index changed since the saved test snapshot, but none of the 113 flagged quests changed its computed level floor. Compiled bundles and export shards still match the earlier snapshot. A running scrape need not have rebuilt every derived bundle yet.

For ordered guides, prior-milestone values below come from the loaded addon after `FinalizeGuides()`, including the combined Casual routes. The scan uses permanent faction/race/class exclusions and the maximum earlier `requiredLevel` checkpoint. It does not infer level from priority or a chapter’s display range. It covers structurally applicable race/class branches conservatively, including combinations the static conditions do not exclude.

This is a fresh, unskipped-route check. It does not model earned XP, a player joining midway, skipped or completed quest checkpoints, dungeon runs, rested XP, or optional branches. A sufficient earlier checkpoint means the stored gate discrepancy alone is not grounds to move a quest; it does not prove that the route earns the XP to reach that checkpoint.

Acceptance and difficulty also need separate rules. Recommended level 20 does not itself establish that a level-10 pickup is invalid. The test currently applies one step floor to accepts, objectives, gossip, and turn-ins. It needs to distinguish verified acceptance minima from combat/progression expectations.

## Silverpine first

Current source order is Ambermill Investigations (479), classic Arugal’s Folly (99), Watching the Roads (95981), Arugal’s Folly (98298), then Stop the Spread (98299). Watching the Roads depends on 479, not 99. The 98298 follow-up requires 99, and 98299 requires 98298. Skipping the elite 99 therefore does not remove the independent Watching the Roads chain.

Your observed level-15 druid reaching 95981 is direct evidence of an early recommendation. The static milestone scan alone is weaker evidence for the other findings.

The opening of `horde-hillsbrad-foothills.lua` already returns to the Sepulcher for Until Death Do Us Part, Mura Runetotem, and Journey to Hillsbrad Foothills. Investigate bundling level-20 Silverpine work into that planned visit. Do not create a return trip for a single quest or change only a gate. Check the combined route’s actual entry XP before choosing the exact insertion.

## Source conflicts to resolve before changing availability

The following 11 quest IDs have conflicting offer-level values. The schema-v2 export’s `requiredLevel` is populated from the source `lvl` field in `wow-database/internal/att/export.go`. It is not an independent in-game NPC availability observation. The adapter stores those fields under `detail.questie`, so that label alone does not establish Questie provenance.

| Quest | Index minimum | Exported requiredLevel |
| --- | ---: | ---: |
| 308: Distracting Jarven | 1 | 2 |
| 378: The Fury Runs Deep | 22 | 25 |
| 926: Flawed Power Stone | 1 | 9 |
| 1160: Test of Lore (5/6) | 26 | 28 |
| 2202: Uldaman Reagent Run | 36 | 40 |
| 3765: The Corruption Abroad | 18 | 20 |
| 7703: Unfinished Gordok Business | 56 | 60 |
| 96408: A Vistor to Dun Morogh | 9 | 10 |
| 98025: WANTED: Jai'vhanel | 10 | 15 |
| 99152: As Above, So Below | 7 | 10 |
| 99153: The One That Got Away | 7 | 10 |

Do not bulk-raise dungeon gates from these conflicts. For example, Unfinished Gordok Business is 56 in the index and 60 in the export. Treat that as a source question until current quest/client evidence establishes the minimum.

## Every flagged quest by guide

“Prior milestone” is the minimum–maximum across applicable runtime branches and all flagged actions for that quest in this guide. It is a lower bound from explicit checkpoints, not a predicted player level. Mixed review labels mean the quest’s actions have different coverage.

### alliance-darkshore-part-2

[Guides/Leveling/alliance-darkshore-part-2.lua](../Guides/Leveling/alliance-darkshore-part-2.lua): 7 flagged actions.

All seven flagged actions already follow level-20 milestones. Keep their planned visits. The per-action-gate test is stricter than the itinerary evidence.

| Quest | Actions | Stored gates | Expected floor | Prior milestone | Review |
| --- | ---: | --- | ---: | --- | --- |
| [3765: The Corruption Abroad](../Guides/Leveling/alliance-darkshore-part-2.lua#L2875) | 1 | 18 | 20 | 20–20 | Checkpoint covers this action; source conflict |
| [98042: It's All Fun and Games Until...](../Guides/Leveling/alliance-darkshore-part-2.lua#L5101) | 3 | 12 | 17 | 20–20 | Checkpoint covers this action |
| [98013: Swelling Forces](../Guides/Leveling/alliance-darkshore-part-2.lua#L5182) | 3 | 12 | 20 | 20–20 | Checkpoint covers this action |

### alliance-darkshore

[Guides/Leveling/alliance-darkshore.lua](../Guides/Leveling/alliance-darkshore.lua): 3 flagged actions.

The flagged Jai’vhanel work follows sufficient explicit milestones. Resolve its offer-level source conflict; no relocation follows from this test failure alone.

| Quest | Actions | Stored gates | Expected floor | Prior milestone | Review |
| --- | ---: | --- | ---: | --- | --- |
| [98025: WANTED: Jai'vhanel](../Guides/Leveling/alliance-darkshore.lua#L3858) | 3 | 10 | 15 | 15–16 | Checkpoint covers this action; source conflict |

### alliance-duskwood-and-redridge-mountains

[Guides/Leveling/alliance-duskwood-and-redridge-mountains.lua](../Guides/Leveling/alliance-duskwood-and-redridge-mountains.lua): 10 flagged actions.

Alther’s Mill and Ira’s Dagger already follow sufficient milestones. Merrick’s Bow expects 28 while earlier explicit milestones establish only 25–26; review the hunting outing’s earned XP before deciding whether to move it.

| Quest | Actions | Stored gates | Expected floor | Prior milestone | Review |
| --- | ---: | --- | ---: | --- | --- |
| [98386: Alther's Mill](../Guides/Leveling/alliance-duskwood-and-redridge-mountains.lua#L4982) | 3 | 15 | 21 | 25–26 | Checkpoint covers this action |
| [96137: Ira's Dagger](../Guides/Leveling/alliance-duskwood-and-redridge-mountains.lua#L5171) | 4 | 18 | 24 | 25–26 | Checkpoint covers this action |
| [96138: Merrick's Bow](../Guides/Leveling/alliance-duskwood-and-redridge-mountains.lua#L5224) | 3 | 18 | 28 | 25–26 | XP and outing review |

### alliance-redridge-and-westfall

[Guides/Leveling/alliance-redridge-and-westfall.lua](../Guides/Leveling/alliance-redridge-and-westfall.lua): 4 flagged actions.

Show of Force is covered at this later visit. The Corruption Abroad varies by branch and has conflicting offer data; resolve both before editing.

| Quest | Actions | Stored gates | Expected floor | Prior milestone | Review |
| --- | ---: | --- | ---: | --- | --- |
| [3765: The Corruption Abroad](../Guides/Leveling/alliance-redridge-and-westfall.lua#L1531) | 1 | 18 | 20 | 18–20 | Class-branch review; source conflict |
| [98407: Show of Force](../Guides/Leveling/alliance-redridge-and-westfall.lua#L2606) | 3 | 11 | 17 | 20–20 | Checkpoint covers this action |

### alliance-westfall

[Guides/Leveling/alliance-westfall.lua](../Guides/Leveling/alliance-westfall.lua): 17 flagged actions.

The main route already establishes level 14. Keep its existing Sentinel Hill and mine coverage while reviewing the level-15 harvesters, level-16 Moonbrook chain, and level-17 Show of Force. Keep engineering applicability when assessing the profession follow-up.

| Quest | Actions | Stored gates | Expected floor | Prior milestone | Review |
| --- | ---: | --- | ---: | --- | --- |
| [92909: Harvesting the Harvesters](../Guides/Leveling/alliance-westfall.lua#L12050) | 3 | 8 | 15 | 14–14 | XP and outing review |
| [92745: The State of the Mines](../Guides/Leveling/alliance-westfall.lua#L12153) | 4 | 9 | 14 | 14–14 | Checkpoint covers this action |
| [98021: Journey to Sentinel Hill](../Guides/Leveling/alliance-westfall.lua#L12203) | 2 | 7 | 13 | 14–14 | Checkpoint covers this action |
| [92910: Harvesting the Harvesters (Engineering 1/2)](../Guides/Leveling/alliance-westfall.lua#L12487) | 2 | 8 | 15 | 14–14 | XP and outing review |
| [92747: Moonbrook Espionage](../Guides/Leveling/alliance-westfall.lua#L12801) | 3 | 9 | 16 | 14–14 | XP and outing review |
| [98407: Show of Force](../Guides/Leveling/alliance-westfall.lua#L12850) | 3 | 11 | 17 | 14–14 | XP and outing review |

### dun-morogh

[Guides/Leveling/dun-morogh.lua](../Guides/Leveling/dun-morogh.lua): 5 flagged actions.

Separate the Underground Map handoff from later dungeon work. Distracting Jarven already follows a sufficient milestone. Resolve the visitor’s index/export disagreement before changing its availability.

| Quest | Actions | Stored gates | Expected floor | Prior milestone | Review |
| --- | ---: | --- | ---: | --- | --- |
| [308: Distracting Jarven](../Guides/Leveling/dun-morogh.lua#L4824) | 1 | 1 | 2 | 7–7 | Checkpoint covers this action; source conflict |
| [96408: A Vistor to Dun Morogh](../Guides/Leveling/dun-morogh.lua#L6691) | 2 | 9 | 10 | 9–10 | Class-branch review; source conflict |
| [96391: Underground Map](../Guides/Leveling/dun-morogh.lua#L6900) | 2 | 9 | 15 | 9–10 | XP and outing review |

### durotar

[Guides/Leveling/durotar.lua](../Guides/Leveling/durotar.lua): 9 flagged actions.

Review Forgotten Loa Idols and Halikor’s Hoof within their existing local outings. Legging It has different milestone coverage at different actions, so do not move all three actions merely because their stored gates are low.

| Quest | Actions | Stored gates | Expected floor | Prior milestone | Review |
| --- | ---: | --- | ---: | --- | --- |
| [96821: Legging It](../Guides/Leveling/durotar.lua#L2922) | 4 | 1 | 6 | 5–6 | XP and outing review; Checkpoint covers this action |
| [97225: Forgotten Loa Idols](../Guides/Leveling/durotar.lua#L2969) | 3 | 4 | 9 | 5–6 | XP and outing review |
| [96877: Halikor's Hoof](../Guides/Leveling/durotar.lua#L7202) | 2 | 6 | 12 | 8–10 | XP and outing review |

### elwynn-forest

[Guides/Leveling/elwynn-forest.lua](../Guides/Leveling/elwynn-forest.lua): 6 flagged actions.

Book Return and Rare Books are delivery/collection chains. Inspect their actual objectives and XP before applying a combat-level rule to their accepts or turn-ins.

| Quest | Actions | Stored gates | Expected floor | Prior milestone | Review |
| --- | ---: | --- | ---: | --- | --- |
| [91775: Book Return](../Guides/Leveling/elwynn-forest.lua#L2335) | 3 | 1 | 6 | 4–6 | XP and outing review; Class-branch review |
| [91777: Rare Books](../Guides/Leveling/elwynn-forest.lua#L3658) | 3 | 1 | 7 | 5–9 | XP and outing review; Checkpoint covers this action |

### horde-ashenvale

[Guides/Leveling/horde-ashenvale.lua](../Guides/Leveling/horde-ashenvale.lua): 1 flagged actions.

Pigments for Paints expects 26, above the earlier explicit milestone of 21. Review this chain’s start and later Stonetalon turn-in together instead of moving one action.

| Quest | Actions | Stored gates | Expected floor | Prior milestone | Review |
| --- | ---: | --- | ---: | --- | --- |
| [97538: Pigments for Paints](../Guides/Leveling/horde-ashenvale.lua#L4079) | 1 | 20 | 26 | 21–21 | XP and outing review |

### horde-silverpine-forest

[Guides/Leveling/horde-silverpine-forest.lua](../Guides/Leveling/horde-silverpine-forest.lua): 9 flagged actions.

Review Watching the Roads and Stop the Spread for the already-authored Sepulcher stop at the opening of the first Hillsbrad chapter. Keep classic Arugal’s Folly (99) unchanged. Treat its level-16 follow-up (98298) separately from the two level-20 quests; its turn-in must precede Stop the Spread. This is a proposed bundled visit, not an implemented move or a proven XP progression.

| Quest | Actions | Stored gates | Expected floor | Prior milestone | Review |
| --- | ---: | --- | ---: | --- | --- |
| [95981: Watching the Roads](../Guides/Leveling/horde-silverpine-forest.lua#L12330) | 3 | 10 | 20 | 12–12 | XP and outing review |
| [98298: Arugal's Folly](../Guides/Leveling/horde-silverpine-forest.lua#L12430) | 3 | 9 | 16 | 12–12 | XP and outing review |
| [98299: Stop the Spread](../Guides/Leveling/horde-silverpine-forest.lua#L12528) | 3 | 9 | 20 | 12–12 | XP and outing review |

### horde-stonetalon-mountains

[Guides/Leveling/horde-stonetalon-mountains.lua](../Guides/Leveling/horde-stonetalon-mountains.lua): 2 flagged actions.

This is the other end of Pigments for Paints. Preserve its pickup/turn-in relationship with the Ashenvale chapter when choosing a suitable outing.

| Quest | Actions | Stored gates | Expected floor | Prior milestone | Review |
| --- | ---: | --- | ---: | --- | --- |
| [97538: Pigments for Paints](../Guides/Leveling/horde-stonetalon-mountains.lua#L1127) | 2 | 20 | 26 | 23–24 | XP and outing review |

### horde-the-barrens-and-stonetalon-mountain

[Guides/Leveling/horde-the-barrens-and-stonetalon-mountain.lua](../Guides/Leveling/horde-the-barrens-and-stonetalon-mountain.lua): 16 flagged actions.

Five flagged quests already follow the level-20 milestone. Chol’aruk expects 21 and is the remaining progression review in this chapter; low stored gates do not justify revisiting all six quests.

| Quest | Actions | Stored gates | Expected floor | Prior milestone | Review |
| --- | ---: | --- | ---: | --- | --- |
| [95350: Welcome to Azeroth](../Guides/Leveling/horde-the-barrens-and-stonetalon-mountain.lua#L9552) | 2 | 7 | 13 | 20–20 | Checkpoint covers this action |
| [98024: Journey to the Crossroads](../Guides/Leveling/horde-the-barrens-and-stonetalon-mountain.lua#L9608) | 2 | 7 | 13 | 20–20 | Checkpoint covers this action |
| [97253: Parts and Pieces](../Guides/Leveling/horde-the-barrens-and-stonetalon-mountain.lua#L9708) | 3 | 9 | 14 | 20–20 | Checkpoint covers this action |
| [95774: Her Name Is Olgra](../Guides/Leveling/horde-the-barrens-and-stonetalon-mountain.lua#L10190) | 3 | 14 | 20 | 20–20 | Checkpoint covers this action |
| [92706: WANTED: Bruuz](../Guides/Leveling/horde-the-barrens-and-stonetalon-mountain.lua#L10311) | 3 | 15 | 20 | 20–20 | Checkpoint covers this action |
| [97003: Chol'aruk the Ravener (H)](../Guides/Leveling/horde-the-barrens-and-stonetalon-mountain.lua#L10392) | 3 | 15 | 21 | 20–20 | XP and outing review |

### horde-the-barrens

[Guides/Leveling/horde-the-barrens.lua](../Guides/Leveling/horde-the-barrens.lua): 6 flagged actions.

Wrongly Blamed, Justly Corrected and Field to Clear depend on which class milestones were traversed. Check their outing against actual XP without borrowing another class’s level-24 checkpoint.

| Quest | Actions | Stored gates | Expected floor | Prior milestone | Review |
| --- | ---: | --- | ---: | --- | --- |
| [97250: Wrongly Blamed, Justly Corrected](../Guides/Leveling/horde-the-barrens.lua#L2035) | 3 | 18 | 23 | 21–24 | Class-branch review |
| [98093: Field to Clear](../Guides/Leveling/horde-the-barrens.lua#L2062) | 3 | 18 | 23 | 21–24 | Class-branch review |

### mulgore

[Guides/Leveling/mulgore.lua](../Guides/Leveling/mulgore.lua): 29 flagged actions.

Preserve the existing Palemane/Longwalkers outing and the Venture Co./Fizsprocket cluster. Review non-druid XP progression independently; druid class milestones can conceal lower bounds in other branches. Ceasing Operations needs special attention because its expected level exceeds every earlier explicit milestone here.

| Quest | Actions | Stored gates | Expected floor | Prior milestone | Review |
| --- | ---: | --- | ---: | --- | --- |
| [98430: The Longwalkers](../Guides/Leveling/mulgore.lua#L2749) | 3 | 1 | 8 | 6–10 | XP and outing review; Class-branch review |
| [97485: Traditions of the Bluff](../Guides/Leveling/mulgore.lua#L5787) | 3 | 3 | 10 | 7–10 | Class-branch review |
| [99079: Longwalker Malah](../Guides/Leveling/mulgore.lua#L6063) | 2 | 4 | 9 | 7–10 | Class-branch review |
| [98424: Fizsprocket's Notes](../Guides/Leveling/mulgore.lua#L6440) | 5 | 5 | 10 | 7–10 | Class-branch review |
| [99081: Grim Tidings](../Guides/Leveling/mulgore.lua#L6598) | 2 | 4 | 9 | 7–10 | Class-branch review |
| [99101: Our Ancient Enemy](../Guides/Leveling/mulgore.lua#L6672) | 2 | 4 | 9 | 7–10 | Class-branch review |
| [99080: Drive Them Out](../Guides/Leveling/mulgore.lua#L6746) | 5 | 4 | 9 | 7–10 | Class-branch review |
| [98427: Ceasing Operations](../Guides/Leveling/mulgore.lua#L6862) | 3 | 5 | 12 | 7–10 | XP and outing review |
| [99082: The High Chieftain](../Guides/Leveling/mulgore.lua#L7076) | 2 | 4 | 9 | 7–10 | Class-branch review |
| [98435: Thunderhorn's Report](../Guides/Leveling/mulgore.lua#L7407) | 2 | 4 | 10 | 10–10 | Checkpoint covers this action |

### teldrassil

[Guides/Leveling/teldrassil.lua](../Guides/Leveling/teldrassil.lua): 33 flagged actions.

Review the barrow outing, local follow-ups, and final Crown of the Earth chain as outings. The explicit milestones do not establish the expected levels, but that alone does not show an XP deficit. Avoid adding distant errands to fill an assumed gap.

| Quest | Actions | Stored gates | Expected floor | Prior milestone | Review |
| --- | ---: | --- | ---: | --- | --- |
| [98403: Twisted Hatred (2/2)](../Guides/Leveling/teldrassil.lua#L2483) | 3 | 4 | 12 | 4–5 | XP and outing review |
| [98391: The Sisterhood of Elune](../Guides/Leveling/teldrassil.lua#L2532) | 2 | 5 | 10 | 5–7 | XP and outing review |
| [99053: Escaping Ban'ethil](../Guides/Leveling/teldrassil.lua#L3568) | 3 | 4 | 9 | 5–5 | XP and outing review |
| [99046: The Lost Runner](../Guides/Leveling/teldrassil.lua#L3773) | 2 | 4 | 9 | 5–5 | XP and outing review |
| [99047: Not Dead Yet](../Guides/Leveling/teldrassil.lua#L3847) | 2 | 4 | 9 | 5–5 | XP and outing review |
| [99050: The Great Tree Provides](../Guides/Leveling/teldrassil.lua#L3921) | 5 | 4 | 10 | 5–5 | XP and outing review |
| [99073: Easing Suffering](../Guides/Leveling/teldrassil.lua#L4081) | 2 | 4 | 10 | 5–5 | XP and outing review |
| [98392: Darkness in the Glade](../Guides/Leveling/teldrassil.lua#L5258) | 5 | 6 | 12 | 7–7 | XP and outing review |
| [98398: The Oracle Tree](../Guides/Leveling/teldrassil.lua#L5418) | 2 | 6 | 12 | 7–7 | XP and outing review |
| [98046: Crown of the Earth (1/2) [Forever]](../Guides/Leveling/teldrassil.lua#L7961) | 2 | 1 | 11 | 7–10 | XP and outing review |
| [98065: Crown of the Earth (2/2) [Forever]](../Guides/Leveling/teldrassil.lua#L8015) | 2 | 1 | 11 | 7–10 | XP and outing review |
| [98067: Eyes of the Sentinels](../Guides/Leveling/teldrassil.lua#L8069) | 3 | 1 | 11 | 7–10 | XP and outing review |

### tirisfal-glades

[Guides/Leveling/tirisfal-glades.lua](../Guides/Leveling/tirisfal-glades.lua): 12 flagged actions.

Review Hides for the Forsaken and Rear Guard Patrol against actual progression. As Above, So Below and The One That Got Away already follow sufficient explicit milestones; their recorded offer levels also conflict between sources.

| Quest | Actions | Stored gates | Expected floor | Prior milestone | Review |
| --- | ---: | --- | ---: | --- | --- |
| [97558: Hides for the Forsaken](../Guides/Leveling/tirisfal-glades.lua#L6740) | 3 | 6 | 11 | 7–10 | XP and outing review |
| [99156: Rear Guard Patrol (2/2)](../Guides/Leveling/tirisfal-glades.lua#L7065) | 3 | 6 | 13 | 7–10 | XP and outing review |
| [99152: As Above, So Below](../Guides/Leveling/tirisfal-glades.lua#L10034) | 3 | 7 | 10 | 10–12 | Checkpoint covers this action; source conflict |
| [99153: The One That Got Away](../Guides/Leveling/tirisfal-glades.lua#L10087) | 3 | 7 | 10 | 10–12 | Checkpoint covers this action; source conflict |

### zephras-isle

[Guides/Leveling/zephras-isle.lua](../Guides/Leveling/zephras-isle.lua): 145 flagged actions.

Review the whole island progression in order, including both faction endings. Do not treat its many findings as independent trips. Its 145 flagged actions are the largest concentration. Check the early Vulgara elite, then the level-9/10 middle, level-11/12 finale, and level-13 mainland handoffs against earned XP.

| Quest | Actions | Stored gates | Expected floor | Prior milestone | Review |
| --- | ---: | --- | ---: | --- | --- |
| [93318: WANTED: Vulgara the Insatiable](../Guides/Leveling/zephras-isle.lua#L3435) | 3 | 4 | 9 | 4–4 | XP and outing review |
| [93317: Crab Season](../Guides/Leveling/zephras-isle.lua#L5085) | 3 | 4 | 9 | 6–10 | XP and outing review; Class-branch review |
| [92699: The Supreme Magister](../Guides/Leveling/zephras-isle.lua#L5308) | 2 | 4 | 9 | 8–8 | XP and outing review |
| [92700: The Grand Skyseer](../Guides/Leveling/zephras-isle.lua#L5342) | 2 | 4 | 9 | 8–8 | XP and outing review |
| [92709: A Grand Adventure](../Guides/Leveling/zephras-isle.lua#L5497) | 3 | 7 | 12 | 8–8 | XP and outing review |
| [92727: The Missing Scholar](../Guides/Leveling/zephras-isle.lua#L5531) | 2 | 4 | 10 | 8–10 | XP and outing review; Class-branch review |
| [92741: Unwelcome Visitors](../Guides/Leveling/zephras-isle.lua#L5588) | 3 | 8 | 13 | 8–10 | XP and outing review |
| [92708: A Grand Adventure](../Guides/Leveling/zephras-isle.lua#L5744) | 3 | 7 | 12 | 8–8 | XP and outing review |
| [93735: The Broken Construct](../Guides/Leveling/zephras-isle.lua#L5778) | 2 | 4 | 9 | 8–8 | XP and outing review |
| [93736: Unwelcome Spirits](../Guides/Leveling/zephras-isle.lua#L5812) | 3 | 4 | 9 | 8–8 | XP and outing review |
| [93737: The Broken Construct](../Guides/Leveling/zephras-isle.lua#L6013) | 6 | 4 | 9 | 8–8 | XP and outing review |
| [92849: The Missing Scholar](../Guides/Leveling/zephras-isle.lua#L7236) | 4 | 4 | 10 | 8–10 | Class-branch review |
| [92850: The Missing Scholar](../Guides/Leveling/zephras-isle.lua#L7376) | 3 | 4 | 10 | 8–10 | Class-branch review |
| [92840: Catching Wind](../Guides/Leveling/zephras-isle.lua#L7566) | 3 | 5 | 11 | 8–10 | XP and outing review |
| [92834: Avenged Tenfold](../Guides/Leveling/zephras-isle.lua#L7796) | 3 | 6 | 11 | 8–10 | XP and outing review |
| [92860: In Service of Zephras](../Guides/Leveling/zephras-isle.lua#L7862) | 2 | 6 | 12 | 8–10 | XP and outing review |
| [93738: The Broken Construct](../Guides/Leveling/zephras-isle.lua#L7930) | 2 | 4 | 9 | 8–10 | Class-branch review |
| [93746: A Firm Response](../Guides/Leveling/zephras-isle.lua#L7998) | 3 | 4 | 9 | 8–10 | Class-branch review |
| [92871: In Service of Zephras](../Guides/Leveling/zephras-isle.lua#L8100) | 2 | 6 | 11 | 8–10 | XP and outing review |
| [93320: Tower Defense](../Guides/Leveling/zephras-isle.lua#L8173) | 2 | 6 | 11 | 8–10 | XP and outing review |
| [92642: Disrupting Logistics](../Guides/Leveling/zephras-isle.lua#L8271) | 4 | 6 | 11 | 8–10 | XP and outing review |
| [92645: Breaking the Breaker](../Guides/Leveling/zephras-isle.lua#L8303) | 3 | 6 | 11 | 8–10 | XP and outing review |
| [92880: Return to Valanaar](../Guides/Leveling/zephras-isle.lua#L8499) | 2 | 6 | 11 | 8–10 | XP and outing review |
| [92881: The High Elder's Request](../Guides/Leveling/zephras-isle.lua#L8563) | 2 | 6 | 11 | 8–10 | XP and outing review |
| [92643: The Turncoat](../Guides/Leveling/zephras-isle.lua#L8627) | 3 | 6 | 11 | 8–10 | XP and outing review |
| [98512: Al'Aketh Assassins](../Guides/Leveling/zephras-isle.lua#L8754) | 3 | 6 | 11 | 8–10 | XP and outing review |
| [92644: Unfortunate News](../Guides/Leveling/zephras-isle.lua#L8806) | 2 | 6 | 11 | 8–10 | XP and outing review |
| [94568: The Cult's True Plans](../Guides/Leveling/zephras-isle.lua#L8896) | 3 | 6 | 11 | 8–10 | XP and outing review |
| [93159: The Strange Hermit](../Guides/Leveling/zephras-isle.lua#L9138) | 3 | 8 | 13 | 8–10 | XP and outing review |
| [93160: The Forest's Bounty](../Guides/Leveling/zephras-isle.lua#L9213) | 3 | 8 | 13 | 8–10 | XP and outing review |
| [93172: Free the Hollows](../Guides/Leveling/zephras-isle.lua#L9245) | 3 | 8 | 13 | 8–10 | XP and outing review |
| [93165: Mercy Falls on Deaf Ears](../Guides/Leveling/zephras-isle.lua#L9464) | 3 | 8 | 13 | 8–10 | XP and outing review |
| [93740: Blood for Blood](../Guides/Leveling/zephras-isle.lua#L11405) | 3 | 6 | 11 | 9–10 | XP and outing review |
| [92640: Desperate Times](../Guides/Leveling/zephras-isle.lua#L11507) | 5 | 6 | 11 | 9–10 | XP and outing review |
| [93065: Prepare for Battle](../Guides/Leveling/zephras-isle.lua#L11672) | 3 | 7 | 12 | 9–10 | XP and outing review |
| [92947: Making Our Move](../Guides/Leveling/zephras-isle.lua#L11765) | 6 | 7 | 12 | 9–10 | XP and outing review |
| [93958: The Inner Sanctum](../Guides/Leveling/zephras-isle.lua#L11963) | 2 | 7 | 12 | 9–10 | XP and outing review |
| [93835: Confront Lorthuna](../Guides/Leveling/zephras-isle.lua#L12027) | 2 | 7 | 12 | 9–10 | XP and outing review |
| [94369: The Fate of Zephras](../Guides/Leveling/zephras-isle.lua#L12095) | 3 | 7 | 12 | 9–10 | XP and outing review |
| [93089: What Comes Next](../Guides/Leveling/zephras-isle.lua#L12194) | 2 | 7 | 13 | 9–10 | XP and outing review |
| [94946: The Magical City of Dalaran](../Guides/Leveling/zephras-isle.lua#L12262) | 2 | 7 | 13 | 9–10 | XP and outing review |
| [92646: Confront Lorthuna](../Guides/Leveling/zephras-isle.lua#L12330) | 2 | 7 | 12 | 9–10 | XP and outing review |
| [93836: The Fate of Zephras](../Guides/Leveling/zephras-isle.lua#L12398) | 3 | 7 | 12 | 9–10 | XP and outing review |
| [93090: What Comes Next](../Guides/Leveling/zephras-isle.lua#L12497) | 2 | 7 | 13 | 9–10 | XP and outing review |
| [95349: The Earthen Ring](../Guides/Leveling/zephras-isle.lua#L12565) | 2 | 7 | 13 | 9–10 | XP and outing review |
| [95350: Welcome to Azeroth](../Guides/Leveling/zephras-isle.lua#L12656) | 2 | 7 | 13 | 9–10 | XP and outing review |
| [93739: Exploring the Horde](../Guides/Leveling/zephras-isle.lua#L12721) | 6 | 7 | 13 | 9–10 | XP and outing review |
| [94947: Welcome to Azeroth](../Guides/Leveling/zephras-isle.lua#L12965) | 3 | 7 | 13 | 9–10 | XP and outing review |
| [93963: Exploring the Alliance](../Guides/Leveling/zephras-isle.lua#L13108) | 6 | 7 | 13 | 9–10 | XP and outing review |
| [98021: Journey to Sentinel Hill](../Guides/Leveling/zephras-isle.lua#L13142) | 1 | 7 | 13 | 9–10 | XP and outing review |

### Durotar

[Guides/Loremaster/Durotar.lua](../Guides/Loremaster/Durotar.lua): 2 flagged actions.

This guide uses the scheduler, so it has no ordered milestone result. Verify the competing source levels and its intended dungeon or collection entry level. These findings do not authorize changes to the Casual itinerary.

| Quest | Actions | Stored gates | Expected floor | Prior milestone | Review |
| --- | ---: | --- | ---: | --- | --- |
| [926: Flawed Power Stone](../Guides/Loremaster/Durotar.lua#L4248) | 2 | 1 | 9 | Not ordered | Separate scheduler/data review; source conflict |

### CityOfDalaran

[Guides/Dungeons/CityOfDalaran.lua](../Guides/Dungeons/CityOfDalaran.lua): 2 flagged actions.

This guide uses the scheduler, so it has no ordered milestone result. Verify the competing source levels and its intended dungeon or collection entry level. These findings do not authorize changes to the Casual itinerary.

| Quest | Actions | Stored gates | Expected floor | Prior milestone | Review |
| --- | ---: | --- | ---: | --- | --- |
| [92432: An Alarming Request](../Guides/Dungeons/CityOfDalaran.lua#L70) | 2 | 24 | 30 | Not ordered | Separate scheduler/data review |

### DireMaulNorth

[Guides/Dungeons/DireMaulNorth.lua](../Guides/Dungeons/DireMaulNorth.lua): 3 flagged actions.

This guide uses the scheduler, so it has no ordered milestone result. Verify the competing source levels and its intended dungeon or collection entry level. These findings do not authorize changes to the Casual itinerary.

| Quest | Actions | Stored gates | Expected floor | Prior milestone | Review |
| --- | ---: | --- | ---: | --- | --- |
| [7703: Unfinished Gordok Business](../Guides/Dungeons/DireMaulNorth.lua#L114) | 3 | 56 | 60 | Not ordered | Separate scheduler/data review; source conflict |

### ScarletMonasteryLibrary

[Guides/Dungeons/ScarletMonasteryLibrary.lua](../Guides/Dungeons/ScarletMonasteryLibrary.lua): 3 flagged actions.

This guide uses the scheduler, so it has no ordered milestone result. Verify the competing source levels and its intended dungeon or collection entry level. These findings do not authorize changes to the Casual itinerary.

| Quest | Actions | Stored gates | Expected floor | Prior milestone | Review |
| --- | ---: | --- | ---: | --- | --- |
| [1160: Test of Lore (5/6)](../Guides/Dungeons/ScarletMonasteryLibrary.lua#L430) | 3 | 26 | 28 | Not ordered | Separate scheduler/data review; source conflict |

### TheStockade

[Guides/Dungeons/TheStockade.lua](../Guides/Dungeons/TheStockade.lua): 3 flagged actions.

This guide uses the scheduler, so it has no ordered milestone result. Verify the competing source levels and its intended dungeon or collection entry level. These findings do not authorize changes to the Casual itinerary.

| Quest | Actions | Stored gates | Expected floor | Prior milestone | Review |
| --- | ---: | --- | ---: | --- | --- |
| [378: The Fury Runs Deep](../Guides/Dungeons/TheStockade.lua#L114) | 3 | 22 | 25 | Not ordered | Separate scheduler/data review; source conflict |

### Uldaman

[Guides/Dungeons/Uldaman.lua](../Guides/Dungeons/Uldaman.lua): 3 flagged actions.

This guide uses the scheduler, so it has no ordered milestone result. Verify the competing source levels and its intended dungeon or collection entry level. These findings do not authorize changes to the Casual itinerary.

| Quest | Actions | Stored gates | Expected floor | Prior milestone | Review |
| --- | ---: | --- | ---: | --- | --- |
| [2202: Uldaman Reagent Run](../Guides/Dungeons/Uldaman.lua#L704) | 3 | 36 | 40 | Not ordered | Separate scheduler/data review; source conflict |

## Next corrections

1. Replace the uniform per-action-gate assumption with separate acceptance, ordered progression, and non-ordered checks. Keep the raw discrepancies visible while defining those checks.
2. Review Silverpine’s two level-20 outings against the existing Hillsbrad return. Preserve classic quest 99 and its optional/skip behavior.
3. Calculate XP across Zephras and the starter chapters, then review Westfall and the early Horde chapters. Keep connected pickups, objectives, returns, prerequisites, and profession/class applicability together.
4. Resolve the 11 source conflicts using the completed scrape or observed client evidence. Retain the two separately marked missing records, 95737 and 96774, as unverified.

No route, runtime, fixture, or CI behavior was changed for this review. The existing level audit still fails on the 330 stored-gate discrepancies.
