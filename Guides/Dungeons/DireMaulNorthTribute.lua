local _, ns = ...

local MAP = {
    FERALAS = 1444,
}

local BOTH_FACTIONS = { any = { { faction = "Alliance" }, { faction = "Horde" } } }

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
    id = "dungeons-dire-maul-north-tribute",
    title = "Dire Maul North Tribute",
    category = "Dungeon Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { level = { min = 58 } },
            BOTH_FACTIONS,
        },
    },
    goals = {
        {
            id = "turnin-1193-a-broken-trap",
            kind = "turnin",
            priority = 13,
            conditions = { level = { min = 56 } },
            text = "Turn in A Broken Trap.",
            complete = QuestState(1193, "completed"),
            useClientPin = true,
        },
        {
            id = "enter-dungeon",
            kind = "travel",
            priority = 18,
            conditions = { level = { min = 58 } },
            text = "Enter Dire Maul - North with your group.",
            persistCompletion = true,
            complete = { instance = 429 },
        },
    },
})
