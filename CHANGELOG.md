# Changelog

All notable changes to this project are documented here.

## 0.1.56 - 2026-10-04

- A step in the same zone uses a learned flight path when the pin is at another flight camp and that flight master is closer than walking. The Crossroads to Camp Taurajo is that case.

## 0.1.55 - 2026-10-03

- Darkshore (Part 3) accepts Unrequited Love from Archaeologist Hollee. Wetlands turns it in to Tarrel Rockweaver on the first Menethil visit.
- Dun Morogh accepts Grund and Gozwin in Anvilmar at level 6, before the road to Kharanos.
- Mulgore accepts the mining-charge and fish-fillet Stalk With The Earthmother steps from Boarton Shadetotem. The cone step stays off this route because the Windfury trip is already over. Warrior, Shaman, and Druid class guides carry the trials Boarton offers them.
- WANTED: Bruuz waits for the last Ratchet stop in The Barrens (Part 1), after The Guns of Northwatch.

## 0.1.54 - 2026-10-03

- Kaya's Alive turns in to Tammra Windfield on the first Sun Rock visit in Stonetalon Mountains (Part 1). Parts 3 and 4 still turn it in if it is still in the log.

## 0.1.53 - 2026-10-03

- Silverpine accepts Letter to Jin'Zil from Darsok after Serena Bloodfeather. Stonetalon (Part 1) sends you back for that letter before Jin'Zil's Forest Magic.
- The world map guide pin is created after the map's secure refresh, so opening the map no longer calls SetPassThroughButtons from the addon.
- Class guides wait on Harmony in Balance before the Zephras class quest. Strength and Mercy waits on The Great Ursera Spirit, and the Horde Skyborne Call of Fire steps wait on the previous turn-in. Tower Defense waits on In Service of Zephras.

## 0.1.52 - 2026-10-03

- Wailing Caverns no longer tracks When Dreams Turn to Nightmares or Waking Naralex. The finale escort and Mutanus are not quest steps in Forever.

## 0.1.51 - 2026-10-03

- Added the Excavation Site: Wetlands dungeon quest guide for both factions.

## 0.1.50 - 2026-10-02

- Assault on Fenris Isle warns that Thule Ravenclaw is an elite target and recommends bringing a group.

## 0.1.49 - 2026-10-02

- The addon list groups Forever GuideMate under Quests using Blizzard category metadata, with localized category names for non-English clients.

## 0.1.48 - 2026-10-01

- Hearts of the Lovers and Love Hurts now follow Devourer of Souls, matching the Questie prerequisite. What Is Love? follows the Alliance Devourer of Souls the same way.
- Zephras chains whose Wowhead prerequisite list matches Questie now wait on those turn-ins. Catching Wind's quest 99260 has no page, and Tower Defense has an empty Wowhead prerequisite list, so those two stay unregistered.
- Stalk With The Earthmother (76160) is offered to warriors, shamans, and druids, matching the Wowhead class line. The later follow-up stays shaman.
- Step levels use a positive Questie quest level when that record exists. A zero or -1 leaves the previous Wowhead level.

## 0.1.47 - 2026-10-01

- Quest accept, turn-in, and map-pin calls no longer run when the client would block them. That was adding to "Interface actions failed because of this AddOn" on the addon list, including repeated tries after a blocked call and clearing a Blizzard pin from inside a dungeon.

## 0.1.46 - 2026-10-01

- Dungeon and raid guides follow their authored route instead of jumping to every quest on your current map. A pickup you already started still finishes the other quests at that pin, so Wailing Caverns accepts Deviate Eradication beside Deviate Hides before it sends you to Thunder Bluff.
- Standing in the Wailing Caverns cave with Ebru accepts Deviate Eradication. Accept, turn-in, and gossip steps no longer use the global boat graph, and the tracker shows the quest text when you are at the pin.
- `python3 tools/compile_addon.py --install` copies the built addon into the WoW AddOns path from `install.json`.
- Tracker Sync, Back, Skip, and Mark complete tooltips show only their own help text, not the minimap button lines.

## 0.1.45 - 2026-10-01

- Map pins and quest tracking stay off inside an instance, so the guide does not call the waypoint APIs that error while you are in a dungeon or raid.

## 0.1.44 - 2026-10-01

- Ragefire Chasm accepts Slaying the Beast from Neeru Fireblade as soon as the insignia dialogue ends, then turns Hidden Enemies in to Thrall for the dungeon quest before sending you in to kill troggs.

