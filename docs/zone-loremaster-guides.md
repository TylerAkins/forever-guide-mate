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
