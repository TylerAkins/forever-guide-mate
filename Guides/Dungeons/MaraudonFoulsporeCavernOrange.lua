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
            text = "Enter Maraudon (Foulspore Cavern - Orange) with your group.",
            persistCompletion = true,
            complete = { instance = 349 },
        },
        {
            id = "boss-noxxion",
            kind = "note",
            priority = 12,
            conditions = { level = { min = 45 } },
            text = "Kill Noxxion. Noxxion will use 'Toxic Volley' which will deal damage to the entire group. During the fight, he will split into tiny versions of himself which need to be killed before you can resume damaging him again.",
            dependsOn = { "enter-dungeon" },
        },
        {
            id = "note-click-here-to-continue",
            kind = "note",
            priority = 13,
            conditions = { level = { min = 45 } },
            text = "Click Here to Continue.",
        },
        {
            id = "boss-razorlash",
            kind = "note",
            priority = 14,
            conditions = { level = { min = 45 } },
            text = "Kill Razorlash. Razorlash uses the 'Cleave' ability, so ranged sould stand at max range to avoid additional damage to the group. It will also use the 'Puncture' ability which will deal heavy damage to its target.",
            dependsOn = { "boss-noxxion" },
        },
    },
})
