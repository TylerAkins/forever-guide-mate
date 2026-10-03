local _, ns = ...

local MAP = {
    DESOLACE = 1443,
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
    id = "dungeons-maraudon-earth-song-falls-inner",
    title = "Maraudon (Earth Song Falls - Inner)",
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
            priority = 12,
            conditions = { level = { min = 48 } },
            text = "Enter Maraudon (Earth Song Falls - Inner) with your group.",
            persistCompletion = true,
            complete = { instance = 349 },
        },
    },
})
