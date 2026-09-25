local _, ns = ...

-- Alliance Era leveling route for Azshara, levels 46-46.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    AZSHARA = 1447,
    TANARIS = 1446,
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
    id = "leveling-era-46-46-azshara",
    title = "46-46 Azshara (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 46 } },
        },
    },
    goals = {
        {
            id = "accept-5535-spiritual-unrest",
            kind = "accept",
            priority = 20,
            text = "Accept Spiritual Unrest from Loh'atu in Talrendis Point.",
            complete = QuestState(5535, "activeOrCompleted"),
            route = {
                Point(MAP.AZSHARA, 0.1140, 0.7813, "Loh'atu",
                    "Travel to Loh'atu."),
            },
        },
        {
            id = "accept-5536-a-land-filled-with-hatred",
            kind = "accept",
            priority = 30,
            text = "Accept A Land Filled with Hatred from Loh'atu in Talrendis Point.",
            complete = QuestState(5536, "activeOrCompleted"),
            route = {
                Point(MAP.AZSHARA, 0.1140, 0.7813, "Loh'atu",
                    "Travel to Loh'atu."),
            },
        },
        {
            id = "objective-5535-spiritual-unrest",
            kind = "objective",
            priority = 40,
            text = "Kill 6 Highborne Lichling and 6 Highborne Apparition in Shadowsong Shrine.",
            dependsOn = { "accept-5535-spiritual-unrest" },
            complete = QuestState(5535, "complete"),
            route = {
                Point(MAP.AZSHARA, 0.1640, 0.6821, "Highborne Lichling",
                    "Travel to Highborne Lichling."),
            },
        },
        {
            id = "objective-5536-a-land-filled-with-hatred",
            kind = "objective",
            priority = 60,
            text = "Kill 2 Haldarr Trickster, 2 Haldarr Felsworn and 6 Haldarr Satyr in Haldarr Encampment.",
            dependsOn = { "accept-5536-a-land-filled-with-hatred" },
            complete = QuestState(5536, "complete"),
            route = {
                Point(MAP.AZSHARA, 0.2058, 0.6167, "Haldarr Trickster",
                    "Travel to Haldarr Trickster."),
            },
        },
        {
            id = "turnin-5535-spiritual-unrest",
            kind = "turnin",
            priority = 80,
            text = "Turn in Spiritual Unrest to Loh'atu in Talrendis Point.",
            dependsOn = { "objective-5535-spiritual-unrest" },
            complete = QuestState(5535, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.1137, 0.7815, "Loh'atu",
                    "Travel to Loh'atu."),
            },
        },
        {
            id = "turnin-5536-a-land-filled-with-hatred",
            kind = "turnin",
            priority = 90,
            text = "Turn in A Land Filled with Hatred to Loh'atu in Talrendis Point.",
            dependsOn = { "objective-5536-a-land-filled-with-hatred" },
            complete = QuestState(5536, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.1137, 0.7815, "Loh'atu",
                    "Travel to Loh'atu."),
            },
        },
        {
            id = "turnin-2941-the-borrower",
            kind = "turnin",
            priority = 110,
            text = "Turn in The Borrower to Curgle Cranklehop in Gadgetzan.",
            complete = QuestState(2941, "completed"),
            route = {
                Point(MAP.TANARIS, 0.5235, 0.2691, "Curgle Cranklehop",
                    "Travel to Curgle Cranklehop."),
            },
        },
        {
            id = "accept-2944-the-super-snapper-fx",
            kind = "accept",
            priority = 120,
            text = "Accept The Super Snapper FX from Curgle Cranklehop in Gadgetzan.",
            complete = QuestState(2944, "activeOrCompleted"),
            route = {
                Point(MAP.TANARIS, 0.5235, 0.2691, "Curgle Cranklehop",
                    "Travel to Curgle Cranklehop."),
            },
        },
    },
})
