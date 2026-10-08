local _, ns = ...

-- Forever Casual spine: Dustwallow Marsh (42-42)
-- Hearth, grind/ding, trainer, vendor, and flight-learn steps omitted.
-- Forever weaves are applied in a separate pass.
-- Coordinates not yet validated in Forever.

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

local MAP = {
    DUSTWALLOW_MARSH = 1445,
    ORGRIMMAR = 1454,
}

ns:RegisterGuide({
    id = "leveling-era-horde-dustwallow-marsh-part-2",
    title = "Dustwallow Marsh",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 42 } },
        },
    },
    goals = {
        {
            id = "accept-1166-overlord-mok-morokk-s-concern",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Horde" },
            } },
            text = "Accept Overlord Mok'Morokk's Concern.",
            complete = QuestState(1166, "activeOrCompleted"),
            route = {
                Point(1445, 0.3630, 0.3142, "Overlord Mok'Morokk's Concern",
                    "Travel to Overlord Mok'Morokk's Concern."),
            },
        },
        {
            id = "accept-1169-identifying-the-brood",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Horde" },
            } },
            text = "Accept Identifying the Brood.",
            complete = QuestState(1169, "activeOrCompleted"),
            route = {
                Point(1445, 0.3715, 0.3308, "Identifying the Brood",
                    "Travel to Identifying the Brood."),
            },
        },
        {
            id = "accept-1168-army-of-the-black-dragon",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Horde" },
            } },
            text = "Accept Army of the Black Dragon.",
            complete = QuestState(1168, "activeOrCompleted"),
            route = {
                Point(1445, 0.3737, 0.3139, "Army of the Black Dragon",
                    "Travel to Army of the Black Dragon."),
            },
        },
        {
            id = "objective-1205-1-deadmire",
            kind = "objective",
            priority = 40,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Kill Deadmire.",
            complete = QuestObjective(1205, 1, "Deadmire"),
            useClientPin = true,
            route = nil,
        },
        {
            id = "objective-1261-1-muckshell-razorclaw",
            kind = "objective",
            priority = 50,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Horde" },
            } },
            text = "Kill Muckshell Razorclaw.",
            complete = QuestObjective(1261, 1, "Muckshell Razorclaw"),
            route = {
                Point(1445, 0.5640, 0.6040, "Muckshell Razorclaw",
                    "Travel to Muckshell Razorclaw."),
            },
        },
        {
            id = "turnin-1169-identifying-the-brood",
            kind = "turnin",
            priority = 60,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Horde" },
            } },
            text = "Turn in Identifying the Brood.",
            complete = QuestState(1169, "completed"),
            dependsOn = { "accept-1169-identifying-the-brood" },
            route = {
                Point(1445, 0.3715, 0.3308, "Identifying the Brood",
                    "Travel to Identifying the Brood."),
            },
        },
        {
            id = "accept-1170-the-brood-of-onyxia",
            kind = "accept",
            priority = 70,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Horde" },
            } },
            text = "Accept The Brood of Onyxia.",
            complete = QuestState(1170, "activeOrCompleted"),
            route = {
                Point(1445, 0.3715, 0.3308, "The Brood of Onyxia",
                    "Travel to The Brood of Onyxia."),
            },
        },
        {
            id = "turnin-1168-army-of-the-black-dragon",
            kind = "turnin",
            priority = 80,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Horde" },
            } },
            text = "Turn in Army of the Black Dragon.",
            complete = QuestState(1168, "completed"),
            dependsOn = { "accept-1168-army-of-the-black-dragon" },
            route = {
                Point(1445, 0.3737, 0.3139, "Army of the Black Dragon",
                    "Travel to Army of the Black Dragon."),
            },
        },
        {
            id = "turnin-1166-overlord-mok-morokk-s-concern",
            kind = "turnin",
            priority = 90,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Horde" },
            } },
            text = "Turn in Overlord Mok'Morokk's Concern.",
            complete = QuestState(1166, "completed"),
            dependsOn = { "accept-1166-overlord-mok-morokk-s-concern" },
            route = {
                Point(1445, 0.3630, 0.3142, "Overlord Mok'Morokk's Concern",
                    "Travel to Overlord Mok'Morokk's Concern."),
            },
        },
        {
            id = "turnin-1170-the-brood-of-onyxia",
            kind = "turnin",
            priority = 100,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Brood of Onyxia.",
            complete = QuestState(1170, "completed"),
            dependsOn = { "accept-1170-the-brood-of-onyxia" },
            route = {
                Point(1445, 0.3630, 0.3142, "The Brood of Onyxia",
                    "Travel to The Brood of Onyxia."),
            },
        },
        {
            id = "accept-1171-the-brood-of-onyxia",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Horde" },
            } },
            text = "Accept The Brood of Onyxia.",
            complete = QuestState(1171, "activeOrCompleted"),
            route = {
                Point(1445, 0.3630, 0.3142, "The Brood of Onyxia",
                    "Travel to The Brood of Onyxia."),
            },
        },
        {
            id = "turnin-1171-the-brood-of-onyxia",
            kind = "turnin",
            priority = 120,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Brood of Onyxia.",
            complete = QuestState(1171, "completed"),
            dependsOn = { "accept-1171-the-brood-of-onyxia" },
            route = {
                Point(1445, 0.3715, 0.3308, "The Brood of Onyxia",
                    "Travel to The Brood of Onyxia."),
            },
        },
        {
            id = "turnin-1261-marg-speaks",
            kind = "turnin",
            priority = 130,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Horde" },
            } },
            text = "Turn in Marg Speaks.",
            complete = QuestState(1261, "completed"),
            dependsOn = { "objective-1261-1-muckshell-razorclaw" },
            route = {
                Point(1445, 0.3521, 0.3066, "Marg Speaks",
                    "Travel to Marg Speaks."),
            },
        },
        {
            id = "accept-1262-report-to-zor",
            kind = "accept",
            priority = 140,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Horde" },
            } },
            text = "Accept Report to Zor.",
            complete = QuestState(1262, "activeOrCompleted"),
            route = {
                Point(1445, 0.3521, 0.3066, "Report to Zor",
                    "Travel to Report to Zor."),
            },
        },
        {
            id = "turnin-1262-report-to-zor",
            kind = "turnin",
            priority = 150,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Horde" },
            } },
            text = "Turn in Report to Zor.",
            complete = QuestState(1262, "completed"),
            dependsOn = { "accept-1262-report-to-zor" },
            route = {
                Point(1454, 0.3893, 0.3838, "Report to Zor",
                    "Travel to Report to Zor."),
            },
        },
        {
            id = "accept-7541-service-to-the-horde",
            kind = "accept",
            priority = 160,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Horde" },
            } },
            text = "Accept Service to the Horde.",
            complete = QuestState(7541, "activeOrCompleted"),
            route = {
                Point(1454, 0.3893, 0.3838, "Service to the Horde",
                    "Travel to Service to the Horde."),
            },
        },
        {
            id = "accept-2981-a-threat-in-feralas",
            kind = "accept",
            priority = 170,
            conditions = { all = {
                { level = { min = 43 } },
                { faction = "Horde" },
            } },
            text = "Accept A Threat in Feralas.",
            complete = QuestState(2981, "activeOrCompleted"),
            route = {
                Point(1454, 0.7522, 0.3422, "A Threat in Feralas",
                    "Travel to A Threat in Feralas."),
            },
        },
    },
})
