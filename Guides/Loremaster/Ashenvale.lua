local _, ns = ...

-- Ashenvale Loremaster route.
-- The step order follows the leveling route. Quests that are on the
-- Wowhead zone page and not on that route are woven in at the giver
-- the route already visits, or after the series quest they follow.
-- Leveling route: Guides/Leveling/21-22-ashenvale.lua, Guides/Era/24-24-ashenvale.lua, Guides/Era/26-27-ashenvale.lua, Guides/Era/29-30-ashenvale.lua
-- Quest list: https://www.wowhead.com/forever/quests/kalimdor/ashenvale
-- Dungeon quests stay in the dungeon guides.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    ASHENVALE = 1440,
    THUNDER_BLUFF = 1456,
    WETLANDS = 1437,
    DARNASSUS = 1457,
    ZONE_1439 = 1439,
    ZONE_1442 = 1442,
    ZONE_1413 = 1413,
    ZONE_1434 = 1434,
    ZONE_1431 = 1431,
}

local function QuestState(questID, state)
    return { quest = { id = questID, state = state } }
end

local function QuestObjective(questID, index, text)
    return { questObjective = { id = questID, index = index, text = text } }
end

local function Point(mapID, x, y, label, offMapText)
    return {
        mapID = mapID,
        x = x,
        y = y,
        label = label,
        offMapText = offMapText,
    }
end

