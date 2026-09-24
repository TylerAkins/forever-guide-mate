local _, ns = ...

-- Alliance Era leveling route for Ashenvale, levels 24-24.
-- This follows the classic route and is not rewritten for Forever yet.
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
    id = "leveling-era-24-24-ashenvale",
    title = "24-24 Ashenvale (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 24 } },
        },
    },
    goals = {
        {
            id = "travel-astranaar",
            kind = "travel",
            priority = 10,
            text = "Travel to Astranaar.",
            route = {
                Point(MAP.ASHENVALE, 0.3465, 0.4884, "Astranaar",
                    "Travel to Astranaar."),
            },
        },
        {
            id = "accept-1054-culling-the-threat",
            kind = "accept",
            priority = 20,
            text = "Accept Culling the Threat from Raene Wolfrunner in Astranaar.",
            complete = QuestState(1054, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.3659, 0.4959, "Raene Wolfrunner",
                    "Travel to Raene Wolfrunner."),
            },
        },
        {
            id = "travel-1054-thistlefur-village",
            kind = "travel",
            priority = 30,
            text = "Travel to Thistlefur Village.",
            route = {
                Point(MAP.ASHENVALE, 0.3125, 0.4618, "Continue toward Thistlefur Village",
                    "Continue toward Thistlefur Village."),
                Point(MAP.ASHENVALE, 0.3411, 0.3538, "Thistlefur Village",
                    "Travel to Thistlefur Village."),
            },
        },
        {
            id = "objective-1054-culling-the-threat",
            kind = "objective",
            priority = 40,
            text = "Find and kill Dal Bloodclaw and collect Bloodclaw's Collection. He patrols around this area. If you can pull him solo it will be an easy quest.",
            dependsOn = { "accept-1054-culling-the-threat" },
            complete = QuestState(1054, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.3411, 0.3538, "Dal Bloodclaw",
                    "Travel to Dal Bloodclaw."),
            },
        },
        {
            id = "accept-1140-the-tower-of-althalaxx",
            kind = "accept",
            priority = 50,
            conditions = {
                all = {
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
            id = "travel-astranaar-2",
            kind = "travel",
            priority = 60,
            text = "Travel to Astranaar.",
            route = {
                Point(MAP.ASHENVALE, 0.3659, 0.4959, "Astranaar",
                    "Travel to Astranaar."),
            },
        },
        {
            id = "turnin-1054-culling-the-threat",
            kind = "turnin",
            priority = 70,
            text = "Turn in Culling the Threat to Raene Wolfrunner in Astranaar.",
            dependsOn = { "objective-1054-culling-the-threat" },
            complete = QuestState(1054, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.3659, 0.4959, "Raene Wolfrunner",
                    "Travel to Raene Wolfrunner."),
            },
        },
        {
            id = "travel-1016-silverwind-refuge",
            kind = "travel",
            priority = 80,
            text = "Travel to Silverwind Refuge.",
            route = {
                Point(MAP.ASHENVALE, 0.4981, 0.6720, "Sentinel Velene Starstrike",
                    "Travel to Sentinel Velene Starstrike."),
            },
        },
        {
            id = "accept-1016-elemental-bracers",
            kind = "accept",
            priority = 90,
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
            priority = 100,
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
            priority = 110,
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
            priority = 120,
            text = "Turn in Elemental Bracers to Sentinel Velene Starstrike in Silverwind Refuge.",
            dependsOn = { "objective-1016-befouled-water-elemental", "objective-1016-elemental-bracers" },
            complete = QuestState(1016, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.4981, 0.6720, "Sentinel Velene Starstrike",
                    "Travel to Sentinel Velene Starstrike."),
            },
        },
    },
})
