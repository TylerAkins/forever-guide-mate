# Quest level audit

Pickup availability and recommended quest level serve different purposes. `internal/loremaster/repository_test.go` checks that accepts meet uncontested offer minima. It parses legacy completion helpers, declarative completion tables, and shared class actions. Waypoint completion and preparation notes do not identify quest actions. The fixture covers current leveling, class, and dungeon quests; unused source facts remain available for future guides.

`tests/fixtures/quest_min_levels.json` preserves `step` and `offer` separately. Recommendations guide itinerary placement rather than imposing the same gate on accepts, objectives, and returns. The same Go repository tests check added, non-class quests against the supplied reference chapter's upper level band and verify the reviewed moves and omissions. `tests/lua/catalog.lua` independently checks the reference action order.

The source snapshot was captured on October 16, 2026 from the local `wow-database` checkout while its scrape was incomplete. `quest_min_levels_sources.json` records the SHA-256 of each captured file. Reads were validated and frozen before deriving expectations. This does not establish that all files belong to the same scrape run. The fixture includes class quests resolved through shared actions.

The loader merges the raw Forever quest index, compiled details, and positive schema-v2 export values. The export's ATT `lvl` is exposed as `requiredLevel`, and the adapter stores it under `detail.questie.fields`. That field name does not establish independent Questie provenance. The 38 current quest records with conflicting positive offer fields are retained in `quest_level_conflicts.json`; the pickup check does not silently choose one of those disputed minima. Review them against the completed scrape or client before changing gates.

Watching the Roads retains its recommended level 20 and offer level 10. It now runs during the later planned Sepulcher stop at the start of Hillsbrad, alongside the added Arugal's Folly follow-up and Stop the Spread. The earlier Classic Arugal's Folly remains in Silverpine. Merrick's Bow, Pigments for Paints, Moonbrook Espionage, and Underground Map are omitted from Casual/starter routes because no suitable later visit was identified. The early A Show of Force copy is removed; its later Redridge/Westfall copy remains.

The reference backbones match all 84 supplied Alliance and Horde chapters. The Horde reference explicitly sends Tauren from Mulgore to Silverpine. Intentional starter cuts and class/dungeon exclusions remain covered by separate fixtures. The reference's grinding and level-up instructions remain omitted by request. These checks establish ordering and placement, not enough XP to complete a quest-only route without other activity.

Quests 95737 and 96774 are absent from the captured sources. Their prior recommendations, 24 and 30, remain marked `unverified`; their offer minima remain unknown. Refresh these after the scrape finishes. Do not derive expectations from current guide gates.

The earlier [330-action report](quest-level-review.md) is a historical diagnostic against uniform action gates. Its counts and line links describe the pre-conversion candidate. It is not a list of 330 independently verified quest-availability failures. Dungeon conversion also includes the outdoor Forgotten Pools/Altered Beings and Defias prerequisite chains. The Forgotten Pools exploration uses the [recorded quest objective](https://www.wowhead.com/tbc/quest=870/the-forgotten-pools) with client navigation rather than invented coordinates.

The current audit separates pickup availability, source conflicts, reference order, and added-quest placement. XP pacing remains unverified.

Run the checks with:

```sh
go test ./internal/loremaster -run 'Test(StepAndOfferLevel|RecommendedLevel|InsertQuestAndSetMinLevel|PlaceWovenMovesAboveCeilingAndUpdatesPriorities|FitPriorities|ApplyLevelGate)' -count=1
luajit -joff tests/lua/catalog.lua
```

When refreshing facts, capture the database first, review conflicts and missing values, and update the hashes with source-derived expectations. CI does not read a developer's local scrape. The legacy stamping tool previews differences by default and refuses to write ordered guides before modifying any files:

```sh
go run ./cmd/apply-quest-min-levels --database /path/to/database-snapshot
```