## 0.1.43 - 2026-10-01

- Dungeon guides now cover each classic dungeon and wing as its own route, with quest pickup order, boss order, and the mechanics that matter in the run.
- Raid Quests is a separate library section. Onyxia's Lair Attunement is the only raid guide loaded. The other raid guides stay in the repo until they are converted for Forever.
- Gnomeregan is a dungeon guide only. The level 40 raid route was removed.
- Hall of Thanes and Ruins of Lordaeron keep their quest chains and now call the boss route, interrupt targets, and summon steps.
- The guide library shows the right completion percentage right after login. Before, a finished guide could read low until you opened it and pressed Sync.

## 0.1.42 - 2026-10-01

- Stop the Spread waits until the worgen Arugal's Folly is turned in. Dalar Dawnweaver does not offer it while that quest is still in the log.

## 0.1.41 - 2026-09-30

- Flight instructions now activate a Blizzard Map Pin at the flight master, including flights on quest steps, and restore the quest destination after arrival.
- Landing from a flight automatically refreshes the guide so completed travel steps and flight instructions clear without pressing Sync.

## 0.1.40 - 2026-09-30

- Lost in Battle (4921) uses an authored Beaten Corpse pin at 49.33, 50.32 in the Barrens for Blizzard Map Pins and TomTom when the step opts out of client quest tracking.

## 0.1.39 - 2026-09-30

- Added a draggable minimap button with a yellow quest icon, matching LFG Forever’s size, black background, and centered layout. Left-click toggles the guide, right-click opens settings, and the Show minimap button option controls visibility.
- Settings cannot be opened during combat and close when combat starts.

## 0.1.38 - 2026-09-30

- Tirisfal paladin steps pick up Making Repairs at Bandarion Keep before sending you to Rudolph Gelhardt for The Tarnished, so both quests can be done on one trip.

## 0.1.37 - 2026-09-30

- Native Blizzard quest tracking works even when quest waypoint coordinates are unavailable. TomTom falls back to client quest-map pin coordinates.
- Quest-linked travel steps, including The Forgotten Pools, use Blizzard quest destinations instead of authored route pins.
- Blizzard quest tracking no longer draws a duplicate GuideMate map marker. Ordinary travel keeps its route destination.

- Blizzard Map Pins is the default navigation provider; TomTom is optional. Quest objectives and turn-ins use client quest locations and native tracking.
- Navigation settings expose Blizzard’s shared in-world destination marker setting. GuideMate respects manually changed destinations.

## 0.1.36 - 2026-09-30

- Stolen Silver waits until Raptor Thieves is turned in. Gazrog does not offer it before that.

## 0.1.35 - 2026-09-30

- Leveling lint compares every shipped leveling chapter and fails when one drops objective or turn-in steps another chapter still has, unless that handoff is listed. Silverpine Forest turns in Jorn Skyseer on the Crossroads detour.
- Prowlers of the Barrens, Echeyakee, The Angry Scytheclaws, and Jorn Skyseer wait until the previous Sergra quest is turned in.
- The Barrens (Part 1) finishes Raptor Thieves and The Demon Seed. Stolen Silver stays a Crossroads pickup. Other Barrens accepts that hand off to Stonetalon or a camp the route does not visit stay accept-only, named in that chapter header.
- Hovering Forever GuideMate in the addon compartment menu no longer errors. The tooltip anchors to the compartment button.

## 0.1.34 - 2026-09-30

- Silverpine Forest tracks Plainstrider Menace through turn-in at Sergra Darkthorn before offering The Zhevra. The Barrens (Part 1) gates The Zhevra the same way.

## 0.1.33 - 2026-09-30

- Interface options add Hide in Combat (off by default) and a Guide scale slider from 50% to 150% (default 100%).
- Silverpine Forest picks up Watching the Roads on the southern Sepulcher return, does the Ambermill kills on the run toward Pyrewood, then turns it in before The Weaver.

## 0.1.32 - 2026-09-29

- Silverpine Forest now accepts Watching the Roads after Ambermill Investigations is turned in, and The Weaver after Watching the Roads. The tracker no longer asks for The Weaver while Shadow Priest Allister only offers Watching the Roads.

## 0.1.31 - 2026-09-29

