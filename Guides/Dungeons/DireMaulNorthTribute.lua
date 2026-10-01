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
            id = "note-click-here-to-continue",
            kind = "note",
            priority = 10,
            conditions = { level = { min = 58 } },
            text = "Click Here to Continue.",
        },
        {
            id = "note-click-fengus-s-chest",
            kind = "note",
            priority = 11,
            conditions = { level = { min = 58 } },
            text = "Click Fengus's Chest.",
        },
        {
            id = "note-click-broken-trap",
            kind = "note",
            priority = 12,
            conditions = { level = { min = 58 } },
            text = "Click Broken Trap.",
        },
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
            id = "note-click-here-to-continue-um-i-m-taking-some",
            kind = "note",
            priority = 14,
            conditions = { level = { min = 58 } },
            text = "Click Here to Continue. 'Um, I'm taking some prisoners we found outside before the king for punishment.'.",
        },
        {
            id = "boss-king-gordok",
            kind = "note",
            priority = 15,
            conditions = { level = { min = 58 } },
            text = "Kill King Gordok. Use CC on Cho'Rush the Observer when possible. Be sure not to kill Cho'Rush the Observer.",
        },
        {
            id = "note-click-gordok-tribute",
            kind = "note",
            priority = 16,
            conditions = { level = { min = 58 } },
            text = "Click Gordok Tribute.",
        },
        {
            id = "note-click-door",
            kind = "note",
            priority = 17,
            conditions = { level = { min = 58 } },
            text = "Click Door.",
            route = {
                Point(MAP.FERALAS, 0.625, 0.249, "Feralas", "Travel to Feralas."),
            },
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
