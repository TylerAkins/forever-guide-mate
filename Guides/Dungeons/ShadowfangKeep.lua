local _, ns = ...

local MAP = {
    UNDERCITY = 1458,
    SILVERPINE_FOREST = 1421,
}

local HORDE = { faction = "Horde" }

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
    id = "dungeons-shadowfang-keep",
    title = "Shadowfang Keep",
    category = "Dungeon Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 18 } },
        },
    },
    goals = {
        {
            id = "accept-1013-the-book-of-ur",
            kind = "accept",
            priority = 10,
            conditions = { all = { { faction = "Horde" }, { level = { min = 16 } } } },
            text = "Accept The Book of Ur from Keeper Bel'dugur.",
            complete = QuestState(1013, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.537, 0.544, "Keeper Bel'dugur", "Travel to Undercity."),
            },
        },
        {
            id = "accept-1014-arugal-must-die",
            kind = "accept",
            priority = 11,
            conditions = { all = { { faction = "Horde" }, { level = { min = 18 } } } },
            text = "Accept Arugal Must Die from Dalar Dawnweaver.",
            complete = QuestState(1014, "activeOrCompleted"),
            route = {
                Point(MAP.SILVERPINE_FOREST, 0.442, 0.398, "Dalar Dawnweaver", "Travel to Silverpine Forest."),
            },
        },
        {
            id = "accept-1098-deathstalkers-in-shadowfang",
            kind = "accept",
            priority = 12,
            conditions = { all = { { faction = "Horde" }, { level = { min = 18 } } } },
            text = "Accept Deathstalkers in Shadowfang from High Executor Hadrec.",
            complete = QuestState(1098, "activeOrCompleted"),
            route = {
                Point(MAP.SILVERPINE_FOREST, 0.434, 0.409, "High Executor Hadrec", "Travel to Silverpine Forest."),
            },
        },
        {
            id = "enter-dungeon",
            kind = "travel",
            priority = 13,
            conditions = { level = { min = 18 } },
            text = "Enter Shadowfang Keep with your group.",
            dependsOn = { "accept-1013-the-book-of-ur", "accept-1014-arugal-must-die", "accept-1098-deathstalkers-in-shadowfang" },
            persistCompletion = true,
            complete = { instance = 33 },
        },
        {
            id = "turnin-1098-deathstalkers-in-shadowfang",
            kind = "turnin",
            priority = 16,
            conditions = { all = { { faction = "Horde" }, { level = { min = 18 } } } },
            text = "Turn in Deathstalkers in Shadowfang to Deathstalker Vincent. 'Please unlock the courtyard door.'.",
            dependsOn = { "accept-1098-deathstalkers-in-shadowfang" },
            complete = QuestState(1098, "completed"),
            useClientPin = true,
        },
        {
            id = "objective-1013-1-the-book-of-ur",
            kind = "objective",
            priority = 25,
            conditions = { all = { { faction = "Horde" }, { level = { min = 16 } } } },
            text = "Collect The Book of Ur.",
            dependsOn = { "accept-1013-the-book-of-ur" },
            complete = QuestState(1013, "complete"),
            useClientPin = true,
        },
        {
            id = "objective-1014-1-head-of-arugal",
            kind = "objective",
            priority = 28,
            conditions = { all = { { faction = "Horde" }, { level = { min = 18 } } } },
            text = "Collect Head of Arugal.",
            dependsOn = { "accept-1014-arugal-must-die" },
            complete = QuestState(1014, "complete"),
            useClientPin = true,
        },
        {
            id = "turnin-1014-arugal-must-die",
            kind = "turnin",
            priority = 31,
            conditions = { all = { { faction = "Horde" }, { level = { min = 18 } } } },
            text = "Turn in Arugal Must Die to Dalar Dawnweaver.",
            dependsOn = { "objective-1014-1-head-of-arugal" },
            complete = QuestState(1014, "completed"),
            route = {
                Point(MAP.SILVERPINE_FOREST, 0.442, 0.398, "Dalar Dawnweaver", "Travel to Silverpine Forest."),
            },
        },
        {
            id = "turnin-1013-the-book-of-ur",
            kind = "turnin",
            priority = 32,
            conditions = { all = { { faction = "Horde" }, { level = { min = 16 } } } },
            text = "Turn in The Book of Ur to Keeper Bel'dugur.",
            dependsOn = { "objective-1013-1-the-book-of-ur" },
            complete = QuestState(1013, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.537, 0.544, "Keeper Bel'dugur", "Travel to Undercity."),
            },
        },
    },
})
