---
name: zone-loremaster-guide
description: Add or update an ordered Forever GuideMate zone Loremaster itinerary, assign capital pickups to their owning zones, and weave omitted quests around verified prerequisites, levels, and visits.
---

When changing a Casual or Starter quest that also appears in Loremaster, update its corresponding Loremaster actions in the same change, or document a supported intentional difference.

# Zone Loremaster guide

Read `docs/guide-authoring.md` before editing. Loremaster preserves the zone's
leveling spine and adds eligible permanent completion quests. Use
`routeMode = "ordered"`; array position chooses the next action. The former bulk
weaver was retired; use the one-zone authoring workflow below for ordered guides.

## Establish the completion set

Read the zone's leveling chapters in faction visit order, resolving shared
`classAction` references. Preserve their quest actions and existing prerequisite
handoffs. Keep dungeon-only work in dungeon guides. Event-only, unused, and
standalone repeatable quests stay out; retain repeatables needed by included chains.
Do not inherit the legacy tool's omission list without reviewing each reason.

Read the local `wow-database` source observations. Prefer eligible Wowhead facts,
then QuestieDB, ATT, and finally the client scrape. The database compiler uses a
different field priority, so inspect `attributes.sourceData` and provenance rather
than accepting its selected value blindly. ATT exports stored under a legacy
`questie` key are not independent Questie evidence. Missing, unavailable, empty,
and conflicting values are distinct. Preserve unresolved mechanics as unresolved;
do not invent providers, prerequisites, or coordinates.

Record candidate dispositions, source revision/hashes, ownership, restrictions,
levels, prerequisite evidence, and action insertion visits under `docs/loremaster/`.
Tests must use frozen evidence and run without the local database checkout.

## Assign capital quests to their owning zone

Ownership and action location are separate facts. Accepting a quest in Stormwind
does not make it Elwynn Forest content. Searching a capital catalog finds candidates;
it does not assign all of them to its neighboring starter zone.

Check the supported zone classification, objective locations, chain context, and
turn-in. Resolve disagreement before assigning ownership. Include a capital quest
only when its work belongs to this zone or it supplies a verified prerequisite or
handoff for an included chain. Record prerequisite excursions as supporting work,
without importing unrelated quests from that city or another zone.

Route each action where it happens. Data Hoarders belongs to Dun Morogh but starts
in Ironforge after Operation Recombobulation. An unrelated Stormwind pickup whose
work belongs in another zone belongs on that zone's route. Likewise, A Plague Upon
Thee starts in Tirisfal but its Plaguelands outing does not belong in Tirisfal
Loremaster merely because the catalog lists it there.

Test both inclusion of a zone quest with a city pickup and exclusion of city
pickups owned by other zones. Do not use NPC proximity as an ownership rule.

## Advisory legacy ordering

Follow the expansion policy in `docs/zone-loremaster-guides.md` and the explicit
zone inventory in `docs/loremaster-zones.json`. Preserve the faction's entire
Casual/starter spine. For legacy quests absent from that faction's Casual route,
use the pinned ErebusAres repository as advisory ordering evidence: dedicated
Alliance Loremaster routes first, matching Horde leveling routes for Horde.
`--no-strict` is an authoring policy, not an option that disables validation.
Prerequisites, levels, and suitable visits take precedence; unmatched quests stay
eligible. Forever-specific quests use wow-database evidence and visit weaving.
Record upstream revision, hashes, matches, and deviations. Never use upstream
prose, coordinates, or availability as Forever quest facts.

## Weave the actions

1. Resolve the prerequisite chain recursively. Read all/any groups, breadcrumbs,
   alternatives, exclusions, and signed source values with their own semantics.
   A reference to another quest does not by itself establish a prerequisite edge.
   Check contradictory or circular references against the actual chain evidence.
2. Keep the offer minimum separate from the recommended level. Use the offer
   minimum as the pickup gate and the recommendation to choose the itinerary visit.
   A low offer minimum does not justify an early high-level outing. Work above the
   chapter band belongs in a later return section, not an early isolated level gate.
3. Put a follow-up after its unlocking turn-in when level and location fit. Otherwise
   use the next suitable visit. Register verified edges in `QuestPrerequisites.lua`,
   put them in the accept's `requiredQuests`, and reference predecessor turn-ins in
   `dependsOn`. Metadata cannot repair an accept placed before its prerequisite.
4. Accept with the existing giver visit, do objectives on the matching outing, and
   turn in with that hub's return. Choose the nearest suitable stop only after
   prerequisite and level constraints. Document unavoidable new trips.
5. Breadcrumbs must precede the quest that removes them. Use observed alternatives
   to avoid blocking characters who already passed the breadcrumb. Never invent
   quest completion to recover a missing pickup.

Put faction, race, class, and profession restrictions consistently on every action
of a quest. Profession conditions alone block an ordered route; use `excludeWhen`
with the unavailable profession condition to omit inapplicable profession work.
Preserve explicit class/race pickup branches. New item-started work must explain
where the starter comes from and must not force a player to farm an optional drop.

Use separate accept and turn-in actions for deliveries. Accept completes on
`activeOrCompleted`; turn-in completes on `completed`. Prefer one API-driven
objective for one outing, with separate objective actions only for distinct visits.
Each split objective depends on the accept; the turn-in depends on all objectives.
Use objective labels with indexed objectives so client reordering remains safe.
Provided items belong in the instruction that uses them. An elite instruction says
`This is an elite. Bring a group.` only when source rank supports it.

Use UI map IDs, not area IDs. If no saved objective/return pin exists, use
`useClientPin = true` with a named destination and instructions to follow the quest
log. Unaccepted pickups still need supported navigation. Coordinates remain
unverified until a Forever client walkthrough.

## Register and verify

Use `category = "Loremaster Guides"`, a distinct `loremaster-<zone>` ID, and the
zone name as the title. Zephras Isle has a separate Loremaster entry while its
Skyborne starter remains under Leveling Quest Guides. Keep faction branches in
one zone file, with restrictions on their actions.

Register each file in the TOC, compiler, contract checks, and Lua loaders. Update
`docs/route-manifest.json` and the source audit. Add prerequisite turn-in fixtures
in `tests/lua/guide_data_checks.lua`. Test preserved spine order, capital ownership,
level placement, applicability, and real chain completion, including characters
who enter midway. Do not weaken normal-guide detour exclusions to add Loremaster.

Run all checks in `docs/guide-authoring.md` under **Before you ship**. Update release
metadata once per combined release with an exact patch bump. Keep generated files
untracked. Commit, push, and publication require the user's authorization.
