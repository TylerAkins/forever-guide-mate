# Quest level audit

`tests/test_quest_min_levels.py` checks accept, objective, gossip, and turn-in actions against the saved level floors in `tests/fixtures/quest_min_levels.json`. It reads both legacy completion helpers and current declarative completion tables. Route waypoint completion does not identify a quest action. Preparation notes are outside this audit.

Each fixture entry records `step` and `offer` separately. Dungeon actions use the offer floor. Other actions use the existing weave policy: positive Questie quest levels take precedence; class quests and Classic quests otherwise use their offer level; Forever additions use the Wowhead recommended level when it exceeds the offer level by at least five. Higher authored gates remain valid. Passing this audit establishes minimum gates, not a playable XP progression or an efficient itinerary.

The snapshot was captured on October 16, 2026 from the local `wow-database` checkout while its scrape was incomplete. `quest_min_levels_sources.json` records the SHA-256 of each source file. Files were checked for changes during each read, validated as JSON, and copied before deriving the fixture. This freezes available records; it does not assert that every source came from the same scrape run.

The source order is the raw Forever quest index, compiled quest details, then positive level values from the schema-v2 export. Missing or nonpositive exported levels do not erase known Wowhead recommendations. In particular, Watching the Roads retains its recommended level 20 even though the export supplies only its offer level 10. Both audit paths use the source loading functions in `tools/quest_database.py`. Explicit exported prerequisite groups replace the previous chain as a unit; missing groups preserve the compiled chain.

The snapshot contains usable levels for all 48 quest IDs that the old fixture omitted. Quests 95737 and 96774 are absent from the available sources. Their previous step floors, 24 and 30 respectively, remain marked `unverified`; their offer levels remain unknown. Review these two records after the scrape finishes. Do not derive new expectations from current guide gates.

When refreshing the fixture, capture the database first, review source conflicts and missing values, and update the source hashes with the derived expectations. Keep the fixture independent of a developer's local database so CI stays deterministic. The legacy stamping command previews changes by default and never writes test expectations. Its explicit `--write` option refuses ordered guides before any files are modified. Refreshing expectations is separate from editing itineraries.

Run the audit with:

```sh
python3 -m unittest discover -s tests -p test_quest_min_levels.py
```

The repaired audit currently reports unresolved low gates in the existing routes. Fix these through reviewed itinerary placement and suitable zone visits. A level checkpoint alone stalls an ordered route and does not supply the missing XP or schedule a return visit. The broad gate-only corrections were withdrawn.

Preview legacy level differences against a captured database without modifying guides:

```sh
python3 tools/apply_quest_min_levels.py --database /path/to/database-snapshot
```

See the [per-guide review of all 330 actions](quest-level-review.md) for milestone coverage, source conflicts, and proposed outing reviews.