- Horde and Alliance leveling chapters through level 30 are in the guide. Alliance Ashenvale is Part 1, Part 2, and Part 3. Wetlands is its own chapter. Horde adds The Barrens (Part 3), Thousand Needles (Part 1) and (Part 2), Ashenvale, Stonetalon Mountains (Part 3), and Hillsbrad Foothills.
- Spoils of War is collected in Menethil Harbor with the keep pickups. Pigments for Paints is accepted beside Zangen Stonehoof, the pods are collected at Mirkfallon Lake with the Gaea Seeds, and the turn-in is on the Thunder Bluff visit at the end of Stonetalon.
- Thousand Needles and the Hillsbrad quest list have no new Forever quests. Undead paladins take An Underrated Talent from Trevan Rol and Ott's Masterwork in Tarren Mill. Stepping Stones and ... and that note you found stay out because their hand-ins are not on a chapter stop. Wetlands quests with no start pin stay named.
- The first Alliance Ashenvale chapter is now Ashenvale (Part 1). Saved progress for that chapter migrates on load.
- Silverpine no longer asks for Return to Quinn before Wild Hearts is turned in. The worg hearts stay on the route, and Supplying the Sepulcher turns in to Karos Razok on that same Sepulcher visit.
- Ivar the Foul waits until Return to Quinn (Again) is turned in. Rane Yorick does not offer it after the first potion.
- Three more accepts wait for the turn-in that offers them: Dalar's worgen follow-up after Pyrewood Village, Her Name Is Olgra after Lost in Battle, and Linnea's abomination report after Rear Guard Patrol. The Temple of the Moon waits until Sister Aquinne takes The Sisterhood of Elune.

## 0.1.30 - 2026-09-29

- The Tirisfal Glades chapter title no longer starts with 1-12. The library and tracker use Tirisfal Glades.
- As Above, So Below and The One That Got Away are accepted together at Bandarion Keep, finished in the same Shadowvale cellar, and turned in together.

## 0.1.29 - 2026-09-29

- Leveling chapter titles now use zone names. Revisited zones use (Part 1), (Part 2), and so on.
- Leveling guide files now use zone slugs (`durotar.lua`, `darkshore-part-2.lua`, and so on) instead of level ranges.
- Era chapter IDs were renamed to match (`leveling-era-durotar`, `leveling-era-darkshore-part-1`, …). Saved character data migrates on load (schema 5).
- Tirisfal Glades now includes The One That Got Away after Bandarion Keep is turned in.
- Added `tools/audit_leveling_zone_quests.py` to compare Wowhead Forever zone lists with woven leveling routes.
- Stonetalon chapter titles now number parts per faction: Alliance uses a single `Stonetalon Mountains` row; Horde uses `(Part 1)` and `(Part 2)`.

## 0.1.28 - 2026-09-29

- Tirisfal Glades now includes As Above, So Below after Bandarion Keep is turned in. Hilda the Breaker sends you into the Shadowvale cellars for Faintly Glowing Bones.

## 0.1.27 - 2026-09-28

- Accepting or turning in a quest no longer walks every chapter on the game thread. Only the open chapter is rebuilt, and the map pin is read after that update finishes.
- Addon memory no longer climbs for the whole session. The quest list is reused, and review history is capped.
- Bandarion Keep waits until The Cult of the Damned and Remnants of War are turned in. Hadric Harlson offers those two first. Bandarion Keep is the precursor to the Lumina Windsinger escort.

## 0.1.26 - 2026-09-28

- Standing still or starting to walk no longer locks the WoW client. Those moments were running the addon on the game's main thread: a quest-log pulse with nothing changed is ignored, and crossing a subzone only updates the waypoint.
- Kill credit no longer selects quest-log rows or rereads the quest map pin. Quest completion for chapters you are not on is checked a few quests at a time, so one update cannot scan the whole catalog.

## 0.1.25 - 2026-09-28

- Added a Class Quests section with one guide per class. Each guide keeps the classic class route and weaves in Forever class quests from the quest database, with race and faction on every step. A quest offered to both factions stays open to both. A race lock is added only when the database names the races, or when a single-faction classic guide names them and the database left the race blank.
- Paladin quests for Horde are Undead only. Orc, Troll, Tauren, and Horde Skyborne have no paladin quests in the database. Dungeon class quests stay in the dungeon guides.

## 0.1.24 - 2026-09-28

