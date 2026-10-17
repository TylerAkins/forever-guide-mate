local _, ns = ...

local MAP = {
    STORMWIND_CITY = 1453,
    THE_BARRENS = 1413,
    UNDERCITY = 1458,
}

local ALLIANCE = { faction = "Alliance" }
local HORDE = { faction = "Horde" }
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
    id = "dungeons-razorfen-downs",
    title = "Razorfen Downs",
    category = "Dungeon Quest Guides",
    revision = 2,
    conditions = {
        all = {
            { level = { min = 37 } },
            BOTH_FACTIONS,
        },
    },
    goals = {
        {
            id = "accept-3636-bring-the-light",
            kind = "accept",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 39 } } } },
            text = "Accept Bring the Light from Archbishop Benedictus.",
            complete = QuestState(3636, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND_CITY, 0.396, 0.273, "Archbishop Benedictus", "Travel to Stormwind City."),
            },
        },
        {
            id = "accept-6626-a-host-of-evil",
            kind = "accept",
            conditions = { level = { min = 28 } },
            text = "Accept A Host of Evil from Myriam Moonsinger.",
            complete = QuestState(6626, "activeOrCompleted"),
            route = {
                Point(MAP.THE_BARRENS, 0.490, 0.949, "Myriam Moonsinger", "Travel to The Barrens."),
            },
        },
        {
            id = "objective-6626-1-razorfen-battleguard",
            kind = "objective",
            conditions = { level = { min = 28 } },
            text = "Kill 8 Razorfen Battleguard.",
            dependsOn = { "accept-6626-a-host-of-evil" },
            complete = QuestObjective(6626, 1, "Razorfen Battleguard"),
            route = {
                Point(MAP.THE_BARRENS, 0.486, 0.955, "The Barrens", "Travel to The Barrens."),
            },
        },
        {
            id = "objective-6626-2-razorfen-thornweaver",
            kind = "objective",
            conditions = { level = { min = 28 } },
            text = "Kill 8 Razorfen Thornweaver.",
            dependsOn = { "accept-6626-a-host-of-evil" },
            complete = QuestObjective(6626, 2, "Razorfen Thornweaver"),
            route = {
                Point(MAP.THE_BARRENS, 0.481, 0.923, "The Barrens", "Travel to The Barrens."),
            },
        },
        {
            id = "objective-6626-3-death-s-head-cultist",
            kind = "objective",
            conditions = { level = { min = 28 } },
            text = "Kill 8 Death's Head Cultist.",
            dependsOn = { "accept-6626-a-host-of-evil" },
            complete = QuestObjective(6626, 3, "Death's Head Cultist"),
            route = {
                Point(MAP.THE_BARRENS, 0.467, 0.880, "The Barrens", "Travel to The Barrens."),
            },
        },
        {
            id = "turnin-6626-a-host-of-evil",
            kind = "turnin",
            conditions = { level = { min = 28 } },
            text = "Turn in A Host of Evil to Myriam Moonsinger.",
            dependsOn = { "objective-6626-1-razorfen-battleguard", "objective-6626-2-razorfen-thornweaver", "objective-6626-3-death-s-head-cultist" },
            complete = QuestState(6626, "completed"),
            route = {
                Point(MAP.THE_BARRENS, 0.490, 0.949, "Myriam Moonsinger", "Travel to The Barrens."),
            },
        },
        {
            id = "enter-dungeon",
            kind = "travel",
            conditions = { level = { min = 39 } },
            text = "Enter Razorfen Downs with your group.",
            dependsOn = { "accept-3636-bring-the-light", "accept-6626-a-host-of-evil" },
            persistCompletion = true,
            complete = { instance = 129 },
        },
        {
            id = "accept-3523-scourge-of-the-downs",
            kind = "accept",
            conditions = { level = { min = 32 } },
            text = "Accept Scourge of the Downs from Belnistrasz.",
            complete = QuestState(3523, "activeOrCompleted"),
        },
        {
            id = "turnin-3523-scourge-of-the-downs",
            kind = "turnin",
            conditions = { level = { min = 32 } },
            text = "Turn in Scourge of the Downs to Belnistrasz.",
            dependsOn = { "accept-3523-scourge-of-the-downs" },
            complete = QuestState(3523, "completed"),
            useClientPin = true,
        },
        {
            id = "accept-3525-extinguishing-the-idol",
            requiredQuests = { { conditions = {  }, mode = "all", quests = { 3523 } } },
            kind = "accept",
            conditions = { level = { min = 32 } },
            text = "Accept Extinguishing the Idol from Belnistrasz.",
            dependsOn = { "turnin-3523-scourge-of-the-downs" },
            complete = QuestState(3525, "activeOrCompleted"),
        },
        {
            id = "objective-3525-1-escort-belnistrasz-to-th",
            requiredQuests = { { conditions = {  }, mode = "all", quests = { 3523 } } },
            kind = "objective",
            conditions = { level = { min = 32 } },
            text = "Escort Belnistrasz to the Quilboar's Idol.",
            dependsOn = { "accept-3525-extinguishing-the-idol" },
            complete = QuestState(3525, "complete"),
            useClientPin = true,
        },
        {
            id = "turnin-3525-extinguishing-the-idol",
            requiredQuests = { { conditions = {  }, mode = "all", quests = { 3523 } } },
            kind = "turnin",
            conditions = { level = { min = 32 } },
            text = "Turn in Extinguishing the Idol.",
            dependsOn = { "objective-3525-1-escort-belnistrasz-to-th" },
            complete = QuestState(3525, "completed"),
            useClientPin = true,
        },
        {
            id = "objective-3636-1-amnennar-the-coldbringer",
            kind = "objective",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 39 } } } },
            text = "Kill Amnennar the Coldbringer and loot proof for Bring the Light.",
            dependsOn = { "accept-3636-bring-the-light" },
            complete = QuestState(3636, "complete"),
            useClientPin = true,
        },
        {
            id = "turnin-3636-bring-the-light",
            kind = "turnin",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 39 } } } },
            text = "Turn in Bring the Light to Archbishop Benedictus.",
            dependsOn = { "objective-3636-1-amnennar-the-coldbringer" },
            complete = QuestState(3636, "completed"),
            route = {
                Point(MAP.STORMWIND_CITY, 0.396, 0.273, "Archbishop Benedictus", "Travel to Stormwind City."),
            },
        },
        {
            id = "accept-6522-an-unholy-alliance",
            kind = "accept",
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } } } },
            text = "Accept An Unholy Alliance.",
            complete = QuestState(6522, "activeOrCompleted"),
        },
        {
            id = "turnin-6522-an-unholy-alliance",
            kind = "turnin",
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } } } },
            text = "Turn in An Unholy Alliance to Varimathras.",
            dependsOn = { "accept-6522-an-unholy-alliance" },
            complete = QuestState(6522, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.562, 0.922, "Varimathras", "Travel to Undercity."),
            },
        },
        {
            id = "accept-6521-an-unholy-alliance",
            requiredQuests = { { conditions = { all = { { faction = "Horde" }, {  } } }, mode = "all", quests = { 6522 } } },
            kind = "accept",
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } } } },
            text = "Accept An Unholy Alliance from Varimathras.",
            dependsOn = { "turnin-6522-an-unholy-alliance" },
            complete = QuestState(6521, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.562, 0.922, "Varimathras", "Travel to Undercity."),
            },
        },
        {
            id = "accept-3341-bring-the-end",
            kind = "accept",
            conditions = { all = { { faction = "Horde" }, { level = { min = 37 } } } },
            text = "Accept Bring the End from Andrew Brownell.",
            complete = QuestState(3341, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.741, 0.333, "Andrew Brownell", "Travel to Undercity."),
            },
        },
        {
            id = "objective-6521-1-ambassador-malcin-s-head",
            requiredQuests = { { conditions = { all = { { faction = "Horde" }, {  } } }, mode = "all", quests = { 6522 } } },
            kind = "objective",
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } } } },
            text = "Kill Ambassador Malcin in Razorfen Kraul and loot his head.",
            dependsOn = { "accept-6521-an-unholy-alliance" },
            complete = QuestState(6521, "complete"),
            route = {
                Point(MAP.THE_BARRENS, 0.485, 0.956, "The Barrens", "Travel to The Barrens."),
            },
        },
        {
            id = "objective-3341-1-skull-of-the-coldbringer",
            kind = "objective",
            conditions = { all = { { faction = "Horde" }, { level = { min = 37 } } } },
            text = "Kill Amnennar the Coldbringer and loot the Skull of the Coldbringer.",
            dependsOn = { "accept-3341-bring-the-end" },
            complete = QuestState(3341, "complete"),
            useClientPin = true,
        },
        {
            id = "turnin-3341-bring-the-end",
            kind = "turnin",
            conditions = { all = { { faction = "Horde" }, { level = { min = 37 } } } },
            text = "Turn in Bring the End to Andrew Brownell.",
            dependsOn = { "objective-3341-1-skull-of-the-coldbringer" },
            complete = QuestState(3341, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.741, 0.333, "Andrew Brownell", "Travel to Undercity."),
            },
        },
        {
            id = "turnin-6521-an-unholy-alliance",
            requiredQuests = { { conditions = { all = { { faction = "Horde" }, {  } } }, mode = "all", quests = { 6522 } } },
            kind = "turnin",
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } } } },
            text = "Turn in An Unholy Alliance to Varimathras.",
            dependsOn = { "objective-6521-1-ambassador-malcin-s-head" },
            complete = QuestState(6521, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.562, 0.922, "Varimathras", "Travel to Undercity."),
            },
        },
    },
})
