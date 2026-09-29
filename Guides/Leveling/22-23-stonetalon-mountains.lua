local _, ns = ...

-- Alliance Era leveling route for Stonetalon Mountains, levels 22-23.
-- Forever quests from the Stonetalon list that sit on this pass are woven in.
-- Left out: Stonetalon Supply Run has no giver on this route and its objective is a Freewind Post wyvern. Scramble continues a hunt that starts in Westfall, and Pocket Litter is not a stop on the Windshear path. Wet Job is level 32. Rekindle is level 40. An Old Colleague turns in to Lomac on the Wetlands Ironforge visit.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    STONETALON = 1442,
    BARRENS = 1413,
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
    id = "leveling-era-22-23-stonetalon-mountains",
    title = "Stonetalon Mountains (Part 2)",
    category = "Leveling Quest Guides",
    revision = 2,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 22 } },
        },
    },
    goals = {
        {
            id = "accept-1483-ziz-fizziks",
            kind = "accept",
            priority = 20,
            conditions = { level = { min = 16 } },
            text = "Accept Ziz Fizziks from Sputtervalve in Ratchet.",
            complete = QuestState(1483, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.6295, 0.3723, "Sputtervalve",
                    "Travel to Sputtervalve."),
            },
        },
        {
            id = "accept-1070-on-guard-in-stonetalon",
            kind = "accept",
            priority = 40,
            conditions = { level = { min = 17 } },
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
            priority = 50,
            conditions = { level = { min = 18 } },
            text = "Accept Journey to Stonetalon Peak from Faldreas Goeth'Shael in Astranaar.",
            complete = QuestState(1056, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.3578, 0.4916, "Faldreas Goeth'Shael",
                    "Travel to Faldreas Goeth'Shael."),
            },
        },
        {
            id = "turnin-1034-the-ruins-of-stardust",
            kind = "turnin",
            priority = 55,
            conditions = {
                all = {
                    { level = { min = 20 } },
                    { quest = { id = 1034, state = "complete" } },
                },
            },
            text = "Turn in The Ruins of Stardust to Pelturas Whitemoon in Astranaar.",
            complete = QuestState(1034, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.3737, 0.5178, "Pelturas Whitemoon",
                    "Travel to Pelturas Whitemoon."),
            },
        },
        {
            id = "turnin-1483-ziz-fizziks",
            kind = "turnin",
            priority = 70,
            conditions = { level = { min = 16 } },
            text = "Turn in Ziz Fizziks to Ziz Fizziks in Windshear Crag.",
            dependsOn = { "accept-1483-ziz-fizziks" },
            complete = QuestState(1483, "completed"),
            route = {
                Point(MAP.STONETALON, 0.5900, 0.6250, "Ziz Fizziks",
                    "Travel to Ziz Fizziks."),
            },
        },
        {
            id = "accept-1093-super-reaper-6000",
            kind = "accept",
            priority = 80,
            conditions = { level = { min = 16 } },
            text = "Accept Super Reaper 6000 from Ziz Fizziks in Windshear Crag.",
            complete = QuestState(1093, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.5900, 0.6250, "Ziz Fizziks",
                    "Travel to Ziz Fizziks."),
            },
        },
        {
            id = "turnin-1070-on-guard-in-stonetalon",
            kind = "turnin",
            priority = 90,
            conditions = { level = { min = 17 } },
            text = "Turn in On Guard in Stonetalon to Kaela Shadowspear in Webwinder Path.",
            dependsOn = { "accept-1070-on-guard-in-stonetalon" },
            complete = QuestState(1070, "completed"),
            route = {
                Point(MAP.STONETALON, 0.5987, 0.6686, "Kaela Shadowspear",
                    "Travel to Kaela Shadowspear."),
            },
        },
        {
            id = "accept-1085-on-guard-in-stonetalon",
            kind = "accept",
            priority = 100,
            conditions = { level = { min = 17 } },
            text = "Accept On Guard in Stonetalon from Kaela Shadowspear in Webwinder Path.",
            complete = QuestState(1085, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.5987, 0.6686, "Kaela Shadowspear",
                    "Travel to Kaela Shadowspear."),
            },
        },
        {
            id = "turnin-1085-on-guard-in-stonetalon",
            kind = "turnin",
            priority = 110,
            conditions = { level = { min = 17 } },
            text = "Turn in On Guard in Stonetalon to Gaxim Rustfizzle in Webwinder Path.",
            dependsOn = { "accept-1085-on-guard-in-stonetalon" },
            complete = QuestState(1085, "completed"),
            route = {
                Point(MAP.STONETALON, 0.5949, 0.6710, "Gaxim Rustfizzle",
                    "Travel to Gaxim Rustfizzle."),
            },
        },
        {
            id = "accept-1071-a-gnome-s-respite",
            kind = "accept",
            priority = 120,
            conditions = { level = { min = 17 } },
            text = "Accept A Gnome's Respite from Gaxim Rustfizzle in Webwinder Path.",
            complete = QuestState(1071, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.5949, 0.6710, "Gaxim Rustfizzle",
                    "Travel to Gaxim Rustfizzle."),
            },
        },
        {
            id = "objective-1093-super-reaper-6000",
            kind = "objective",
            priority = 130,
            conditions = { level = { min = 16 } },
            text = "Kill Venture Co. Operator until you find Super Reaper 6000 Blueprints for Ziz Fizziks in Windshear Crag.",
            dependsOn = { "accept-1093-super-reaper-6000" },
            complete = QuestState(1093, "complete"),
            route = {
                Point(MAP.STONETALON, 0.6263, 0.5207, "Venture Co. Operator",
                    "Travel to Venture Co. Operator."),
            },
        },
        {
            id = "objective-1071-gnome-s-respite",
            kind = "objective",
            priority = 140,
            conditions = { level = { min = 17 } },
            text = "Kill 10 Venture Co. Deforester and 10 Venture Co. Logger in Windshear Crag.",
            dependsOn = { "accept-1071-a-gnome-s-respite" },
            complete = QuestState(1071, "complete"),
            route = {
                Point(MAP.STONETALON, 0.6790, 0.5144, "Continue toward Gnome's Respite",
                    "Continue toward Gnome's Respite."),
                Point(MAP.STONETALON, 0.6899, 0.5677, "Venture Co. Deforester",
                    "Travel to Venture Co. Deforester."),
            },
        },
        {
            id = "turnin-1093-super-reaper-6000",
            kind = "turnin",
            priority = 150,
            conditions = { level = { min = 16 } },
            text = "Turn in Super Reaper 6000 to Ziz Fizziks in Windshear Crag.",
            dependsOn = { "objective-1093-super-reaper-6000" },
            complete = QuestState(1093, "completed"),
            route = {
                Point(MAP.STONETALON, 0.5899, 0.6256, "Ziz Fizziks",
                    "Travel to Ziz Fizziks."),
            },
        },
        {
            id = "turnin-1071-a-gnome-s-respite",
            kind = "turnin",
            priority = 170,
            conditions = { level = { min = 17 } },
            text = "Turn in A Gnome's Respite to Gaxim Rustfizzle in Webwinder Path.",
            dependsOn = { "objective-1071-gnome-s-respite" },
            complete = QuestState(1071, "completed"),
            route = {
                Point(MAP.STONETALON, 0.5950, 0.6716, "Gaxim Rustfizzle",
                    "Travel to Gaxim Rustfizzle."),
            },
        },
        {
            id = "accept-1072-an-old-colleague",
            kind = "accept",
            priority = 180,
            conditions = { level = { min = 17 } },
            text = "Accept An Old Colleague from Gaxim Rustfizzle in Webwinder Path.",
            complete = QuestState(1072, "activeOrCompleted"),
            route = {
                Point(MAP.STONETALON, 0.5950, 0.6716, "Gaxim Rustfizzle",
                    "Travel to Gaxim Rustfizzle."),
            },
        },
        {
            id = "objective-1134-pridewings-of-stonetalon",
            kind = "objective",
            priority = 200,
            conditions = {
                all = {
                    { level = { min = 18 } },
                    { quest = { id = 1134, state = "active" } },
                },
            },
            useClientPin = true,
            text = "Kill Pridewing wyverns beside Mirkfallon Lake, on the way to Stonetalon Peak, and collect 12 Pridewing Venom Sac. No saved spot for the wyverns, so the guide follows the pin in your quest log.",
            complete = QuestState(1134, "complete"),
            route = {
                Point(MAP.STONETALON, 0.4800, 0.4100, "Mirkfallon Lake",
                    "Travel to Mirkfallon Lake."),
            },
        },
        {
            id = "turnin-1056-journey-to-stonetalon-peak",
            kind = "turnin",
            priority = 210,
            conditions = { level = { min = 18 } },
            text = "Turn in Journey to Stonetalon Peak to Keeper Albagorm in Stonetalon Peak.",
            dependsOn = { "accept-1056-journey-to-stonetalon-peak" },
            complete = QuestState(1056, "completed"),
            route = {
                Point(MAP.STONETALON, 0.3710, 0.0810, "Keeper Albagorm",
                    "Travel to Keeper Albagorm."),
            },
        },
    },
})
