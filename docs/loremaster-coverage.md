# Loremaster coverage and verification

Run `python3 tools/loremaster_report.py` from the repository root with Lua 5.1 available. The JSON report reads registered actions after shared-action expansion and Casual composition. Use `--lua /path/to/lua` for another Lua 5.1 executable. No database checkout is needed.

Counts are unique quest IDs with authored pickups, across all race, class, and profession branches. They include supporting excursions and are not a single-character completion total. Overlap is the intersection of the relevant Leveling pickups and Loremaster. Added quests are Loremaster pickups absent from that comparison set. The new zones compare against all shipped Leveling visits, restricted to their frozen catalog and identified supporting quests. Starter zones compare their recorded source itineraries.

| Zone | Leveling overlap | Loremaster | Added | Supporting | Excluded | Unresolved candidates / ownership | Quality |
|---|---:|---:|---:|---:|---:|---:|---:|
| Darkshore | 72 | 82 | 10 | 10 | 2 | 1 / 0 | 2.5/5 |
| Dun Morogh | 111 | 115 | 4 | 28 | 3 | 0 / 3 | 3.5/5 |
| Duskwood | 72 | 77 | 5 | 3 | 18 | 10 / 0 | 2.5/5 |
| Durotar | 94 | 97 | 3 | 5 | 6 | 2 / 3 | 3/5 |
| Elwynn Forest | 122 | 123 | 1 | 31 | 4 | 2 / 1 | 3.5/5 |
| Loch Modan | 18 | 43 | 25 | 1 | 0 | 2 / 0 | 2.5/5 |
| Mulgore | 91 | 94 | 3 | 15 | 2 | 1 / 5 | 3.5/5 |
| Redridge Mountains | 28 | 42 | 14 | 2 | 0 | 4 / 0 | 2.5/5 |
| Silverpine Forest | 22 | 46 | 24 | 0 | 0 | 3 / 0 | 2.5/5 |
| Teldrassil | 107 | 107 | 0 | 28 | 3 | 1 / 3 | 3.5/5 |
| The Barrens | 84 | 92 | 8 | 2 | 15 | 1 / 0 | 2.5/5 |
| Tirisfal Glades | 100 | 100 | 0 | 5 | 3 | 0 / 2 | 3.5/5 |
| Westfall | 31 | 47 | 16 | 1 | 1 | 0 / 0 | 2.5/5 |
| Zephras Isle | 138 | 151 | 13 | 5 | 0 | 0 / 2 | 2/5 |
| Wetlands | 43 | 54 | 11 | 9 | 6 | 19 / 0 | 2.5/5 |
| Hillsbrad Foothills | 56 | 59 | 3 | 10 | 0 | 12 / 0 | 2.5/5 |
| Alterac Mountains | 12 | 15 | 3 | 1 | 0 | 11 / 0 | 2.5/5 |
| Arathi Highlands | 23 | 36 | 13 | 0 | 0 | 22 / 0 | 2.5/5 |
| Stranglethorn Vale | 84 | 90 | 6 | 0 | 19 | 44 / 0 | 2.5/5 |
| Badlands | 21 | 24 | 3 | 0 | 5 | 25 / 0 | 2.5/5 |
| Swamp of Sorrows | 19 | 22 | 3 | 2 | 1 | 8 / 0 | 2.5/5 |
| Blasted Lands | 15 | 15 | 0 | 3 | 7 | 17 / 0 | 2.5/5 |
| Searing Gorge | 19 | 21 | 2 | 0 | 4 | 7 / 0 | 2.5/5 |
| Burning Steppes | 27 | 28 | 1 | 11 | 6 | 2 / 0 | 2.5/5 |
| The Hinterlands | 34 | 38 | 4 | 4 | 1 | 17 / 0 | 2.5/5 |
| Western Plaguelands | 65 | 67 | 2 | 8 | 17 | 37 / 0 | 2.5/5 |
| Eastern Plaguelands | 22 | 24 | 2 | 4 | 37 | 109 / 0 | 2.5/5 |

Inherited supporting work is classified from the frozen Wowhead category, then objective areas or delivery endpoints for class categories. Conflicting or missing ownership remains explicitly unresolved. A capital pickup alone does not determine ownership; Data Hoarders remains Dun Morogh content. Supporting counts include inherited neighboring-zone handoffs, whose necessity has not been reworked here. The five new catalog baselines remain 30 Westfall pickups already in Leveling, 20 Loch Modan, 69 Darkshore, 23 Silverpine, and 91 Barrens. Exclusions and ownership decisions explain why overlap can be smaller. Each new inventory records every catalog candidate, supporting prerequisites, source revisions, levels, restrictions, and fallback destinations.

Quality ratings are provisional assessments of source coverage, prerequisite placement, navigation evidence, and test coverage. The new routes receive 2.5/5 because unresolved records and client verification remain. Zephras remains 2/5 because source restrictions still disagree. None has received a complete Forever client walkthrough.

Badlands preserves the Casual actions for Stone Is Better than Cloth (716). Acquisition and crafting preparation for Patterned Bronze Bracers remain an unresolved source limitation, recorded in its inventory.

## Character applicability

