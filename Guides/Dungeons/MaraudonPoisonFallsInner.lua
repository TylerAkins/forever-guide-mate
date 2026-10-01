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
            id = "note-click-stone-door",
            kind = "note",
            priority = 10,
            conditions = { level = { min = 48 } },
            text = "Click Stone Door.",
        },
        {
            id = "enter-dungeon",
            kind = "travel",
            priority = 11,
            conditions = { level = { min = 48 } },
            text = "Enter Maraudon - Purple with your group.",
            persistCompletion = true,
            complete = { instance = 349 },
        },
        {
            id = "boss-meshlok-the-harvester",
            kind = "note",
            priority = 12,
            conditions = { level = { min = 48 } },
            text = "Kill Meshlok the Harvester if the rare is up. Meshlock patrols the waters near the start. This is a rare mob that may not be available. Ranged should stay spread out and it should be tanked away from the group.",
            dependsOn = { "enter-dungeon" },
        },
        {
            id = "note-click-here-to-continue",
            kind = "note",
            priority = 13,
            conditions = { level = { min = 48 } },
            text = "Click Here to Continue.",
        },
        {
            id = "boss-celebras-the-cursed",
            kind = "note",
            priority = 14,
            conditions = { level = { min = 48 } },
            text = "Kill Celebras the Cursed. The tank should pick up Corrupt Forces of Nature whenever they spawn. Focus on killing Celebras first. Interrupt Wrath whenever possible.",
            dependsOn = { "boss-meshlok-the-harvester" },
        },
    },
})
