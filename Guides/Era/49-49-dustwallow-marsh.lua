local _, ns = ...

-- Horde Era leveling route for Dustwallow Marsh, levels 49-49.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    DUSTWALLOW = 1445,
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
    id = "leveling-era-49-49-dustwallow-marsh",
    title = "49-49 Dustwallow Marsh (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 49 } },
        },
    },
    goals = {
        {
            id = "accept-1171-the-brood-of-onyxia",
            kind = "accept",
            priority = 20,
            text = "Accept The Brood of Onyxia from Overlord Mok'Morokk in Brackenwall Village.",
            complete = QuestState(1171, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3633, 0.3148, "Overlord Mok'Morokk",
                    "Travel to Overlord Mok'Morokk."),
            },
        },
        {
            id = "turnin-1171-the-brood-of-onyxia",
            kind = "turnin",
            priority = 30,
            text = "Turn in The Brood of Onyxia to Draz'Zilb in Brackenwall Village.",
            dependsOn = { "accept-1171-the-brood-of-onyxia" },
            complete = QuestState(1171, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3704, 0.3293, "Draz'Zilb",
                    "Travel to Draz'Zilb."),
            },
        },
        {
            id = "accept-1172-the-brood-of-onyxia",
            kind = "accept",
            priority = 40,
            text = "Accept The Brood of Onyxia from Draz'Zilb in Brackenwall Village.",
            complete = QuestState(1172, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3704, 0.3293, "Draz'Zilb",
                    "Travel to Draz'Zilb."),
            },
        },
        {
            id = "objective-1172-the-brood-of-onyxia",
            kind = "objective",
            priority = 60,
            text = "Destroy 5 Egg of Onyxia in Wyrmbog.",
            dependsOn = { "accept-1172-the-brood-of-onyxia" },
            complete = QuestState(1172, "complete"),
            route = {
                Point(MAP.DUSTWALLOW, 0.4843, 0.7591, "Wyrmbog",
                    "Travel to Wyrmbog."),
            },
        },
        {
            id = "accept-626-cortello-s-riddle",
            kind = "accept",
            priority = 70,
            conditions = {
                all = {
                    { quest = { id = 625, state = "completed" } },
                },
            },
            text = "Accept Cortello's Riddle in Bloodfen Burrow.",
            complete = QuestState(626, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3111, 0.6612, "Bloodfen Burrow",
                    "Travel to Bloodfen Burrow."),
            },
        },
        {
            id = "turnin-1172-the-brood-of-onyxia",
            kind = "turnin",
            priority = 80,
            text = "Turn in The Brood of Onyxia to Draz'Zilb in Brackenwall Village.",
            dependsOn = { "objective-1172-the-brood-of-onyxia" },
            complete = QuestState(1172, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3714, 0.3306, "Draz'Zilb",
                    "Travel to Draz'Zilb."),
            },
        },
        {
            id = "accept-1173-challenge-overlord-mok-morokk",
            kind = "accept",
            priority = 90,
            text = "Accept Challenge Overlord Mok'Morokk from Overlord Mok'Morokk in Brackenwall Village.",
            complete = QuestState(1173, "activeOrCompleted"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3631, 0.3141, "Overlord Mok'Morokk",
                    "Travel to Overlord Mok'Morokk."),
            },
        },
        {
            id = "objective-1173-challenge-overlord-mok-morokk",
            kind = "objective",
            priority = 100,
            text = "Defeat Overlord Mok'Morokk in Brackenwall Village, he will run away at about 1/3 HP left.",
            dependsOn = { "accept-1173-challenge-overlord-mok-morokk" },
            complete = QuestState(1173, "complete"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3642, 0.3128, "Overlord Mok'Morokk",
                    "Travel to Overlord Mok'Morokk."),
            },
        },
        {
            id = "turnin-1173-challenge-overlord-mok-morokk",
            kind = "turnin",
            priority = 110,
            text = "Turn in Challenge Overlord Mok'Morokk to Draz'Zilb in Brackenwall Village.",
            dependsOn = { "objective-1173-challenge-overlord-mok-morokk" },
            complete = QuestState(1173, "completed"),
            route = {
                Point(MAP.DUSTWALLOW, 0.3714, 0.3307, "Draz'Zilb",
                    "Travel to Draz'Zilb."),
            },
        },
    },
})
