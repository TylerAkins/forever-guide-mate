# Zone Loremaster guides

Use the [Loremaster authoring skill](../.cursor/skills/zone-loremaster-guide/SKILL.md)
and [guide authoring rules](guide-authoring.md). Guides use explicit ordered action
arrays, preserving the leveling spine while adding permanent zone quests.

The source inventories and insertion decisions live in [loremaster/](loremaster/).
They record the database revision and source hashes, candidate dispositions, levels,
prerequisite evidence, and the visits where new actions belong. Source priority is
Wowhead, QuestieDB, ATT, then the client scrape. Compiled selections may use another
priority; original source observations determine these inventories.

A capital pickup does not determine ownership. Use objective locations, supported
zone classification, chain context, and the turn-in to assign a quest. Data Hoarders
belongs to Dun Morogh although Jemma Quikswitch offers it in Ironforge. City catalogs
are discovery sources, not permission to import every capital quest into its
neighboring starter zone. Required prerequisite excursions remain supporting work.

Prerequisites come before proximity: finish the unlocking quest, reach a suitable
recommended-level visit, accept with that giver visit, work the matching outing,
and return with that hub. Breadcrumbs precede the quests that remove them. Higher
recommendations require later returns even when the offer minimum is low.

The library contains Dun Morogh, Elwynn Forest, Teldrassil, Durotar, Mulgore,
Tirisfal Glades, Zephras Isle, Westfall, Loch Modan, Darkshore, Silverpine Forest,
and The Barrens. The previous placeholder is retired; archived
completion ledgers remain preserved. Retired Durotar and Mulgore selections retain
their zone. Placeholder selections wait for captured character identity and choose
an eligible starter zone. Zephras also retains its Leveling starter.

The original starter inventories identify six unresolved records: Applejack Still (91736), A Taste
of Darkness (95771), Crown of the Earth (934), A Strategic Alliance (785), The New
Horde (787), and A Donation of Silk (99197). These are not authored as available
quests until their missing or contradictory mechanics can be resolved.

The full race/class journey matrix includes Loremaster. To isolate those journeys:

```sh
FGM_LOREMASTER=1 lua5.1 tests/lua/journeys.lua
```

These simulations supply observed quest states, levels, optional item drops, and
profession ranks to exercise the authored actions. They do not establish gameplay
availability or that one character can learn every profession.

Automated checks verify structural order and observed progress, not sufficient XP,
server availability, or pin accuracy. No Forever client walkthrough has been performed.

See [coverage and verification](loremaster-coverage.md) for reproducible counts, character applicability, source conflicts, provisional quality ratings, and requested client walkthroughs.

## Expansion policy

The zone inventory is [loremaster-zones.json](loremaster-zones.json). Cover every
original Era outdoor questing zone for each applicable faction. Mount Hyjal and
Riverglades are excluded; the existing Zephras Isle guide is preserved. A zone
without eligible permanent outdoor quests receives a recorded disposition.

Preserve the faction's Casual and starter action spine, including later returns.
For a legacy quest absent from that faction's entire Casual route, use
[ErebusAres' Wrath routes](https://github.com/ErebusAres/ZygorGuidesRemaster-3.3.5a_WOTLK)
as advisory ordering evidence. Prefer dedicated Alliance Loremaster routes and
matching Horde leveling routes. Never substitute Alliance-only routes for Horde.
`--no-strict` describes this policy, not a runtime flag: verified prerequisites,
recommended levels, and suitable hub visits override upstream ordering. Missing
upstream matches do not exclude quests. Upstream supplies ordering only; Forever
quest facts continue to come from the local wow-database observations.

Freeze the upstream commit, file hash, chapter, line, and matched action references
in each zone inventory. Record conflicts and supported deviations. Do not copy
upstream guide prose or use it to establish Forever quest availability.

Commit each completed zone after verification and independent review. Keep each
zone's guide, evidence, registration, tests, and release notes in its checkpoint.

For one-zone authoring, `tools/author_zone_loremaster.py <zone-slug> --upstream
<checkout>` previews dispositions using a clean upstream checkout at the pinned
revision. Add `--write` to prepare that zone's guide and evidence for review.
The tool does not register guides, change release metadata, or create commits.
Review ownership, optional item starters, source conflicts, and new trips before
registering the candidate. It deliberately leaves unsupported mechanics unresolved.
Use `FGM_LOREMASTER=1 FGM_LOREMASTER_ZONE=<zone-slug>` for a focused race/class
journey run; `FGM_MATRIX_CLASS` can select a single class.
