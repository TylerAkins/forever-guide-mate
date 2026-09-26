local _, ns = ...

-- Alliance Era leveling route for Ashenvale, levels 21-22.
-- Forever quests from the Ashenvale list that sit on this pass are woven in.
-- Left out: Repelling Invaders is a level 60 daily.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    ASHENVALE = 1440,
}

local function QuestState(questID, state)
    return { quest = { id = questID, state = state } }
end

local function QuestObjective(questID, index)
    return { questObjective = { id = questID, index = index } }
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
    id = "leveling-era-21-22-ashenvale",
    title = "21-22 Ashenvale",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 21 } },
        },
    },
    goals = {
        {
            id = "accept-970-the-tower-of-althalaxx",
            kind = "accept",
            priority = 20,
            conditions = {
                all = {
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
            priority = 30,
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
            priority = 40,
            conditions = {
                all = {
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
            priority = 50,
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
            priority = 70,
            conditions = {
                all = {
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
            priority = 80,
            conditions = {
                all = {
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
            priority = 90,
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
            priority = 100,
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
            priority = 120,
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
            priority = 130,
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
            priority = 140,
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
            priority = 150,
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
            priority = 160,
            text = "Accept Culling the Threat from Raene Wolfrunner in Astranaar.",
            complete = QuestState(1054, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.3659, 0.4963, "Raene Wolfrunner",
                    "Travel to Raene Wolfrunner."),
            },
        },
        {
            id = "note-1033-astranaar",
            kind = "note",
            priority = 170,
            text = "Set your hearth in Astranaar with Innkeeper Kimlya.",
            route = {
                Point(MAP.ASHENVALE, 0.3700, 0.4930, "Innkeeper Kimlya",
                    "Travel to Innkeeper Kimlya."),
            },
        },
        {
            id = "turnin-1020-orendil-s-cure",
            kind = "turnin",
            priority = 180,
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
            priority = 190,
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
            priority = 200,
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
            priority = 210,
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
            priority = 220,
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
            priority = 230,
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
            priority = 240,
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
            priority = 250,
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
            priority = 260,
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
            priority = 280,
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
            priority = 290,
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
            priority = 300,
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
            priority = 320,
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
            priority = 330,
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
            priority = 340,
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
            priority = 350,
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
            priority = 360,
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
            priority = 380,
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
            priority = 400,
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
            priority = 410,
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
            priority = 420,
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
            priority = 440,
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
            priority = 450,
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
            priority = 460,
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
            priority = 480,
            text = "Collect 5 Handful of Stardust which are found in Stardust covered bushes which are in the Ruins of Stardust.",
            dependsOn = { "accept-1034-the-ruins-of-stardust" },
            complete = QuestState(1034, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.3361, 0.6749, "Ruins of Stardust",
                    "Travel to Ruins of Stardust."),
            },
        },
    },
})
