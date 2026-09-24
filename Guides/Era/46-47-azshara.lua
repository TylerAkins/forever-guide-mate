local _, ns = ...

-- Horde Era leveling route for Azshara, levels 46-47.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    AZSHARA = 1447,
    UNDERCITY = 1458,
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
    id = "leveling-era-46-47-azshara",
    title = "46-47 Azshara (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 46 } },
        },
    },
    goals = {
        {
            id = "travel-5535-talrendis-point",
            kind = "travel",
            priority = 10,
            text = "Travel to Talrendis Point in Azshara.",
            route = {
                Point(MAP.AZSHARA, 0.1137, 0.7814, "Talrendis Point",
                    "Travel to Talrendis Point."),
            },
        },
        {
            id = "accept-5535-spiritual-unrest",
            kind = "accept",
            priority = 20,
            text = "Accept Spiritual Unrest from Loh'atu in Talrendis Point.",
            complete = QuestState(5535, "activeOrCompleted"),
            route = {
                Point(MAP.AZSHARA, 0.1137, 0.7814, "Loh'atu",
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
                Point(MAP.AZSHARA, 0.1137, 0.7814, "Loh'atu",
                    "Travel to Loh'atu."),
            },
        },
        {
            id = "objective-5535-spiritual-unrest",
            kind = "objective",
            priority = 40,
            text = "Kill 6 Highborne Apparition and 6 Highborne Lichling at the Shadowsong Shrine.",
            dependsOn = { "accept-5535-spiritual-unrest" },
            complete = QuestState(5535, "complete"),
            route = {
                Point(MAP.AZSHARA, 0.1700, 0.6600, "Highborne Apparition",
                    "Travel to Highborne Apparition."),
            },
        },
        {
            id = "objective-5536-a-land-filled-with-hatred",
            kind = "objective",
            priority = 50,
            text = "Kill 6 Haldarr Satyr, 2 Haldarr Trickster and 2 Haldarr Felsworn found a bit more north in Haldarr Encampment.",
            dependsOn = { "accept-5536-a-land-filled-with-hatred" },
            complete = QuestState(5536, "complete"),
            route = {
                Point(MAP.AZSHARA, 0.2000, 0.6500, "Haldarr Satyr",
                    "Travel to Haldarr Satyr."),
            },
        },
        {
            id = "travel-talrendis-point",
            kind = "travel",
            priority = 60,
            text = "Travel to Talrendis Point.",
            route = {
                Point(MAP.AZSHARA, 0.1137, 0.7814, "Talrendis Point",
                    "Travel to Talrendis Point."),
            },
        },
        {
            id = "turnin-5535-spiritual-unrest",
            kind = "turnin",
            priority = 70,
            text = "Turn in Spiritual Unrest to Loh'atu in Talrendis Point.",
            dependsOn = { "objective-5535-spiritual-unrest" },
            complete = QuestState(5535, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.1137, 0.7814, "Loh'atu",
                    "Travel to Loh'atu."),
            },
        },
        {
            id = "turnin-5536-a-land-filled-with-hatred",
            kind = "turnin",
            priority = 80,
            text = "Turn in A Land Filled with Hatred to Loh'atu in Talrendis Point.",
            dependsOn = { "objective-5536-a-land-filled-with-hatred" },
            complete = QuestState(5536, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.1137, 0.7814, "Loh'atu",
                    "Travel to Loh'atu."),
            },
        },
        {
            id = "travel-3568-valormok",
            kind = "travel",
            priority = 90,
            text = "Travel to Valormok. North of the road, on the mountain's edge.",
            route = {
                Point(MAP.AZSHARA, 0.2100, 0.5200, "Valormok",
                    "Travel to Valormok."),
            },
        },
        {
            id = "turnin-3504-betrayed",
            kind = "turnin",
            priority = 100,
            text = "Turn in Betrayed to Ag'tor Bloodfist in Valormok.",
            complete = QuestState(3504, "completed"),
            route = {
                Point(MAP.AZSHARA, 0.2228, 0.5148, "Ag'tor Bloodfist",
                    "Travel to Ag'tor Bloodfist."),
            },
        },
        {
            id = "accept-3517-stealing-knowledge",
            kind = "accept",
            priority = 110,
            text = "Accept Stealing Knowledge from Jediga in Valormok.",
            complete = QuestState(3517, "activeOrCompleted"),
            route = {
                Point(MAP.AZSHARA, 0.2254, 0.5138, "Jediga",
                    "Travel to Jediga."),
            },
        },
        {
            id = "travel-3568-undercity",
            kind = "travel",
            priority = 120,
            text = "Travel to Undercity.",
            route = {
                Point(MAP.UNDERCITY, 0.5186, 0.8041, "Undercity",
                    "Travel to Undercity."),
            },
        },
        {
            id = "accept-3568-seeping-corruption",
            kind = "accept",
            priority = 130,
            text = "Accept Seeping Corruption from Chemist Cuely in The Apothecarium.",
            complete = QuestState(3568, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.5186, 0.8041, "Continue toward Seeping Corruption",
                    "Continue toward Seeping Corruption."),
                Point(MAP.UNDERCITY, 0.4990, 0.6972, "Chemist Cuely",
                    "Travel to Chemist Cuely."),
            },
        },
        {
            id = "accept-232-errand-for-apothecary-zinge",
            kind = "accept",
            priority = 140,
            text = "Accept Errand for Apothecary Zinge from Apothecary Zinge in The Apothecarium.",
            complete = QuestState(232, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.5014, 0.6824, "Apothecary Zinge",
                    "Travel to Apothecary Zinge."),
            },
        },
        {
            id = "turnin-232-errand-for-apothecary-zinge",
            kind = "turnin",
            priority = 150,
            text = "Turn in Errand for Apothecary Zinge to Alessandro Luca in The Apothecarium.",
            dependsOn = { "accept-232-errand-for-apothecary-zinge" },
            complete = QuestState(232, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.5859, 0.5470, "Alessandro Luca",
                    "Travel to Alessandro Luca."),
            },
        },
        {
            id = "accept-238-errand-for-apothecary-zinge",
            kind = "accept",
            priority = 160,
            text = "Accept Errand for Apothecary Zinge from Alessandro Luca in The Apothecarium.",
            complete = QuestState(238, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.5859, 0.5470, "Alessandro Luca",
                    "Travel to Alessandro Luca."),
            },
        },
        {
            id = "turnin-238-errand-for-apothecary-zinge",
            kind = "turnin",
            priority = 170,
            text = "Turn in Errand for Apothecary Zinge to Apothecary Zinge in The Apothecarium.",
            dependsOn = { "accept-238-errand-for-apothecary-zinge" },
            complete = QuestState(238, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.5186, 0.8041, "Continue toward Errand for Apothecary Zinge",
                    "Continue toward Errand for Apothecary Zinge."),
                Point(MAP.UNDERCITY, 0.5012, 0.6831, "Apothecary Zinge",
                    "Travel to Apothecary Zinge."),
            },
        },
        {
            id = "accept-243-into-the-field",
            kind = "accept",
            priority = 180,
            text = "Accept Into the Field from Apothecary Zinge in The Apothecarium.",
            complete = QuestState(243, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.5012, 0.6831, "Apothecary Zinge",
                    "Travel to Apothecary Zinge."),
            },
        },
    },
})