ns:RegisterGuide({
    id = "leveling-ashenvale",
    title = "Ashenvale",
    category = "Loremaster Guides",
    revision = 1,
    conditions = {
        all = {
            { level = { min = 21 } },
        },
    },
    goals = {
        {
            id = "accept-970-the-tower-of-althalaxx",
            kind = "accept",
            priority = 10,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { quest = { id = 970, state = "completed" } },
                },
            },
            text = "Accept The Tower of Althalaxx from Delgren the Purifier in Maestra's Post.",
            complete = QuestState(970, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.2620, 0.3866, "Delgren the Purifier",
                    "Travel to Delgren the Purifier."),
            },
        },
        {
            id = "accept-1010-bathran-s-hair",
            kind = "accept",
            priority = 20,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Bathran's Hair from Orendil Broadleaf in Maestra's Post.",
            complete = QuestState(1010, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.2642, 0.3856, "Orendil Broadleaf",
                    "Travel to Orendil Broadleaf."),
            },
        },
        {
            id = "objective-970-the-tower-of-althalaxx",
            kind = "objective",
            priority = 30,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { quest = { id = 970, state = "completed" } },
                },
            },
            text = "Kill Dark Strand Adept, Dark Strand Enforcer or Dark Strand Cultist and collect a Glowing Soul Gem.",
            dependsOn = { "accept-970-the-tower-of-althalaxx" },
            complete = QuestState(970, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.3200, 0.3000, "Dark Strand Adept",
                    "Travel to Dark Strand Adept."),
            },
        },
        {
            id = "objective-1010-bathran-s-hair",
            kind = "objective",
            priority = 40,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Collect 5 of Bathran's Hair found in the plant bundles on the ground in the camp.",
            dependsOn = { "accept-1010-bathran-s-hair" },
            complete = QuestState(1010, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.3100, 0.2200, "Bathran's Hair",
                    "Travel to Bathran's Hair."),
            },
        },
        {
            id = "turnin-970-the-tower-of-althalaxx",
            kind = "turnin",
            priority = 50,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { quest = { id = 970, state = "completed" } },
                },
            },
            text = "Turn in The Tower of Althalaxx to Delgren the Purifier in Maestra's Post.",
            dependsOn = { "objective-970-the-tower-of-althalaxx" },
            complete = QuestState(970, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.2620, 0.3866, "Delgren the Purifier",
                    "Travel to Delgren the Purifier."),
            },
        },
        {
            id = "accept-973-the-tower-of-althalaxx",
            kind = "accept",
            priority = 60,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { quest = { id = 970, state = "completed" } },
                },
            },
            text = "Accept The Tower of Althalaxx from Delgren the Purifier in Maestra's Post.",
            complete = QuestState(973, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.2620, 0.3866, "Delgren the Purifier",
                    "Travel to Delgren the Purifier."),
            },
        },
        {
            id = "turnin-1010-bathran-s-hair",
            kind = "turnin",
            priority = 70,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Bathran's Hair to Orendil Broadleaf in Maestra's Post.",
            dependsOn = { "objective-1010-bathran-s-hair" },
            complete = QuestState(1010, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.2642, 0.3856, "Orendil Broadleaf",
                    "Travel to Orendil Broadleaf."),
            },
        },
        {
            id = "accept-1020-orendil-s-cure",
            kind = "accept",
            priority = 80,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Orendil's Cure from Orendil Broadleaf in Maestra's Post.",
            complete = QuestState(1020, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.2642, 0.3856, "Orendil Broadleaf",
                    "Travel to Orendil Broadleaf."),
            },
        },
        {
            id = "accept-1008-the-zoram-strand",
            kind = "accept",
            priority = 90,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept The Zoram Strand from Shindrell Swiftfire in Astranaar.",
            complete = QuestState(1008, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.3465, 0.4888, "Shindrell Swiftfire",
                    "Travel to Shindrell Swiftfire."),
            },
        },
        {
            id = "accept-1070-on-guard-in-stonetalon",
            kind = "accept",
            priority = 100,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept On Guard in Stonetalon from Sentinel Thenysil in Astranaar.",
            complete = QuestState(1070, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.3492, 0.4977, "Sentinel Thenysil",
                    "Travel to Sentinel Thenysil."),
            },
        },
        {
            id = "accept-1056-journey-to-stonetalon-peak",
            kind = "accept",
            priority = 110,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Journey to Stonetalon Peak from Faldreas Goeth'Shael in Astranaar.",
            complete = QuestState(1056, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.3578, 0.4916, "Faldreas Goeth'Shael",
                    "Travel to Faldreas Goeth'Shael."),
            },
        },
        {
            id = "accept-991-raene-s-cleansing",
            kind = "accept",
            priority = 120,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Raene's Cleansing from Raene Wolfrunner in Astranaar.",
            complete = QuestState(991, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.3659, 0.4959, "Raene Wolfrunner",
                    "Travel to Raene Wolfrunner."),
            },
        },
        {
            id = "accept-1054-culling-the-threat",
            kind = "accept",
            priority = 130,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Culling the Threat from Raene Wolfrunner in Astranaar.",
            complete = QuestState(1054, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.3659, 0.4963, "Raene Wolfrunner",
                    "Travel to Raene Wolfrunner."),
            },
        },
        {
            id = "turnin-1020-orendil-s-cure",
            kind = "turnin",
            priority = 140,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Orendil's Cure to Pelturas Whitemoon in Astranaar.",
            dependsOn = { "accept-1020-orendil-s-cure" },
            complete = QuestState(1020, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.3737, 0.5178, "Pelturas Whitemoon",
                    "Travel to Pelturas Whitemoon."),
            },
        },
        {
            id = "accept-1033-elune-s-tear",
            kind = "accept",
            priority = 150,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Elune's Tear from Pelturas Whitemoon in Astranaar.",
            complete = QuestState(1033, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.3737, 0.5178, "Pelturas Whitemoon",
                    "Travel to Pelturas Whitemoon."),
            },
        },
        {
            id = "accept-1007-the-ancient-statuette",
            kind = "accept",
            priority = 160,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept The Ancient Statuette from Talen in The Zoram Strand.",
            complete = QuestState(1007, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.1481, 0.3125, "Talen",
                    "Travel to Talen."),
            },
        },
        {
            id = "objective-1007-the-ancient-statuette",
            kind = "objective",
            priority = 170,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Collect the Ancient Statuette laying on the ground in The Zoram Strand.",
            dependsOn = { "accept-1007-the-ancient-statuette" },
            complete = QuestState(1007, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.1420, 0.2060, "The Zoram Strand",
                    "Travel to The Zoram Strand."),
            },
        },
        {
            id = "turnin-1007-the-ancient-statuette",
            kind = "turnin",
            priority = 180,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in The Ancient Statuette to Talen in The Zoram Strand.",
            dependsOn = { "objective-1007-the-ancient-statuette" },
            complete = QuestState(1007, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.1481, 0.3125, "Talen",
                    "Travel to Talen."),
            },
        },
        {
            id = "accept-1009-ruuzel",
            kind = "accept",
            priority = 190,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Ruuzel from Talen in The Zoram Strand.",
            complete = QuestState(1009, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.1481, 0.3125, "Talen",
                    "Travel to Talen."),
            },
        },
        {
            id = "objective-1009-ruuzel",
            kind = "objective",
            priority = 200,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill Ruuzel collect the Ring of Zoram She patrols clockwise around the small island with two bodyguards.",
            dependsOn = { "accept-1009-ruuzel" },
            complete = QuestState(1009, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.0700, 0.1400, "Ruuzel",
                    "Travel to Ruuzel."),
            },
        },
        {
            id = "objective-1008-the-zoram-strand",
            kind = "objective",
            priority = 210,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill any Wrathtail Wave Rider, Wrathtail Sorceress or Wrathtail Sea Witch which surround The Zoram Strand until you've collected 20 Wrathtail Head.",
            dependsOn = { "accept-1008-the-zoram-strand" },
            complete = QuestState(1008, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.1500, 0.2400, "Wrathtail Wave Rider",
                    "Travel to Wrathtail Wave Rider."),
            },
        },
        {
            id = "turnin-1009-ruuzel",
            kind = "turnin",
            priority = 220,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Ruuzel to Talen in The Zoram Strand.",
            dependsOn = { "objective-1009-ruuzel" },
            complete = QuestState(1009, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.1481, 0.3125, "Talen",
                    "Travel to Talen."),
            },
        },
        {
            id = "turnin-991-raene-s-cleansing",
            kind = "turnin",
            priority = 230,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Raene's Cleansing to Teronis' Corpse in Lake Falathim.",
            dependsOn = { "accept-991-raene-s-cleansing" },
            complete = QuestState(991, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.2032, 0.4239, "Teronis' Corpse",
                    "Travel to Teronis' Corpse."),
            },
        },
        {
            id = "accept-1023-raene-s-cleansing",
            kind = "accept",
            priority = 240,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Raene's Cleansing from Teronis' Corpse in Lake Falathim.",
            complete = QuestState(1023, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.2032, 0.4239, "Teronis' Corpse",
                    "Travel to Teronis' Corpse."),
            },
        },
        {
            id = "objective-1023-raene-s-cleansing",
            kind = "objective",
            priority = 250,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill the Saltspittle Oracle, Saltspittle Puddlejumper or Saltspittle Warrior at the nearby lake until you've collected the Glowing Gem.",
            dependsOn = { "accept-1023-raene-s-cleansing" },
            complete = QuestState(1023, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.1900, 0.4300, "Saltspittle Oracle",
                    "Travel to Saltspittle Oracle."),
            },
        },
        {
            id = "turnin-1023-raene-s-cleansing",
            kind = "turnin",
            priority = 260,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Raene's Cleansing to Raene Wolfrunner in Astranaar.",
            dependsOn = { "objective-1023-raene-s-cleansing" },
            complete = QuestState(1023, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.3659, 0.4959, "Raene Wolfrunner",
                    "Travel to Raene Wolfrunner."),
            },
        },
        {
            id = "accept-1024-raene-s-cleansing",
            kind = "accept",
            priority = 270,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Raene's Cleansing from Raene Wolfrunner in Astranaar.",
            complete = QuestState(1024, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.3659, 0.4959, "Raene Wolfrunner",
                    "Travel to Raene Wolfrunner."),
            },
        },
        {
            id = "accept-1025-an-aggressive-defense",
            kind = "accept",
            priority = 280,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept An Aggressive Defense from Raene Wolfrunner in Astranaar.",
            complete = QuestState(1025, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.3659, 0.4959, "Raene Wolfrunner",
                    "Travel to Raene Wolfrunner."),
            },
        },
        {
            id = "turnin-1008-the-zoram-strand",
            kind = "turnin",
            priority = 290,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in The Zoram Strand to Shindrell Swiftfire in Astranaar.",
            dependsOn = { "objective-1008-the-zoram-strand" },
            complete = QuestState(1008, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.3465, 0.4888, "Shindrell Swiftfire",
                    "Travel to Shindrell Swiftfire."),
            },
        },
        {
            id = "accept-1134-pridewings-of-stonetalon",
            kind = "accept",
            priority = 300,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Pridewings of Stonetalon from Shindrell Swiftfire in Astranaar.",
            complete = QuestState(1134, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.3468, 0.4888, "Shindrell Swiftfire",
                    "Travel to Shindrell Swiftfire."),
            },
        },
        {
            id = "objective-1033-elune-s-tear",
            kind = "objective",
            priority = 310,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Find and retrieve Elune's Tear in Iris Lake.",
            dependsOn = { "accept-1033-elune-s-tear" },
            complete = QuestState(1033, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.4348, 0.4576, "Continue toward Elune's Tear",
                    "Continue toward Elune's Tear."),
                Point(MAP.ASHENVALE, 0.4625, 0.4593, "Iris Lake",
                    "Travel to Iris Lake."),
            },
        },
        {
            id = "turnin-1024-raene-s-cleansing",
            kind = "turnin",
            priority = 320,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Raene's Cleansing to Shael'dryn in Moonwell.",
            dependsOn = { "accept-1024-raene-s-cleansing" },
            complete = QuestState(1024, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.5349, 0.4630, "Shael'dryn",
                    "Travel to Shael'dryn."),
            },
        },
        {
            id = "accept-1026-raene-s-cleansing",
            kind = "accept",
            priority = 330,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Raene's Cleansing from Shael'dryn in Moonwell.",
            complete = QuestState(1026, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.5349, 0.4630, "Shael'dryn",
                    "Travel to Shael'dryn."),
            },
        },
        {
            id = "objective-1025-an-aggressive-defense",
            kind = "objective",
            priority = 340,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill 1 Foulweald Den Watcher, 2 Foulweald Ursa, 10 Foulweald Totemic and 12 Foulweald Warrior which can be found in the camp.",
            dependsOn = { "accept-1025-an-aggressive-defense" },
            complete = QuestState(1025, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.5100, 0.6000, "Foulweald Den Watcher",
                    "Travel to Foulweald Den Watcher."),
            },
        },
        {
            id = "turnin-1025-an-aggressive-defense",
            kind = "turnin",
            priority = 350,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in An Aggressive Defense to Raene Wolfrunner in Astranaar.",
            dependsOn = { "objective-1025-an-aggressive-defense" },
            complete = QuestState(1025, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.3659, 0.4959, "Raene Wolfrunner",
                    "Travel to Raene Wolfrunner."),
            },
        },
        {
            id = "turnin-1033-elune-s-tear",
            kind = "turnin",
            priority = 360,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Elune's Tear to Pelturas Whitemoon in Astranaar.",
            dependsOn = { "objective-1033-elune-s-tear" },
            complete = QuestState(1033, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.3737, 0.5178, "Pelturas Whitemoon",
                    "Travel to Pelturas Whitemoon."),
            },
        },
        {
            id = "accept-1034-the-ruins-of-stardust",
            kind = "accept",
            priority = 370,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept The Ruins of Stardust from Pelturas Whitemoon in Astranaar.",
            complete = QuestState(1034, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.3737, 0.5178, "Pelturas Whitemoon",
                    "Travel to Pelturas Whitemoon."),
            },
        },
        {
            id = "objective-1034-the-ruins-of-stardust",
            kind = "objective",
            priority = 380,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Collect 5 Handful of Stardust which are found in Stardust covered bushes which are in the Ruins of Stardust.",
            dependsOn = { "accept-1034-the-ruins-of-stardust" },
            complete = QuestState(1034, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.3361, 0.6749, "Ruins of Stardust",
                    "Travel to Ruins of Stardust."),
            },
        },
        {
            id = "accept-1140-the-tower-of-althalaxx",
            kind = "accept",
            priority = 390,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { quest = { id = 973, state = "completed" } },
                },
            },
            text = "Accept The Tower of Althalaxx from Delgren the Purifier in Maestra's Post.",
            complete = QuestState(1140, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.2620, 0.3866, "Delgren the Purifier",
                    "Travel to Delgren the Purifier."),
            },
        },
        {
            id = "accept-1016-elemental-bracers",
            kind = "accept",
            priority = 400,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Elemental Bracers from Sentinel Velene Starstrike in Silverwind Refuge.",
            complete = QuestState(1016, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.4981, 0.6720, "Sentinel Velene Starstrike",
                    "Travel to Sentinel Velene Starstrike."),
            },
        },
        {
            id = "objective-1016-befouled-water-elemental",
            kind = "objective",
            priority = 410,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill Befouled Water Elemental until you collect 5 Intact Elemental Bracer in Mystral Lake.",
            dependsOn = { "accept-1016-elemental-bracers" },
            complete = QuestState(1016, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.4940, 0.7110, "Befouled Water Elemental",
                    "Travel to Befouled Water Elemental."),
            },
        },
        {
            id = "objective-1016-elemental-bracers",
            kind = "objective",
            priority = 420,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Use the Divining Scroll after collect 5 Intact Elemental Bracer from Befouled Water Elemental in Mystral Lake.",
            dependsOn = { "accept-1016-elemental-bracers" },
            complete = QuestState(1016, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.4900, 0.7000, "Befouled Water Elemental",
                    "Travel to Befouled Water Elemental."),
            },
        },
        {
            id = "turnin-1016-elemental-bracers",
            kind = "turnin",
            priority = 430,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Elemental Bracers to Sentinel Velene Starstrike in Silverwind Refuge.",
            dependsOn = { "objective-1016-befouled-water-elemental", "objective-1016-elemental-bracers" },
            complete = QuestState(1016, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.4981, 0.6720, "Sentinel Velene Starstrike",
                    "Travel to Sentinel Velene Starstrike."),
            },
        },
        {
            id = "accept-1017-mage-summoner",
            kind = "accept",
            priority = 440,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 25 } },
                },
            },
            dependsOn = { "turnin-1016-elemental-bracers" },
            text = "Accept Mage Summoner from Sentinel Velene Starstrike.",
            complete = QuestState(1017, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.498, 0.672, "Sentinel Velene Starstrike",
                    "Travel to Sentinel Velene Starstrike."),
            },
        },
        {
            id = "objective-1017-mage-summoner-1",
            kind = "objective",
            priority = 450,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 25 } },
                },
            },
            text = "Mage Summoner: Sarilus Foulborne's Head.",
            dependsOn = { "accept-1017-mage-summoner" },
            complete = QuestObjective(1017, 1, "Sarilus Foulborne's Head"),
            route = {
                Point(MAP.ASHENVALE, 0.498, 0.672, "Sentinel Velene Starstrike",
                    "Travel to Sentinel Velene Starstrike."),
            },
        },
        {
            id = "turnin-1017-mage-summoner",
            kind = "turnin",
            priority = 460,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 25 } },
                },
            },
            text = "Turn in Mage Summoner to Sentinel Velene Starstrike.",
            dependsOn = { "objective-1017-mage-summoner-1" },
            complete = QuestState(1017, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.498, 0.672, "Sentinel Velene Starstrike",
                    "Travel to Sentinel Velene Starstrike."),
            },
        },
        {
            id = "accept-1195-the-sacred-flame",
            kind = "accept",
            priority = 470,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Accept The Sacred Flame from Zangen Stonehoof in Thunder Bluff.",
            complete = QuestState(1195, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.5479, 0.5129, "Zangen Stonehoof",
                    "Travel to Zangen Stonehoof."),
            },
        },
        {
            id = "accept-25-stonetalon-standstill",
            kind = "accept",
            priority = 480,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Accept Stonetalon Standstill from Mastok Wrilehiss in Splintertree Post.",
            complete = QuestState(25, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.7364, 0.6003, "Mastok Wrilehiss",
                    "Travel to Mastok Wrilehiss."),
            },
        },
        {
            id = "accept-6441-satyr-horns",
            kind = "accept",
            priority = 490,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Accept Satyr Horns from Pixel in Splintertree Post.",
            complete = QuestState(6441, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.7310, 0.6148, "Pixel",
                    "Travel to Pixel."),
            },
        },
        {
            id = "accept-6503-ashenvale-outrunners",
            kind = "accept",
            priority = 500,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Accept Ashenvale Outrunners from Kuray'bin in Splintertree Post.",
            complete = QuestState(6503, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.7116, 0.6819, "Kuray'bin",
                    "Travel to Kuray'bin."),
            },
        },
        {
            id = "accept-6383-the-ashenvale-hunt",
            kind = "accept",
            priority = 510,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Accept The Ashenvale Hunt from Senani Thunderheart in Splintertree Post. This is an elite. Bring a group.",
            complete = QuestState(6383, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.7374, 0.6144, "Senani Thunderheart",
                    "Travel to Senani Thunderheart."),
            },
        },
        {
            id = "accept-23-ursangouss-paw",
            kind = "accept",
            priority = 530,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 24 } },
                },
            },
            text = "Accept Ursangous's Paw from Senani Thunderheart.",
            complete = QuestState(23, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.736, 0.614, "Senani Thunderheart",
                    "Travel to Senani Thunderheart."),
            },
        },
        {
            id = "accept-24-shadumbras-head",
            kind = "accept",
            priority = 540,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 27 } },
                },
            },
            text = "Accept Shadumbra's Head from Senani Thunderheart.",
            complete = QuestState(24, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.736, 0.614, "Senani Thunderheart",
                    "Travel to Senani Thunderheart."),
            },
        },
        {
            id = "accept-247-the-hunt-completed",
            kind = "accept",
            priority = 550,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 30 } },
                },
            },
            text = "Accept The Hunt Completed from Senani Thunderheart.",
            complete = QuestState(247, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.736, 0.614, "Senani Thunderheart",
                    "Travel to Senani Thunderheart."),
            },
        },
        {
            id = "accept-6581-warsong-saw-blades",
            kind = "accept",
            priority = 560,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 27 } },
                },
            },
            text = "Accept Warsong Saw Blades from Pixel.",
            complete = QuestState(6581, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.730, 0.614, "Pixel",
                    "Travel to Pixel."),
            },
        },
        {
            id = "accept-1918-the-befouled-element",
            kind = "accept",
            priority = 570,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 27 } },
                },
            },
            text = "Accept The Befouled Element from Mastok Wrilehiss.",
            complete = QuestState(1918, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.736, 0.600, "Mastok Wrilehiss",
                    "Travel to Mastok Wrilehiss."),
            },
        },
        {
            id = "accept-2-sharptalons-claw",
            kind = "accept",
            priority = 571,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 30 } },
                },
            },
            text = "Accept Sharptalon's Claw from Senani Thunderheart.",
            complete = QuestState(2, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.736, 0.614, "Senani Thunderheart",
                    "Travel to Senani Thunderheart."),
            },
        },
        {
            id = "objective-2-sharptalons-claw-1",
            kind = "objective",
            priority = 572,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 30 } },
                },
            },
            text = "Sharptalon's Claw: Sharptalon's Claw.",
            dependsOn = { "accept-2-sharptalons-claw" },
            complete = QuestObjective(2, 1, "Sharptalon's Claw"),
            route = {
                Point(MAP.ASHENVALE, 0.736, 0.614, "Senani Thunderheart",
                    "Travel to Senani Thunderheart."),
            },
        },
        {
            id = "turnin-2-sharptalons-claw",
            kind = "turnin",
            priority = 573,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 30 } },
                },
            },
            text = "Turn in Sharptalon's Claw to Senani Thunderheart.",
            dependsOn = { "objective-2-sharptalons-claw-1" },
            complete = QuestState(2, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.736, 0.614, "Senani Thunderheart",
                    "Travel to Senani Thunderheart."),
            },
        },
        {
            id = "objective-1918-the-befouled-element-1",
            kind = "objective",
            priority = 580,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 27 } },
                },
            },
            text = "The Befouled Element: Befouled Water Globe.",
            dependsOn = { "accept-1918-the-befouled-element" },
            complete = QuestObjective(1918, 1, "Befouled Water Globe"),
            route = {
                Point(MAP.ASHENVALE, 0.736, 0.600, "Mastok Wrilehiss",
                    "Travel to Mastok Wrilehiss."),
            },
        },
        {
            id = "turnin-1918-the-befouled-element",
            kind = "turnin",
            priority = 590,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 27 } },
                },
            },
            text = "Turn in The Befouled Element to Mastok Wrilehiss.",
            dependsOn = { "objective-1918-the-befouled-element-1" },
            complete = QuestState(1918, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.736, 0.600, "Mastok Wrilehiss",
                    "Travel to Mastok Wrilehiss."),
            },
        },
        {
            id = "objective-6581-warsong-saw-blades-1",
            kind = "objective",
            priority = 600,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 27 } },
                },
            },
            text = "Warsong Saw Blades: Deadly Blunderbuss.",
            dependsOn = { "accept-6581-warsong-saw-blades" },
            complete = QuestObjective(6581, 1, "Deadly Blunderbuss"),
            route = {
                Point(MAP.ASHENVALE, 0.730, 0.614, "Pixel",
                    "Travel to Pixel."),
            },
        },
        {
            id = "turnin-6581-warsong-saw-blades",
            kind = "turnin",
            priority = 610,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 27 } },
                },
            },
            text = "Turn in Warsong Saw Blades to Pixel.",
            dependsOn = { "objective-6581-warsong-saw-blades-1" },
            complete = QuestState(6581, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.730, 0.614, "Pixel",
                    "Travel to Pixel."),
            },
        },
        {
            id = "objective-247-the-hunt-completed-1",
            kind = "objective",
            priority = 620,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 30 } },
                },
            },
            text = "The Hunt Completed: The Hunt Completed.",
            dependsOn = { "accept-247-the-hunt-completed" },
            complete = QuestObjective(247, 1, "The Hunt Completed"),
            route = {
                Point(MAP.ASHENVALE, 0.736, 0.614, "Senani Thunderheart",
                    "Travel to Senani Thunderheart."),
            },
        },
        {
            id = "turnin-247-the-hunt-completed",
            kind = "turnin",
            priority = 630,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 30 } },
                },
            },
            text = "Turn in The Hunt Completed to Senani Thunderheart.",
            dependsOn = { "objective-247-the-hunt-completed-1" },
            complete = QuestState(247, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.736, 0.614, "Senani Thunderheart",
                    "Travel to Senani Thunderheart."),
            },
        },
        {
            id = "objective-24-shadumbras-head-1",
            kind = "objective",
            priority = 640,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 27 } },
                },
            },
            text = "Shadumbra's Head: Shadumbra's Head.",
            dependsOn = { "accept-24-shadumbras-head" },
            complete = QuestObjective(24, 1, "Shadumbra's Head"),
            route = {
                Point(MAP.ASHENVALE, 0.736, 0.614, "Senani Thunderheart",
                    "Travel to Senani Thunderheart."),
            },
        },
        {
            id = "turnin-24-shadumbras-head",
            kind = "turnin",
            priority = 650,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 27 } },
                },
            },
            text = "Turn in Shadumbra's Head to Senani Thunderheart.",
            dependsOn = { "objective-24-shadumbras-head-1" },
            complete = QuestState(24, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.736, 0.614, "Senani Thunderheart",
                    "Travel to Senani Thunderheart."),
            },
        },
        {
            id = "objective-23-ursangouss-paw-1",
            kind = "objective",
            priority = 660,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 24 } },
                },
            },
            text = "Ursangous's Paw: Ursangous's Paw.",
            dependsOn = { "accept-23-ursangouss-paw" },
            complete = QuestObjective(23, 1, "Ursangous's Paw"),
            route = {
                Point(MAP.ASHENVALE, 0.736, 0.614, "Senani Thunderheart",
                    "Travel to Senani Thunderheart."),
            },
        },
        {
            id = "turnin-23-ursangouss-paw",
            kind = "turnin",
            priority = 670,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 24 } },
                },
            },
            text = "Turn in Ursangous's Paw to Senani Thunderheart.",
            dependsOn = { "objective-23-ursangouss-paw-1" },
            complete = QuestState(23, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.736, 0.614, "Senani Thunderheart",
                    "Travel to Senani Thunderheart."),
            },
        },
        {
            id = "objective-6503-ashenvale-outrunners",
            kind = "objective",
            priority = 700,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Kill 9 Ashenvale Outrunner south of Splintertree Post in Nightsong Woods.",
            dependsOn = { "accept-6503-ashenvale-outrunners" },
            complete = QuestState(6503, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.7000, 0.7600, "Ashenvale Outrunner",
                    "Travel to Ashenvale Outrunner."),
            },
        },
        {
            id = "turnin-6503-ashenvale-outrunners",
            kind = "turnin",
            priority = 710,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Turn in Ashenvale Outrunners to Kuray'bin in Splintertree Post.",
            dependsOn = { "objective-6503-ashenvale-outrunners" },
            complete = QuestState(6503, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.7116, 0.6819, "Kuray'bin",
                    "Travel to Kuray'bin."),
            },
        },
        {
            id = "accept-6544-torek-s-assault",
            kind = "accept",
            priority = 720,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Accept Torek's Assault from Torek in Nightsong Woods.",
            complete = QuestState(6544, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.6836, 0.7538, "Torek",
                    "Travel to Torek."),
            },
        },
        {
            id = "objective-6544-torek-s-assault",
            kind = "objective",
            priority = 730,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Escort Torek, let him and his bodyguard do most of the fighting when you do this quest.",
            dependsOn = { "accept-6544-torek-s-assault" },
            complete = QuestState(6544, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.6800, 0.7500, "Torek",
                    "Travel to Torek."),
            },
        },
        {
            id = "objective-25-stonetalon-standstill",
            kind = "objective",
            priority = 740,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Dispatch 12 Befouled Water Elemental at Mystral Lake and discover the gazebo on the island.",
            dependsOn = { "accept-25-stonetalon-standstill" },
            complete = QuestState(25, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.6158, 0.7051, "Continue toward Stonetalon Standstill",
                    "Continue toward Stonetalon Standstill."),
                Point(MAP.ASHENVALE, 0.5585, 0.7092, "Continue toward Stonetalon Standstill",
                    "Continue toward Stonetalon Standstill."),
                Point(MAP.ASHENVALE, 0.4890, 0.6940, "Befouled Water Elemental",
                    "Travel to Befouled Water Elemental."),
            },
        },
        {
            id = "turnin-25-stonetalon-standstill",
            kind = "turnin",
            priority = 750,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Turn in Stonetalon Standstill to Mastok Wrilehiss in Splintertree Post.",
            dependsOn = { "objective-25-stonetalon-standstill" },
            complete = QuestState(25, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.7364, 0.6003, "Mastok Wrilehiss",
                    "Travel to Mastok Wrilehiss."),
            },
        },
        {
            id = "accept-824-je-neu-of-the-earthen-ring",
            kind = "accept",
            priority = 760,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Accept Je'neu of the Earthen Ring from Mastok Wrilehiss in Splintertree Post.",
            complete = QuestState(824, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.7364, 0.6003, "Mastok Wrilehiss",
                    "Travel to Mastok Wrilehiss."),
            },
        },
        {
            id = "turnin-6544-torek-s-assault",
            kind = "turnin",
            priority = 770,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Turn in Torek's Assault to Ertog Ragetusk in Splintertree Post.",
            dependsOn = { "objective-6544-torek-s-assault" },
            complete = QuestState(6544, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.7305, 0.6251, "Ertog Ragetusk",
                    "Travel to Ertog Ragetusk."),
            },
        },
        {
            id = "turnin-824-je-neu-of-the-earthen-ring",
            kind = "turnin",
            priority = 780,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Turn in Je'neu of the Earthen Ring to Je'neu Sancrea in Zoram'gar Outpost.",
            dependsOn = { "accept-824-je-neu-of-the-earthen-ring" },
            complete = QuestState(824, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.1160, 0.3428, "Je'neu Sancrea",
                    "Travel to Je'neu Sancrea."),
            },
        },
        {
            id = "accept-6462-troll-charm",
            kind = "accept",
            priority = 790,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Accept Troll Charm from Mitsuwa in Zoram'gar Outpost.",
            complete = QuestState(6462, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.1166, 0.3487, "Mitsuwa",
                    "Travel to Mitsuwa."),
            },
        },
        {
            id = "accept-216-between-a-rock-and-a-thistlefur",
            kind = "accept",
            priority = 800,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Accept Between a Rock and a Thistlefur from Karang Amakkar in Zoram'gar Outpost.",
            complete = QuestState(216, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.1188, 0.3456, "Karang Amakkar",
                    "Travel to Karang Amakkar."),
            },
        },
        {
            id = "accept-6641-vorsha-the-lasher",
            kind = "accept",
            priority = 810,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Accept Vorsha the Lasher from Muglash in Zoram'gar Outpost.",
            complete = QuestState(6641, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.1205, 0.3460, "Muglash",
                    "Travel to Muglash."),
            },
        },
        {
            id = "accept-6621-king-of-the-foulweald",
            kind = "accept",
            priority = 820,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 26 } },
                },
            },
            text = "Accept King of the Foulweald from Karang Amakkar.",
            complete = QuestState(6621, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.118, 0.344, "Karang Amakkar",
                    "Travel to Karang Amakkar."),
            },
        },
        {
            id = "accept-6922-baron-aquanis",
            kind = "accept",
            priority = 830,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 30 } },
                },
            },
            text = "Accept Baron Aquanis from Je'neu Sancrea.",
            complete = QuestState(6922, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.116, 0.342, "Je'neu Sancrea",
                    "Travel to Je'neu Sancrea."),
            },
        },
        {
            id = "turnin-78920-baron-aquanis",
            kind = "turnin",
            priority = 840,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 25 } },
                    { quest = { id = 78920, state = "activeOrCompleted" } },
                },
            },
            text = "If Baron Aquanis is in your log, turn it in to Je'neu Sancrea.",
            complete = QuestState(78920, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.116, 0.342, "Je'neu Sancrea",
                    "Travel to Je'neu Sancrea."),
            },
        },
        {
            id = "objective-909-baron-aquanis-1",
            kind = "objective",
            priority = 850,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 30 } },
                },
            },
            useClientPin = true,
            text = "Baron Aquanis: Strange Water Globe. This is an elite. Bring a group. No saved spot for this, so the guide follows the pin in your quest log.",
            complete = QuestObjective(909, 1, "Strange Water Globe"),
            route = {},
        },
        {
            id = "turnin-909-baron-aquanis",
            kind = "turnin",
            priority = 860,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 30 } },
                },
            },
            useClientPin = true,
            text = "Turn in Baron Aquanis. No saved spot for this, so the guide follows the pin in your quest log.",
            dependsOn = { "objective-909-baron-aquanis-1" },
            complete = QuestState(909, "completed"),
            route = {},
        },
        {
            id = "objective-6922-baron-aquanis-1",
            kind = "objective",
            priority = 870,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 30 } },
                },
            },
            text = "Baron Aquanis: Strange Water Globe.",
            dependsOn = { "accept-6922-baron-aquanis" },
            complete = QuestObjective(6922, 1, "Strange Water Globe"),
            route = {
                Point(MAP.ASHENVALE, 0.116, 0.342, "Je'neu Sancrea",
                    "Travel to Je'neu Sancrea."),
            },
        },
        {
            id = "turnin-6922-baron-aquanis",
            kind = "turnin",
            priority = 880,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 30 } },
                },
            },
            text = "Turn in Baron Aquanis to Je'neu Sancrea.",
            dependsOn = { "objective-6922-baron-aquanis-1" },
            complete = QuestState(6922, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.116, 0.342, "Je'neu Sancrea",
                    "Travel to Je'neu Sancrea."),
            },
        },
        {
            id = "objective-6621-king-of-the-foulweald-1",
            kind = "objective",
            priority = 890,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 26 } },
                },
            },
            text = "King of the Foulweald: Murgut's Totem.",
            dependsOn = { "accept-6621-king-of-the-foulweald" },
            complete = QuestObjective(6621, 1, "Murgut's Totem"),
            route = {
                Point(MAP.ASHENVALE, 0.118, 0.344, "Karang Amakkar",
                    "Travel to Karang Amakkar."),
            },
        },
        {
            id = "turnin-6621-king-of-the-foulweald",
            kind = "turnin",
            priority = 900,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 26 } },
                },
            },
            text = "Turn in King of the Foulweald to Karang Amakkar.",
            dependsOn = { "objective-6621-king-of-the-foulweald-1" },
            complete = QuestState(6621, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.118, 0.344, "Karang Amakkar",
                    "Travel to Karang Amakkar."),
            },
        },
        {
            id = "objective-6641-vorsha-the-lasher",
            kind = "objective",
            priority = 910,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Follow Muglash and defeat Vorsha the Lasher on the island in The Zoram Strand.",
            dependsOn = { "accept-6641-vorsha-the-lasher" },
            complete = QuestState(6641, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.0959, 0.2771, "Muglash",
                    "Travel to Muglash."),
            },
        },
        {
            id = "objective-216-between-a-rock-and-a-thistlefur",
            kind = "objective",
            priority = 920,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Kill 12 Thistlefur Avenger and 12 Thistlefur Shaman west of Astranaar in Thistlefur Village.",
            dependsOn = { "accept-216-between-a-rock-and-a-thistlefur" },
            complete = QuestState(216, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.3637, 0.3277, "Thistlefur Avenger",
                    "Travel to Thistlefur Avenger."),
            },
        },
        {
            id = "objective-6462-troll-charm",
            kind = "objective",
            priority = 930,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Gather 8 Troll Charm in the cave at the back of the Thistlefur camp.",
            dependsOn = { "accept-6462-troll-charm" },
            complete = QuestState(6462, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.3887, 0.3064, "Continue toward Troll Charm",
                    "Continue toward Troll Charm."),
                Point(MAP.ASHENVALE, 0.3800, 0.3000, "Troll Charm",
                    "Travel to Troll Charm."),
            },
        },
        {
            id = "accept-6482-freedom-to-ruul",
            kind = "accept",
            priority = 940,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Accept Freedom to Ruul from Ruul Snowhoof in Ashenvale.",
            complete = QuestState(6482, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.4155, 0.3462, "Ruul Snowhoof",
                    "Travel to Ruul Snowhoof."),
            },
        },
        {
            id = "objective-6482-freedom-to-ruul",
            kind = "objective",
            priority = 950,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Escort Ruul Snowhoof, skip if it's to hard.",
            dependsOn = { "accept-6482-freedom-to-ruul" },
            complete = QuestState(6482, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.4150, 0.3460, "Ruul Snowhoof",
                    "Travel to Ruul Snowhoof."),
            },
        },
        {
            id = "turnin-216-between-a-rock-and-a-thistlefur",
            kind = "turnin",
            priority = 960,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Turn in Between a Rock and a Thistlefur to Karang Amakkar in Zoram'gar Outpost.",
            dependsOn = { "objective-216-between-a-rock-and-a-thistlefur" },
            complete = QuestState(216, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.1188, 0.3456, "Karang Amakkar",
                    "Travel to Karang Amakkar."),
            },
        },
        {
            id = "turnin-6462-troll-charm",
            kind = "turnin",
            priority = 970,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Turn in Troll Charm to Mitsuwa in Zoram'gar Outpost.",
            dependsOn = { "objective-6462-troll-charm" },
            complete = QuestState(6462, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.1166, 0.3487, "Mitsuwa",
                    "Travel to Mitsuwa."),
            },
        },
        {
            id = "turnin-6641-vorsha-the-lasher",
            kind = "turnin",
            priority = 980,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Turn in Vorsha the Lasher to Warsong Runner in Zoram'gar Outpost.",
            dependsOn = { "objective-6641-vorsha-the-lasher" },
            complete = QuestState(6641, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.1219, 0.3421, "Warsong Runner",
                    "Travel to Warsong Runner."),
            },
        },
        {
            id = "accept-6545-warsong-runner-update",
            kind = "accept",
            priority = 990,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 19 } },
                },
            },
            text = "Accept Warsong Runner Update from Warsong Runner.",
            complete = QuestState(6545, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.122, 0.342, "Warsong Runner",
                    "Travel to Warsong Runner."),
            },
        },
        {
            id = "objective-6545-warsong-runner-update-1",
            kind = "objective",
            priority = 1000,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 19 } },
                },
            },
            text = "Warsong Runner Update: Warsong Report.",
            dependsOn = { "accept-6545-warsong-runner-update" },
            complete = QuestObjective(6545, 1, "Warsong Report"),
            route = {
                Point(MAP.ASHENVALE, 0.736, 0.600, "Mastok Wrilehiss",
                    "Travel to Mastok Wrilehiss."),
            },
        },
        {
            id = "turnin-6545-warsong-runner-update",
            kind = "turnin",
            priority = 1010,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 19 } },
                },
            },
            text = "Turn in Warsong Runner Update to Warsong Runner.",
            dependsOn = { "objective-6545-warsong-runner-update-1" },
            complete = QuestState(6545, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.122, 0.342, "Warsong Runner",
                    "Travel to Warsong Runner."),
            },
        },
        {
            id = "turnin-6482-freedom-to-ruul",
            kind = "turnin",
            priority = 1020,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Turn in Freedom to Ruul to Yama Snowhoof in Splintertree Post.",
            dependsOn = { "objective-6482-freedom-to-ruul" },
            complete = QuestState(6482, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.7408, 0.6088, "Yama Snowhoof",
                    "Travel to Yama Snowhoof."),
            },
        },
        {
            id = "objective-1088-ordanus",
            kind = "objective",
            priority = 1030,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Fight to the top of the tower and kill Keeper Ordanus, then loot Ordanus' Head and jump out of there This quest is dificult to solo and safe to skip.",
            complete = QuestState(1088, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.6200, 0.5100, "Keeper Ordanus",
                    "Travel to Keeper Ordanus."),
            },
        },
        {
            id = "objective-6441-satyr-horns",
            kind = "objective",
            priority = 1040,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Kill Bleakheart Satyr, Felmusk Felsworn, Felmusk Satyr and Felmusk Rogue and collect 16 Satyr Horns in Night Run.",
            dependsOn = { "accept-6441-satyr-horns" },
            complete = QuestState(6441, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.8000, 0.5200, "Bleakheart Satyr",
                    "Travel to Bleakheart Satyr."),
            },
        },
        {
            id = "turnin-6441-satyr-horns",
            kind = "turnin",
            priority = 1050,
            conditions = {
                all = {
                    { faction = "Horde" },
                },
            },
            text = "Turn in Satyr Horns to Pixel in Splintertree Post.",
            dependsOn = { "objective-6441-satyr-horns" },
            complete = QuestState(6441, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.7310, 0.6148, "Pixel",
                    "Travel to Pixel."),
            },
        },
        {
            id = "accept-321-lightforge-iron",
            kind = "accept",
            priority = 1060,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { quest = { id = 270, state = "completed" } },
                },
            },
            text = "Accept Lightforge Iron from Glorin Steelbrow in Deepwater Tavern.",
            complete = QuestState(321, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.1060, 0.6055, "Glorin Steelbrow",
                    "Travel to Glorin Steelbrow."),
            },
        },
        {
            id = "turnin-321-lightforge-iron",
            kind = "turnin",
            priority = 1070,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { quest = { id = 270, state = "completed" } },
                },
            },
            text = "Turn in Lightforge Iron in Menethil Bay.",
            dependsOn = { "accept-321-lightforge-iron" },
            complete = QuestState(321, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.1213, 0.6418, "Menethil Bay",
                    "Travel to Menethil Bay."),
            },
        },
        {
            id = "accept-324-the-lost-ingots",
            kind = "accept",
            priority = 1080,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { quest = { id = 270, state = "completed" } },
                },
            },
            text = "Accept The Lost Ingots in Menethil Bay.",
            complete = QuestState(324, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.1213, 0.6418, "Menethil Bay",
                    "Travel to Menethil Bay."),
            },
        },
        {
            id = "objective-324-the-lost-ingots",
            kind = "objective",
            priority = 1090,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { quest = { id = 270, state = "completed" } },
                },
            },
            text = "Kill Bluegill Raider and collect 5 Lightforge Ingot in Baradin Bay.",
            dependsOn = { "accept-324-the-lost-ingots" },
            complete = QuestState(324, "complete"),
            route = {
                Point(MAP.WETLANDS, 0.0964, 0.6660, "Bluegill Raider",
                    "Travel to Bluegill Raider."),
            },
        },
        {
            id = "turnin-324-the-lost-ingots",
            kind = "turnin",
            priority = 1100,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { quest = { id = 270, state = "completed" } },
                },
            },
            text = "Turn in The Lost Ingots to Glorin Steelbrow in Deepwater Tavern.",
            dependsOn = { "objective-324-the-lost-ingots" },
            complete = QuestState(324, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.1059, 0.6059, "Glorin Steelbrow",
                    "Travel to Glorin Steelbrow."),
            },
        },
        {
            id = "accept-322-blessed-arm",
            kind = "accept",
            priority = 1110,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { quest = { id = 270, state = "completed" } },
                },
            },
            text = "Accept Blessed Arm from Glorin Steelbrow in Deepwater Tavern.",
            complete = QuestState(322, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.1059, 0.6059, "Glorin Steelbrow",
                    "Travel to Glorin Steelbrow."),
            },
        },
        {
            id = "accept-4581-kayneth-stillwind",
            kind = "accept",
            priority = 1120,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Kayneth Stillwind from Shindrell Swiftfire in Astranaar.",
            complete = QuestState(4581, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.3466, 0.4885, "Shindrell Swiftfire",
                    "Travel to Shindrell Swiftfire."),
            },
        },
        {
            id = "accept-1035-fallen-sky-lake",
            kind = "accept",
            priority = 1130,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { quest = { id = 1034, state = "completed" } },
                },
            },
            text = "Accept Fallen Sky Lake from Pelturas Whitemoon in Astranaar.",
            complete = QuestState(1035, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.3736, 0.5178, "Pelturas Whitemoon",
                    "Travel to Pelturas Whitemoon."),
            },
        },
        {
            id = "accept-1022-the-howling-vale",
            kind = "accept",
            priority = 1140,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept The Howling Vale from Sentinel Melyria Frostshadow in The Shrine of Aessina.",
            complete = QuestState(1022, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.2220, 0.5280, "Sentinel Melyria Frostshadow",
                    "Travel to Sentinel Melyria Frostshadow."),
            },
        },
        {
            id = "accept-1021-vile-satyr-dryads-in-danger",
            kind = "accept",
            priority = 1150,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Vile Satyr! Dryads in Danger! from Illiyana in The Shrine of Aessina.",
            complete = QuestState(1021, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.2160, 0.5320, "Illiyana",
                    "Travel to Illiyana."),
            },
        },
        {
            id = "accept-1032-satyr-slaying",
            kind = "accept",
            priority = 1160,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 32 } },
                },
            },
            text = "Accept Satyr Slaying! from Illiyana.",
            complete = QuestState(1032, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.218, 0.532, "Illiyana",
                    "Travel to Illiyana."),
            },
        },
        {
            id = "objective-1032-satyr-slaying-1",
            kind = "objective",
            priority = 1170,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 32 } },
                },
            },
            text = "Satyr Slaying!: Satyr Horns.",
            dependsOn = { "accept-1032-satyr-slaying" },
            complete = QuestObjective(1032, 1, "Satyr Horns"),
            route = {
                Point(MAP.ASHENVALE, 0.662, 0.544, "Felmusk Satyr",
                    "Travel to Felmusk Satyr."),
            },
        },
        {
            id = "turnin-1032-satyr-slaying",
            kind = "turnin",
            priority = 1180,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 32 } },
                },
            },
            text = "Turn in Satyr Slaying! to Illiyana.",
            dependsOn = { "objective-1032-satyr-slaying-1" },
            complete = QuestState(1032, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.218, 0.532, "Illiyana",
                    "Travel to Illiyana."),
            },
        },
        {
            id = "objective-1022-the-howling-vale",
            kind = "objective",
            priority = 1190,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Click on Tome of Mel'Thandris in The Howling Vale.",
            dependsOn = { "accept-1022-the-howling-vale" },
            complete = QuestState(1022, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.5048, 0.3916, "The Howling Vale",
                    "Travel to The Howling Vale."),
            },
        },
        {
            id = "accept-1027-raene-s-cleansing",
            kind = "accept",
            priority = 1200,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Raene's Cleansing from Shael'dryn in Moonwell.",
            complete = QuestState(1027, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.5351, 0.4622, "Shael'dryn",
                    "Travel to Shael'dryn."),
            },
        },
        {
            id = "turnin-1021-vile-satyr-dryads-in-danger",
            kind = "turnin",
            priority = 1210,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Vile Satyr! Dryads in Danger! to Anilia in Xavian.",
            dependsOn = { "accept-1021-vile-satyr-dryads-in-danger" },
            complete = QuestState(1021, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.7832, 0.4483, "Anilia",
                    "Travel to Anilia."),
            },
        },
        {
            id = "accept-1031-the-branch-of-cenarius",
            kind = "accept",
            priority = 1220,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept The Branch of Cenarius from Anilia in Xavian.",
            complete = QuestState(1031, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.7832, 0.4483, "Anilia",
                    "Travel to Anilia."),
            },
        },
        {
            id = "objective-1031-the-branch-of-cenarius",
            kind = "objective",
            priority = 1230,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill Geltharis and collect Branch of Cenarius in Xavian.",
            dependsOn = { "accept-1031-the-branch-of-cenarius" },
            complete = QuestState(1031, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.7804, 0.4245, "Geltharis",
                    "Travel to Geltharis."),
            },
        },
        {
            id = "turnin-4581-kayneth-stillwind",
            kind = "turnin",
            priority = 1240,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Kayneth Stillwind to Kayneth Stillwind in Forest Song.",
            dependsOn = { "accept-4581-kayneth-stillwind" },
            complete = QuestState(4581, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.8520, 0.4477, "Kayneth Stillwind",
                    "Travel to Kayneth Stillwind."),
            },
        },
        {
            id = "accept-1011-forsaken-diseases",
            kind = "accept",
            priority = 1250,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Forsaken Diseases from Kayneth Stillwind in Forest Song.",
            complete = QuestState(1011, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.8520, 0.4477, "Kayneth Stillwind",
                    "Travel to Kayneth Stillwind."),
            },
        },
        {
            id = "objective-1011-forsaken-diseases",
            kind = "objective",
            priority = 1260,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Collect a Bottle of Disease in The Dor'Danil Barrow Den.",
            dependsOn = { "accept-1011-forsaken-diseases" },
            complete = QuestState(1011, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.8616, 0.5042, "Continue toward Forsaken Diseases",
                    "Continue toward Forsaken Diseases."),
                Point(MAP.ASHENVALE, 0.7800, 0.5619, "Continue toward Forsaken Diseases",
                    "Continue toward Forsaken Diseases."),
                Point(MAP.ASHENVALE, 0.7529, 0.7219, "The Dor'Danil Barrow Den",
                    "Travel to The Dor'Danil Barrow Den."),
            },
        },
        {
            id = "objective-1027-raene-s-cleansing",
            kind = "objective",
            priority = 1270,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill Rotting Slime until you collect Iron Pommel in The Dor'Danil Barrow Den Tip: It can also be found inside the chest they drop.",
            dependsOn = { "accept-1027-raene-s-cleansing" },
            complete = QuestState(1027, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.7300, 0.7328, "Rotting Slime",
                    "Travel to Rotting Slime."),
            },
        },
        {
            id = "objective-1035-fallen-sky-lake",
            kind = "objective",
            priority = 1280,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { quest = { id = 1034, state = "completed" } },
                },
            },
            text = "Kill a Shadethicket Oracle and collect Fallen Moonstone Fallen Sky Lake.",
            dependsOn = { "accept-1035-fallen-sky-lake" },
            complete = QuestState(1035, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.6676, 0.8203, "Shadethicket Oracle",
                    "Travel to Shadethicket Oracle."),
            },
        },
        {
            id = "turnin-1011-forsaken-diseases",
            kind = "turnin",
            priority = 1290,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Forsaken Diseases to Kayneth Stillwind in Forest Song.",
            dependsOn = { "objective-1011-forsaken-diseases" },
            complete = QuestState(1011, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.8523, 0.4470, "Kayneth Stillwind",
                    "Travel to Kayneth Stillwind."),
            },
        },
        {
            id = "accept-1012-insane-druids",
            kind = "accept",
            priority = 1300,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Insane Druids from Kayneth Stillwind in Forest Song.",
            complete = QuestState(1012, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.8523, 0.4470, "Kayneth Stillwind",
                    "Travel to Kayneth Stillwind."),
            },
        },
        {
            id = "objective-1012-1-taneel-darkwood",
            kind = "objective",
            priority = 1310,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill Taneel Darkwood for the quest Insane Druids inside the cave in The Dor'Danil Barrow Den.",
            dependsOn = { "accept-1012-insane-druids" },
            complete = QuestObjective(1012, 1),
            route = {
                Point(MAP.ASHENVALE, 0.7596, 0.7535, "Continue toward Taneel Darkwood",
                    "Continue toward Taneel Darkwood."),
                Point(MAP.ASHENVALE, 0.7725, 0.7474, "Taneel Darkwood",
                    "Travel to Taneel Darkwood."),
            },
        },
        {
            id = "objective-1012-2-uthil-mooncall",
            kind = "objective",
            priority = 1320,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill Uthil Mooncall for the quest Insane Druids in in The Dor'Danil Barrow Den.",
            dependsOn = { "accept-1012-insane-druids" },
            complete = QuestObjective(1012, 2),
            route = {
                Point(MAP.ASHENVALE, 0.7808, 0.7287, "Uthil Mooncall",
                    "Travel to Uthil Mooncall."),
            },
        },
        {
            id = "objective-1012-3-mavoris-cloudsbreak",
            kind = "objective",
            priority = 1330,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill Mavoris Cloudsbreak for the quest Insane Druids in in The Dor'Danil Barrow Den.",
            dependsOn = { "accept-1012-insane-druids" },
            complete = QuestObjective(1012, 3),
            route = {
                Point(MAP.ASHENVALE, 0.7505, 0.7418, "Mavoris Cloudsbreak",
                    "Travel to Mavoris Cloudsbreak."),
            },
        },
        {
            id = "turnin-1012-insane-druids",
            kind = "turnin",
            priority = 1340,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Insane Druids to Kayneth Stillwind in Forest Song.",
            dependsOn = { "objective-1012-1-taneel-darkwood", "objective-1012-2-uthil-mooncall", "objective-1012-3-mavoris-cloudsbreak" },
            complete = QuestState(1012, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.8522, 0.4469, "Kayneth Stillwind",
                    "Travel to Kayneth Stillwind."),
            },
        },
        {
            id = "turnin-1035-fallen-sky-lake",
            kind = "turnin",
            priority = 1350,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { quest = { id = 1034, state = "completed" } },
                },
            },
            text = "Turn in Fallen Sky Lake to Pelturas Whitemoon in Astranaar.",
            dependsOn = { "objective-1035-fallen-sky-lake" },
            complete = QuestState(1035, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.3735, 0.5179, "Pelturas Whitemoon",
                    "Travel to Pelturas Whitemoon."),
            },
        },
        {
            id = "turnin-1027-raene-s-cleansing",
            kind = "turnin",
            priority = 1360,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Raene's Cleansing to Shael'dryn in Moonwell.",
            dependsOn = { "objective-1027-raene-s-cleansing" },
            complete = QuestState(1027, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.5356, 0.4621, "Shael'dryn",
                    "Travel to Shael'dryn."),
            },
        },
        {
            id = "accept-1028-raene-s-cleansing",
            kind = "accept",
            priority = 1370,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Raene's Cleansing from Shael'dryn in Moonwell.",
            complete = QuestState(1028, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.5356, 0.4621, "Shael'dryn",
                    "Travel to Shael'dryn."),
            },
        },
        {
            id = "turnin-1028-raene-s-cleansing",
            kind = "turnin",
            priority = 1380,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Raene's Cleansing.",
            dependsOn = { "accept-1028-raene-s-cleansing" },
            complete = QuestState(1028, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.5297, 0.5456, "Continue toward Raene's Cleansing",
                    "Continue toward Raene's Cleansing."),
                Point(MAP.ASHENVALE, 0.5563, 0.5129, "Continue toward Raene's Cleansing",
                    "Continue toward Raene's Cleansing."),
                Point(MAP.ASHENVALE, 0.5743, 0.5144, "Continue toward Raene's Cleansing",
                    "Continue toward Raene's Cleansing."),
                Point(MAP.ASHENVALE, 0.5635, 0.4928, "Raene's Cleansing",
                    "Travel to Raene's Cleansing."),
            },
        },
        {
            id = "accept-1055-raene-s-cleansing",
            kind = "accept",
            priority = 1390,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Raene's Cleansing.",
            complete = QuestState(1055, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.5635, 0.4928, "Raene's Cleansing",
                    "Travel to Raene's Cleansing."),
            },
        },
        {
            id = "turnin-1055-raene-s-cleansing",
            kind = "turnin",
            priority = 1400,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Raene's Cleansing to Shael'dryn in Moonwell.",
            dependsOn = { "accept-1055-raene-s-cleansing" },
            complete = QuestState(1055, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.5355, 0.4620, "Shael'dryn",
                    "Travel to Shael'dryn."),
            },
        },
        {
            id = "accept-1029-raene-s-cleansing",
            kind = "accept",
            priority = 1410,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Raene's Cleansing from Shael'dryn in Moonwell.",
            complete = QuestState(1029, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.5355, 0.4620, "Shael'dryn",
                    "Travel to Shael'dryn."),
            },
        },
        {
            id = "turnin-1029-raene-s-cleansing",
            kind = "turnin",
            priority = 1420,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Raene's Cleansing to Raene Wolfrunner in Astranaar.",
            dependsOn = { "accept-1029-raene-s-cleansing" },
            complete = QuestState(1029, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.3662, 0.4958, "Raene Wolfrunner",
                    "Travel to Raene Wolfrunner."),
            },
        },
        {
            id = "accept-1030-raene-s-cleansing",
            kind = "accept",
            priority = 1430,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Raene's Cleansing from Raene Wolfrunner in Astranaar.",
            complete = QuestState(1030, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.3662, 0.4958, "Raene Wolfrunner",
                    "Travel to Raene Wolfrunner."),
            },
        },
        {
            id = "objective-1045-dartol-s-rod-of-transformation",
            kind = "objective",
            priority = 1440,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Use Dartol's Rod of Transformation to gain the Furbolg Form buff.",
            dependsOn = { "accept-1045-raene-s-cleansing" },
            complete = QuestState(1045, "complete"),
        },
        {
            id = "accept-1045-raene-s-cleansing",
            kind = "accept",
            priority = 1450,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Raene's Cleansing from Krolg in Mystral Lake.",
            complete = QuestState(1045, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.5264, 0.7430, "Continue toward Raene's Cleansing",
                    "Continue toward Raene's Cleansing."),
                Point(MAP.ASHENVALE, 0.5084, 0.7506, "Krolg",
                    "Travel to Krolg."),
            },
        },
        {
            id = "objective-1045-raene-s-cleansing",
            kind = "objective",
            priority = 1460,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill Ran Bloodtooth and 4 Bloodtooth Guard in Bloodtooth Camp.",
            dependsOn = { "accept-1045-raene-s-cleansing" },
            complete = QuestState(1045, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.5445, 0.7459, "Continue toward Raene's Cleansing",
                    "Continue toward Raene's Cleansing."),
                Point(MAP.ASHENVALE, 0.5470, 0.7950, "Ran Bloodtooth",
                    "Travel to Ran Bloodtooth."),
            },
        },
        {
            id = "objective-1046-dartol-s-rod-of-transformation",
            kind = "objective",
            priority = 1470,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Use Dartol's Rod of Transformation to gain the Furbolg Form buff.",
            dependsOn = { "accept-1046-raene-s-cleansing" },
            complete = QuestState(1046, "complete"),
        },
        {
            id = "turnin-1045-raene-s-cleansing",
            kind = "turnin",
            priority = 1480,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Raene's Cleansing to Krolg in Mystral Lake.",
            dependsOn = { "objective-1045-dartol-s-rod-of-transformation", "objective-1045-raene-s-cleansing" },
            complete = QuestState(1045, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.5557, 0.7580, "Continue toward Raene's Cleansing",
                    "Continue toward Raene's Cleansing."),
                Point(MAP.ASHENVALE, 0.5469, 0.7477, "Continue toward Raene's Cleansing",
                    "Continue toward Raene's Cleansing."),
                Point(MAP.ASHENVALE, 0.5088, 0.7504, "Krolg",
                    "Travel to Krolg."),
            },
        },
        {
            id = "accept-1046-raene-s-cleansing",
            kind = "accept",
            priority = 1490,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Raene's Cleansing from Krolg in Mystral Lake.",
            complete = QuestState(1046, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.5088, 0.7504, "Krolg",
                    "Travel to Krolg."),
            },
        },
        {
            id = "turnin-1046-raene-s-cleansing",
            kind = "turnin",
            priority = 1500,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Raene's Cleansing to Raene Wolfrunner in Astranaar.",
            dependsOn = { "objective-1046-dartol-s-rod-of-transformation" },
            complete = QuestState(1046, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.3661, 0.4958, "Raene Wolfrunner",
                    "Travel to Raene Wolfrunner."),
            },
        },
        {
            id = "turnin-1022-the-howling-vale",
            kind = "turnin",
            priority = 1510,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in The Howling Vale to Sentinel Melyria Frostshadow in The Shrine of Aessina.",
            dependsOn = { "objective-1022-the-howling-vale" },
            complete = QuestState(1022, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.2226, 0.5298, "Sentinel Melyria Frostshadow",
                    "Travel to Sentinel Melyria Frostshadow."),
            },
        },
        {
            id = "accept-1037-velinde-starsong",
            kind = "accept",
            priority = 1520,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Velinde Starsong from Sentinel Melyria Frostshadow in The Shrine of Aessina.",
            complete = QuestState(1037, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.2220, 0.5280, "Sentinel Melyria Frostshadow",
                    "Travel to Sentinel Melyria Frostshadow."),
            },
        },
        {
            id = "turnin-1031-the-branch-of-cenarius",
            kind = "turnin",
            priority = 1530,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in The Branch of Cenarius to Illiyana in The Shrine of Aessina.",
            dependsOn = { "objective-1031-the-branch-of-cenarius" },
            complete = QuestState(1031, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.2160, 0.5320, "Illiyana",
                    "Travel to Illiyana."),
            },
        },
        {
            id = "turnin-1037-velinde-starsong",
            kind = "turnin",
            priority = 1540,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Velinde Starsong to Thyn'tel Bladeweaver in Darnassus.",
            dependsOn = { "accept-1037-velinde-starsong" },
            complete = QuestState(1037, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.6171, 0.3912, "Thyn'tel Bladeweaver",
                    "Travel to Thyn'tel Bladeweaver."),
            },
        },
        {
            id = "accept-1038-velinde-s-effects",
            kind = "accept",
            priority = 1550,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Velinde's Effects from Thyn'tel Bladeweaver in Darnassus.",
            complete = QuestState(1038, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.6171, 0.3912, "Thyn'tel Bladeweaver",
                    "Travel to Thyn'tel Bladeweaver."),
            },
        },
        {
            id = "accept-2925-klockmort-s-essentials",
            kind = "accept",
            priority = 1560,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Klockmort's Essentials from Mathiel in Darnassus.",
            complete = QuestState(2925, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.5907, 0.4511, "Mathiel",
                    "Travel to Mathiel."),
            },
        },
        {
            id = "objective-1038-1-velinde-s-journal",
            kind = "objective",
            priority = 1570,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Collect Velinde's Journal from Velinde's Locker in Tradesmen's Terrace.",
            dependsOn = { "accept-1038-velinde-s-effects" },
            complete = QuestObjective(1038, 1),
            route = {
                Point(MAP.DARNASSUS, 0.5601, 0.7941, "Continue toward Velinde's Journal",
                    "Continue toward Velinde's Journal."),
                Point(MAP.DARNASSUS, 0.5730, 0.7660, "Continue toward Velinde's Journal",
                    "Continue toward Velinde's Journal."),
                Point(MAP.DARNASSUS, 0.6237, 0.8325, "Tradesmen's Terrace",
                    "Travel to Tradesmen's Terrace."),
            },
        },
        {
            id = "turnin-1038-velinde-s-effects",
            kind = "turnin",
            priority = 1580,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Velinde's Effects to Thyn'tel Bladeweaver in Darnassus.",
            dependsOn = { "objective-1038-1-velinde-s-journal" },
            complete = QuestState(1038, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.6183, 0.3911, "Thyn'tel Bladeweaver",
                    "Travel to Thyn'tel Bladeweaver."),
            },
        },
        {
            id = "accept-1039-the-barrens-port",
            kind = "accept",
            priority = 1590,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept The Barrens Port from Thyn'tel Bladeweaver in Darnassus.",
            complete = QuestState(1039, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.6183, 0.3911, "Thyn'tel Bladeweaver",
                    "Travel to Thyn'tel Bladeweaver."),
            },
        },
        {
            id = "accept-6442-naga-at-the-zoram-strand",
            kind = "accept",
            priority = 1600,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 19 } },
                },
            },
            text = "Accept Naga at the Zoram Strand from Marukai.",
            complete = QuestState(6442, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.116, 0.348, "Marukai",
                    "Travel to Marukai."),
            },
        },
        {
            id = "objective-6442-naga-at-the-zoram-strand-1",
            kind = "objective",
            priority = 1610,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 19 } },
                },
            },
            text = "Naga at the Zoram Strand: Wrathtail Head.",
            dependsOn = { "accept-6442-naga-at-the-zoram-strand" },
            complete = QuestObjective(6442, 1, "Wrathtail Head"),
            route = {
                Point(MAP.ASHENVALE, 0.096, 0.276, "Wrathtail Myrmidon",
                    "Travel to Wrathtail Myrmidon."),
            },
        },
        {
            id = "turnin-6442-naga-at-the-zoram-strand",
            kind = "turnin",
            priority = 1620,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 19 } },
                },
            },
            text = "Turn in Naga at the Zoram Strand to Marukai.",
            dependsOn = { "objective-6442-naga-at-the-zoram-strand-1" },
            complete = QuestState(6442, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.116, 0.348, "Marukai",
                    "Travel to Marukai."),
            },
        },
        {
            id = "turnin-990-trek-to-ashenvale",
            kind = "turnin",
            priority = 1630,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 19 } },
                },
            },
            text = "Accept Trek to Ashenvale from Sentinel Selarin, then turn it in to Raene Wolfrunner.",
            complete = QuestState(990, "completed"),
            route = {
                Point(MAP.ZONE_1439, 0.366, 0.496, "Raene Wolfrunner",
                    "Travel to Raene Wolfrunner in Darkshore."),
            },
        },
        {
            id = "turnin-1085-on-guard-in-stonetalon",
            kind = "turnin",
            priority = 1640,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 21 } },
                },
            },
            text = "Accept On Guard in Stonetalon from Kaela Shadowspear, then turn it in to Gaxim Rustfizzle.",
            complete = QuestState(1085, "completed"),
            route = {
                Point(MAP.ZONE_1442, 0.594, 0.672, "Gaxim Rustfizzle",
                    "Travel to Gaxim Rustfizzle in Stonetalon Mountains."),
            },
        },
        {
            id = "accept-6546-warsong-outrider-update",
            kind = "accept",
            priority = 1650,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 25 } },
                },
            },
            text = "Accept Warsong Outrider Update from Warsong Outrider.",
            complete = QuestState(6546, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.790, 0.554, "Warsong Outrider",
                    "Travel to Warsong Outrider."),
            },
        },
        {
            id = "objective-6546-warsong-outrider-update-1",
            kind = "objective",
            priority = 1660,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 25 } },
                },
            },
            text = "Warsong Outrider Update: Warsong Report.",
            dependsOn = { "accept-6546-warsong-outrider-update" },
            complete = QuestObjective(6546, 1, "Warsong Report"),
            route = {
                Point(MAP.ASHENVALE, 0.736, 0.600, "Mastok Wrilehiss",
                    "Travel to Mastok Wrilehiss."),
            },
        },
        {
            id = "turnin-6546-warsong-outrider-update",
            kind = "turnin",
            priority = 1670,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 25 } },
                },
            },
            text = "Turn in Warsong Outrider Update to Warsong Outrider.",
            dependsOn = { "objective-6546-warsong-outrider-update-1" },
            complete = QuestState(6546, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.790, 0.554, "Warsong Outrider",
                    "Travel to Warsong Outrider."),
            },
        },
        {
            id = "accept-6547-warsong-scout-update",
            kind = "accept",
            priority = 1680,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 21 } },
                },
            },
            text = "Accept Warsong Scout Update from Warsong Scout.",
            complete = QuestState(6547, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.710, 0.682, "Warsong Scout",
                    "Travel to Warsong Scout."),
            },
        },
        {
            id = "objective-6547-warsong-scout-update-1",
            kind = "objective",
            priority = 1690,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 21 } },
                },
            },
            text = "Warsong Scout Update: Warsong Report.",
            dependsOn = { "accept-6547-warsong-scout-update" },
            complete = QuestObjective(6547, 1, "Warsong Report"),
            route = {
                Point(MAP.ASHENVALE, 0.736, 0.600, "Mastok Wrilehiss",
                    "Travel to Mastok Wrilehiss."),
            },
        },
        {
            id = "turnin-6547-warsong-scout-update",
            kind = "turnin",
            priority = 1700,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 21 } },
                },
            },
            text = "Turn in Warsong Scout Update to Warsong Scout.",
            dependsOn = { "objective-6547-warsong-scout-update-1" },
            complete = QuestState(6547, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.710, 0.682, "Warsong Scout",
                    "Travel to Warsong Scout."),
            },
        },
        {
            id = "accept-79098-clear-the-forest",
            kind = "accept",
            priority = 1740,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 18 } },
                },
            },
            text = "Accept Clear the Forest! from Kazragore.",
            complete = QuestState(79098, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.392, 0.678, "Kazragore",
                    "Travel to Kazragore."),
            },
        },
        {
            id = "objective-79098-clear-the-forest-1",
            kind = "objective",
            priority = 1750,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 18 } },
                },
            },
            text = "Clear the Forest!: Silverwing Sentinel Charm.",
            dependsOn = { "accept-79098-clear-the-forest" },
            complete = QuestObjective(79098, 1, "Silverwing Sentinel Charm"),
            route = {
                Point(MAP.ASHENVALE, 0.392, 0.678, "Kazragore",
                    "Travel to Kazragore."),
            },
        },
        {
            id = "turnin-79098-clear-the-forest",
            kind = "turnin",
            priority = 1760,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 18 } },
                },
            },
            text = "Turn in Clear the Forest! to Kazragore.",
            dependsOn = { "objective-79098-clear-the-forest-1" },
            complete = QuestState(79098, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.392, 0.678, "Kazragore",
                    "Travel to Kazragore."),
            },
        },
        {
            id = "turnin-976-supplies-to-auberdine",
            kind = "turnin",
            priority = 1770,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 24 } },
                },
            },
            text = "Accept Supplies to Auberdine from Feero Ironhand, then turn it in to Delgren the Purifier.",
            complete = QuestState(976, "completed"),
            route = {
                Point(MAP.ZONE_1439, 0.262, 0.386, "Delgren the Purifier",
                    "Travel to Delgren the Purifier in Darkshore."),
            },
        },
        {
            id = "accept-6571-warsong-supplies",
            kind = "accept",
            priority = 1780,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 27 } },
                },
            },
            text = "Accept Warsong Supplies from Locke Okarr.",
            complete = QuestState(6571, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.714, 0.676, "Locke Okarr",
                    "Travel to Locke Okarr."),
            },
        },
        {
            id = "objective-6571-warsong-supplies-1",
            kind = "objective",
            priority = 1790,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 27 } },
                },
            },
            text = "Warsong Supplies: Warsong Saw Blades.",
            dependsOn = { "accept-6571-warsong-supplies" },
            complete = QuestObjective(6571, 1, "Warsong Saw Blades"),
            route = {
                Point(MAP.ASHENVALE, 0.510, 0.604, "Foulweald Warrior",
                    "Travel to Foulweald Warrior."),
            },
        },
        {
            id = "objective-6571-warsong-supplies-2",
            kind = "objective",
            priority = 1800,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 27 } },
                },
            },
            text = "Warsong Supplies: Warsong Axe Shipment.",
            dependsOn = { "accept-6571-warsong-supplies" },
            complete = QuestObjective(6571, 2, "Warsong Axe Shipment"),
            route = {
                Point(MAP.ASHENVALE, 0.510, 0.604, "Foulweald Warrior",
                    "Travel to Foulweald Warrior."),
            },
        },
        {
            id = "objective-6571-warsong-supplies-3",
            kind = "objective",
            priority = 1810,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 27 } },
                },
            },
            text = "Warsong Supplies: Warsong Oil.",
            dependsOn = { "accept-6571-warsong-supplies" },
            complete = QuestObjective(6571, 3, "Warsong Oil"),
            route = {
                Point(MAP.ASHENVALE, 0.510, 0.604, "Foulweald Warrior",
                    "Travel to Foulweald Warrior."),
            },
        },
        {
            id = "objective-6571-warsong-supplies-4",
            kind = "objective",
            priority = 1820,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 27 } },
                },
            },
            text = "Warsong Supplies: Logging Rope.",
            dependsOn = { "accept-6571-warsong-supplies" },
            complete = QuestObjective(6571, 4, "Logging Rope"),
            route = {
                Point(MAP.ASHENVALE, 0.510, 0.604, "Foulweald Warrior",
                    "Travel to Foulweald Warrior."),
            },
        },
        {
            id = "turnin-6571-warsong-supplies",
            kind = "turnin",
            priority = 1830,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 27 } },
                },
            },
            text = "Turn in Warsong Supplies to Locke Okarr.",
            dependsOn = { "objective-6571-warsong-supplies-4" },
            complete = QuestState(6571, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.714, 0.676, "Locke Okarr",
                    "Travel to Locke Okarr."),
            },
        },
        {
            id = "accept-6504-the-lost-pages",
            kind = "accept",
            priority = 1840,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 30 } },
                },
            },
            text = "Accept The Lost Pages from Gurda Ragescar.",
            complete = QuestState(6504, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.700, 0.710, "Gurda Ragescar",
                    "Travel to Gurda Ragescar."),
            },
        },
        {
            id = "objective-6504-the-lost-pages-1",
            kind = "objective",
            priority = 1850,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 30 } },
                },
            },
            text = "The Lost Pages: Shredder Operating Manual - Chapter 1.",
            dependsOn = { "accept-6504-the-lost-pages" },
            complete = QuestObjective(6504, 1, "Shredder Operating Manual - Chapter 1"),
            route = {
                Point(MAP.ASHENVALE, 0.700, 0.710, "Gurda Ragescar",
                    "Travel to Gurda Ragescar."),
            },
        },
        {
            id = "objective-6504-the-lost-pages-2",
            kind = "objective",
            priority = 1860,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 30 } },
                },
            },
            text = "The Lost Pages: Shredder Operating Manual - Chapter 2.",
            dependsOn = { "accept-6504-the-lost-pages" },
            complete = QuestObjective(6504, 2, "Shredder Operating Manual - Chapter 2"),
            route = {
                Point(MAP.ASHENVALE, 0.700, 0.710, "Gurda Ragescar",
                    "Travel to Gurda Ragescar."),
            },
        },
        {
            id = "objective-6504-the-lost-pages-3",
            kind = "objective",
            priority = 1870,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 30 } },
                },
            },
            text = "The Lost Pages: Shredder Operating Manual - Chapter 3.",
            dependsOn = { "accept-6504-the-lost-pages" },
            complete = QuestObjective(6504, 3, "Shredder Operating Manual - Chapter 3"),
            route = {
                Point(MAP.ASHENVALE, 0.700, 0.710, "Gurda Ragescar",
                    "Travel to Gurda Ragescar."),
            },
        },
        {
            id = "turnin-6504-the-lost-pages",
            kind = "turnin",
            priority = 1880,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 30 } },
                },
            },
            text = "Turn in The Lost Pages to Gurda Ragescar.",
            dependsOn = { "objective-6504-the-lost-pages-3" },
            complete = QuestState(6504, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.700, 0.710, "Gurda Ragescar",
                    "Travel to Gurda Ragescar."),
            },
        },
        {
            id = "objective-908-amongst-the-ruins-1",
            kind = "objective",
            priority = 1890,
            conditions = {
                all = {
                    { level = { min = 27 } },
                },
            },
            useClientPin = true,
            text = "Amongst the Ruins: Fathom Core. This is an elite. Bring a group. No saved spot for this, so the guide follows the pin in your quest log.",
            complete = QuestObjective(908, 1, "Fathom Core"),
            route = {},
        },
        {
            id = "turnin-908-amongst-the-ruins",
            kind = "turnin",
            priority = 1900,
            conditions = {
                all = {
                    { level = { min = 27 } },
                },
            },
            useClientPin = true,
            text = "Turn in Amongst the Ruins. No saved spot for this, so the guide follows the pin in your quest log.",
            dependsOn = { "objective-908-amongst-the-ruins-1" },
            complete = QuestState(908, "completed"),
            route = {},
        },
        {
            id = "turnin-1040-passage-to-booty-bay",
            kind = "turnin",
            priority = 1910,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 30 } },
                },
            },
            text = "Accept Passage to Booty Bay from Wharfmaster Dizzywig, then turn it in to Caravaneer Ruzzgot.",
            complete = QuestState(1040, "completed"),
            route = {
                Point(MAP.ZONE_1413, 0.272, 0.740, "Caravaneer Ruzzgot",
                    "Travel to Caravaneer Ruzzgot in The Barrens."),
            },
        },
        {
            id = "turnin-1041-the-caravan-road",
            kind = "turnin",
            priority = 1920,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 30 } },
                },
            },
            dependsOn = { "turnin-1040-passage-to-booty-bay" },
            text = "Accept The Caravan Road from Caravaneer Ruzzgot, then turn it in to Clerk Daltry.",
            complete = QuestState(1041, "completed"),
            route = {
                Point(MAP.ZONE_1434, 0.726, 0.468, "Clerk Daltry",
                    "Travel to Clerk Daltry in Stranglethorn Vale."),
            },
        },
        {
            id = "turnin-1042-the-carevin-family",
            kind = "turnin",
            priority = 1930,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 30 } },
                },
            },
            dependsOn = { "turnin-1041-the-caravan-road" },
            text = "Accept The Carevin Family from Clerk Daltry, then turn it in to Jonathan Carevin.",
            complete = QuestState(1042, "completed"),
            route = {
                Point(MAP.ZONE_1431, 0.752, 0.488, "Jonathan Carevin",
                    "Travel to Jonathan Carevin in Duskwood."),
            },
        },
        {
            id = "accept-1043-the-scythe-of-elune",
            kind = "accept",
            priority = 1940,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 30 } },
                },
            },
            dependsOn = { "turnin-1042-the-carevin-family" },
            text = "Accept The Scythe of Elune from Jonathan Carevin.",
            complete = QuestState(1043, "activeOrCompleted"),
            route = {
                Point(MAP.ZONE_1431, 0.752, 0.488, "Jonathan Carevin",
                    "Travel to Jonathan Carevin in Duskwood."),
            },
        },
        {
            id = "objective-1043-the-scythe-of-elune-1",
            kind = "objective",
            priority = 1950,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 30 } },
                },
            },
            text = "The Scythe of Elune: Find evidence of the Scythe of Elune.",
            dependsOn = { "accept-1043-the-scythe-of-elune" },
            complete = QuestObjective(1043, 1, "Find evidence of the Scythe of Elune"),
            route = {
                Point(MAP.ZONE_1431, 0.752, 0.488, "Jonathan Carevin",
                    "Travel to Jonathan Carevin in Duskwood."),
            },
        },
        {
            id = "turnin-1043-the-scythe-of-elune",
            kind = "turnin",
            priority = 1960,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 30 } },
                },
            },
            text = "Turn in The Scythe of Elune to Jonathan Carevin.",
            dependsOn = { "objective-1043-the-scythe-of-elune-1" },
            complete = QuestState(1043, "completed"),
            route = {
                Point(MAP.ZONE_1431, 0.752, 0.488, "Jonathan Carevin",
                    "Travel to Jonathan Carevin in Duskwood."),
            },
        },
        {
            id = "turnin-1044-answered-questions",
            kind = "turnin",
            priority = 1970,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 30 } },
                },
            },
            dependsOn = { "turnin-1043-the-scythe-of-elune" },
            text = "Accept Answered Questions from Jonathan Carevin, then turn it in to Thyn'tel Bladeweaver.",
            complete = QuestState(1044, "completed"),
            route = {
                Point(MAP.ZONE_1431, 0.618, 0.394, "Thyn'tel Bladeweaver",
                    "Travel to Thyn'tel Bladeweaver in Duskwood."),
            },
        },
        {
            id = "accept-7863-sentinel-basic-care-package",
            kind = "accept",
            priority = 1980,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 34 } },
                },
            },
            text = "Accept Sentinel Basic Care Package from Illiyana Moonblaze.",
            complete = QuestState(7863, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.614, 0.838, "Illiyana Moonblaze",
                    "Travel to Illiyana Moonblaze."),
            },
        },
        {
            id = "accept-7864-sentinel-standard-care-package",
            kind = "accept",
            priority = 1990,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 44 } },
                },
            },
            text = "Accept Sentinel Standard Care Package from Illiyana Moonblaze.",
            complete = QuestState(7864, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.614, 0.838, "Illiyana Moonblaze",
                    "Travel to Illiyana Moonblaze."),
            },
        },
        {
            id = "accept-79090-repelling-invaders",
            kind = "accept",
            priority = 1991,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 60 } },
                },
            },
            text = "Accept Repelling Invaders from Felore Moonray.",
            complete = QuestState(79090, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.600, 0.726, "Felore Moonray",
                    "Travel to Felore Moonray."),
            },
        },
        {
            id = "objective-79090-repelling-invaders-1",
            kind = "objective",
            priority = 1992,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 60 } },
                },
            },
            text = "Repelling Invaders: Warsong Outrider Mark.",
            dependsOn = { "accept-79090-repelling-invaders" },
            complete = QuestObjective(79090, 1, "Warsong Outrider Mark"),
            route = {
                Point(MAP.ASHENVALE, 0.600, 0.726, "Felore Moonray",
                    "Travel to Felore Moonray."),
            },
        },
        {
            id = "turnin-79090-repelling-invaders",
            kind = "turnin",
            priority = 1993,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 60 } },
                },
            },
            text = "Turn in Repelling Invaders to Felore Moonray.",
            dependsOn = { "objective-79090-repelling-invaders-1" },
            complete = QuestState(79090, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.600, 0.726, "Felore Moonray",
                    "Travel to Felore Moonray."),
            },
        },
        {
            id = "accept-7865-sentinel-advanced-care-package",
            kind = "accept",
            priority = 2000,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 60 } },
                },
            },
            text = "Accept Sentinel Advanced Care Package from Illiyana Moonblaze.",
            complete = QuestState(7865, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.614, 0.838, "Illiyana Moonblaze",
                    "Travel to Illiyana Moonblaze."),
            },
        },
        {
            id = "objective-7865-sentinel-advanced-care-package-1",
            kind = "objective",
            priority = 2010,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 60 } },
                },
            },
            text = "Sentinel Advanced Care Package: Sentinel Advanced Care Package.",
            dependsOn = { "accept-7865-sentinel-advanced-care-package" },
            complete = QuestObjective(7865, 1, "Sentinel Advanced Care Package"),
            route = {
                Point(MAP.ASHENVALE, 0.614, 0.838, "Illiyana Moonblaze",
                    "Travel to Illiyana Moonblaze."),
            },
        },
        {
            id = "turnin-7865-sentinel-advanced-care-package",
            kind = "turnin",
            priority = 2020,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 60 } },
                },
            },
            text = "Turn in Sentinel Advanced Care Package to Illiyana Moonblaze.",
            dependsOn = { "objective-7865-sentinel-advanced-care-package-1" },
            complete = QuestState(7865, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.614, 0.838, "Illiyana Moonblaze",
                    "Travel to Illiyana Moonblaze."),
            },
        },
        {
            id = "objective-7864-sentinel-standard-care-package-1",
            kind = "objective",
            priority = 2030,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 44 } },
                },
            },
            text = "Sentinel Standard Care Package: Sentinel Standard Care Package.",
            dependsOn = { "accept-7864-sentinel-standard-care-package" },
            complete = QuestObjective(7864, 1, "Sentinel Standard Care Package"),
            route = {
                Point(MAP.ASHENVALE, 0.614, 0.838, "Illiyana Moonblaze",
                    "Travel to Illiyana Moonblaze."),
            },
        },
        {
            id = "turnin-7864-sentinel-standard-care-package",
            kind = "turnin",
            priority = 2040,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 44 } },
                },
            },
            text = "Turn in Sentinel Standard Care Package to Illiyana Moonblaze.",
            dependsOn = { "objective-7864-sentinel-standard-care-package-1" },
            complete = QuestState(7864, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.614, 0.838, "Illiyana Moonblaze",
                    "Travel to Illiyana Moonblaze."),
            },
        },
        {
            id = "objective-7863-sentinel-basic-care-package-1",
            kind = "objective",
            priority = 2050,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 34 } },
                },
            },
            text = "Sentinel Basic Care Package: Sentinel Basic Care Package.",
            dependsOn = { "accept-7863-sentinel-basic-care-package" },
            complete = QuestObjective(7863, 1, "Sentinel Basic Care Package"),
            route = {
                Point(MAP.ASHENVALE, 0.614, 0.838, "Illiyana Moonblaze",
                    "Travel to Illiyana Moonblaze."),
            },
        },
        {
            id = "turnin-7863-sentinel-basic-care-package",
            kind = "turnin",
            priority = 2060,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 34 } },
                },
            },
            text = "Turn in Sentinel Basic Care Package to Illiyana Moonblaze.",
            dependsOn = { "objective-7863-sentinel-basic-care-package-1" },
            complete = QuestState(7863, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.614, 0.838, "Illiyana Moonblaze",
                    "Travel to Illiyana Moonblaze."),
            },
        },
        {
            id = "accept-7866-outrider-basic-care-package",
            kind = "accept",
            priority = 2070,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 34 } },
                },
            },
            text = "Accept Outrider Basic Care Package from Kelm Hargunth.",
            complete = QuestState(7866, "activeOrCompleted"),
            route = {
                Point(MAP.ZONE_1413, 0.466, 0.084, "Kelm Hargunth",
                    "Travel to Kelm Hargunth in The Barrens."),
            },
        },
        {
            id = "accept-7867-outrider-standard-care-package",
            kind = "accept",
            priority = 2080,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 44 } },
                },
            },
            text = "Accept Outrider Standard Care Package from Kelm Hargunth.",
            complete = QuestState(7867, "activeOrCompleted"),
            route = {
                Point(MAP.ZONE_1413, 0.466, 0.084, "Kelm Hargunth",
                    "Travel to Kelm Hargunth in The Barrens."),
            },
        },
        {
            id = "accept-7868-outrider-advanced-care-package",
            kind = "accept",
            priority = 2090,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 60 } },
                },
            },
            text = "Accept Outrider Advanced Care Package from Kelm Hargunth.",
            complete = QuestState(7868, "activeOrCompleted"),
            route = {
                Point(MAP.ZONE_1413, 0.466, 0.084, "Kelm Hargunth",
                    "Travel to Kelm Hargunth in The Barrens."),
            },
        },
        {
            id = "objective-7868-outrider-advanced-care-package-1",
            kind = "objective",
            priority = 2100,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 60 } },
                },
            },
            text = "Outrider Advanced Care Package: Outrider Advanced Care Package.",
            dependsOn = { "accept-7868-outrider-advanced-care-package" },
            complete = QuestObjective(7868, 1, "Outrider Advanced Care Package"),
            route = {
                Point(MAP.ZONE_1413, 0.466, 0.084, "Kelm Hargunth",
                    "Travel to Kelm Hargunth in The Barrens."),
            },
        },
        {
            id = "turnin-7868-outrider-advanced-care-package",
            kind = "turnin",
            priority = 2110,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 60 } },
                },
            },
            text = "Turn in Outrider Advanced Care Package to Kelm Hargunth.",
            dependsOn = { "objective-7868-outrider-advanced-care-package-1" },
            complete = QuestState(7868, "completed"),
            route = {
                Point(MAP.ZONE_1413, 0.466, 0.084, "Kelm Hargunth",
                    "Travel to Kelm Hargunth in The Barrens."),
            },
        },
        {
            id = "objective-7867-outrider-standard-care-package-1",
            kind = "objective",
            priority = 2120,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 44 } },
                },
            },
            text = "Outrider Standard Care Package: Outrider Standard Care Package.",
            dependsOn = { "accept-7867-outrider-standard-care-package" },
            complete = QuestObjective(7867, 1, "Outrider Standard Care Package"),
            route = {
                Point(MAP.ZONE_1413, 0.466, 0.084, "Kelm Hargunth",
                    "Travel to Kelm Hargunth in The Barrens."),
            },
        },
        {
            id = "turnin-7867-outrider-standard-care-package",
            kind = "turnin",
            priority = 2130,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 44 } },
                },
            },
            text = "Turn in Outrider Standard Care Package to Kelm Hargunth.",
            dependsOn = { "objective-7867-outrider-standard-care-package-1" },
            complete = QuestState(7867, "completed"),
            route = {
                Point(MAP.ZONE_1413, 0.466, 0.084, "Kelm Hargunth",
                    "Travel to Kelm Hargunth in The Barrens."),
            },
        },
        {
            id = "objective-7866-outrider-basic-care-package-1",
            kind = "objective",
            priority = 2140,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 34 } },
                },
            },
            text = "Outrider Basic Care Package: Outrider Basic Care Package.",
            dependsOn = { "accept-7866-outrider-basic-care-package" },
            complete = QuestObjective(7866, 1, "Outrider Basic Care Package"),
            route = {
                Point(MAP.ZONE_1413, 0.466, 0.084, "Kelm Hargunth",
                    "Travel to Kelm Hargunth in The Barrens."),
            },
        },
        {
            id = "turnin-7866-outrider-basic-care-package",
            kind = "turnin",
            priority = 2150,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 34 } },
                },
            },
            text = "Turn in Outrider Basic Care Package to Kelm Hargunth.",
            dependsOn = { "objective-7866-outrider-basic-care-package-1" },
            complete = QuestState(7866, "completed"),
            route = {
                Point(MAP.ZONE_1413, 0.466, 0.084, "Kelm Hargunth",
                    "Travel to Kelm Hargunth in The Barrens."),
            },
        },
        {
            id = "accept-81768-ashenvale-mission-i-defeat-satyrs",
            kind = "accept",
            priority = 2160,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Accept Ashenvale Mission I: Defeat Satyrs from Field Captain Hannalah.",
            complete = QuestState(81768, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "accept-81769-ashenvale-mission-ii-defeat-treants",
            kind = "accept",
            priority = 2170,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Accept Ashenvale Mission II: Defeat Treants from Field Captain Hannalah.",
            complete = QuestState(81769, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "accept-81770-ashenvale-mission-iii-defeat-dragonkin",
            kind = "accept",
            priority = 2180,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Accept Ashenvale Mission III: Defeat Dragonkin from Field Captain Hannalah.",
            complete = QuestState(81770, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "accept-81771-ashenvale-mission-iv-dragon-intelligence",
            kind = "accept",
            priority = 2190,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Accept Ashenvale Mission IV: Dragon Intelligence from Field Captain Hannalah.",
            complete = QuestState(81771, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "accept-81772-ashenvale-mission-v-satyr-intelligence",
            kind = "accept",
            priority = 2200,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Accept Ashenvale Mission V: Satyr Intelligence from Field Captain Hannalah.",
            complete = QuestState(81772, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "accept-81773-ashenvale-mission-vi-treant-intelligence",
            kind = "accept",
            priority = 2210,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Accept Ashenvale Mission VI: Treant Intelligence from Field Captain Hannalah.",
            complete = QuestState(81773, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "accept-81774-ashenvale-mission-vii-recover-dreamengine",
            kind = "accept",
            priority = 2220,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Accept Ashenvale Mission VII: Recover Dreamengine from Field Captain Hannalah.",
            complete = QuestState(81774, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "accept-81775-ashenvale-mission-viii-recover-azsharan-prophecy",
            kind = "accept",
            priority = 2230,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Accept Ashenvale Mission VIII: Recover Azsharan Prophecy from Field Captain Hannalah.",
            complete = QuestState(81775, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "accept-81776-ashenvale-mission-ix-recover-dream-touched-drago",
            kind = "accept",
            priority = 2240,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Accept Ashenvale Mission IX: Recover Dream-Touched Dragonegg from Field Captain Hannalah.",
            complete = QuestState(81776, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "accept-81777-ashenvale-mission-x-dreamroot",
            kind = "accept",
            priority = 2250,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Accept Ashenvale Mission X: Dreamroot from Field Captain Hannalah.",
            complete = QuestState(81777, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "accept-81778-ashenvale-mission-xi-fools-gold-dust",
            kind = "accept",
            priority = 2260,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Accept Ashenvale Mission XI: Fool's Gold Dust from Field Captain Hannalah.",
            complete = QuestState(81778, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "accept-81779-ashenvale-mission-xii-dream-infused-dragonscale",
            kind = "accept",
            priority = 2270,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Accept Ashenvale Mission XII: Dream-Infused Dragonscale from Field Captain Hannalah.",
            complete = QuestState(81779, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "accept-81780-ashenvale-mission-xiii-defeat-larsera",
            kind = "accept",
            priority = 2280,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Accept Ashenvale Mission XIII: Defeat Larsera from Field Captain Hannalah.",
            complete = QuestState(81780, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "accept-81781-ashenvale-mission-xiv-defeat-zalius",
            kind = "accept",
            priority = 2290,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Accept Ashenvale Mission XIV: Defeat Zalius from Field Captain Hannalah.",
            complete = QuestState(81781, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "accept-81782-ashenvale-mission-xv-defeat-shredder-9000",
            kind = "accept",
            priority = 2300,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Accept Ashenvale Mission XV: Defeat Shredder 9000 from Field Captain Hannalah.",
            complete = QuestState(81782, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "accept-81783-ashenvale-mission-xvi-rescue-alyssian-windcaller",
            kind = "accept",
            priority = 2310,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Accept Ashenvale Mission XVI: Rescue Alyssian Windcaller from Field Captain Hannalah.",
            complete = QuestState(81783, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "accept-81784-ashenvale-mission-xvii-rescue-doran-dreambough",
            kind = "accept",
            priority = 2320,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Accept Ashenvale Mission XVII: Rescue Doran Dreambough from Field Captain Hannalah.",
            complete = QuestState(81784, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "accept-81785-ashenvale-mission-xviii-rescue-maseara-autumnmoo",
            kind = "accept",
            priority = 2330,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Accept Ashenvale Mission XVIII: Rescue Maseara Autumnmoon from Field Captain Hannalah.",
            complete = QuestState(81785, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "objective-81785-ashenvale-mission-xviii-rescue-maseara-autumnmoo-1",
            kind = "objective",
            priority = 2340,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Ashenvale Mission XVIII: Rescue Maseara Autumnmoon: Ashenvale Mission XVIII: Rescue Maseara Autumnmoon.",
            dependsOn = { "accept-81785-ashenvale-mission-xviii-rescue-maseara-autumnmoo" },
            complete = QuestObjective(81785, 1, "Ashenvale Mission XVIII: Rescue Maseara Autumnmoon"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "turnin-81785-ashenvale-mission-xviii-rescue-maseara-autumnmoo",
            kind = "turnin",
            priority = 2350,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Turn in Ashenvale Mission XVIII: Rescue Maseara Autumnmoon to Field Captain Hannalah.",
            dependsOn = { "objective-81785-ashenvale-mission-xviii-rescue-maseara-autumnmoo-1" },
            complete = QuestState(81785, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "objective-81784-ashenvale-mission-xvii-rescue-doran-dreambough-1",
            kind = "objective",
            priority = 2360,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Ashenvale Mission XVII: Rescue Doran Dreambough: Ashenvale Mission XVII: Rescue Doran Dreambough.",
            dependsOn = { "accept-81784-ashenvale-mission-xvii-rescue-doran-dreambough" },
            complete = QuestObjective(81784, 1, "Ashenvale Mission XVII: Rescue Doran Dreambough"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "turnin-81784-ashenvale-mission-xvii-rescue-doran-dreambough",
            kind = "turnin",
            priority = 2370,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Turn in Ashenvale Mission XVII: Rescue Doran Dreambough to Field Captain Hannalah.",
            dependsOn = { "objective-81784-ashenvale-mission-xvii-rescue-doran-dreambough-1" },
            complete = QuestState(81784, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "objective-81783-ashenvale-mission-xvi-rescue-alyssian-windcaller-1",
            kind = "objective",
            priority = 2380,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Ashenvale Mission XVI: Rescue Alyssian Windcaller: Ashenvale Mission XVI: Rescue Alyssian Windcaller.",
            dependsOn = { "accept-81783-ashenvale-mission-xvi-rescue-alyssian-windcaller" },
            complete = QuestObjective(81783, 1, "Ashenvale Mission XVI: Rescue Alyssian Windcaller"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "turnin-81783-ashenvale-mission-xvi-rescue-alyssian-windcaller",
            kind = "turnin",
            priority = 2390,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Turn in Ashenvale Mission XVI: Rescue Alyssian Windcaller to Field Captain Hannalah.",
            dependsOn = { "objective-81783-ashenvale-mission-xvi-rescue-alyssian-windcaller-1" },
            complete = QuestState(81783, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "objective-81782-ashenvale-mission-xv-defeat-shredder-9000-1",
            kind = "objective",
            priority = 2400,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Ashenvale Mission XV: Defeat Shredder 9000: Ashenvale Mission XV: Defeat Shredder 9000.",
            dependsOn = { "accept-81782-ashenvale-mission-xv-defeat-shredder-9000" },
            complete = QuestObjective(81782, 1, "Ashenvale Mission XV: Defeat Shredder 9000"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "turnin-81782-ashenvale-mission-xv-defeat-shredder-9000",
            kind = "turnin",
            priority = 2410,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Turn in Ashenvale Mission XV: Defeat Shredder 9000 to Field Captain Hannalah.",
            dependsOn = { "objective-81782-ashenvale-mission-xv-defeat-shredder-9000-1" },
            complete = QuestState(81782, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "objective-81781-ashenvale-mission-xiv-defeat-zalius-1",
            kind = "objective",
            priority = 2420,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Ashenvale Mission XIV: Defeat Zalius: Ashenvale Mission XIV: Defeat Zalius.",
            dependsOn = { "accept-81781-ashenvale-mission-xiv-defeat-zalius" },
            complete = QuestObjective(81781, 1, "Ashenvale Mission XIV: Defeat Zalius"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "turnin-81781-ashenvale-mission-xiv-defeat-zalius",
            kind = "turnin",
            priority = 2430,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Turn in Ashenvale Mission XIV: Defeat Zalius to Field Captain Hannalah.",
            dependsOn = { "objective-81781-ashenvale-mission-xiv-defeat-zalius-1" },
            complete = QuestState(81781, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "objective-81780-ashenvale-mission-xiii-defeat-larsera-1",
            kind = "objective",
            priority = 2440,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Ashenvale Mission XIII: Defeat Larsera: Ashenvale Mission XIII: Defeat Larsera.",
            dependsOn = { "accept-81780-ashenvale-mission-xiii-defeat-larsera" },
            complete = QuestObjective(81780, 1, "Ashenvale Mission XIII: Defeat Larsera"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "turnin-81780-ashenvale-mission-xiii-defeat-larsera",
            kind = "turnin",
            priority = 2450,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Turn in Ashenvale Mission XIII: Defeat Larsera to Field Captain Hannalah.",
            dependsOn = { "objective-81780-ashenvale-mission-xiii-defeat-larsera-1" },
            complete = QuestState(81780, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "objective-81779-ashenvale-mission-xii-dream-infused-dragonscale-1",
            kind = "objective",
            priority = 2460,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Ashenvale Mission XII: Dream-Infused Dragonscale: Ashenvale Mission XII: Dream-Infused Dragonscale.",
            dependsOn = { "accept-81779-ashenvale-mission-xii-dream-infused-dragonscale" },
            complete = QuestObjective(81779, 1, "Ashenvale Mission XII: Dream-Infused Dragonscale"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "turnin-81779-ashenvale-mission-xii-dream-infused-dragonscale",
            kind = "turnin",
            priority = 2470,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Turn in Ashenvale Mission XII: Dream-Infused Dragonscale to Field Captain Hannalah.",
            dependsOn = { "objective-81779-ashenvale-mission-xii-dream-infused-dragonscale-1" },
            complete = QuestState(81779, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "objective-81778-ashenvale-mission-xi-fools-gold-dust-1",
            kind = "objective",
            priority = 2480,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Ashenvale Mission XI: Fool's Gold Dust: Ashenvale Mission XI: Fool's Gold Dust.",
            dependsOn = { "accept-81778-ashenvale-mission-xi-fools-gold-dust" },
            complete = QuestObjective(81778, 1, "Ashenvale Mission XI: Fool's Gold Dust"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "turnin-81778-ashenvale-mission-xi-fools-gold-dust",
            kind = "turnin",
            priority = 2490,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Turn in Ashenvale Mission XI: Fool's Gold Dust to Field Captain Hannalah.",
            dependsOn = { "objective-81778-ashenvale-mission-xi-fools-gold-dust-1" },
            complete = QuestState(81778, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "objective-81777-ashenvale-mission-x-dreamroot-1",
            kind = "objective",
            priority = 2500,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Ashenvale Mission X: Dreamroot: Ashenvale Mission X: Dreamroot.",
            dependsOn = { "accept-81777-ashenvale-mission-x-dreamroot" },
            complete = QuestObjective(81777, 1, "Ashenvale Mission X: Dreamroot"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "turnin-81777-ashenvale-mission-x-dreamroot",
            kind = "turnin",
            priority = 2510,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Turn in Ashenvale Mission X: Dreamroot to Field Captain Hannalah.",
            dependsOn = { "objective-81777-ashenvale-mission-x-dreamroot-1" },
            complete = QuestState(81777, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "objective-81776-ashenvale-mission-ix-recover-dream-touched-drago-1",
            kind = "objective",
            priority = 2520,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Ashenvale Mission IX: Recover Dream-Touched Dragonegg: Dream-Touched Dragon Egg.",
            dependsOn = { "accept-81776-ashenvale-mission-ix-recover-dream-touched-drago" },
            complete = QuestObjective(81776, 1, "Dream-Touched Dragon Egg"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "turnin-81776-ashenvale-mission-ix-recover-dream-touched-drago",
            kind = "turnin",
            priority = 2530,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Turn in Ashenvale Mission IX: Recover Dream-Touched Dragonegg to Field Captain Hannalah.",
            dependsOn = { "objective-81776-ashenvale-mission-ix-recover-dream-touched-drago-1" },
            complete = QuestState(81776, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "objective-81775-ashenvale-mission-viii-recover-azsharan-prophecy-1",
            kind = "objective",
            priority = 2540,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Ashenvale Mission VIII: Recover Azsharan Prophecy: Ashenvale Mission VIII: Recover Azsharan Prophecy.",
            dependsOn = { "accept-81775-ashenvale-mission-viii-recover-azsharan-prophecy" },
            complete = QuestObjective(81775, 1, "Ashenvale Mission VIII: Recover Azsharan Prophecy"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "turnin-81775-ashenvale-mission-viii-recover-azsharan-prophecy",
            kind = "turnin",
            priority = 2550,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Turn in Ashenvale Mission VIII: Recover Azsharan Prophecy to Field Captain Hannalah.",
            dependsOn = { "objective-81775-ashenvale-mission-viii-recover-azsharan-prophecy-1" },
            complete = QuestState(81775, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "objective-81774-ashenvale-mission-vii-recover-dreamengine-1",
            kind = "objective",
            priority = 2560,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Ashenvale Mission VII: Recover Dreamengine: Ashenvale Mission VII: Recover Dreamengine.",
            dependsOn = { "accept-81774-ashenvale-mission-vii-recover-dreamengine" },
            complete = QuestObjective(81774, 1, "Ashenvale Mission VII: Recover Dreamengine"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "turnin-81774-ashenvale-mission-vii-recover-dreamengine",
            kind = "turnin",
            priority = 2570,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Turn in Ashenvale Mission VII: Recover Dreamengine to Field Captain Hannalah.",
            dependsOn = { "objective-81774-ashenvale-mission-vii-recover-dreamengine-1" },
            complete = QuestState(81774, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "objective-81773-ashenvale-mission-vi-treant-intelligence-1",
            kind = "objective",
            priority = 2580,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Ashenvale Mission VI: Treant Intelligence: Ashenvale Mission VI: Treant Intelligence.",
            dependsOn = { "accept-81773-ashenvale-mission-vi-treant-intelligence" },
            complete = QuestObjective(81773, 1, "Ashenvale Mission VI: Treant Intelligence"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "turnin-81773-ashenvale-mission-vi-treant-intelligence",
            kind = "turnin",
            priority = 2590,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Turn in Ashenvale Mission VI: Treant Intelligence to Field Captain Hannalah.",
            dependsOn = { "objective-81773-ashenvale-mission-vi-treant-intelligence-1" },
            complete = QuestState(81773, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "objective-81772-ashenvale-mission-v-satyr-intelligence-1",
            kind = "objective",
            priority = 2600,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Ashenvale Mission V: Satyr Intelligence: Ashenvale Mission V: Satyr Intelligence.",
            dependsOn = { "accept-81772-ashenvale-mission-v-satyr-intelligence" },
            complete = QuestObjective(81772, 1, "Ashenvale Mission V: Satyr Intelligence"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "turnin-81772-ashenvale-mission-v-satyr-intelligence",
            kind = "turnin",
            priority = 2610,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Turn in Ashenvale Mission V: Satyr Intelligence to Field Captain Hannalah.",
            dependsOn = { "objective-81772-ashenvale-mission-v-satyr-intelligence-1" },
            complete = QuestState(81772, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "objective-81771-ashenvale-mission-iv-dragon-intelligence-1",
            kind = "objective",
            priority = 2620,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Ashenvale Mission IV: Dragon Intelligence: Ashenvale Mission IV: Dragon Intelligence.",
            dependsOn = { "accept-81771-ashenvale-mission-iv-dragon-intelligence" },
            complete = QuestObjective(81771, 1, "Ashenvale Mission IV: Dragon Intelligence"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "turnin-81771-ashenvale-mission-iv-dragon-intelligence",
            kind = "turnin",
            priority = 2630,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Turn in Ashenvale Mission IV: Dragon Intelligence to Field Captain Hannalah.",
            dependsOn = { "objective-81771-ashenvale-mission-iv-dragon-intelligence-1" },
            complete = QuestState(81771, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "objective-81770-ashenvale-mission-iii-defeat-dragonkin-1",
            kind = "objective",
            priority = 2640,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Ashenvale Mission III: Defeat Dragonkin: Ashenvale Mission III: Defeat Dragonkin.",
            dependsOn = { "accept-81770-ashenvale-mission-iii-defeat-dragonkin" },
            complete = QuestObjective(81770, 1, "Ashenvale Mission III: Defeat Dragonkin"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "turnin-81770-ashenvale-mission-iii-defeat-dragonkin",
            kind = "turnin",
            priority = 2650,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Turn in Ashenvale Mission III: Defeat Dragonkin to Field Captain Hannalah.",
            dependsOn = { "objective-81770-ashenvale-mission-iii-defeat-dragonkin-1" },
            complete = QuestState(81770, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "objective-81769-ashenvale-mission-ii-defeat-treants-1",
            kind = "objective",
            priority = 2660,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Ashenvale Mission II: Defeat Treants: Ashenvale Mission II: Defeat Treants.",
            dependsOn = { "accept-81769-ashenvale-mission-ii-defeat-treants" },
            complete = QuestObjective(81769, 1, "Ashenvale Mission II: Defeat Treants"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "turnin-81769-ashenvale-mission-ii-defeat-treants",
            kind = "turnin",
            priority = 2670,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Turn in Ashenvale Mission II: Defeat Treants to Field Captain Hannalah.",
            dependsOn = { "objective-81769-ashenvale-mission-ii-defeat-treants-1" },
            complete = QuestState(81769, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "objective-81768-ashenvale-mission-i-defeat-satyrs-1",
            kind = "objective",
            priority = 2680,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Ashenvale Mission I: Defeat Satyrs: Ashenvale Mission I: Defeat Satyrs.",
            dependsOn = { "accept-81768-ashenvale-mission-i-defeat-satyrs" },
            complete = QuestObjective(81768, 1, "Ashenvale Mission I: Defeat Satyrs"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "turnin-81768-ashenvale-mission-i-defeat-satyrs",
            kind = "turnin",
            priority = 2690,
            conditions = {
                all = {
                    { level = { min = 37 } },
                },
            },
            text = "Turn in Ashenvale Mission I: Defeat Satyrs to Field Captain Hannalah.",
            dependsOn = { "objective-81768-ashenvale-mission-i-defeat-satyrs-1" },
            complete = QuestState(81768, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.896, 0.406, "Field Captain Hannalah",
                    "Travel to Field Captain Hannalah."),
            },
        },
        {
            id = "turnin-82017-an-amalagamation-of-nightmares",
            kind = "turnin",
            priority = 2700,
            conditions = {
                all = {
                    { level = { min = 40 } },
                },
            },
            text = "Accept An Amalagamation of Nightmares from Field Captain Hannalah, then turn it in to Loganaar.",
            complete = QuestState(82017, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.524, 0.404, "Loganaar",
                    "Travel to Loganaar."),
            },
        },
    },
})
