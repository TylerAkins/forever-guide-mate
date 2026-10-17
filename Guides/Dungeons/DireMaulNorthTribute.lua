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
    routeMode = "ordered",
    id = "dungeons-dire-maul-north-tribute",
    title = "Dire Maul North Tribute",
    category = "Dungeon Quest Guides",
    revision = 2,
    conditions = {
        all = {
            { level = { min = 58 } },
            BOTH_FACTIONS,
        },
    },
    goals = {
        {
            id = "enter-dungeon",
            kind = "travel",
            conditions = { level = { min = 58 } },
            text = "Enter Dire Maul - North with your group.",
            persistCompletion = true,
            complete = { instance = 429 },
        },
        {
            id = "turnin-1193-a-broken-trap",
            kind = "note",
            conditions = { level = { min = 56 } },
            text = "Inside Dire Maul North, repair the Broken Trap with one Thorium Widget and one Frost Oil for your tribute run. Mark this instruction complete after repairing it, or skip it if your group bypasses the guard.",

            useClientPin = true,
        },
    },
})
