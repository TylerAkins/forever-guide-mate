local _, ns = ...

local MAP = {
    UNDERCITY = 1458,
    ALTERAC_MOUNTAINS = 1416,
    HILLSBRAD_FOOTHILLS = 1424,
}

local HORDE = { faction = "Horde" }

local function QuestState(questID, state)
    return { quest = { id = questID, state = state } }
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
    id = "dungeons-scarlet-monastery-graveyard",
    title = "Scarlet Monastery (Graveyard)",
    category = "Dungeon Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 30 } },
        },
    },
    goals = {
        {
            id = "accept-1109-going-going-guano",
            kind = "accept",
            priority = 10,
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            text = "Accept Going, Going, Guano! from Master Apothecary Faranell.",
            complete = QuestState(1109, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.488, 0.693, "Master Apothecary Faranell", "Travel to Undercity."),
            },
        },
        {
            id = "objective-1109-1-kraul-guano",
            kind = "objective",
            priority = 11,
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            text = "Loot a pile of Kraul Guano from the bat roosts in Razorfen Kraul.",
            dependsOn = { "accept-1109-going-going-guano" },
            complete = QuestState(1109, "complete"),
            useClientPin = true,
        },
        {
            id = "turnin-1109-going-going-guano",
            kind = "turnin",
            priority = 12,
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            text = "Turn in Going, Going, Guano! to Master Apothecary Faranell.",
            dependsOn = { "objective-1109-1-kraul-guano" },
            complete = QuestState(1109, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.488, 0.693, "Master Apothecary Faranell", "Travel to Undercity."),
            },
        },
        {
            id = "accept-1113-hearts-of-zeal",
            kind = "accept",
            priority = 13,
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            text = "Accept Hearts of Zeal from Master Apothecary Faranell.",
            dependsOn = { "turnin-1109-going-going-guano" },
            complete = QuestState(1113, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.488, 0.693, "Master Apothecary Faranell", "Travel to Undercity."),
            },
        },
        {
            id = "enter-dungeon",
            kind = "travel",
            priority = 14,
            conditions = { level = { min = 30 } },
            text = "Enter Scarlet Monastery - Graveyard with your group.",
            dependsOn = { "accept-1109-going-going-guano", "accept-1113-hearts-of-zeal" },
            persistCompletion = true,
            complete = { instance = 189 },
        },
        {
            id = "accept-1051-vorrel-s-revenge",
            kind = "accept",
            priority = 20,
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } } } },
            text = "Accept Vorrel's Revenge from Vorrel Sengutz.",
            complete = QuestState(1051, "activeOrCompleted"),
        },
        {
            id = "objective-1113-1-heart-of-zeal",
            kind = "objective",
            priority = 22,
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            text = "Kill Scarlet zealots in the Graveyard wing until you loot 30 Heart of Zeal.",
            dependsOn = { "accept-1113-hearts-of-zeal" },
            complete = QuestState(1113, "complete"),
            useClientPin = true,
        },
        {
            id = "objective-1051-1-vorrel-s-wedding-ring",
            kind = "objective",
            priority = 26,
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } } } },
            text = "Kill Interrogator Vishas in the Graveyard wing and loot Vorrel's Wedding Ring.",
            dependsOn = { "accept-1051-vorrel-s-revenge" },
            complete = QuestState(1051, "complete"),
            route = {
                Point(MAP.ALTERAC_MOUNTAINS, 0.323, 0.328, "Alterac Mountains", "Travel to Alterac Mountains."),
            },
        },
        {
            id = "turnin-1051-vorrel-s-revenge",
            kind = "turnin",
            priority = 27,
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } } } },
            text = "Turn in Vorrel's Revenge to Monika Sengutz.",
            dependsOn = { "objective-1051-1-vorrel-s-wedding-ring" },
            complete = QuestState(1051, "completed"),
            route = {
                Point(MAP.HILLSBRAD_FOOTHILLS, 0.627, 0.189, "Monika Sengutz", "Travel to Hillsbrad Foothills."),
            },
        },
        {
            id = "turnin-1113-hearts-of-zeal",
            kind = "turnin",
            priority = 28,
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            text = "Turn in Hearts of Zeal to Master Apothecary Faranell.",
            dependsOn = { "objective-1113-1-heart-of-zeal" },
            complete = QuestState(1113, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.488, 0.693, "Master Apothecary Faranell", "Travel to Undercity."),
            },
        },
    },
})
