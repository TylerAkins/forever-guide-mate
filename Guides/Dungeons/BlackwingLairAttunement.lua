-- TODO: Convert this guide to Forever before loading it.
-- Not shipped. Onyxia's Lair is the only raid content confirmed in Forever.

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
    id = "dungeons-blackwing-lair-attunement",
    title = "Blackwing Lair Attunement",
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
            id = "accept-7761-blackhand-s-command",
            kind = "accept",
            priority = 11,
            conditions = { level = { min = 55 } },
            text = "Accept Blackhand's Command.",
            complete = QuestState(7761, "activeOrCompleted"),
        },
        {
            id = "enter-dungeon",
            kind = "travel",
            priority = 12,
            conditions = { level = { min = 55 } },
            text = "Enter Blackrock Spire with your group.",
            dependsOn = { "accept-7761-blackhand-s-command" },
        },
        {
            id = "turnin-7761-blackhand-s-command",
            kind = "turnin",
            priority = 15,
            conditions = { level = { min = 55 } },
            text = "Turn in Blackhand's Command.",
            dependsOn = { "accept-7761-blackhand-s-command" },
            complete = QuestState(7761, "completed"),
            useClientPin = true,
        },
    },
})
