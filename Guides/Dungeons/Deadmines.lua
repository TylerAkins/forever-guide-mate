local _, ns = ...

-- Forever dungeon quest list:
-- https://www.wowhead.com/forever/quests/dungeons/the-deadmines
-- The guide level is the highest required level among those quests (15).
-- Every listed quest is Alliance. The Defias Brotherhood on this list is the
-- VanCleef step; Gryan offers it after The Defias Traitor.
-- Instance 36 is the classic Deadmines id. Zone 1581 is the area id.
-- The Moonbrook pin is the Defias Hideout door. The portal is farther inside the mine.

local MAP = {
    WESTFALL = 1436,
    STORMWIND = 1453,
}

local ALLIANCE = { faction = "Alliance" }
local DEADMINES = 36

local function QuestState(questID, state)
    return { quest = { id = questID, state = state } }
end

local DEFIAS_UNLOCKED = {
    any = {
        QuestState(155, "completed"),
        QuestState(166, "activeOrCompleted"),
    },
}

local function Point(mapID, x, y, label, offMapText, complete)
    return {
        mapID = mapID,
        x = x,
        y = y,
        label = label,
        offMapText = offMapText,
        complete = complete,
    }
end

local function Westfall(x, y, label)
    return {
        Point(MAP.WESTFALL, x, y, label, "Travel to Westfall."),
    }
end

local function Stormwind(x, y, label)
    return {
        Point(MAP.STORMWIND, x, y, label, "Travel to Stormwind City."),
    }
end

