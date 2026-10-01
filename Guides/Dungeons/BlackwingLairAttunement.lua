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
    category = "Dungeon Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { level = { min = 55 } },
            BOTH_FACTIONS,
        },
    },
    goals = {
        {
            id = "boss-scarshield-quartermaster",
            kind = "note",
            priority = 10,
            conditions = { level = { min = 55 } },
            text = "Kill Scarshield Quartermaster. He walks around this area.",
        },
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
            id = "boss-general-drakkisath",
            kind = "note",
            priority = 13,
            conditions = { level = { min = 55 } },
            text = "Kill General Drakkisath. Use the Dungeon guides to accomplish this. It looks like a large glowing blue totem behind General Drakkisath. Turning this in will allow you to teleport directly to Blackwing Lair by clicking the Orb of Command.",
            dependsOn = { "enter-dungeon" },
        },
        {
            id = "note-click-drakkisath-s-brand",
            kind = "note",
            priority = 14,
            conditions = { level = { min = 55 } },
            text = "Click Drakkisath's Brand.",
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