- Quests accepted in an earlier chapter now turn in on the later visit that already stops at that NPC, including unconverted Era chapters. That covers Ziz Fizziks, Further Instructions, Letter to Jin'Zil, Trouble in the Deeps, Boulderslide Ravine, The Ruins of Stardust, Pridewings of Stonetalon, The Tower of Althalaxx, Report to Gryan Stoutmantle, Sergra Darkthorn, The Barrens Oases, Grove of the Ancients, The Elder Crone, and An Old Colleague to Lomac on the Wetlands Ironforge visit. Ishamuhale and Enraged Thunder Lizards turn in to Jorn before their follow-ups.
- Deepmoss Spider Eggs are collected in Sishir Canyon with Blood Feeders, and turned in to Mebok on the next Ratchet visit. No new Stonetalon or Ashenvale quest sits on the 20-22, 21-22, or 22-23 passes.

## 0.1.23 - 2026-09-28

- Woven objectives now finish on the same classic trip as the Forever speedrun: Brill deathguards with the first Brill visit, hides with the duskbat and murloc kills, Seeking Refuge at Solliden, Shadowvale elixir with the western crypt run, Echo Isles idols with Zalazane, Northshire books with the kobolds, and the Westfall wells with the gnoll patrol.
- New Forever quests on leveling routes wait for Wowhead's Level line when that line is at least 5 levels above Requires level. Smaller gaps, class quests, classic quests, and dungeon pickups still use the level the NPC offers them.
- Tomb Weed is accepted only after Doom Weed is turned in. Wowhead does not record that requirement, so the quest stays at the level Holland offers it.
- Woven Forever accepts on the Tirisfal, Durotar, Teldrassil, and Elwynn routes now sit on the same classic visit as the Forever speedrun order. Slimy Menace waits until A Net Disaster is turned in. Classic steps stay in place.
- Tomb Weed is still accepted after Doom Weed. The weeds are collected at Balnir Farmstead with Rear Guard Patrol, and turned in after the last A New Plague.

## 0.1.22 - 2026-09-28

- Each 1-12 starter route now includes The Great Outdoors after The Adventurer turn-in.
- Durotar and Mulgore Loremaster guides follow the updated leveling spine, including The Adventurer and The Great Outdoors.

## 0.1.21 - 2026-09-27

- Tirisfal Glades now includes the Undead paladin steps A Difficult Path, Rediscovering the Light, Coming to Terms, and Continue Your Training.
- Starter chapters now include the Forever class quests whose givers are already on the route. Class quests with no start pin stay named in the chapter header.
- The Adventurer is on each 1-12 starter route. Zephras Isle already had its own copy.

## 0.1.20 - 2026-09-27

- Ruins of Lordaeron dungeon guide: Horde enter at the Undercity portal (71.78, 11.44), and A Frightened Request from Tabitha Heartweaver in the Sepulcher is included in the pickup route.

## 0.1.19 - 2026-09-27

- Accepting, turning in, looting, or killing an objective no longer stalls the client while the quest log rebuilds. The guide waits until that burst settles, then refreshes once.
- A quest list from one NPC accepts the current step, then the next ready quest that same giver offers. Master Vornal still offers Forgotten Loa Idols after A Solvent Spirit.
- Encroachment stays off the tracker until level 6, which is when Gar'Thok offers it.
- Every guide quest now uses the minimum level from the Forever quest database, the level the NPC will offer it.
- When every remaining step needs a higher level, the tracker says to grind or run a dungeon until you can take the next one.

## 0.1.18 - 2026-09-27

- Sync reopens skipped accept steps when that quest is not in your log, so warlock Vile Familiars can surface again instead of staying behind Lazy Peons or Thazz'ril's Pick.
- Lazy Peons waits for the Vile Familiars Zureetha turn-in (warlock) or the standard cave turn-in (other classes).
- Prerequisite inference no longer marks quest steps complete when the quest log shows they are still unfinished.

## 0.1.17 - 2026-09-27

- Era Durotar, Mulgore, and Crossroads Conscription accepts now wait for the prior turn-in (or objective) that unlocks them in the client, including the warlock Vile Familiars handoff before Burning Blade Medallion.

## 0.1.16 - 2026-09-27

- Loremaster now ships Durotar and Mulgore only. The other zone guides are removed until each one is rewritten from its leveling route.
- Durotar Loremaster includes Hidden Enemies (5726 and 5727) from the 1–12 leveling route. The insignia is collected in Skull Rock, and the follow-up dialogue is with Neeru Fireblade.

## 0.1.15 - 2026-09-27

