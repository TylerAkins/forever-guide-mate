local _, ns = ...

local MAP = {
    FERALAS = 1444,
}

local ALLIANCE = { faction = "Alliance" }
local HORDE = { faction = "Horde" }
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
    id = "dungeons-dire-maul-north",
    title = "Dire Maul North",
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
            id = "accept-7482-elven-legends",
            kind = "accept",
            priority = 10,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            text = "Accept Elven Legends from Scholar Runethorn.",
            complete = QuestState(7482, "activeOrCompleted"),
            route = {
                Point(MAP.FERALAS, 0.311, 0.441, "Scholar Runethorn", "Travel to Feralas."),
            },
        },
        {
            id = "enter-dungeon",
            kind = "travel",
            priority = 13,
            conditions = { level = { min = 56 } },
            text = "Enter Dire Maul - North with your group.",
            dependsOn = { "accept-7482-elven-legends" },
            persistCompletion = true,
            complete = { instance = 429 },
        },
        {
            id = "objective-7482-1-the-skeletal-remains-of",
            kind = "objective",
            priority = 23,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            text = "Find the Skeletal Remains of Master Kariel Winthalus.",
            dependsOn = { "accept-7482-elven-legends" },
            complete = QuestState(7482, "complete"),
            useClientPin = true,
        },
        {
            id = "accept-5518-the-gordok-ogre-suit",
            kind = "accept",
            priority = 27,
            conditions = { level = { min = 56 } },
            text = "Accept The Gordok Ogre Suit from Knot Thimblejack.",
            complete = QuestState(5518, "activeOrCompleted"),
        },
        {
            id = "objective-5518-4-ogre-tannin",
            kind = "objective",
            priority = 29,
            conditions = { level = { min = 56 } },
            text = "Collect Ogre Tannin.",
            dependsOn = { "accept-5518-the-gordok-ogre-suit" },
            complete = QuestState(5518, "complete"),
            useClientPin = true,
        },
        {
            id = "turnin-5518-the-gordok-ogre-suit",
            kind = "turnin",
            priority = 30,
            conditions = { level = { min = 56 } },
            text = "Turn in The Gordok Ogre Suit to Knot Thimblejack.",
            dependsOn = { "objective-5518-4-ogre-tannin" },
            complete = QuestState(5518, "completed"),
            useClientPin = true,
        },
        {
            id = "turnin-7429-free-knot",
            kind = "turnin",
            priority = 32,
            conditions = { level = { min = 56 } },
            text = "Turn in Free Knot! to Knot Thimblejack.",
            complete = QuestState(7429, "completed"),
            useClientPin = true,
        },
        {
            id = "accept-5528-the-gordok-taste-test",
            kind = "accept",
            priority = 33,
            conditions = { level = { min = 56 } },
            text = "Accept The Gordok Taste Test from Stomper Kreeg.",
            complete = QuestState(5528, "activeOrCompleted"),
        },
        {
            id = "accept-7703-unfinished-gordok-business",
            kind = "accept",
            priority = 34,
            conditions = { level = { min = 56 } },
            text = "Accept Unfinished Gordok Business from Captain Kromcrush.",
            complete = QuestState(7703, "activeOrCompleted"),
        },
        {
            id = "objective-7703-1-gauntlet-of-gordok-might",
            kind = "objective",
            priority = 36,
            conditions = { level = { min = 56 } },
            text = "Collect Gauntlet of Gordok Might.",
            dependsOn = { "accept-7703-unfinished-gordok-business" },
            complete = QuestState(7703, "complete"),
            useClientPin = true,
        },
        {
            id = "turnin-7703-unfinished-gordok-business",
            kind = "turnin",
            priority = 37,
            conditions = { level = { min = 56 } },
            text = "Turn in Unfinished Gordok Business to Captain Kromcrush.",
            dependsOn = { "objective-7703-1-gauntlet-of-gordok-might" },
            complete = QuestState(7703, "completed"),
            useClientPin = true,
        },
        {
            id = "turnin-7482-elven-legends",
            kind = "turnin",
            priority = 39,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            text = "Turn in Elven Legends to Scholar Runethorn.",
            dependsOn = { "objective-7482-1-the-skeletal-remains-of" },
            complete = QuestState(7482, "completed"),
            route = {
                Point(MAP.FERALAS, 0.311, 0.441, "Scholar Runethorn", "Travel to Feralas."),
            },
        },
        {
            id = "accept-7481-elven-legends",
            kind = "accept",
            priority = 40,
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            text = "Accept Elven Legends from Sage Korolusk.",
            complete = QuestState(7481, "activeOrCompleted"),
            route = {
                Point(MAP.FERALAS, 0.755, 0.437, "Sage Korolusk", "Travel to Feralas."),
            },
        },
        {
            id = "objective-7481-1-the-skeletal-remains-of",
            kind = "objective",
            priority = 41,
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            text = "Find the Skeletal Remains of Master Kariel Winthalus.",
            dependsOn = { "accept-7481-elven-legends" },
            complete = QuestState(7481, "complete"),
            useClientPin = true,
        },
        {
            id = "turnin-7481-elven-legends",
            kind = "turnin",
            priority = 42,
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            text = "Turn in Elven Legends to Sage Korolusk.",
            dependsOn = { "objective-7481-1-the-skeletal-remains-of" },
            complete = QuestState(7481, "completed"),
            route = {
                Point(MAP.FERALAS, 0.755, 0.437, "Sage Korolusk", "Travel to Feralas."),
            },
        },
    },
})
