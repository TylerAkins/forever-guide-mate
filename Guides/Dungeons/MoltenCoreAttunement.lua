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
            id = "accept-attunement-to-the-core",
            kind = "note",
            priority = 10,
            conditions = { level = { min = 55 } },
            text = "Pick up Attunement to the Core from Lothos Riftwaker in Blackrock Mountain.",
            route = {
                Point(MAP.SEARING_GORGE, 0.484, 0.638, "Lothos Riftwaker", "Travel to Searing Gorge."),
            },
        },
        {
            id = "enter-blackrock-depths",
            kind = "travel",
            priority = 11,
            conditions = { level = { min = 55 } },
            text = "Enter Blackrock Depths with your group. " ..
                "The short path to Lord Incendius is the locked door on the left, through the Detention Block, " ..
                "the Dark Iron Highway, and Shadowforge City.",
            dependsOn = { "accept-attunement-to-the-core" },
        },
        {
            id = "collect-core-fragment",
            kind = "note",
            priority = 12,
            conditions = { level = { min = 55 } },
            text = "From Lord Incendius's platform, jump into the lava and hug the left wall. " ..
                "Swim past the Fireguard Destroyer island to the bridge. " ..
                "The Core Fragment is on the left side of the bridge, before the green portal.",
            dependsOn = { "enter-blackrock-depths" },
        },
        {
            id = "turnin-attunement-to-the-core",
            kind = "note",
            priority = 13,
            conditions = { level = { min = 55 } },
            text = "Bring the Core Fragment back to Lothos Riftwaker. He can then teleport you to Molten Core.",
            dependsOn = { "collect-core-fragment" },
            route = {
                Point(MAP.SEARING_GORGE, 0.484, 0.638, "Lothos Riftwaker", "Travel to Searing Gorge."),
            },
        },
    },
})
