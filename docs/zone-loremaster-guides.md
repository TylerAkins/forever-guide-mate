# Zone Loremaster guides

The procedure for adding or updating a zone lives in the repo skill [`.cursor/skills/zone-loremaster-guide/SKILL.md`](../.cursor/skills/zone-loremaster-guide/SKILL.md). Use that when writing the next zone. The files in `Guides/Loremaster/` are the working copies.

Loremaster finishes the zone. The walk is the leveling route. Converted chapters are in `Guides/Leveling/`. A chapter whose title still ends in `(Era)` is in `Guides/Era/` and is still part of that walk. A quest on the Wowhead Forever zone page that is not already on that route is woven in:

1. A series follow-up goes immediately after the previous turn-in.
2. A quest from a giver the route already visits is accepted with that visit, before anyone leaves.
3. Anything else goes beside the closest pin, after lower-level quests.

Keep every quest the leveling route already runs. Dungeon quests stay in the dungeon guides. Put the file in `Guides/Loremaster/` and register it as `category = "Loremaster Guides"`. The library row tag is `Loremaster`, so the title is the zone name. Zephras Isle stays in `Guides/Leveling/` under `Leveling Quest Guides`, because that file is the Skyborne starter path. A chapter whose title still ends in `(Era)` stays unloaded until it is converted and moved to `Guides/Leveling/`.

An elite step says `This is an elite. Bring a group.` A handoff is one step and completes on `completed`. An accept completes on `activeOrCompleted`. Each objective is its own step. Coordinates have not been validated in the Forever client.
