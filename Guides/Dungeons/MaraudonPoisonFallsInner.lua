local _, ns = ...

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
    id = "dungeons-maraudon-poison-falls-inner",
    title = "Maraudon (Poison Falls - Inner)",
    category = "Dungeon Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { level = { min = 48 } },
            BOTH_FACTIONS,
        },
    },
    goals = {
        {
            id = "enter-dungeon",
            kind = "travel",
            priority = 11,
            conditions = { level = { min = 48 } },
            text = "Enter Maraudon - Purple with your group.",
            persistCompletion = true,
            complete = { instance = 349 },
        },
    },
})
