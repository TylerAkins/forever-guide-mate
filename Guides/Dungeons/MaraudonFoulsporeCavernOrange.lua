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
    id = "dungeons-maraudon-foulspore-cavern-orange",
    title = "Maraudon (Foulspore Cavern - Orange)",
    category = "Dungeon Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { level = { min = 45 } },
            BOTH_FACTIONS,
        },
    },
    goals = {
        {
            id = "enter-dungeon",
            kind = "travel",
            priority = 11,
            conditions = { level = { min = 45 } },
            text = "Enter Maraudon (Foulspore Cavern - Orange) with your group.",
            persistCompletion = true,
            complete = { instance = 349 },
        },
    },
})