- Guide completion in the library is calculated for every guide when quest state is read, so a chapter you have already started no longer stays at 0% until you open it.
- The Skyborne starter is listed as 1-14 Zephras Isle.

## 0.1.14 - 2026-09-27

- Reordered the Zephras Isle route to the 1-14 Skyborne speedrun: grove kills, the watchtower, then the southbound Shen'dar and Valanaar loops. Accepts that had no earlier step now wait for the previous open step, so the tracker stays on the route.
- Alliance Skyborne now continue after The Magical City of Dalaran: Welcome to Azeroth, Exploring the Alliance, and the Journey to Sentinel Hill pickup. Alliance druids take Child of Nature and Moonglade on that same city trip. The Sentinel Hill turn-in stays on the Westfall chapter.

## 0.1.13 - 2026-09-26

- Guide recalculation now clears saved quest-giver availability observations for the selected guide, allowing corrected routes to recover from quests that were previously checked too early.

## 0.1.12 - 2026-09-26

- Zephras now completes the faction-specific Welcome to Shen'dar Village introduction before routing into The Criminal Element and the village side-quest pickups, preventing unavailable quests such as The Problem With Prideclaws from blocking the guide.

## 0.1.11 - 2026-09-26

- Added a tracker Sync button that recalculates the current position from live quest and profession state while preserving completed and intentionally skipped steps.
- A changed guide revision now performs the same resync once client state is fully available. Ordinary login, quest updates, and guide switching still preserve the saved step.

## 0.1.10 - 2026-09-26

- Mid-guide recovery now follows route order, trusts known client quest state over stale saved progress, rewinds through registered quest prerequisites, and blocks with a diagnostic instead of silently skipping an unavailable quest. The Barrens leveling and Loremaster routes now both include the Altered Beings, Hamuul Runetotem, and Nara Wildmane chain.
- The Zephras route now accepts both Aetheen breadcrumbs before leaving Thendal Grove, then completes Al'Aketh Thugs on the southbound trip into Shen'dar Village instead of backtracking.

## 0.1.9 - 2026-09-26

- Every guide now prefers live quest-log pins for objectives, gossip, and turn-ins. Objective steps show the first unfinished client objective and advance through the API rows as each one completes; authored data remains the fallback.
- Added a distinct gossip step for quest dialogue, starting with The Anchors of Zephras.
- Turn-ins now display `Quest Name @ NPC or Object`, using the live client title and the authored destination name.
- Split bundled accept-and-deliver records across the active Leveling, Loremaster, and Dungeon guides, including Zephras Isle. Every Era source guide is covered by the same lint rule so future handoffs must keep accept, objective or gossip, and turn-in actions separate.
- Chained Aggressive Encroachment and Al'Aketh Thugs to the point where the Zephras route reaches their quest givers.

## 0.1.8 - 2026-09-26

- Converted the 20-22 Stonetalon, 21-22 Ashenvale, and 22-23 Stonetalon chapters onto the 1-60 route. Forever quests on those zone lists are past each chapter's level, start in another zone, or have no giver on the route, so the classic steps stay as they are.
- Forever quest facts for guide work now come from the wow-database zone bundles.

## 0.1.7 - 2026-09-26

- An objective with no saved spot shows the quest log objective under the quest title. The tracker no longer uses the landmark NPC name once the quest log pin moves.

## 0.1.6 - 2026-09-26

- Auto navigation now walks directly to a nearby cross-zone objective when reaching the flight master would already be farther. The comparison uses the client map hierarchy, so it applies dynamically to current and future zones.

## 0.1.5 - 2026-09-26

- Repeatable quests no longer stay on the route after you are done with them. Finding the Antidote drops out once Need for a Cure is turned in. The Mangletooth buffs and Mending Old Wounds are left off the Barrens Loremaster route. Bone Collector and the Blasted Lands bloodmage buffs appear only while they are in your log. Again With the Zapped Giants is not tracked, and the Witch Doctor Unbagwa turn-in clears with Stranglethorn Fever.

## 0.1.4 - 2026-09-26

- A flight path is suggested only when you know a flight point in that zone on the same land mass. A shared word such as "Mountains" no longer counts, so knowing an Alterac or Redridge flight point no longer sends you to fly to Stonetalon.

## 0.1.3 - 2026-09-26

- Logging in purges flight routes saved by older releases that were never learned, so an undiscovered trip such as the Barrens run to Stonetalon no longer suggests its flight path.

## 0.1.2 - 2026-09-26

