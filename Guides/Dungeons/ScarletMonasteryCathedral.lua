local _, ns = ...

local MAP = {
    STORMWIND_CITY = 1453,
    DESOLACE = 1443,
    HILLSBRAD_FOOTHILLS = 1424,
    TIRISFAL_GLADES = 1420,
    UNDERCITY = 1458,
}

local ALLIANCE = { faction = "Alliance" }
local HORDE = { faction = "Horde" }
local BOTH_FACTIONS = { any = { { faction = "Alliance" }, { faction = "Horde" } } }

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
    id = "dungeons-scarlet-monastery-cathedral",
    title = "Scarlet Monastery (Cathedral)",
    category = "Dungeon Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { level = { min = 40 } },
            BOTH_FACTIONS,
        },
    },
    goals = {
        {
            id = "accept-6141-brother-anton",
            kind = "accept",
            priority = 10,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 34 } } } },
            text = "Accept Brother Anton from Brother Crowley.",
            complete = QuestState(6141, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND_CITY, 0.426, 0.242, "Brother Crowley", "Travel to Stormwind City."),
            },
        },
        {
            id = "turnin-6141-brother-anton",
            kind = "turnin",
            priority = 11,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 34 } } } },
            text = "Turn in Brother Anton to Brother Anton.",
            dependsOn = { "accept-6141-brother-anton" },
            complete = QuestState(6141, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.665, 0.079, "Brother Anton", "Travel to Desolace."),
            },
        },
        {
            id = "accept-261-down-the-scarlet-path",
            kind = "accept",
            priority = 12,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            text = "Accept Down the Scarlet Path from Brother Anton.",
            dependsOn = { "turnin-6141-brother-anton" },
            complete = QuestState(261, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.665, 0.079, "Brother Anton", "Travel to Desolace."),
            },
        },
        {
            id = "objective-261-1-undead-ravager",
            kind = "objective",
            priority = 13,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            text = "Kill 30 Undead Ravager.",
            dependsOn = { "accept-261-down-the-scarlet-path" },
            complete = QuestState(261, "complete"),
            route = {
                Point(MAP.DESOLACE, 0.641, 0.916, "Desolace", "Travel to Desolace."),
            },
        },
        {
            id = "turnin-261-down-the-scarlet-path",
            kind = "turnin",
            priority = 14,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            text = "Turn in Down the Scarlet Path to Brother Anton.",
            dependsOn = { "objective-261-1-undead-ravager" },
            complete = QuestState(261, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.665, 0.079, "Brother Anton", "Travel to Desolace."),
            },
        },
        {
            id = "accept-1052-down-the-scarlet-path",
            kind = "accept",
            priority = 15,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            text = "Accept Down the Scarlet Path from Brother Anton.",
            dependsOn = { "turnin-261-down-the-scarlet-path" },
            complete = QuestState(1052, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.665, 0.079, "Brother Anton", "Travel to Desolace."),
            },
        },
        {
            id = "turnin-1052-down-the-scarlet-path",
            kind = "turnin",
            priority = 16,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            text = "Turn in Down the Scarlet Path to Raleigh the Devout.",
            dependsOn = { "accept-1052-down-the-scarlet-path" },
            complete = QuestState(1052, "completed"),
            route = {
                Point(MAP.HILLSBRAD_FOOTHILLS, 0.515, 0.584, "Raleigh the Devout", "Travel to Hillsbrad Foothills."),
            },
        },
        {
            id = "accept-1053-in-the-name-of-the-light",
            kind = "accept",
            priority = 17,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            text = "Accept In the Name of the Light from Raleigh the Devout.",
            dependsOn = { "turnin-1052-down-the-scarlet-path" },
            complete = QuestState(1053, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD_FOOTHILLS, 0.515, 0.584, "Raleigh the Devout", "Travel to Hillsbrad Foothills."),
            },
        },
        {
            id = "enter-dungeon",
            kind = "travel",
            priority = 19,
            conditions = { level = { min = 40 } },
            text = "Enter Scarlet Monastery - Cathedral with your group.",
            dependsOn = { "accept-6141-brother-anton", "accept-261-down-the-scarlet-path", "accept-1052-down-the-scarlet-path", "accept-1053-in-the-name-of-the-light" },
            persistCompletion = true,
            complete = { instance = 189 },
        },
        {
            id = "objective-1053-2-scarlet-commander-mograi",
            kind = "objective",
            priority = 23,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            text = "Kill Scarlet Commander Mograine.",
            dependsOn = { "accept-1053-in-the-name-of-the-light" },
            complete = QuestObjective(1053, 2, "Scarlet Commander Mograine"),
            useClientPin = true,
        },
        {
            id = "objective-1053-1-high-inquisitor-whiteman",
            kind = "objective",
            priority = 24,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            text = "Kill High Inquisitor Whitemane.",
            dependsOn = { "accept-1053-in-the-name-of-the-light" },
            complete = QuestObjective(1053, 1, "High Inquisitor Whitemane"),
            useClientPin = true,
        },
        {
            id = "turnin-1053-in-the-name-of-the-light",
            kind = "turnin",
            priority = 27,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            text = "Turn in In the Name of the Light to Raleigh the Devout.",
            dependsOn = { "objective-1053-2-scarlet-commander-mograi", "objective-1053-1-high-inquisitor-whiteman" },
            complete = QuestState(1053, "completed"),
            route = {
                Point(MAP.HILLSBRAD_FOOTHILLS, 0.515, 0.584, "Raleigh the Devout", "Travel to Hillsbrad Foothills."),
            },
        },
        {
            id = "accept-1048-into-the-scarlet-monastery",
            kind = "accept",
            priority = 28,
            conditions = { all = { { faction = "Horde" }, { level = { min = 37 } } } },
            text = "Accept Into The Scarlet Monastery from Varimathras.",
            complete = QuestState(1048, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.563, 0.922, "Varimathras", "Travel to Undercity."),
            },
        },
        {
            id = "objective-1048-2-scarlet-commander-mograi",
            kind = "objective",
            priority = 29,
            conditions = { all = { { faction = "Horde" }, { level = { min = 37 } } } },
            text = "Kill Scarlet Commander Mograine.",
            dependsOn = { "accept-1048-into-the-scarlet-monastery" },
            complete = QuestObjective(1048, 2, "Scarlet Commander Mograine"),
            useClientPin = true,
        },
        {
            id = "objective-1048-1-high-inquisitor-whiteman",
            kind = "objective",
            priority = 30,
            conditions = { all = { { faction = "Horde" }, { level = { min = 37 } } } },
            text = "Kill High Inquisitor Whitemane.",
            dependsOn = { "accept-1048-into-the-scarlet-monastery" },
            complete = QuestObjective(1048, 1, "High Inquisitor Whitemane"),
            useClientPin = true,
        },
        {
            id = "turnin-1048-into-the-scarlet-monastery",
            kind = "turnin",
            priority = 31,
            conditions = { all = { { faction = "Horde" }, { level = { min = 37 } } } },
            text = "Turn in Into The Scarlet Monastery to Varimathras.",
            dependsOn = { "objective-1048-2-scarlet-commander-mograi", "objective-1048-1-high-inquisitor-whiteman" },
            complete = QuestState(1048, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.563, 0.922, "Varimathras", "Travel to Undercity."),
            },
        },
    },
})
