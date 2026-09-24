local _, ns = ...

-- Horde Era leveling route for Alterac Mountains, levels 36-37.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    ALTERAC = 1416,
    HILLSBRAD = 1424,
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
    id = "leveling-era-36-37-alterac-mountains",
    title = "36-37 Alterac Mountains (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 36 } },
        },
    },
    goals = {
        {
            id = "travel-544-tarren-mill",
            kind = "travel",
            priority = 10,
            text = "Travel to Tarren Mill.",
            route = {
                Point(MAP.HILLSBRAD, 0.6159, 0.2071, "Tarren Mill",
                    "Travel to Tarren Mill."),
            },
        },
        {
            id = "accept-544-prison-break-in",
            kind = "accept",
            priority = 20,
            text = "Accept Prison Break In from Magus Wordeen Voidglare in Tarren Mill.",
            complete = QuestState(544, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.6159, 0.2071, "Magus Wordeen Voidglare",
                    "Travel to Magus Wordeen Voidglare."),
            },
        },
        {
            id = "accept-556-stone-tokens",
            kind = "accept",
            priority = 30,
            text = "Accept Stone Tokens from Keeper Bel'varil in Tarren Mill.",
            complete = QuestState(556, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.6159, 0.2071, "Keeper Bel'varil",
                    "Travel to Keeper Bel'varil."),
            },
        },
        {
            id = "travel-556-dalaran",
            kind = "travel",
            priority = 40,
            text = "Travel to {in Dalaran.",
            route = {
                Point(MAP.ALTERAC, 0.2033, 0.8479, "Dalaran",
                    "Travel to Dalaran."),
            },
        },
        {
            id = "objective-556-stone-tokens",
            kind = "objective",
            priority = 50,
            text = "Kill Dalaran humanoid enemies and collect 10 Worn Stone Token in Dalaran.",
            dependsOn = { "accept-556-stone-tokens" },
            complete = QuestState(556, "complete"),
            route = {
                Point(MAP.ALTERAC, 0.2100, 0.8300, "Dalaran Shield Guard",
                    "Travel to Dalaran Shield Guard."),
            },
        },
        {
            id = "objective-544-2-ricter",
            kind = "objective",
            priority = 60,
            text = "Kill Ricter and collect Bloodstone Marble in Lordamere Internment Camp.",
            dependsOn = { "accept-544-prison-break-in" },
            complete = QuestObjective(544, 2),
            route = {
                Point(MAP.ALTERAC, 0.1969, 0.8248, "Ricter",
                    "Travel to Ricter."),
            },
        },
        {
            id = "objective-544-3-alina",
            kind = "objective",
            priority = 70,
            text = "Kill Alina and collect Bloodstone Shard in Lordamere Internment Camp.",
            dependsOn = { "accept-544-prison-break-in" },
            complete = QuestObjective(544, 3),
            route = {
                Point(MAP.ALTERAC, 0.2022, 0.8626, "Alina",
                    "Travel to Alina."),
            },
        },
        {
            id = "objective-544-1-dermot",
            kind = "objective",
            priority = 80,
            text = "Kill Dermot and collect Bloodstone Wedge in Lordamere Internment Camp.",
            dependsOn = { "accept-544-prison-break-in" },
            complete = QuestObjective(544, 1),
            route = {
                Point(MAP.ALTERAC, 0.2020, 0.8624, "Dermot",
                    "Travel to Dermot."),
            },
        },
        {
            id = "objective-544-4-kegan-darkmar",
            kind = "objective",
            priority = 90,
            text = "Kill Kegan Darkmar and collect Bloodstone Oval in Lordamere Internment Camp.",
            dependsOn = { "accept-544-prison-break-in" },
            complete = QuestObjective(544, 4),
            route = {
                Point(MAP.ALTERAC, 0.1819, 0.8359, "Kegan Darkmar",
                    "Travel to Kegan Darkmar."),
            },
        },
        {
            id = "travel-tarren-mill",
            kind = "travel",
            priority = 100,
            text = "Travel to Tarren Mill.",
            route = {
                Point(MAP.HILLSBRAD, 0.6159, 0.2071, "Tarren Mill",
                    "Travel to Tarren Mill."),
            },
        },
        {
            id = "turnin-544-prison-break-in",
            kind = "turnin",
            priority = 110,
            text = "Turn in Prison Break In to Magus Wordeen Voidglare in Tarren Mill.",
            dependsOn = { "objective-544-2-ricter", "objective-544-3-alina", "objective-544-1-dermot", "objective-544-4-kegan-darkmar" },
            complete = QuestState(544, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.6159, 0.2071, "Magus Wordeen Voidglare",
                    "Travel to Magus Wordeen Voidglare."),
            },
        },
        {
            id = "accept-545-dalaran-patrols",
            kind = "accept",
            priority = 120,
            text = "Accept Dalaran Patrols from Magus Wordeen Voidglare in Tarren Mill.",
            complete = QuestState(545, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.6159, 0.2085, "Magus Wordeen Voidglare",
                    "Travel to Magus Wordeen Voidglare."),
            },
        },
        {
            id = "turnin-556-stone-tokens",
            kind = "turnin",
            priority = 130,
            text = "Turn in Stone Tokens to Keeper Bel'varil in Tarren Mill.",
            dependsOn = { "objective-556-stone-tokens" },
            complete = QuestState(556, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.6159, 0.2071, "Keeper Bel'varil",
                    "Travel to Keeper Bel'varil."),
            },
        },
        {
            id = "accept-557-bracers-of-binding",
            kind = "accept",
            priority = 140,
            text = "Accept Bracers of Binding from Keeper Bel'varil in Tarren Mill.",
            complete = QuestState(557, "activeOrCompleted"),
            route = {
                Point(MAP.HILLSBRAD, 0.6154, 0.2093, "Keeper Bel'varil",
                    "Travel to Keeper Bel'varil."),
            },
        },
        {
            id = "objective-557-bracers-of-binding",
            kind = "objective",
            priority = 150,
            text = "Kill Elemental Slave and collect 4 Bracers of Earth Binding in Dalaran.",
            dependsOn = { "accept-557-bracers-of-binding" },
            complete = QuestState(557, "complete"),
            route = {
                Point(MAP.ALTERAC, 0.1198, 0.7925, "Elemental Slave",
                    "Travel to Elemental Slave."),
            },
        },
        {
            id = "objective-545-dalaran-patrols",
            kind = "objective",
            priority = 160,
            text = "Kill 6 Dalaran Summoner and 12 Elemental Slave in Dalaran.",
            dependsOn = { "accept-545-dalaran-patrols" },
            complete = QuestState(545, "complete"),
            route = {
                Point(MAP.ALTERAC, 0.1994, 0.7400, "Dalaran Summoner",
                    "Travel to Dalaran Summoner."),
            },
        },
        {
            id = "travel-tarren-mill-2",
            kind = "travel",
            priority = 170,
            text = "Travel to Tarren Mill You can die on purpose and ressurect at Tarren Mill.",
            route = {
                Point(MAP.HILLSBRAD, 0.6158, 0.2080, "Tarren Mill",
                    "Travel to Tarren Mill."),
            },
        },
        {
            id = "turnin-545-dalaran-patrols",
            kind = "turnin",
            priority = 180,
            text = "Turn in Dalaran Patrols to Magus Wordeen Voidglare in Tarren Mill.",
            dependsOn = { "objective-545-dalaran-patrols" },
            complete = QuestState(545, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.6158, 0.2080, "Magus Wordeen Voidglare",
                    "Travel to Magus Wordeen Voidglare."),
            },
        },
        {
            id = "turnin-557-bracers-of-binding",
            kind = "turnin",
            priority = 190,
            text = "Turn in Bracers of Binding to Keeper Bel'varil in Tarren Mill.",
            dependsOn = { "objective-557-bracers-of-binding" },
            complete = QuestState(557, "completed"),
            route = {
                Point(MAP.HILLSBRAD, 0.6151, 0.2086, "Keeper Bel'varil",
                    "Travel to Keeper Bel'varil."),
            },
        },
    },
})