- Flight memory is stored per land mass: opening any flight master refreshes only that land mass (Kalimdor, Eastern Kingdoms, and so on). A distant listing no longer counts as a learned flight, so an unlearned trip such as the Barrens run to Stonetalon keeps the road instead of sending you to a flight master.
- Added the addon-list icon, so the addon no longer shows a red question mark in the addon list.

## 0.1.1 - 2026-09-25

- Logging in with a started guide no longer opens the guide library; it opens only when no guide has been chosen yet.
- Added stable release automation: numbered GitHub Releases from `v*` tags, preview builds for `main` merges, and `RELEASE_NOTES.md` as the CurseForge changelog.
- Added the Wednesday Forever interface compatibility updater and its release tooling.
- Documented the release process in `docs/DEVELOPMENT.md` and the README.

## 0.1.0 - 2026-09-23

- Created the initial repository and addon scaffold.
- Added the guide engine, objective-style tracker, guide library, persistent completion progress, navigation arrow, active-route map pin, and the initial Ragefire Chasm quest guide.
- Added the Wailing Caverns dungeon quest guide for level 15.
- Added the Ruins of Lordaeron dungeon quest guide for level 16.
- Added the Deadmines dungeon quest guide for level 15 and the Hall of Thanes dungeon quest guide for level 10.
- The guide library lists guides from lowest level to highest, with a gold line between rows.
- Guide library rows now show the guide type, such as Dungeon, before eligibility.
- Replaced the built-in navigation arrow with TomTom waypoints. TomTom is a required dependency. Cross-continent steps point at the boat or zeppelin that reaches the destination.
- Added the Forever boat, zeppelin, and flight-master network from Wowhead's world map, including Riverglades and Zephras Isle.
- The guide tracker starts on the left edge, vertically centered. No guide is selected until the player chooses one, and that choice is saved.
- Dungeon guides that do not apply show Ineligible instead of a faction or level reason.
- Added the Zephras Isle leveling guide for Skyborne characters, levels 1-14.
- A quest step that is only behind a higher level requirement no longer counts as finished, so the guide does not send players to Foul Matriarch before they can meet Aetheen of the Gales.
- Skyborne racial steps use the client race ids: Alliance 95 and Horde 96.
- Exploring the Horde now visits Nazgrel, Vol'jin, Cairne, and Sylvanas as separate steps. A finished visit stays finished, and the Undercity leg names the zeppelin.
- Added the Barrens Loremaster guide. Dungeon quests stay in their dungeon guides. Elite steps say to bring a group.
- Thunder Bluff steps no longer send you to a flight master after you are already in Mulgore or Thunder Bluff. From Mulgore, the route points at the southwest elevator.
- A known flight path says "Take the flight path to X." If that path has not been learned, the step walks instead of sending you to a flight master.
- The Orgrimmar zeppelin to Undercity is the south platform. The north platform goes to Stranglethorn.
- Added the Durotar Loremaster guide. The rules for the next zone are in docs/zone-loremaster-guides.md.
- Added the Mulgore Loremaster guide. Camp quests are picked up together, and the tauren well chain stays on tauren characters.
- Timed guide quests finish before other ready steps. Need for a Cure and Apothecary Zamah are 45 minute timers. The Flawed Power Stone is a 30 minute timer, so the Demon Seed altar is the next step.
- Race-locked steps name the race on the accept, the objectives, and the turn-in. A Horde Skyborne at level 14 can finish the Barrens without the orc, troll, or tauren flight quests.
- After the Lieutenant's Insignia is returned, Hidden Enemies points at Neeru Fireblade. Exhausting his dialogue finishes that step when the quest log marks the objective done.
- A follow-up that only sends you to another NPC no longer stops on an accept step at the giver. Hidden Enemies, The Missing Shipment, Samophlange, and the Zephras delivery visits point at the next person. New zone guides follow the Handoffs section in docs/zone-loremaster-guides.md.
- Flight points learned at a flight master stay known after the window closes, including from other flight masters.
- The Crossroads and Sen'jin Village accept the quests offered on that visit before leaving camp. Plainstrider Menace, Raptor Thieves, Disrupt the Attacks, and Harpy Raiders are one trip. New zone guides follow the Camp pickups section in docs/zone-loremaster-guides.md.
- Journey to the Crossroads from Thrall is Horde Skyborne. A troll or orc is no longer sent there for a quest Thrall does not offer.
- Added the Teldrassil Loremaster guide. Tyrande and Remulos stays out: it is a level 60 Moonglade handoff, not a Teldrassil quest. The offered Crown of the Earth part is 7383. Teldrassil is listed under Loremaster Guides with the other zone guides.
- Elite warnings follow Forever's creature rank. Harpy Lieutenants, Kreenig Snarlsnout, Barak Kodobane, Baron Longshore, Serena Bloodfeather, and the other named targets that are normal here no longer say to bring a group. Warlord Krom'zar, Rynthariel the Keymaster, Bruuz, Chol'aruk, Aggor the Young, the Venture Co. shredder, and the Outraged Pillager still do. The Harvester is a rare.
- A counted objective stays open until the count is met. Disrupt the Attacks at 2/3 Razormane Hunters stays the current step, even when the quest log marks that line finished, and the tracker comes back from Harpy Raiders until those hunters are done. A dialogue objective with no count still finishes when the log flags it.
- A quest that starts from an item in the bag is no longer a required step. Chen's Empty Keg, Lakota'mani, Owatanka, Washte Pawne, The Harvester, and The Runed Scroll tell you to use the item on a step you are already doing. The turn-in appears after the quest is in the log, and a drop that never comes does not hold the Barrens short of 100%. The quest-giver check ignores a step that tells you to use an item, so talking to Brewmaster Drohn is not recorded as a refusal.
- A guide step whose quest the giver does not offer is now skipped and reported instead of holding the tracker. The addon compares the step's quest against the quests the NPC is actually offering, so a missing class, race, or profession requirement shows up while playing rather than needing the route walked by hand. The report prints on login. The audit only reads the quest giver's offers; it never accepts or turns in.
- Added tests/lua/lint.lua, a data lint over the shipped guides. Every step of a quest must carry the same conditions, so gating an accept without its objectives and turn-in fails CI.
- Durotar's crafting lessons are only offered to the character who can take them. This Is Spinal Axe needs blacksmithing and Beasts of Thunder Ridge needs leatherworking, the same way A Pain in the Neck already needed enchanting. A level 15 troll mage with herbalism and alchemy is no longer sent to Ug'thok or Kamari, and still reaches 100%. Halikor's Hoof drops for anyone, so its turn-in is not gated.
- Durotar, Mulgore, and the Barrens are listed under Loremaster Guides, and their row tag says Loremaster. Those guides finish the zone's quests; they are not written as a leveling route. Zephras Isle stays under Leveling Quest Guides.
- Added Horde Era leveling routes from 1-12 through 34-36 under Leveling Quest Guides. Titles end in (Era). Alliance characters are not eligible. Grind stops and flight-point pickups are not included. These routes follow the classic path and are not rewritten for Forever yet.
- Centaur Bracers now says to collect the bracers from Kolkar. Chen's Empty Keg is a barrel on the ground in the Barrens, not a Kolkar drop.
- Added the next Horde Era leveling routes, 36-37 Alterac Mountains through 49-50 Feralas.
- Added the remaining Horde Era leveling routes, 49-50 Tanaris through 59-60 Winterspring.
- Added the first Alliance Era leveling routes, 1-12 Dun Morogh, Elwynn Forest, and Teldrassil through 32-33 Stranglethorn Vale. These routes are Alliance only.
- Added the next Alliance Era leveling routes, 33-34 Thousand Needles through 50-50 Hinterlands.
- Added the last Alliance Era leveling routes, 50-51 Blasted Lands through 59-60 Winterspring.
- The Teldrassil Loremaster guide is Alliance only. Its title is Teldrassil. The library row already tags it Loremaster.
- A guide the character cannot use says Ineligible. The faction stays listed beside that. The row no longer says "This step is for Alliance."
- Alliance and Horde Era routes are one guide, 1-60 Era. Steps for the other faction are skipped, so they do not block the route. A starter follows your race, or the starter zone you are standing in, and the other starters stay off the route. Later chapters follow in listed order, so both factions hand off to the next chapter instead of a different race's zone. If you have not started, the guide opens the chapter for your level and stays there. Saved progress from the separate Era guides is kept. The library row shows the current chapter, and a zone search opens that chapter.
- Wove Forever quests into the 1-12 Durotar, Mulgore, Tirisfal Glades, Dun Morogh, Elwynn Forest, and Teldrassil routes, including the capital stops those routes already make. Classic quests that were left off the route stay off. Skyborne city tours, cloth donations, and quests past the route's level stay off. Drop quests appear only after the item is in the log. Those six chapter titles no longer end in (Era). The 1-60 Era guide already carries that name.
- Wove Forever quests into the Westfall, Darkshore, Loch Modan, Redridge, Duskwood, Silverpine, Stonetalon, Barrens, and Southern Barrens chapters where the route is already standing. Ashenvale had no new quests. Dungeon quests, level 60 signs, second city trips, and work in another zone stay off. Those chapter titles no longer end in (Era).
- Rewrote the README so it lists the shipped guides, the Era chapters that already include Forever quests, and the remaining Loremaster, dungeon, class-quest, and Forever-pass work.
- Moved Era chapters to Guides/Era, Loremaster guides to Guides/Loremaster, and left Zephras Isle in Guides/Leveling.
- A saved skip from an old Era chapter stays on that chapter when the same step id also exists in another chapter.
- Era chapters whose titles still end in (Era) stay in the repo and are not loaded, so they do not show in the addon. Converted chapters remain in the 1-60 Era guide.
- Loremaster routes now follow the leveling path. A zone quest that is not on that path is woven in at the same giver, or after the quest it continues. The rules are the zone Loremaster skill.
- Added Loremaster guides for Loch Modan, Westfall, Dun Morogh, Duskwood, Redridge Mountains, Silverpine Forest, Elwynn Forest, Ashenvale, Darkshore, and Stonetalon Mountains.
- Zephras Isle keeps the north-to-south Skyborne hub order: Shen'dar side quests before Welcome to Shen'dar Village, High Order work after the cult chain, and Bugged after the Shadowgale den. Quests that list does not include stay on the path.
- Redridge Mountains and Duskwood are open to both factions. Alliance steps stay on Alliance. The Horde quests in those zones are no longer hidden by an Alliance-only guide.
- Converted Era chapters, the ones whose titles no longer end in (Era), live in Guides/Leveling. Chapters that still say (Era) stay in Guides/Era and stay unloaded.
- The README and the zone Loremaster notes match that layout. A converted chapter moves from Guides/Era to Guides/Leveling. A Loremaster route follows the leveling walk.
- Each converted Era chapter has its own Leveling library row, so 12-20 Barrens is listed with Zephras Isle and 1-12 Durotar. Opening a chapter stays on that chapter.
- Removed travel steps from the leveling, Loremaster, and Era guides. TomTom already points at the next pin, and those steps did not auto-clear. Dungeon entrance steps stay.
- Kept the travel steps that are the quest: The Forgotten Pools, Boulderslide Cavern, Frostmane Hold, the Altar of Zul, and the Gaping Chasm. Those clear when the discovery objective is done.
- Automatic quest accept takes only the quest on the current accept step. Other quests in the same guide stay in the gossip window, so opening one giver does not fill the quest log. Turn-in still covers completed quests from the selected guide.
- A quest giver that lists several quests is selected for you. The current accept or turn-in opens without clicking the quest in that list.
- Woven quests use Wowhead's recommended level, not the level they can be started. A level 20 elite such as WANTED: Bruuz is no longer picked up on the level 13 Ratchet visit.
- A Wowhead level above a leveling chapter's end does not count as that chapter having reached it. Bloodfury Trinkets waits at the end of 23-25 Stonetalon instead of the opening Sun Rock visit. Repairing a route keeps fractional priorities.
- Quest credit no longer asks the client about every quest in every guide. A kill, a quest loot, or an objective update reads the selected guide only, and a turned-in quest is not asked again.
- Parts and Pieces points at 61.39, 45.72 for the Complicated Parts in the upper pirate camp south of Ratchet.
- A step with no saved location follows the pin in your quest log. Saved coordinates stay where the guide already has them.
- The tracker reads the objective while the arrow follows the route. A path dot is not the step, and it is skipped when you are already closer to a later pin.
- Horde Gathering the Cure (6128) tracks kodo horns and earthroot on separate steps with matching quest ids; turn-in waits for both.
- Saved step completion no longer overrides the quest log for accept, objective, and turn-in steps, so a route change cannot mark earthroot done because an old turn-in was checked off early.
- Each guide remembers its own active step across reload and switching guides. Reload no longer auto-advances on stale ledger while the quest log is still loading.
- Nara Wildmane (1490) in the Barrens route waits on the Hamuul Runetotem turn-in; the follow-up speaks with Nara on Elder Rise, matching Wailing Caverns.
