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
    id = "dungeons-the-deadmines",
    title = "The Deadmines",
    category = "Dungeon Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 15 } },
        },
    },
    goals = {
        {
            id = "accept-red-silk-bandanas",
            kind = "accept",
            priority = 10,
            conditions = ALLIANCE,
            text = "Accept Red Silk Bandanas from Scout Riell at the Sentinel Hill tower.",
            taxiDestination = "Sentinel Hill",
            complete = QuestState(214, "activeOrCompleted"),
            route = Westfall(0.566, 0.474, "Scout Riell at the Sentinel Hill tower"),
        },
        {
            id = "accept-defias-brotherhood",
            kind = "accept",
            priority = 11,
            conditions = ALLIANCE,
            text = "Accept The Defias Brotherhood from Gryan Stoutmantle at Sentinel Hill. " ..
                "He offers this step after you finish The Defias Traitor.",
            taxiDestination = "Sentinel Hill",
            complete = QuestState(166, "activeOrCompleted"),
            route = Westfall(0.562, 0.476, "Gryan Stoutmantle at Sentinel Hill"),
        },
        {
            id = "accept-collecting-memories",
            kind = "accept",
            priority = 12,
            conditions = ALLIANCE,
            text = "Accept Collecting Memories from Wilder Thistlenettle in the Dwarven District.",
            taxiDestination = "Stormwind",
            complete = QuestState(168, "activeOrCompleted"),
            route = Stormwind(0.652, 0.212, "Wilder Thistlenettle in the Dwarven District"),
        },
        {
            id = "accept-oh-brother",
            kind = "accept",
            priority = 13,
            conditions = ALLIANCE,
            text = "Accept Oh Brother. . . from Wilder Thistlenettle in the Dwarven District.",
            taxiDestination = "Stormwind",
            complete = QuestState(167, "activeOrCompleted"),
            route = Stormwind(0.652, 0.212, "Wilder Thistlenettle in the Dwarven District"),
        },
        {
            id = "accept-underground-assault",
            kind = "accept",
            priority = 14,
            conditions = ALLIANCE,
            text = "Accept Underground Assault from Shoni the Shilent in the Dwarven District.",
            taxiDestination = "Stormwind",
            complete = QuestState(2040, "activeOrCompleted"),
            route = Stormwind(0.554, 0.126, "Shoni the Shilent in the Dwarven District"),
        },
        {
            id = "enter-deadmines",
            kind = "travel",
            priority = 40,
            conditions = ALLIANCE,
            text = "Enter the Deadmines through the Defias Hideout in Moonbrook. " ..
                "The instance portal is at the bottom of the mine.",
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
            kind = "objective",
            priority = 41,
            conditions = ALLIANCE,
            text = "Collect 10 Red Silk Bandanas from the Defias in VanCleef's hideout.",
            dependsOn = { "enter-deadmines" },
            complete = QuestState(214, "complete"),
        },
        {
            id = "complete-collecting-memories",
            kind = "objective",
            priority = 42,
            conditions = ALLIANCE,
            text = "Collect 4 Miners' Union Cards in the Moonbrook mine.",
            dependsOn = { "enter-deadmines" },
            complete = QuestState(168, "complete"),
        },
        {
            id = "complete-oh-brother",
            kind = "objective",
            priority = 43,
            conditions = ALLIANCE,
            text = "Find Foreman Thistlenettle and take his Explorers' League Badge.",
            dependsOn = { "enter-deadmines" },
            complete = QuestState(167, "complete"),
        },
        {
            id = "complete-underground-assault",
            kind = "objective",
            priority = 44,
            conditions = ALLIANCE,
            text = "Take the Gnoam Sprecklesprocket from the goblin shredder.",
            dependsOn = { "enter-deadmines" },
            complete = QuestState(2040, "complete"),
        },
        {
            id = "complete-defias-brotherhood",
            kind = "objective",
            priority = 45,
            conditions = ALLIANCE,
            text = "Kill Edwin VanCleef and take his head.",
            dependsOn = { "enter-deadmines" },
            complete = QuestState(166, "complete"),
        },
        {
            id = "turnin-red-silk-bandanas",
            kind = "turnin",
            priority = 60,
            conditions = ALLIANCE,
            text = "Bring the Red Silk Bandanas back to Scout Riell.",
            dependsOn = { "complete-red-silk-bandanas" },
            taxiDestination = "Sentinel Hill",
            complete = QuestState(214, "completed"),
            route = Westfall(0.566, 0.474, "Scout Riell at the Sentinel Hill tower"),
        },
        {
            id = "turnin-defias-brotherhood",
            kind = "turnin",
            priority = 61,
            conditions = ALLIANCE,
            text = "Bring the Head of VanCleef to Gryan Stoutmantle.",
            dependsOn = { "complete-defias-brotherhood" },
            taxiDestination = "Sentinel Hill",
            complete = QuestState(166, "completed"),
            route = Westfall(0.562, 0.476, "Gryan Stoutmantle at Sentinel Hill"),
        },
        {
            id = "turnin-collecting-memories",
            kind = "turnin",
            priority = 62,
            conditions = ALLIANCE,
            text = "Bring the Miners' Union Cards back to Wilder Thistlenettle.",
            dependsOn = { "complete-collecting-memories" },
            taxiDestination = "Stormwind",
            complete = QuestState(168, "completed"),
            route = Stormwind(0.652, 0.212, "Wilder Thistlenettle in the Dwarven District"),
        },
        {
            id = "turnin-oh-brother",
            kind = "turnin",
            priority = 63,
            conditions = ALLIANCE,
            text = "Bring Thistlenettle's Badge back to Wilder Thistlenettle.",
            dependsOn = { "complete-oh-brother" },
            taxiDestination = "Stormwind",
            complete = QuestState(167, "completed"),
            route = Stormwind(0.652, 0.212, "Wilder Thistlenettle in the Dwarven District"),
        },
        {
            id = "turnin-underground-assault",
            kind = "turnin",
            priority = 64,
            conditions = ALLIANCE,
            text = "Bring the Gnoam Sprecklesprocket back to Shoni the Shilent.",
            dependsOn = { "complete-underground-assault" },
            taxiDestination = "Stormwind",
            complete = QuestState(2040, "completed"),
            route = Stormwind(0.554, 0.126, "Shoni the Shilent in the Dwarven District"),
        },
    },
})
