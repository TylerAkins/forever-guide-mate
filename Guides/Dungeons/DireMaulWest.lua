local _, ns = ...

local MAP = {
    FERALAS = 1444,
}

local BOTH_FACTIONS = { any = { { faction = "Alliance" }, { faction = "Horde" } } }

local function QuestState(questID, state)
    return { quest = { id = questID, state = state } }
end

local function QuestObjective(questID, index, text)
    return { questObjective = { id = questID, index = index, text = text } }
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
    id = "dungeons-dire-maul-west",
    title = "Dire Maul West",
    category = "Dungeon Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { level = { min = 56 } },
            BOTH_FACTIONS,
        },
    },
    goals = {
        {
            id = "enter-dungeon",
            kind = "travel",
            priority = 12,
            conditions = { level = { min = 56 } },
            text = "Enter Dire Maul - West with your group.",
            persistCompletion = true,
            complete = { instance = 429 },
        },
        {
            id = "accept-7461-the-madness-within",
            kind = "accept",
            priority = 14,
            conditions = { level = { min = 56 } },
            text = "Accept The Madness Within from Shen'dralar Ancient.",
            complete = QuestState(7461, "activeOrCompleted"),
        },
        {
            id = "objective-7461-1-immol-thar",
            kind = "objective",
            priority = 16,
            conditions = { level = { min = 56 } },
            text = "Slay Immol'thar.",
            dependsOn = { "accept-7461-the-madness-within" },
            complete = QuestObjective(7461, 1, "Immol'thar"),
            useClientPin = true,
        },
        {
            id = "objective-7461-2-prince-tortheldrin",
            kind = "objective",
            priority = 18,
            conditions = { level = { min = 56 } },
            text = "Slay Prince Tortheldrin.",
            dependsOn = { "accept-7461-the-madness-within" },
            complete = QuestObjective(7461, 2, "Prince Tortheldrin"),
            useClientPin = true,
        },
        {
            id = "turnin-7461-the-madness-within",
            kind = "turnin",
            priority = 19,
            conditions = { level = { min = 56 } },
            text = "Turn in The Madness Within to Shen'dralar Ancient.",
            dependsOn = { "objective-7461-1-immol-thar", "objective-7461-2-prince-tortheldrin" },
            complete = QuestState(7461, "completed"),
            useClientPin = true,
        },
        {
            id = "accept-7462-the-treasure-of-the-shen-dralar",
            kind = "accept",
            priority = 20,
            conditions = { level = { min = 56 } },
            text = "Accept The Treasure of the Shen'dralar from Shen'dralar Ancient.",
            dependsOn = { "turnin-7461-the-madness-within" },
            complete = QuestState(7462, "activeOrCompleted"),
        },
        {
            id = "turnin-7462-the-treasure-of-the-shen-dralar",
            kind = "turnin",
            priority = 22,
            conditions = { level = { min = 56 } },
            text = "Turn in The Treasure of the Shen'dralar.",
            dependsOn = { "accept-7462-the-treasure-of-the-shen-dralar" },
            complete = QuestState(7462, "completed"),
            useClientPin = true,
        },
    },
})
