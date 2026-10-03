-- TODO: Convert this guide to Forever before loading it.
-- Not shipped. Onyxia's Lair is the only raid content confirmed in Forever.

local _, ns = ...

local MAP = {
    SEARING_GORGE = 1427,
}

local BOTH_FACTIONS = { any = { { faction = "Alliance" }, { faction = "Horde" } } }

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
    id = "dungeons-molten-core-attunement",
    title = "Molten Core Attunement",
    category = "Raid Quests",
    revision = 1,
    conditions = {
        all = {
            { level = { min = 55 } },
            BOTH_FACTIONS,
        },
    },
    goals = {
        {
            id = "enter-blackrock-depths",
            kind = "travel",
            priority = 11,
            conditions = { level = { min = 55 } },
            text = "Enter Blackrock Depths with your group. " ..
                "The short path to Lord Incendius is the locked door on the left, through the Detention Block, " ..
                "the Dark Iron Highway, and Shadowforge City.",
        },
    },
})
