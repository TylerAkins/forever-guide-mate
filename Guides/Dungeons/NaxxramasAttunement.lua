-- TODO: Convert this guide to Forever before loading it.
-- Not shipped. Onyxia's Lair is the only raid content confirmed in Forever.

local _, ns = ...

local MAP = {
    EASTERN_PLAGUELANDS = 1423,
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
    routeMode = "ordered",
    id = "dungeons-naxxramas-attunement",
    title = "Naxxramas Attunement",
    category = "Raid Quests",
    revision = 2,
    conditions = {
        all = {
            { level = { min = 60 } },
            BOTH_FACTIONS,
        },
    },
    goals = {
        {
            id = "accept-9121-the-dread-citadel-naxxramas",
            kind = "accept",
            conditions = { level = { min = 60 } },
            text = "Accept The Dread Citadel - Naxxramas from Archmage Angela Dosantos.",
            complete = QuestState(9121, "activeOrCompleted"),
            route = {
                Point(MAP.EASTERN_PLAGUELANDS, 0.815, 0.583, "Archmage Angela Dosantos", "Travel to Eastern Plaguelands."),
            },
        },
        {
            id = "accept-9122-the-dread-citadel-naxxramas",
            kind = "accept",
            conditions = { level = { min = 60 } },
            text = "Accept The Dread Citadel - Naxxramas from Archmage Angela Dosantos.",
            complete = QuestState(9122, "activeOrCompleted"),
            route = {
                Point(MAP.EASTERN_PLAGUELANDS, 0.815, 0.583, "Archmage Angela Dosantos", "Travel to Eastern Plaguelands."),
            },
        },
        {
            id = "accept-9123-the-dread-citadel-naxxramas",
            kind = "accept",
            conditions = { level = { min = 60 } },
            text = "Accept The Dread Citadel - Naxxramas from Archmage Angela Dosantos.",
            complete = QuestState(9123, "activeOrCompleted"),
            route = {
                Point(MAP.EASTERN_PLAGUELANDS, 0.815, 0.583, "Archmage Angela Dosantos", "Travel to Eastern Plaguelands."),
            },
        },
        {
            id = "objective-9121-1-arcane-crystal",
            kind = "objective",
            conditions = { level = { min = 60 } },
            text = "Collect 5 Arcane Crystal.",
            dependsOn = { "accept-9121-the-dread-citadel-naxxramas" },
            complete = QuestObjective(9121, 1, "Arcane Crystal"),
            useClientPin = true,
        },
        {
            id = "objective-9122-1-arcane-crystal",
            kind = "objective",
            conditions = { level = { min = 60 } },
            text = "Collect 3 Arcane Crystal.",
            dependsOn = { "accept-9122-the-dread-citadel-naxxramas" },
            complete = QuestObjective(9122, 1, "Arcane Crystal"),
            useClientPin = true,
        },
        {
            id = "objective-9121-2-nexus-crystal",
            kind = "objective",
            conditions = { level = { min = 60 } },
            text = "Collect 2 Nexus Crystal.",
            dependsOn = { "accept-9121-the-dread-citadel-naxxramas" },
            complete = QuestObjective(9121, 2, "Nexus Crystal"),
            useClientPin = true,
        },
        {
            id = "objective-9122-2-nexus-crystal",
            kind = "objective",
            conditions = { level = { min = 60 } },
            text = "Collect 1 Nexus Crystal.",
            dependsOn = { "accept-9122-the-dread-citadel-naxxramas" },
            complete = QuestObjective(9122, 2, "Nexus Crystal"),
            useClientPin = true,
        },
        {
            id = "objective-9121-3-righteous-orb",
            kind = "objective",
            conditions = { level = { min = 60 } },
            text = "Collect 1 Righteous Orb.",
            dependsOn = { "accept-9121-the-dread-citadel-naxxramas" },
            complete = QuestObjective(9121, 3, "Righteous Orb"),
            useClientPin = true,
        },
        {
            id = "objective-9121-4-reach-honored-reputation",
            kind = "objective",
            conditions = { level = { min = 60 } },
            text = "Reach Honored Reputation with the Argent Dawn.",
            dependsOn = { "accept-9121-the-dread-citadel-naxxramas" },
            complete = QuestObjective(9121, 4, "Reach Honored Reputation with the Argent"),
            useClientPin = true,
        },
        {
            id = "turnin-9121-the-dread-citadel-naxxramas",
            kind = "turnin",
            conditions = { level = { min = 60 } },
            text = "Turn in The Dread Citadel - Naxxramas to Archmage Angela Dosantos.",
            dependsOn = { "objective-9121-1-arcane-crystal", "objective-9121-2-nexus-crystal", "objective-9121-3-righteous-orb", "objective-9121-4-reach-honored-reputation" },
            complete = QuestState(9121, "completed"),
            route = {
                Point(MAP.EASTERN_PLAGUELANDS, 0.815, 0.583, "Archmage Angela Dosantos", "Travel to Eastern Plaguelands."),
            },
        },
        {
            id = "turnin-9122-the-dread-citadel-naxxramas",
            kind = "turnin",
            conditions = { level = { min = 60 } },
            text = "Turn in The Dread Citadel - Naxxramas to Archmage Angela Dosantos.",
            dependsOn = { "objective-9122-1-arcane-crystal", "objective-9122-2-nexus-crystal" },
            complete = QuestState(9122, "completed"),
            route = {
                Point(MAP.EASTERN_PLAGUELANDS, 0.815, 0.583, "Archmage Angela Dosantos", "Travel to Eastern Plaguelands."),
            },
        },
        {
            id = "turnin-9123-the-dread-citadel-naxxramas",
            kind = "turnin",
            conditions = { level = { min = 60 } },
            text = "Turn in The Dread Citadel - Naxxramas to Archmage Angela Dosantos.",
            dependsOn = { "accept-9123-the-dread-citadel-naxxramas" },
            complete = QuestState(9123, "completed"),
            route = {
                Point(MAP.EASTERN_PLAGUELANDS, 0.815, 0.583, "Archmage Angela Dosantos", "Travel to Eastern Plaguelands."),
            },
        },
    },
})
