# Loremaster QuestieDB source migration

Loremaster authoring and audit facts now come from QuestieDB's Forever preview
artifact and Questie's Forever policy files. This records the expected differences
from the former wow-database observations so reviewers can distinguish source
changes from accidental guide edits.

## Source snapshot

The preview artifact SHA-256 is
`703ef7939b642fd8b6213475a976fd81751e87bdb5609ce1168722b5476c25d9`. Its generated
export manifest records artifact version `1.0.6-dev.f844007`, build commit
`f844007b329b72f18cf2bda3d87540012294732a`, 5,232 quests, and 18 faction/class
variants. The Questie policy checkout is pinned to
`d0b0e89ac228e380e139f1c524408507e6d4fe1b`.

LuaJIT reads the baked QuestieDB store, applies dynamic corrections in manifest
order, and exports canonical records. The export includes quest, NPC, object, and
item records plus area-to-UiMap mappings. Go validates the manifest before
building facts. Questie's policy files provide 1,000 holiday entries across 12
events, with no hidden entries in this snapshot, and 2,557 quest tag corrections.

## Known differences

| Area | Observed difference | Effect |
|---|---|---|
| Missing records | 91 quests cited by the previous zone audits are absent from the artifact: 19 daily, 1 PvP, and 71 other quests. | Treat them as unknown and report them; do not synthesize records. |
| Holiday membership | Questie's policy records each event and whether the entry is hidden. | Preserve that policy in the facts and keep event quests out of outdoor Loremaster itineraries. |
| Instance tags | The artifact and Questie corrections recover 124 of 129 audit instance quests. Quests 294, 295, 296, 304, and 472 have no Questie tag correction. | These five Wetlands raid quests are no longer classified as instances. This is the approved source result. |
| Other tag coverage | The artifact contains 1,142 of 2,557 policy-tagged quests, 215 of 1,000 holiday quests, and 678 of 1,419 instance-tagged quests. Thirteen of 14 audit PvP quests are recovered. | Entries outside the artifact cannot appear in authoring. PvP tags are not used by the authoring rules. |
| Daily and periodic flags | The artifact has no daily, weekly, or monthly flags. | These flags are false in generated facts. The 19 missing daily audit quests are included in the 91 missing records above. |
| Repeatable | `specialFlags & 1` agrees with 162 of 163 audit repeatables, marks 86 additional quests, and misses quest 9131. | Use Questie's value and retain this difference. |
| Levels | Offer levels agree for 874 of 876 audited comparisons. Step levels agree for 798; 71 former audit levels are higher than QuestieDB, and 7 are lower. For example, quest 745 changes from step level 6 to 8. | `requiredLevel` is the offer gate and `questLevel` is the step level. The former `firstseenpatch` rule is removed. |
| Zone catalogs | 2,401 catalog pairs agree, 265 are present only in the previous audits, and 8 are derived only from QuestieDB. | The catalog now uses the quest's `zoneOrSort` when that zone is known. Start locations do not determine ownership. |
| Catalog edge cases | 106 prior audit pairs concern quests without a start spawn; 147 audit-only pairs have a different QuestieDB quest zone; Zephra's Isle has 143 pairs but no UiMap in the supported zone map. | These are separate diagnostics and can overlap. Mount Hyjal and Riverglades names are retained only for point checks and do not become owned catalogs. |
| Locations | Wowhead mapper points are not in the artifact. | Points come from QuestieDB NPC and object spawns for quest providers and objectives, plus source-item drop locations. Some quests therefore have no points or an unresolved location reason. |
| Removed source fields | `firstseenpatch`, `forever`, `startPins`, `questieZone`, `sourceRevisions`, and `elite` have no equivalent in the source. | The `forever` eligibility distinction and the `foreverSpecific` and `upstreamAdvisory` audit fields are removed. Questie provides only partial elite tagging. |
| Objectives | QuestieDB has objective text and entity IDs, but no Wowhead objective labels or counts. | Labels are derived from `objectivesText`; unsupported mechanics remain unresolved. |

The audit comparison found 605 unresolved reasons in generated facts: 280 related to
`requiredMinRep`, 42 to absent NPC or object references, and the remainder to
reviewed mechanics. The export keeps these explicit instead of inventing a usable
restriction or provider.

## Audit inventory diff

Compared the `quests` entries in the 40 migrated zone audits with `HEAD`. The current
audits add 175 quest records, remove none, and revise 23 records that existed in the
previous audits. Every added record has its disposition, reason, and available source
evidence in its zone JSON. The retained records with changed values are listed here;
source evidence and locations were refreshed where noted, and changed dispositions
are recorded in the corresponding entry.

| Zone | Added | Removed | Revised |
|---|---:|---:|---:|
| Alterac Mountains | 9 | 0 | 0 |
| Arathi Highlands | 5 | 0 | 0 |
| Ashenvale | 10 | 0 | 0 |
| Badlands | 25 | 0 | 3 |
| Darkshore | 1 | 0 | 0 |
| Dun Morogh | 32 | 0 | 0 |
| Durotar | 2 | 0 | 2 |
| Duskwood | 1 | 0 | 0 |
| Eastern Plaguelands | 1 | 0 | 2 |
| Elwynn Forest | 4 | 0 | 0 |
| Felwood | 7 | 0 | 0 |
| Hillsbrad Foothills | 5 | 0 | 0 |
| Loch Modan | 5 | 0 | 1 |
| Mulgore | 2 | 0 | 0 |
| Redridge Mountains | 1 | 0 | 1 |
| Silithus | 8 | 0 | 1 |
| Stonetalon Mountains | 0 | 0 | 3 |
| Stranglethorn Vale | 2 | 0 | 0 |
| Swamp of Sorrows | 7 | 0 | 1 |
| Tanaris | 11 | 0 | 1 |
| Teldrassil | 5 | 0 | 0 |
| The Barrens | 13 | 0 | 0 |
| Thousand Needles | 1 | 0 | 1 |
| Un'Goro Crater | 8 | 0 | 0 |
| Western Plaguelands | 1 | 0 | 7 |
| Winterspring | 9 | 0 | 0 |
| **Total** | **175** | **0** | **23** |

The 23 revised quest records are: Badlands 716, 777, 778; Durotar 834, 835;
Eastern Plaguelands 5142, 5601; Loch Modan 3182; Redridge Mountains 3741; Silithus
1126; Stonetalon Mountains 1094, 1095, 1096; Swamp of Sorrows 93429; Tanaris 3444;
Thousand Needles 1189; and Western Plaguelands 5022, 5048, 5049, 5050, 5051, 5401,
5405. The revisions cover source evidence and locations, with status, reason,
ownership, or support changes where the entry records them.

The audit-file comparison also found these top-level fields changed in the listed
number of zone files. Their full values remain in each zone JSON.

| Audit field | Files changed |
|---|---:|
| `additionalSpines` | 11 |
| `coverageMode` | 11 |
| `orderingEligibility` | 39 |
| `placements` | 16 |
| `quests` | 26 |
| `sourcePriority` | 40 |
| `sources` | 40 |
| `spineActions` | 15 |
| `supportingQuests` | 10 |
| `upstream` | 15 |

The new `deadwind-pass` review file has no prior audit counterpart.

## Review boundary

These differences describe source coverage and generated audits. They do not verify
server quest offers, quest availability, or coordinate accuracy. The export records
the artifact version and build commit in each audit's provenance. Regenerate the
zone JSON with the pinned export before reviewing later QuestieDB changes.