ns:RegisterGuide({
    routeMode = "ordered",
    id = "dungeons-the-deadmines",
    title = "The Deadmines",
    category = "Dungeon Quest Guides",
    revision = 3,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 15 } },
        },
    },
    goals = {
        {
            route = {
                { y = 0.5298, mapID = 1436, label = "Scout Galiaan", offMapText = "Travel to Scout Galiaan in Westfall.", x = 0.5398 },
            },
            text = "Accept Red Leather Bandanas from Scout Galiaan.",
            id = "prerequisite-accept-153-red-leather-bandanas",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 153, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {  },
        },
        {
            text = "Collect 15 Red Leather Bandana.",
            route = {
                { y = 0.454, mapID = 1436, label = "Defias Trapper", offMapText = "Travel to Defias Trapper.", x = 0.484 },
            },
            dependsOn = { "prerequisite-accept-153-red-leather-bandanas" },
            id = "prerequisite-objective-153-1-defias-trapper",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 153, text = "Defias Trapper", index = 1, count = 15 },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Red Leather Bandanas to Scout Galiaan.",
            route = {
                { y = 0.5298, mapID = 1436, label = "Scout Galiaan", offMapText = "Travel to Scout Galiaan in Westfall.", x = 0.5398 },
            },
            dependsOn = { "prerequisite-accept-153-red-leather-bandanas", "prerequisite-objective-153-1-defias-trapper" },
            id = "prerequisite-turnin-153-red-leather-bandanas",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 153, state = "completed" },
            },
            sourceStep = 28,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.4752, mapID = 1436, label = "Gryan Stoutmantle", offMapText = "Travel to Gryan Stoutmantle in Westfall.", x = 0.5633 },
            },
            text = "Accept The Defias Brotherhood from Gryan Stoutmantle.",
            id = "prerequisite-accept-65-the-defias-brotherhood",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 65, state = "activeOrCompleted" },
            },
            sourceStep = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {  },
        },
        {
            route = {
                { y = 0.4535, mapID = 1433, label = "Wiley the Black", offMapText = "Travel to Wiley the Black in Redridge Mountains.", x = 0.2648 },
            },
            text = "Turn in The Defias Brotherhood to Wiley the Black.",
            id = "prerequisite-turnin-65-the-defias-brotherhood",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 65, state = "completed" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {  },
        },
        {
            route = {
                { y = 0.453, mapID = 1433, label = "Wiley the Black", offMapText = "Travel to Wiley the Black in Redridge Mountains.", x = 0.214 },
            },
            text = "Accept The Defias Brotherhood from Wiley the Black.",
            id = "prerequisite-accept-132-the-defias-brotherhood",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 132, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 65 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "prerequisite-turnin-65-the-defias-brotherhood" },
        },
        {
            text = "Turn in The Defias Brotherhood to Gryan Stoutmantle.",
            route = {
                { y = 0.4752, mapID = 1436, label = "Gryan Stoutmantle", offMapText = "Travel to Gryan Stoutmantle in Westfall.", x = 0.5633 },
            },
            dependsOn = { "prerequisite-accept-132-the-defias-brotherhood" },
            id = "prerequisite-turnin-132-the-defias-brotherhood",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 132, state = "completed" },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 65 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.4752, mapID = 1436, label = "Gryan Stoutmantle", offMapText = "Travel to Gryan Stoutmantle in Westfall.", x = 0.5633 },
            },
            text = "Accept The Defias Brotherhood from Gryan Stoutmantle.",
            id = "prerequisite-accept-135-the-defias-brotherhood",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 135, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 132 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "prerequisite-turnin-132-the-defias-brotherhood" },
        },
        {
            text = "Turn in The Defias Brotherhood to Master Mathias Shaw.",
            route = {
                { y = 0.5984, mapID = 1453, label = "Master Mathias Shaw", offMapText = "Travel to Master Mathias Shaw in Stormwind City.", x = 0.7578 },
            },
            dependsOn = { "prerequisite-accept-135-the-defias-brotherhood" },
            id = "prerequisite-turnin-135-the-defias-brotherhood",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 135, state = "completed" },
            },
            sourceStep = 16,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 132 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.707, mapID = 1453, label = "Master Mathias Shaw", offMapText = "Travel to Master Mathias Shaw in Stormwind City.", x = 0.783 },
            },
            text = "Accept The Defias Brotherhood from Master Mathias Shaw.",
            id = "prerequisite-accept-141-the-defias-brotherhood",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 141, state = "activeOrCompleted" },
            },
            sourceStep = 16,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 135 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "prerequisite-turnin-135-the-defias-brotherhood" },
        },
        {
            text = "Turn in The Defias Brotherhood to Gryan Stoutmantle.",
            route = {
                { y = 0.4752, mapID = 1436, label = "Gryan Stoutmantle", offMapText = "Travel to Gryan Stoutmantle in Westfall.", x = 0.5633 },
            },
            dependsOn = { "prerequisite-accept-141-the-defias-brotherhood" },
            id = "prerequisite-turnin-141-the-defias-brotherhood",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 141, state = "completed" },
            },
            sourceStep = 17,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 135 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.4752, mapID = 1436, label = "Gryan Stoutmantle", offMapText = "Travel to Gryan Stoutmantle in Westfall.", x = 0.5633 },
            },
            text = "Accept The Defias Brotherhood from Gryan Stoutmantle.",
            id = "prerequisite-accept-142-the-defias-brotherhood",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 142, state = "activeOrCompleted" },
            },
            sourceStep = 17,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 141 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "prerequisite-turnin-141-the-defias-brotherhood" },
        },
        {
            dependsOn = { "prerequisite-accept-142-the-defias-brotherhood" },
            id = "prerequisite-objective-142-1-defias-messenger",
            text = "Collect 1 A Mysterious Message.",
            useClientPin = true,
            complete = {
                questObjective = { id = 142, text = "Defias Messenger", index = 1, count = 1 },
            },
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            sourceStep = 19,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 141 },
                    conditions = {},
                },
            },
            useClientText = false,
        },
        {
            text = "Turn in The Defias Brotherhood to Gryan Stoutmantle.",
            route = {
                { y = 0.4752, mapID = 1436, label = "Gryan Stoutmantle", offMapText = "Travel to Gryan Stoutmantle in Westfall.", x = 0.5633 },
            },
            dependsOn = { "prerequisite-accept-142-the-defias-brotherhood", "prerequisite-objective-142-1-defias-messenger" },
            id = "prerequisite-turnin-142-the-defias-brotherhood",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 142, state = "completed" },
            },
            sourceStep = 24,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 141 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            route = {
                { y = 0.475, mapID = 1436, label = "The Defias Traitor", offMapText = "Travel to The Defias Traitor in Westfall.", x = 0.5568 },
            },
            text = "Accept The Defias Brotherhood from The Defias Traitor.",
            id = "prerequisite-accept-155-the-defias-brotherhood",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 155, state = "activeOrCompleted" },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 142 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "prerequisite-turnin-142-the-defias-brotherhood" },
        },
        {
            id = "prerequisite-objective-155-reviewed-escort",
            kind = "objective",
            text = "Follow and protect the Defias Traitor until he reveals the entrance to the Deadmines.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 142 },
                    conditions = {},
                },
            },
            complete = {
                quest = { id = 155, state = "complete" },
            },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1436, x = 0.4255, y = 0.7156999999999999, label = "Escort destination", offMapText = "Travel to Escort destination." },
            },
            sourceStep = 26,
            dependsOn = { "prerequisite-accept-155-the-defias-brotherhood" },
        },
        {
            text = "Turn in The Defias Brotherhood to Gryan Stoutmantle.",
            route = {
                { y = 0.4752, mapID = 1436, label = "Gryan Stoutmantle", offMapText = "Travel to Gryan Stoutmantle in Westfall.", x = 0.5633 },
            },
            dependsOn = { "prerequisite-accept-155-the-defias-brotherhood", "prerequisite-objective-155-reviewed-escort" },
            id = "prerequisite-turnin-155-the-defias-brotherhood",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 14 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 155, state = "completed" },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 142 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "accept-red-silk-bandanas",
            requiredQuests = { { mode = "all", quests = { 153, 155 } } },
            kind = "accept",
            conditions = {
                all = {
                    ALLIANCE,
                    { level = { min = 19 } },
                },
            },
            text = "Accept Red Silk Bandanas from Scout Riell at the Sentinel Hill tower.",
            taxiDestination = "Sentinel Hill",
            complete = QuestState(214, "activeOrCompleted"),
            route = Westfall(0.566, 0.474, "Scout Riell at the Sentinel Hill tower"),
        },
        {
            id = "accept-defias-brotherhood",
            requiredQuests = { { conditions = {  }, mode = "any", quests = { 155 } } },
            kind = "accept",
            conditions = {
                all = {
                    ALLIANCE,
                    { level = { min = 19 } },
                    DEFIAS_UNLOCKED,
                },
            },
            text = "Accept The Defias Brotherhood from Gryan Stoutmantle at Sentinel Hill. " ..
                "He offers this step after you finish The Defias Traitor.",
            taxiDestination = "Sentinel Hill",
            complete = QuestState(166, "activeOrCompleted"),
            route = Westfall(0.562, 0.476, "Gryan Stoutmantle at Sentinel Hill"),
        },
        {
            id = "accept-collecting-memories",
            kind = "accept",
            conditions = {
                all = {
                    ALLIANCE,
                    { level = { min = 19 } },
                },
            },
            text = "Accept Collecting Memories from Wilder Thistlenettle in the Dwarven District.",
            taxiDestination = "Stormwind",
            complete = QuestState(168, "activeOrCompleted"),
            route = Stormwind(0.702, 0.408, "Wilder Thistlenettle in the Dwarven District"),
        },
        {
            id = "accept-oh-brother",
            kind = "accept",
            conditions = {
                all = {
                    ALLIANCE,
                    { level = { min = 19 } },
                },
            },
            text = "Accept Oh Brother. . . from Wilder Thistlenettle in the Dwarven District.",
            taxiDestination = "Stormwind",
            complete = QuestState(167, "activeOrCompleted"),
            route = Stormwind(0.702, 0.408, "Wilder Thistlenettle in the Dwarven District"),
        },
        {
            id = "accept-underground-assault",
            kind = "accept",
            conditions = {
                all = {
                    ALLIANCE,
                    { level = { min = 19 } },
                },
            },
            text = "Accept Underground Assault from Shoni the Shilent in the Dwarven District.",
            taxiDestination = "Stormwind",
            complete = QuestState(2040, "activeOrCompleted"),
            route = Stormwind(0.628, 0.348, "Shoni the Shilent in the Dwarven District"),
        },
        {
            id = "enter-deadmines",
            kind = "travel",
            conditions = ALLIANCE,
            text = "Enter the Deadmines through the Defias Hideout in Moonbrook. The instance portal is at the bottom of the mine.",
            dependsOn = {
                "accept-red-silk-bandanas",
                "accept-defias-brotherhood",
                "accept-collecting-memories",
                "accept-oh-brother",
                "accept-underground-assault",
            },
            complete = { instance = DEADMINES },
            persistCompletion = true,
            route = Westfall(0.426, 0.717, "Defias Hideout in Moonbrook"),
        },
        {
            id = "complete-red-silk-bandanas",
            requiredQuests = { { mode = "all", quests = { 153, 155 } } },
            kind = "objective",
            conditions = {
                all = {
                    ALLIANCE,
                    { level = { min = 19 } },
                },
            },
            text = "Collect 10 Red Silk Bandanas from the Defias in VanCleef's hideout.",
            dependsOn = { "enter-deadmines" },
            complete = QuestState(214, "complete"),
        },
        {
            id = "complete-collecting-memories",
            kind = "objective",
            conditions = {
                all = {
                    ALLIANCE,
                    { level = { min = 19 } },
                },
            },
            text = "Loot 4 Miners' Union Cards from the bodies of undead miners in the Deadmines.",
            dependsOn = { "enter-deadmines" },
            complete = QuestState(168, "complete"),
        },
        {
            id = "complete-oh-brother",
            kind = "objective",
            conditions = {
                all = {
                    ALLIANCE,
                    { level = { min = 19 } },
                },
            },
            text = "Find Foreman Thistlenettle and take his Explorers' League Badge.",
            dependsOn = { "enter-deadmines" },
            complete = QuestState(167, "complete"),
        },
        {
            id = "complete-underground-assault",
            kind = "objective",
            conditions = {
                all = {
                    ALLIANCE,
                    { level = { min = 19 } },
                },
            },
            text = "Take the Gnoam Sprecklesprocket from Sneed's Shredder. Clear the room first. " ..
                "Terrify fears. When the shredder dies, Sneed jumps out and disarms the tank, so let the tank pick him up.",
            dependsOn = { "enter-deadmines" },
            complete = QuestState(2040, "complete"),
        },
        {
            id = "complete-defias-brotherhood",
            requiredQuests = { { conditions = {  }, mode = "any", quests = { 155 } } },
            kind = "objective",
            conditions = {
                all = {
                    ALLIANCE,
                    { level = { min = 19 } },
                    DEFIAS_UNLOCKED,
                },
            },
            text = "Kill Edwin VanCleef and take his head. " ..
                "Kill the two stealthed Defias Blackguards before him. At 50% he calls two more. Kill those, then finish him.",
            dependsOn = { "enter-deadmines" },
            complete = QuestState(166, "complete"),
        },
        {
            id = "turnin-red-silk-bandanas",
            requiredQuests = { { mode = "all", quests = { 153, 155 } } },
            kind = "turnin",
            conditions = {
                all = {
                    ALLIANCE,
                    { level = { min = 19 } },
                },
            },
            text = "Bring the Red Silk Bandanas back to Scout Riell.",
            dependsOn = { "complete-red-silk-bandanas" },
            taxiDestination = "Sentinel Hill",
            complete = QuestState(214, "completed"),
            route = Westfall(0.566, 0.474, "Scout Riell at the Sentinel Hill tower"),
        },
        {
            id = "turnin-defias-brotherhood",
            requiredQuests = { { conditions = {  }, mode = "any", quests = { 155 } } },
            kind = "turnin",
            conditions = {
                all = {
                    ALLIANCE,
                    { level = { min = 19 } },
                    DEFIAS_UNLOCKED,
                },
            },
            text = "Bring the Head of VanCleef to Gryan Stoutmantle.",
            dependsOn = { "complete-defias-brotherhood" },
            taxiDestination = "Sentinel Hill",
            complete = QuestState(166, "completed"),
            route = Westfall(0.562, 0.476, "Gryan Stoutmantle at Sentinel Hill"),
        },
        {
            id = "turnin-collecting-memories",
            kind = "turnin",
            conditions = {
                all = {
                    ALLIANCE,
                    { level = { min = 19 } },
                },
            },
            text = "Bring the Miners' Union Cards back to Wilder Thistlenettle.",
            dependsOn = { "complete-collecting-memories" },
            taxiDestination = "Stormwind",
            complete = QuestState(168, "completed"),
            route = Stormwind(0.652, 0.212, "Wilder Thistlenettle in the Dwarven District"),
        },
        {
            id = "turnin-oh-brother",
            kind = "turnin",
            conditions = {
                all = {
                    ALLIANCE,
                    { level = { min = 19 } },
                },
            },
            text = "Bring Thistlenettle's Badge back to Wilder Thistlenettle.",
            dependsOn = { "complete-oh-brother" },
            taxiDestination = "Stormwind",
            complete = QuestState(167, "completed"),
            route = Stormwind(0.652, 0.212, "Wilder Thistlenettle in the Dwarven District"),
        },
        {
            id = "turnin-underground-assault",
            kind = "turnin",
            conditions = {
                all = {
                    ALLIANCE,
                    { level = { min = 19 } },
                },
            },
            text = "Bring the Gnoam Sprecklesprocket back to Shoni the Shilent.",
            dependsOn = { "complete-underground-assault" },
            taxiDestination = "Stormwind",
            complete = QuestState(2040, "completed"),
            route = Stormwind(0.554, 0.126, "Shoni the Shilent in the Dwarven District"),
        },
    },
})