These snapshots use level 60, known empty quest history, no professions, and no optional starter items. Applicability does not establish prerequisite reachability. The full JSON report includes additional races and a separate all-professions structural view; learning every profession on one character is not assumed.

| Character / zone | Leveling | Loremaster | Added with profession ranks |
|---|---:|---:|---:|
| Dwarf Warrior / dun-morogh | 74 | 76 | 1 |
| Human Warrior / elwynn-forest | 96 | 96 | 0 |
| Night Elf Druid / teldrassil | 84 | 84 | 0 |
| Orc Warrior / durotar | 59 | 58 | 3 |
| Tauren Druid / mulgore | 70 | 70 | 0 |
| Undead Paladin / tirisfal-glades | 81 | 81 | 0 |
| Undead Paladin / zephras-isle | 17 | 17 | 3 |
| Tauren Druid / zephras-isle | 17 | 17 | 4 |
| Human Warrior / westfall | 30 | 29 | 0 |
| Dwarf Warrior / loch-modan | 20 | 43 | 0 |
| Night Elf Druid / darkshore | 74 | 79 | 1 |
| Undead Paladin / silverpine-forest | 23 | 43 | 0 |
| Orc Warrior / the-barrens | 84 | 79 | 0 |

Durotar still restricts quest 831 to hunters in Loremaster, leaving the Orc Warrior with one fewer pickup. This existing discrepancy is not rewritten here. Mulgore has equal Tauren Druid totals but different sets: Loremaster adds 99196 and omits 76156. The JSON report exposes both additions and omissions.

## Source conflicts and synchronization

The [Zephras restriction observations](loremaster/evidence/zephras-restrictions.json) and [quest-by-quest review](loremaster/evidence/zephras-review.json) cover race, faction, class, profession, and prerequisite evidence. Explicit empty Wowhead race lists remove inherited Skyborne gates in both guides. Quest 92514 now admits supported Horde visitors. Quest 94493 remains Alliance-only. Positive-race disagreements, including Wowhead race 95 versus existing 95/96 branches, and the shaman/druid class observations on 92466 through 92468 remain recorded conflicts. The disputed existing branches have not been widened or rewritten. Their authored eligibility counts do not establish Wowhead-supported or server availability. No 85% availability claim is made.

Several newly eligible visitor quests still require earlier quests. Those requirements remain enforced. For example, the profession lessons require an observed outdoors introduction; the guide never supplies that credit. Welcome to Azeroth also requires the explicit fallback predecessor 95349, The Earthen Ring. A visitor may encounter a diagnostic block where source restrictions or history prevent that prerequisite.

Darkshore Althalaxx work in Ashenvale is supporting work for the later Darkshore return. Wetlands continuations 942 and 943 are excluded as other-zone content. The Barrens inventory records the conflicting 854 prerequisite on 871; the Tauren-only predecessor is conditioned on Tauren rather than credited to other races.

The synchronization check compares current expanded actions, including completion, restrictions, prerequisites, instructions, navigation, and relevant order. Its frozen baseline exposes pre-existing discrepancies instead of declaring them intentional. New itineraries record their source-based differences against the frozen inventories. A changed source predicate fails until mirrored or explicitly reviewed. Do not regenerate the baseline to suppress a new failure.

## Automated verification

Python checks pass (114 tests). Lua 5.1 checks pass for the engine, authored guides, ordered routes, catalog, UI, lint (73,680 checks), and accept-chain audit. The full race/class matrix passes 246,059 observed actions; the affected Skyborne matrix also passes after the prerequisite repair (51,828 actions). The expanded Loremaster journeys pass 57,811 observed actions; dungeon journeys pass 19,024. Visitor regressions cover faction, class, professions, missing and completed prerequisites, and midway entry. Synchronization regressions detect changed source restrictions, prerequisites, navigation, identities, guide restrictions, and shared-action membership. Compilation and patch-release validation pass for 0.6.4 with Interface 16001 preserved. These are simulated observations, not server quest-offer verification.

## Client walkthroughs requested

Please verify Zephras visitor branches with an Undead Paladin and Tauren Druid, as well as both Skyborne factions. Check village dialogue, profession introductions, class branches, and midway entry against actual quest offers.

Please walk the new Militia, Moonbrook explosives, and optional treasure routes; Loch Modan defense, hunting, excavation, and dam chains; northern and southern Darkshore plus the later Althalaxx return; Sepulcher, Fenris, Pyrewood, and Arugal; and the Barrens northern camps, Ratchet, southern returns, and level-30 Tear of the Moons. Pins, escorts, item consumption, and server offers remain unverified until these walks are recorded.

## Expansion checkpoints

Redridge Mountains preserves the faction Casual subsequence and uses the pinned
Wrath references for omitted legacy quests. Dry Times (116), Theocritus' Retrieval
(178), Sign Me Up! (95816), and Shipping Label (98247) remain unresolved for missing
acquisition directions or supported pickup/return navigation. Its cold-entry and
midway eligibility checks use observed prerequisite history without inferring credit.

Deadwind Pass has no supported quest itinerary in the available observations. Its compiled zone catalog is missing; a scan of all 7,475 quest records found no Deadwind classification or objective location. The [review record](loremaster/reviews/deadwind-pass.json) freezes the source hashes and filters. Server quest availability remains unverified.
