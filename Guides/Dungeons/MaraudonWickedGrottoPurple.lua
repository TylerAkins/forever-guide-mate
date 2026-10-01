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
    id = "dungeons-maraudon-wicked-grotto-purple",
    title = "Maraudon (Wicked Grotto - Purple)",
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
            id = "note-click-stone-door",
            kind = "note",
            priority = 10,
            conditions = { level = { min = 45 } },
            text = "Click Stone Door.",
        },
        {
            id = "enter-dungeon",
            kind = "travel",
            priority = 11,
            conditions = { level = { min = 45 } },
            text = "Enter Maraudon - Purple with your group.",
            persistCompletion = true,
            complete = { instance = 349 },
        },
        {
            id = "boss-lord-vyletongue",
            kind = "note",
            priority = 12,
            conditions = { level = { min = 45 } },
            text = "Kill Lord Vyletongue. Have the entire group stack on top of each other to avoid the bosses ranged abilities. He will occasionally use his 'Blink' ability, causing him to move away from the group. Be sure to stack in melee range of the boss as soon as possible whenever this happens.",
            dependsOn = { "enter-dungeon" },
        },
        {
            id = "note-click-here-to-continue",
            kind = "note",
            priority = 13,
            conditions = { level = { min = 45 } },
            text = "Click Here to Continue.",
        },
    },
})
