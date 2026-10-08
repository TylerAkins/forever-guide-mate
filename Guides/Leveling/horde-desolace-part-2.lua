local _, ns = ...

-- Forever Casual spine: Desolace (41-41)
-- Hearth, grind/ding, trainer, vendor, and flight-learn steps omitted.
-- Forever weaves:
-- 96222 Khan Hratha (elite) from Umarak in Gelkis Village. Bring a group.
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
    DESOLACE = 1443,
}

ns:RegisterGuide({
    id = "leveling-era-horde-desolace-part-2",
    title = "Desolace",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 41 } },
        },
    },
    goals = {
        {
            id = "accept-5581-portals-of-the-legion",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Accept Portals of the Legion.",
            complete = QuestState(5581, "activeOrCompleted"),
            route = {
                Point(1443, 0.2581, 0.6822, "Portals of the Legion",
                    "Travel to Portals of the Legion."),
            },
        },
        {
            id = "turnin-1373-ongeku",
            kind = "turnin",
            priority = 20,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Turn in Ongeku.",
            complete = QuestState(1373, "completed"),
            route = {
                Point(1443, 0.3622, 0.7925, "Ongeku",
                    "Travel to Ongeku."),
            },
        },
        {
            id = "accept-1374-khan-jehn",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Accept Khan Jehn.",
            complete = QuestState(1374, "activeOrCompleted"),
            route = {
                Point(1443, 0.3622, 0.7925, "Khan Jehn",
                    "Travel to Khan Jehn."),
            },
        },
        {
            id = "woven-accept-96222-khan-hratha",
            kind = "accept",
            priority = 75,
            conditions = { level = { min = 42 } },
            text = "Accept Khan Hratha from Umarak in Gelkis Village. This is an elite. Bring a group.",
            complete = QuestState(96222, "activeOrCompleted"),
            route = {
                Point(1443, 0.4340, 0.7880, "Umarak",
                    "Travel to Umarak."),
            },
        },
        {
            id = "woven-objective-96222-khan-hratha",
            kind = "objective",
            priority = 76,
            conditions = { level = { min = 42 } },
            text = "Khan Hratha: collect the Maraudine Key Fragment and War Horn Mouthpiece. This is an elite. Bring a group.",
            complete = QuestState(96222, "complete"),
            dependsOn = { "woven-accept-96222-khan-hratha" },
            useClientPin = true,
            route = {
                Point(1443, 0.4340, 0.7880, "Umarak",
                    "Travel to Umarak."),
            },
        },
        {
            id = "woven-turnin-96222-khan-hratha",
            kind = "turnin",
            priority = 77,
            conditions = { level = { min = 42 } },
            text = "Turn in Khan Hratha to Umarak in Gelkis Village.",
            complete = QuestState(96222, "completed"),
            dependsOn = { "woven-accept-96222-khan-hratha", "woven-objective-96222-khan-hratha" },
            route = {
                Point(1443, 0.4340, 0.7880, "Umarak",
                    "Travel to Umarak."),
            },
        },
        {
            id = "accept-6134-ghost-o-plasm-round-up",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Accept Ghost-o-plasm Round Up.",
            complete = QuestState(6134, "activeOrCompleted"),
            route = {
                Point(1443, 0.4783, 0.6182, "Ghost-o-plasm Round Up",
                    "Travel to Ghost-o-plasm Round Up."),
            },
        },
        {
            id = "accept-1488-the-corrupter",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Accept The Corrupter.",
            complete = QuestState(1488, "activeOrCompleted"),
            route = {
                Point(1443, 0.5546, 0.5807, "The Corrupter",
                    "Travel to The Corrupter."),
            },
        },
        {
            id = "objective-5581-1-demon-portal-guardian",
            kind = "objective",
            priority = 60,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Kill Demon Portal Guardian.",
            complete = QuestObjective(5581, 1, "Demon Portal Guardian"),
            dependsOn = { "accept-5581-portals-of-the-legion" },
            route = {
                Point(1443, 0.5390, 0.7914, "Demon Portal Guardian",
                    "Travel to Demon Portal Guardian."),
            },
        },
        {
            id = "objective-1488-2-jugkar-grim-rod",
            kind = "objective",
            priority = 70,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Kill Jugkar Grim'rod.",
            complete = QuestObjective(1488, 2, "Jugkar Grim'rod"),
            dependsOn = { "accept-1488-the-corrupter" },
            route = {
                Point(1443, 0.5591, 0.7776, "Jugkar Grim'rod",
                    "Travel to Jugkar Grim'rod."),
            },
        },
        {
            id = "objective-1488-1-lord-azrethoc",
            kind = "objective",
            priority = 80,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Kill Lord Azrethoc.",
            complete = QuestObjective(1488, 1, "Lord Azrethoc"),
            dependsOn = { "accept-1488-the-corrupter" },
            route = {
                Point(1443, 0.5602, 0.7776, "Lord Azrethoc",
                    "Travel to Lord Azrethoc."),
            },
        },
        {
            id = "objective-6134-1-crate-of-ghost-magnets",
            kind = "objective",
            priority = 90,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Use Crate of Ghost Magnets.",
            complete = QuestObjective(6134, 1, "Crate of Ghost Magnets"),
            dependsOn = { "accept-6134-ghost-o-plasm-round-up" },
            route = {
                Point(1443, 0.6381, 0.9127, "Crate of Ghost Magnets",
                    "Travel to Crate of Ghost Magnets."),
            },
        },
        {
            id = "objective-1374-1-khan-jehn",
            kind = "objective",
            priority = 100,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Kill Khan Jehn.",
            complete = QuestObjective(1374, 1, "Khan Jehn"),
            dependsOn = { "accept-1374-khan-jehn" },
            route = {
                Point(1443, 0.6639, 0.8008, "Khan Jehn",
                    "Travel to Khan Jehn."),
            },
        },
        {
            id = "turnin-1488-the-corrupter",
            kind = "turnin",
            priority = 110,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Corrupter.",
            complete = QuestState(1488, "completed"),
            dependsOn = { "accept-1488-the-corrupter", "objective-1488-2-jugkar-grim-rod", "objective-1488-1-lord-azrethoc" },
            route = {
                Point(1443, 0.5742, 0.5645, "The Corrupter",
                    "Travel to The Corrupter."),
            },
        },
        {
            id = "turnin-6134-ghost-o-plasm-round-up",
            kind = "turnin",
            priority = 120,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Turn in Ghost-o-plasm Round Up.",
            complete = QuestState(6134, "completed"),
            dependsOn = { "accept-6134-ghost-o-plasm-round-up", "objective-6134-1-crate-of-ghost-magnets" },
            route = {
                Point(1443, 0.4783, 0.6182, "Ghost-o-plasm Round Up",
                    "Travel to Ghost-o-plasm Round Up."),
            },
        },
        {
            id = "turnin-1374-khan-jehn",
            kind = "turnin",
            priority = 130,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Turn in Khan Jehn.",
            complete = QuestState(1374, "completed"),
            dependsOn = { "accept-1374-khan-jehn", "objective-1374-1-khan-jehn" },
            route = {
                Point(1443, 0.3622, 0.7925, "Khan Jehn",
                    "Travel to Khan Jehn."),
            },
        },
        {
            id = "turnin-5581-portals-of-the-legion",
            kind = "turnin",
            priority = 140,
            conditions = { all = {
                { level = { min = 41 } },
                { faction = "Horde" },
            } },
            text = "Turn in Portals of the Legion.",
            complete = QuestState(5581, "completed"),
            dependsOn = { "accept-5581-portals-of-the-legion", "objective-5581-1-demon-portal-guardian" },
            route = {
                Point(1443, 0.2627, 0.7483, "Portals of the Legion",
                    "Travel to Portals of the Legion."),
            },
        },
    },
})
