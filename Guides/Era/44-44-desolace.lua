local _, ns = ...

-- Horde Era leveling route for Desolace, levels 44-44.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    DESOLACE = 1443,
}

local function QuestState(questID, state)
    return { quest = { id = questID, state = state } }
end

local function QuestObjective(questID, index)
    return { questObjective = { id = questID, index = index } }
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
    id = "leveling-era-44-44-desolace",
    title = "44-44 Desolace (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 44 } },
        },
    },
    goals = {
        {
            id = "accept-5381-hand-of-iruxos",
            kind = "accept",
            priority = 20,
            text = "Accept Hand of Iruxos from Taiga Wisemane in Shadowprey Village.",
            complete = QuestState(5381, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.2579, 0.6828, "Taiga Wisemane",
                    "Travel to Taiga Wisemane."),
            },
        },
        {
            id = "objective-5381-hand-of-iruxos",
            kind = "objective",
            priority = 40,
            text = "Head into the biggest building in Thunder Axe Fortress. Clear the mainroom, use the Demon Pick on the Crystal in the center of the room. Kill the Demon Spirit that appears and collect the Demon Box.",
            dependsOn = { "accept-5381-hand-of-iruxos" },
            complete = QuestState(5381, "complete"),
            route = {
                Point(MAP.DESOLACE, 0.5600, 0.2900, "Demon Spirit",
                    "Travel to Demon Spirit."),
            },
        },
        {
            id = "turnin-5381-hand-of-iruxos",
            kind = "turnin",
            priority = 50,
            text = "Turn in Hand of Iruxos to Taiga Wisemane in Shadowprey Village.",
            dependsOn = { "objective-5381-hand-of-iruxos" },
            complete = QuestState(5381, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.2579, 0.6828, "Taiga Wisemane",
                    "Travel to Taiga Wisemane."),
            },
        },
        {
            id = "accept-5581-portals-of-the-legion",
            kind = "accept",
            priority = 60,
            text = "Accept Portals of the Legion from Taiga Wisemane in Shadowprey Village.",
            complete = QuestState(5581, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.2578, 0.6820, "Taiga Wisemane",
                    "Travel to Taiga Wisemane."),
            },
        },
        {
            id = "accept-1374-khan-jehn",
            kind = "accept",
            priority = 70,
            conditions = {
                all = {
                    { quest = { id = 1373, state = "completed" } },
                },
            },
            text = "Accept Khan Jehn from Uthek the Wise in Gelkis Village.",
            complete = QuestState(1374, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.3626, 0.7924, "Uthek the Wise",
                    "Travel to Uthek the Wise."),
            },
        },
        {
            id = "accept-6134-ghost-o-plasm-round-up",
            kind = "accept",
            priority = 90,
            text = "Accept Ghost-o-plasm Round Up from Hornizz Brimbuzzle in Kodo Graveyard.",
            complete = QuestState(6134, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.4783, 0.6174, "Hornizz Brimbuzzle",
                    "Travel to Hornizz Brimbuzzle."),
            },
        },
        {
            id = "accept-1488-the-corrupter",
            kind = "accept",
            priority = 110,
            conditions = {
                all = {
                    { quest = { id = 1484, state = "completed" } },
                },
            },
            text = "Accept The Corrupter from Takata Steelblade in Ghost Walker Post.",
            complete = QuestState(1488, "activeOrCompleted"),
            route = {
                Point(MAP.DESOLACE, 0.5257, 0.5437, "Takata Steelblade",
                    "Travel to Takata Steelblade."),
            },
        },
        {
            id = "objective-1374-khan-jehn",
            kind = "objective",
            priority = 130,
            conditions = {
                all = {
                    { quest = { id = 1373, state = "completed" } },
                },
            },
            text = "Kill Khan Jehn in Magram Village.",
            dependsOn = { "accept-1374-khan-jehn" },
            complete = QuestState(1374, "complete"),
            route = {
                Point(MAP.DESOLACE, 0.6624, 0.8028, "Khan Jehn",
                    "Travel to Khan Jehn."),
            },
        },
        {
            id = "objective-6134-ghost-o-plasm-round-up",
            kind = "objective",
            priority = 150,
            text = "Clear the area and use Zeppelin Cargo, kill the Magrami Spectre that appear and collect 8 Ghost-o-Plasm.",
            dependsOn = { "accept-6134-ghost-o-plasm-round-up" },
            complete = QuestState(6134, "complete"),
            route = {
                Point(MAP.DESOLACE, 0.6387, 0.9171, "Magrami Spectre",
                    "Travel to Magrami Spectre."),
            },
        },
        {
            id = "objective-1488-1-lord-azrethoc",
            kind = "objective",
            priority = 170,
            conditions = {
                all = {
                    { quest = { id = 1484, state = "completed" } },
                },
            },
            text = "Kill Lord Azrethoc in Mannoroc Coven, he's an elite but you should be able to solo him.",
            dependsOn = { "accept-1488-the-corrupter" },
            complete = QuestObjective(1488, 1),
            route = {
                Point(MAP.DESOLACE, 0.5719, 0.7917, "Lord Azrethoc",
                    "Travel to Lord Azrethoc."),
            },
        },
        {
            id = "objective-1488-2-jugkar-grim-rod",
            kind = "objective",
            priority = 180,
            conditions = {
                all = {
                    { quest = { id = 1484, state = "completed" } },
                },
            },
            text = "Kill Jugkar Grim'rod in Mannoroc Coven.",
            dependsOn = { "accept-1488-the-corrupter" },
            complete = QuestObjective(1488, 2),
            route = {
                Point(MAP.DESOLACE, 0.5585, 0.7773, "Jugkar Grim'rod",
                    "Travel to Jugkar Grim'rod."),
            },
        },
        {
            id = "objective-5581-portals-of-the-legion",
            kind = "objective",
            priority = 190,
            text = "Use Hand of Iruxos on the Demon Portal and kill the Demon Portal Guardian that it summon to close 6 Demon portal in Mannoroc Coven.",
            dependsOn = { "accept-5581-portals-of-the-legion" },
            complete = QuestState(5581, "complete"),
            route = {
                Point(MAP.DESOLACE, 0.5385, 0.7921, "Demon Portal Guardian",
                    "Travel to Demon Portal Guardian."),
            },
        },
        {
            id = "turnin-1488-the-corrupter",
            kind = "turnin",
            priority = 210,
            conditions = {
                all = {
                    { quest = { id = 1484, state = "completed" } },
                },
            },
            text = "Turn in The Corrupter to Takata Steelblade in Ghost Walker Post.",
            dependsOn = { "objective-1488-1-lord-azrethoc", "objective-1488-2-jugkar-grim-rod" },
            complete = QuestState(1488, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.5257, 0.5434, "Takata Steelblade",
                    "Travel to Takata Steelblade."),
            },
        },
        {
            id = "turnin-6134-ghost-o-plasm-round-up",
            kind = "turnin",
            priority = 230,
            text = "Turn in Ghost-o-plasm Round Up to Hornizz Brimbuzzle in Kodo Graveyard.",
            dependsOn = { "objective-6134-ghost-o-plasm-round-up" },
            complete = QuestState(6134, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.4783, 0.6174, "Hornizz Brimbuzzle",
                    "Travel to Hornizz Brimbuzzle."),
            },
        },
        {
            id = "turnin-1374-khan-jehn",
            kind = "turnin",
            priority = 250,
            conditions = {
                all = {
                    { quest = { id = 1373, state = "completed" } },
                },
            },
            text = "Turn in Khan Jehn to Uthek the Wise in Gelkis Village.",
            dependsOn = { "objective-1374-khan-jehn" },
            complete = QuestState(1374, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.3623, 0.7922, "Uthek the Wise",
                    "Travel to Uthek the Wise."),
            },
        },
        {
            id = "turnin-5581-portals-of-the-legion",
            kind = "turnin",
            priority = 270,
            text = "Turn in Portals of the Legion to Taiga Wisemane in Shadowprey Village.",
            dependsOn = { "objective-5581-portals-of-the-legion" },
            complete = QuestState(5581, "completed"),
            route = {
                Point(MAP.DESOLACE, 0.2581, 0.6821, "Taiga Wisemane",
                    "Travel to Taiga Wisemane."),
            },
        },
    },
})
