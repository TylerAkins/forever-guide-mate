local _, ns = ...

-- Darkshore Loremaster route.
-- The step order follows the leveling route. Quests that are on the
-- Wowhead zone page and not on that route are woven in at the giver
-- the route already visits, or after the series quest they follow.
-- Leveling route: Guides/Leveling/12-17-darkshore.lua, Guides/Leveling/20-21-darkshore.lua, Guides/Leveling/23-24-darkshore.lua
-- Quest list: https://www.wowhead.com/forever/quests/kalimdor/darkshore
-- Dungeon quests stay in the dungeon guides.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    DARKSHORE = 1439,
    STORMWIND = 1453,
    ELWYNN = 1429,
    IRONFORGE = 1455,
    DUN_MOROGH = 1426,
    TELDRASSIL = 1438,
    DARNASSUS = 1457,
    MOONGLADE = 1450,
    WESTFALL = 1436,
    BARRENS = 1413,
    ASHENVALE = 1440,
    ZONE_1437 = 1437,
}

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
    id = "leveling-darkshore",
    title = "Darkshore",
    category = "Loremaster Guides",
    revision = 2,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 12 } },
        },
    },
    goals = {
        {
            id = "turnin-1641-the-tome-of-divinity",
            kind = "turnin",
            priority = 10,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 1 },
                    { ["not"] = { quest = { id = 1642, state = "activeOrCompleted" } } },
                },
            },
            text = "Turn in The Tome of Divinity to Duthorian Rall in Cathedral of Light. This is an elite. Bring a group.",
            complete = QuestState(1641, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.3983, 0.2982, "Duthorian Rall",
                    "Travel to Duthorian Rall."),
            },
        },
        {
            id = "objective-1642-tome-of-divinity",
            kind = "objective",
            priority = 20,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 1 },
                },
            },
            text = "Speak to Duthorian Rall and collect Tome of Divinity to begin quest.",
            dependsOn = { "accept-1642-the-tome-of-divinity" },
            complete = QuestState(1642, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.3983, 0.2982, "Duthorian Rall",
                    "Travel to Duthorian Rall."),
            },
        },
        {
            id = "accept-1642-the-tome-of-divinity",
            kind = "accept",
            priority = 30,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 1 },
                },
            },
            text = "Use the Tome of Divinity to accept The Tome of Divinity.",
            complete = QuestState(1642, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.3983, 0.2982, "Duthorian Rall",
                    "Travel to Duthorian Rall."),
            },
        },
        {
            id = "turnin-1642-the-tome-of-divinity",
            kind = "turnin",
            priority = 40,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 1 },
                },
            },
            text = "Turn in The Tome of Divinity to Duthorian Rall in Cathedral of Light.",
            dependsOn = { "objective-1642-tome-of-divinity" },
            complete = QuestState(1642, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.3983, 0.2982, "Duthorian Rall",
                    "Travel to Duthorian Rall."),
            },
        },
        {
            id = "accept-1643-the-tome-of-divinity",
            kind = "accept",
            priority = 50,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 1 },
                },
            },
            text = "Accept The Tome of Divinity from Duthorian Rall in Cathedral of Light.",
            complete = QuestState(1643, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.3983, 0.2982, "Duthorian Rall",
                    "Travel to Duthorian Rall."),
            },
        },
        {
            id = "turnin-1643-the-tome-of-divinity",
            kind = "turnin",
            priority = 60,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 1 },
                },
            },
            text = "Turn in The Tome of Divinity to Stephanie Turner in Trade District.",
            dependsOn = { "accept-1643-the-tome-of-divinity" },
            complete = QuestState(1643, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.5701, 0.6173, "Stephanie Turner",
                    "Travel to Stephanie Turner."),
            },
        },
        {
            id = "accept-1644-the-tome-of-divinity",
            kind = "accept",
            priority = 70,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 1 },
                },
            },
            text = "Accept The Tome of Divinity from Stephanie Turner in Trade District.",
            complete = QuestState(1644, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.5701, 0.6173, "Stephanie Turner",
                    "Travel to Stephanie Turner."),
            },
        },
        {
            id = "objective-1644-the-tome-of-divinity",
            kind = "objective",
            priority = 80,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 1 },
                },
            },
            text = "Bring 10 Linen Cloth to Stephanie Turner in Stormwind You can purchase it from the auction house.",
            dependsOn = { "accept-1644-the-tome-of-divinity" },
            complete = QuestState(1644, "complete"),
        },
        {
            id = "turnin-1644-the-tome-of-divinity",
            kind = "turnin",
            priority = 90,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 1 },
                },
            },
            text = "Turn in The Tome of Divinity to Stephanie Turner in Trade District.",
            dependsOn = { "objective-1644-the-tome-of-divinity" },
            complete = QuestState(1644, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.5712, 0.6189, "Stephanie Turner",
                    "Travel to Stephanie Turner."),
            },
        },
        {
            id = "accept-1780-the-tome-of-divinity",
            kind = "accept",
            priority = 100,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 1 },
                },
            },
            text = "Accept The Tome of Divinity from Stephanie Turner in Trade District.",
            complete = QuestState(1780, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.5712, 0.6189, "Stephanie Turner",
                    "Travel to Stephanie Turner."),
            },
        },
        {
            id = "turnin-1780-the-tome-of-divinity",
            kind = "turnin",
            priority = 110,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 1 },
                },
            },
            text = "Turn in The Tome of Divinity to Duthorian Rall in Cathedral of Light.",
            dependsOn = { "accept-1780-the-tome-of-divinity" },
            complete = QuestState(1780, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.3989, 0.2973, "Duthorian Rall",
                    "Travel to Duthorian Rall."),
            },
        },
        {
            id = "accept-1781-the-tome-of-divinity",
            kind = "accept",
            priority = 120,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 1 },
                },
            },
            text = "Accept The Tome of Divinity from Duthorian Rall in Cathedral of Light.",
            complete = QuestState(1781, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.3989, 0.2973, "Duthorian Rall",
                    "Travel to Duthorian Rall."),
            },
        },
        {
            id = "turnin-1781-the-tome-of-divinity",
            kind = "turnin",
            priority = 130,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 1 },
                },
            },
            text = "Turn in The Tome of Divinity to Gazin Tenorm in Cathedral of Light.",
            dependsOn = { "accept-1781-the-tome-of-divinity" },
            complete = QuestState(1781, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.3863, 0.2666, "Gazin Tenorm",
                    "Travel to Gazin Tenorm."),
            },
        },
        {
            id = "accept-1786-the-tome-of-divinity",
            kind = "accept",
            priority = 140,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 1 },
                },
            },
            text = "Accept The Tome of Divinity from Gazin Tenorm in Cathedral of Light.",
            complete = QuestState(1786, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.3863, 0.2666, "Gazin Tenorm",
                    "Travel to Gazin Tenorm."),
            },
        },
        {
            id = "objective-1786-the-tome-of-divinity",
            kind = "objective",
            priority = 150,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 1 },
                },
            },
            text = "Use Bodyguard to resurrect Henze Faulk in Heroes' Vigil.",
            dependsOn = { "accept-1786-the-tome-of-divinity" },
            complete = QuestState(1786, "complete"),
            route = {
                Point(MAP.ELWYNN, 0.7253, 0.5140, "Bodyguard",
                    "Travel to Bodyguard."),
            },
        },
        {
            id = "turnin-1786-the-tome-of-divinity",
            kind = "turnin",
            priority = 160,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 1 },
                },
            },
            text = "Turn in The Tome of Divinity to Henze Faulk in Heroes' Vigil.",
            dependsOn = { "objective-1786-the-tome-of-divinity" },
            complete = QuestState(1786, "completed"),
            route = {
                Point(MAP.ELWYNN, 0.7253, 0.5140, "Henze Faulk",
                    "Travel to Henze Faulk."),
            },
        },
        {
            id = "accept-1787-the-tome-of-divinity",
            kind = "accept",
            priority = 170,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 1 },
                },
            },
            text = "Accept The Tome of Divinity from Henze Faulk in Heroes' Vigil.",
            complete = QuestState(1787, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNN, 0.7253, 0.5140, "Henze Faulk",
                    "Travel to Henze Faulk."),
            },
        },
        {
            id = "objective-1787-the-tome-of-divinity",
            kind = "objective",
            priority = 180,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 1 },
                },
            },
            text = "Kill Rogue Wizard and collect Defias Script in Heroes' Vigil.",
            dependsOn = { "accept-1787-the-tome-of-divinity" },
            complete = QuestState(1787, "complete"),
            route = {
                Point(MAP.ELWYNN, 0.7361, 0.5114, "Rogue Wizard",
                    "Travel to Rogue Wizard."),
            },
        },
        {
            id = "turnin-1787-the-tome-of-divinity",
            kind = "turnin",
            priority = 190,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 1 },
                },
            },
            text = "Turn in The Tome of Divinity to Gazin Tenorm in Cathedral of Light.",
            dependsOn = { "objective-1787-the-tome-of-divinity" },
            complete = QuestState(1787, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.3849, 0.2638, "Gazin Tenorm",
                    "Travel to Gazin Tenorm."),
            },
        },
        {
            id = "accept-1788-the-tome-of-divinity",
            kind = "accept",
            priority = 200,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 1 },
                },
            },
            text = "Accept The Tome of Divinity from Gazin Tenorm in Cathedral of Light.",
            complete = QuestState(1788, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.3849, 0.2638, "Gazin Tenorm",
                    "Travel to Gazin Tenorm."),
            },
        },
        {
            id = "turnin-1788-the-tome-of-divinity",
            kind = "turnin",
            priority = 210,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 1 },
                },
            },
            text = "Turn in The Tome of Divinity to Duthorian Rall in Cathedral of Light.",
            dependsOn = { "accept-1788-the-tome-of-divinity" },
            complete = QuestState(1788, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.7253, 0.5140, "Duthorian Rall",
                    "Travel to Duthorian Rall."),
            },
        },
        {
            id = "turnin-1645-the-tome-of-divinity",
            kind = "turnin",
            priority = 220,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 3 },
                    { ["not"] = { quest = { id = 1646, state = "activeOrCompleted" } } },
                },
            },
            text = "Turn in The Tome of Divinity to Tiza Battleforge in Hall of Mysteries. This is an elite. Bring a group.",
            complete = QuestState(1645, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.2763, 0.1225, "Tiza Battleforge",
                    "Travel to Tiza Battleforge."),
            },
        },
        {
            id = "objective-1646-tome-of-divinity",
            kind = "objective",
            priority = 230,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Speak to Tiza Battleforge and collect Tome of Divinity to begin quest.",
            dependsOn = { "accept-1646-the-tome-of-divinity" },
            complete = QuestState(1646, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2763, 0.1225, "Tiza Battleforge",
                    "Travel to Tiza Battleforge."),
            },
        },
        {
            id = "accept-1646-the-tome-of-divinity",
            kind = "accept",
            priority = 240,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Use the Tome of Divinity to accept The Tome of Divinity.",
            complete = QuestState(1646, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2763, 0.1225, "Tiza Battleforge",
                    "Travel to Tiza Battleforge."),
            },
        },
        {
            id = "turnin-1646-the-tome-of-divinity",
            kind = "turnin",
            priority = 250,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Turn in The Tome of Divinity to Tiza Battleforge in Hall of Mysteries.",
            dependsOn = { "objective-1646-tome-of-divinity" },
            complete = QuestState(1646, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.2763, 0.1225, "Tiza Battleforge",
                    "Travel to Tiza Battleforge."),
            },
        },
        {
            id = "accept-1647-the-tome-of-divinity",
            kind = "accept",
            priority = 260,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Accept The Tome of Divinity from Tiza Battleforge in Hall of Mysteries.",
            complete = QuestState(1647, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2763, 0.1225, "Tiza Battleforge",
                    "Travel to Tiza Battleforge."),
            },
        },
        {
            id = "turnin-1647-the-tome-of-divinity",
            kind = "turnin",
            priority = 270,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Turn in The Tome of Divinity to John Turner in Ironforge.",
            dependsOn = { "accept-1647-the-tome-of-divinity" },
            complete = QuestState(1647, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.2335, 0.6264, "John Turner",
                    "Travel to John Turner."),
            },
        },
        {
            id = "accept-1648-the-tome-of-divinity",
            kind = "accept",
            priority = 280,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Accept The Tome of Divinity from John Turner in Ironforge.",
            complete = QuestState(1648, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2335, 0.6264, "John Turner",
                    "Travel to John Turner."),
            },
        },
        {
            id = "objective-1648-the-tome-of-divinity",
            kind = "objective",
            priority = 290,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Buy 10 Linen Cloth from the Auction House in Ironforge.",
            dependsOn = { "accept-1648-the-tome-of-divinity" },
            complete = QuestState(1648, "complete"),
            route = {
                Point(MAP.IRONFORGE, 0.2335, 0.6264, "Auctioneer Redmuse",
                    "Travel to Auctioneer Redmuse."),
            },
        },
        {
            id = "turnin-1648-the-tome-of-divinity",
            kind = "turnin",
            priority = 300,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Turn in The Tome of Divinity to John Turner in Ironforge.",
            dependsOn = { "objective-1648-the-tome-of-divinity" },
            complete = QuestState(1648, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.2335, 0.6264, "John Turner",
                    "Travel to John Turner."),
            },
        },
        {
            id = "accept-1778-the-tome-of-divinity",
            kind = "accept",
            priority = 310,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Accept The Tome of Divinity from John Turner in Ironforge.",
            complete = QuestState(1778, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2351, 0.6247, "John Turner",
                    "Travel to John Turner."),
            },
        },
        {
            id = "turnin-1778-the-tome-of-divinity",
            kind = "turnin",
            priority = 320,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Turn in The Tome of Divinity to Tiza Battleforge in Hall of Mysteries.",
            dependsOn = { "accept-1778-the-tome-of-divinity" },
            complete = QuestState(1778, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.2773, 0.1215, "Tiza Battleforge",
                    "Travel to Tiza Battleforge."),
            },
        },
        {
            id = "accept-1779-the-tome-of-divinity",
            kind = "accept",
            priority = 330,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Accept The Tome of Divinity from Tiza Battleforge in Hall of Mysteries.",
            complete = QuestState(1779, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2773, 0.1215, "Tiza Battleforge",
                    "Travel to Tiza Battleforge."),
            },
        },
        {
            id = "turnin-1779-the-tome-of-divinity",
            kind = "turnin",
            priority = 340,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Turn in The Tome of Divinity to Muiredon Battleforge in Hall of Mysteries.",
            dependsOn = { "accept-1779-the-tome-of-divinity" },
            complete = QuestState(1779, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.2355, 0.0833, "Muiredon Battleforge",
                    "Travel to Muiredon Battleforge."),
            },
        },
        {
            id = "accept-1783-the-tome-of-divinity",
            kind = "accept",
            priority = 350,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Accept The Tome of Divinity from Muiredon Battleforge in Hall of Mysteries.",
            complete = QuestState(1783, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2355, 0.0833, "Muiredon Battleforge",
                    "Travel to Muiredon Battleforge."),
            },
        },
        {
            id = "objective-1783-narm-faulk",
            kind = "objective",
            priority = 360,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Use the Symbol of Life to resurrect Narm Faulk.",
            dependsOn = { "accept-1783-the-tome-of-divinity" },
            complete = QuestState(1783, "complete"),
        },
        {
            id = "turnin-1783-the-tome-of-divinity",
            kind = "turnin",
            priority = 370,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Turn in The Tome of Divinity to Narm Faulk in Ironband's Compound.",
            dependsOn = { "objective-1783-narm-faulk" },
            complete = QuestState(1783, "completed"),
            route = {
                Point(MAP.DUN_MOROGH, 0.7833, 0.5806, "Narm Faulk",
                    "Travel to Narm Faulk."),
            },
        },
        {
            id = "accept-1784-the-tome-of-divinity",
            kind = "accept",
            priority = 380,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Accept The Tome of Divinity from Narm Faulk in Ironband's Compound.",
            complete = QuestState(1784, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.7833, 0.5806, "Narm Faulk",
                    "Travel to Narm Faulk."),
            },
        },
        {
            id = "objective-1784-the-tome-of-divinity",
            kind = "objective",
            priority = 390,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Kill a Dark Iron Spy and collect Dark Iron Script in Ironband's Compound.",
            dependsOn = { "accept-1784-the-tome-of-divinity" },
            complete = QuestState(1784, "complete"),
            route = {
                Point(MAP.DUN_MOROGH, 0.7810, 0.5998, "Dark Iron Spy",
                    "Travel to Dark Iron Spy."),
            },
        },
        {
            id = "turnin-1784-the-tome-of-divinity",
            kind = "turnin",
            priority = 400,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Turn in The Tome of Divinity to Muiredon Battleforge in Hall of Mysteries.",
            dependsOn = { "objective-1784-the-tome-of-divinity" },
            complete = QuestState(1784, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.2356, 0.0838, "Muiredon Battleforge",
                    "Travel to Muiredon Battleforge."),
            },
        },
        {
            id = "accept-1785-the-tome-of-divinity",
            kind = "accept",
            priority = 410,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Accept The Tome of Divinity from Muiredon Battleforge in Hall of Mysteries.",
            complete = QuestState(1785, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2372, 0.0861, "Muiredon Battleforge",
                    "Travel to Muiredon Battleforge."),
            },
        },
        {
            id = "turnin-1785-the-tome-of-divinity",
            kind = "turnin",
            priority = 420,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Turn in The Tome of Divinity to Tiza Battleforge in Hall of Mysteries.",
            dependsOn = { "accept-1785-the-tome-of-divinity" },
            complete = QuestState(1785, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.2751, 0.1218, "Tiza Battleforge",
                    "Travel to Tiza Battleforge."),
            },
        },
        {
            id = "accept-3524-washed-ashore",
            kind = "accept",
            priority = 430,
            text = "Accept Washed Ashore from Gwennyth Bly'Leggonde in Auberdine.",
            complete = QuestState(3524, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3661, 0.4559, "Gwennyth Bly'Leggonde",
                    "Travel to Gwennyth Bly'Leggonde."),
            },
        },
        {
            id = "turnin-6342-flight-to-auberdine",
            kind = "turnin",
            priority = 470,
            conditions = {
                all = {
                    { race = 4 },
                },
            },
            text = "Turn in Flight to Auberdine to Laird in Auberdine.",
            complete = QuestState(6342, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3677, 0.4432, "Laird",
                    "Travel to Laird."),
            },
        },
        {
            id = "accept-6343-return-to-nessa",
            kind = "accept",
            priority = 480,
            conditions = {
                all = {
                    { race = 4 },
                },
            },
            text = "Accept Return to Nessa from Laird in Auberdine.",
            complete = QuestState(6343, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3677, 0.4432, "Laird",
                    "Travel to Laird."),
            },
        },
        {
            id = "turnin-6343-return-to-nessa",
            kind = "turnin",
            priority = 490,
            conditions = {
                all = {
                    { race = 4 },
                },
            },
            text = "Turn in Return to Nessa to Nessa Shadowsong in Rut'theran Village.",
            dependsOn = { "accept-6343-return-to-nessa" },
            complete = QuestState(6343, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.5629, 0.9245, "Nessa Shadowsong",
                    "Travel to Nessa Shadowsong."),
            },
        },
        {
            id = "accept-963-for-love-eternal",
            kind = "accept",
            priority = 500,
            text = "Accept For Love Eternal from Cerellean Whiteclaw in Auberdine.",
            complete = QuestState(963, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3576, 0.4368, "Cerellean Whiteclaw",
                    "Travel to Cerellean Whiteclaw."),
            },
        },
        {
            id = "accept-983-buzzbox-827",
            kind = "accept",
            priority = 510,
            text = "Accept Buzzbox 827 from Wizbang Cranktoggle in Auberdine.",
            complete = QuestState(983, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3698, 0.4410, "Wizbang Cranktoggle",
                    "Travel to Wizbang Cranktoggle."),
            },
        },
        {
            id = "accept-4811-the-red-crystal",
            kind = "accept",
            priority = 520,
            text = "Accept The Red Crystal from Sentinel Glynda Nal'Shea in Auberdine.",
            complete = QuestState(4811, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3764, 0.4336, "Sentinel Glynda Nal'Shea",
                    "Travel to Sentinel Glynda Nal'Shea."),
            },
        },
        {
            id = "accept-947-cave-mushrooms",
            kind = "accept",
            priority = 530,
            text = "Accept Cave Mushrooms from Barithras Moonshade in Auberdine.",
            complete = QuestState(947, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3732, 0.4366, "Barithras Moonshade",
                    "Travel to Barithras Moonshade."),
            },
        },
        {
            id = "accept-1141-the-family-and-the-fishing-pole",
            kind = "accept",
            priority = 540,
            text = "Accept The Family and the Fishing Pole from Gubber Blump in Auberdine.",
            complete = QuestState(1141, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3610, 0.4496, "Gubber Blump",
                    "Travel to Gubber Blump."),
            },
        },
        {
            id = "accept-6341-the-bounty-of-teldrassil",
            kind = "accept",
            priority = 550,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept The Bounty of Teldrassil from Nessa Shadowsong.",
            complete = QuestState(6341, "activeOrCompleted"),
            route = {
                Point(MAP.TELDRASSIL, 0.562, 0.924, "Nessa Shadowsong",
                    "Travel to Nessa Shadowsong in Teldrassil."),
            },
        },
        {
            id = "objective-6341-the-bounty-of-teldrassil-1",
            kind = "objective",
            priority = 560,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "The Bounty of Teldrassil: Nessa's Collection.",
            dependsOn = { "accept-6341-the-bounty-of-teldrassil" },
            complete = QuestObjective(6341, 1, "Nessa's Collection"),
            route = {
                Point(MAP.TELDRASSIL, 0.562, 0.924, "Nessa Shadowsong",
                    "Travel to Nessa Shadowsong in Teldrassil."),
            },
        },
        {
            id = "turnin-6341-the-bounty-of-teldrassil",
            kind = "turnin",
            priority = 570,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in The Bounty of Teldrassil to Vesprystus.",
            dependsOn = { "objective-6341-the-bounty-of-teldrassil-1" },
            complete = QuestState(6341, "completed"),
            route = {
                Point(MAP.TELDRASSIL, 0.584, 0.940, "Vesprystus",
                    "Travel to Vesprystus in Teldrassil."),
            },
        },
        {
            id = "objective-1141-fishing-pole",
            kind = "objective",
            priority = 580,
            text = "Buy Fishing Pole from Gubber Blump.",
            dependsOn = { "accept-1141-the-family-and-the-fishing-pole" },
            complete = QuestState(1141, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.3610, 0.4496, "Gubber Blump",
                    "Travel to Gubber Blump."),
            },
        },
        {
            id = "objective-1141-shiny-bauble",
            kind = "objective",
            priority = 590,
            text = "Buy Shiny Bauble from Gubber Blump.",
            dependsOn = { "accept-1141-the-family-and-the-fishing-pole" },
            complete = QuestState(1141, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.3610, 0.4496, "Gubber Blump",
                    "Travel to Gubber Blump."),
            },
        },
        {
            id = "objective-1141-the-family-and-the-fishing-pole",
            kind = "objective",
            priority = 600,
            text = "Catch 6 Darkshore Grouper in Auberdine Equip the Fishing Pole and cast the Fishing spell near the water and click on the bob when you see it moving to catch the fish, keep trying until you complete the quest This is an easy quest and recommended but you can safely skip it.",
            dependsOn = { "accept-1141-the-family-and-the-fishing-pole" },
            complete = QuestState(1141, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.3591, 0.4498, "Auberdine",
                    "Travel to Auberdine."),
            },
        },
        {
            id = "turnin-1141-the-family-and-the-fishing-pole",
            kind = "turnin",
            priority = 610,
            text = "Turn in The Family and the Fishing Pole to Gubber Blump in Auberdine.",
            dependsOn = { "objective-1141-fishing-pole", "objective-1141-shiny-bauble", "objective-1141-the-family-and-the-fishing-pole" },
            complete = QuestState(1141, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3607, 0.4494, "Gubber Blump",
                    "Travel to Gubber Blump."),
            },
        },
        {
            id = "accept-954-bashal-aran",
            kind = "accept",
            priority = 620,
            text = "Accept Bashal'Aran from Thundris Windweaver in Auberdine.",
            complete = QuestState(954, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3741, 0.4016, "Thundris Windweaver",
                    "Travel to Thundris Windweaver."),
            },
        },
        {
            id = "accept-958-tools-of-the-highborne",
            kind = "accept",
            priority = 630,
            text = "Accept Tools of the Highborne from Thundris Windweaver in Auberdine.",
            complete = QuestState(958, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3741, 0.4016, "Thundris Windweaver",
                    "Travel to Thundris Windweaver."),
            },
        },
        {
            id = "accept-2118-plagued-lands",
            kind = "accept",
            priority = 640,
            text = "Accept Plagued Lands from Tharnariun Treetender in Auberdine.",
            complete = QuestState(2118, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3885, 0.4344, "Tharnariun Treetender",
                    "Travel to Tharnariun Treetender."),
            },
        },
        {
            id = "accept-984-how-big-a-threat",
            kind = "accept",
            priority = 650,
            text = "Accept How Big a Threat? from Terenthis in Auberdine.",
            complete = QuestState(984, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3935, 0.4346, "Terenthis",
                    "Travel to Terenthis."),
            },
        },
        {
            id = "accept-98042-its-all-fun-and-games-until",
            kind = "accept",
            priority = 660,
            conditions = {
                all = {
                    { level = { min = 17 } },
                },
            },
            text = "Accept It's All Fun and Games Until... from Thundris Windweaver.",
            complete = QuestState(98042, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.374, 0.402, "Thundris Windweaver",
                    "Travel to Thundris Windweaver."),
            },
        },
        {
            id = "objective-98042-its-all-fun-and-games-until-1",
            kind = "objective",
            priority = 670,
            conditions = {
                all = {
                    { level = { min = 17 } },
                },
            },
            text = "It's All Fun and Games Until...: Peerless Eye.",
            dependsOn = { "accept-98042-its-all-fun-and-games-until" },
            complete = QuestObjective(98042, 1, "Peerless Eye"),
            route = {
                Point(MAP.DARKSHORE, 0.386, 0.874, "Twilight Disciple",
                    "Travel to Twilight Disciple."),
            },
        },
        {
            id = "turnin-98042-its-all-fun-and-games-until",
            kind = "turnin",
            priority = 680,
            conditions = {
                all = {
                    { level = { min = 17 } },
                },
            },
            text = "Turn in It's All Fun and Games Until... to Thundris Windweaver.",
            dependsOn = { "objective-98042-its-all-fun-and-games-until-1" },
            complete = QuestState(98042, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.374, 0.402, "Thundris Windweaver",
                    "Travel to Thundris Windweaver."),
            },
        },
        {
            id = "objective-3524-washed-ashore",
            kind = "objective",
            priority = 690,
            text = "Find the Sea Creature and collect Sea Creature Bones in The Long Wash.",
            dependsOn = { "accept-3524-washed-ashore" },
            complete = QuestState(3524, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.3640, 0.5087, "The Long Wash",
                    "Travel to The Long Wash."),
            },
        },
        {
            id = "objective-983-buzzbox-827",
            kind = "objective",
            priority = 700,
            text = "Kill Pygmy Tide Crawler or Young Reef Crawler along the beach south of Auberdine for 6 Crawler Leg.",
            dependsOn = { "accept-983-buzzbox-827" },
            complete = QuestState(983, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.3660, 0.4627, "Pygmy Tide Crawler",
                    "Travel to Pygmy Tide Crawler."),
            },
        },
        {
            id = "turnin-983-buzzbox-827",
            kind = "turnin",
            priority = 710,
            text = "Turn in Buzzbox 827 in Auberdine.",
            dependsOn = { "objective-983-buzzbox-827" },
            complete = QuestState(983, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3660, 0.4627, "Auberdine",
                    "Travel to Auberdine."),
            },
        },
        {
            id = "accept-1001-buzzbox-411",
            kind = "accept",
            priority = 720,
            text = "Accept Buzzbox 411 in Auberdine.",
            complete = QuestState(1001, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3660, 0.4627, "Auberdine",
                    "Travel to Auberdine."),
            },
        },
        {
            id = "turnin-3524-washed-ashore",
            kind = "turnin",
            priority = 730,
            text = "Turn in Washed Ashore to Gwennyth Bly'Leggonde in Auberdine.",
            dependsOn = { "objective-3524-washed-ashore" },
            complete = QuestState(3524, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3661, 0.4559, "Gwennyth Bly'Leggonde",
                    "Travel to Gwennyth Bly'Leggonde."),
            },
        },
        {
            id = "accept-4681-washed-ashore",
            kind = "accept",
            priority = 740,
            text = "Accept Washed Ashore from Gwennyth Bly'Leggonde in Auberdine.",
            complete = QuestState(4681, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3661, 0.4559, "Gwennyth Bly'Leggonde",
                    "Travel to Gwennyth Bly'Leggonde."),
            },
        },
        {
            id = "objective-4681-washed-ashore",
            kind = "objective",
            priority = 750,
            text = "Collect Sea Turtle Remains from the Sea Turtle's body in the waters towards the boats.",
            dependsOn = { "accept-4681-washed-ashore" },
            complete = QuestState(4681, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.3180, 0.4630, "Washed Ashore",
                    "Travel to Washed Ashore."),
            },
        },
        {
            id = "objective-1001-buzzbox-411",
            kind = "objective",
            priority = 760,
            text = "Kill Darkshore Thresher and collect 3 Thresher Eye in Mist's Edge.",
            dependsOn = { "accept-1001-buzzbox-411" },
            complete = QuestState(1001, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.4195, 0.2864, "Darkshore Thresher",
                    "Travel to Darkshore Thresher."),
            },
        },
        {
            id = "turnin-4681-washed-ashore",
            kind = "turnin",
            priority = 770,
            text = "Turn in Washed Ashore to Gwennyth Bly'Leggonde in Auberdine.",
            dependsOn = { "objective-4681-washed-ashore" },
            complete = QuestState(4681, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3661, 0.4559, "Gwennyth Bly'Leggonde",
                    "Travel to Gwennyth Bly'Leggonde."),
            },
        },
        {
            id = "accept-4723-beached-sea-creature",
            kind = "accept",
            priority = 780,
            text = "Accept Beached Sea Creature in Mist's Edge.",
            complete = QuestState(4723, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.4189, 0.3161, "Mist's Edge",
                    "Travel to Mist's Edge."),
            },
        },
        {
            id = "accept-4733-beached-sea-creature",
            kind = "accept",
            priority = 790,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 19 } },
                },
            },
            text = "Accept Beached Sea Creature from Beached Sea Creature.",
            complete = QuestState(4733, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.313, 0.874, "Beached Sea Creature",
                    "Travel to Beached Sea Creature."),
            },
        },
        {
            id = "objective-4733-beached-sea-creature-1",
            kind = "objective",
            priority = 800,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 19 } },
                },
            },
            text = "Beached Sea Creature: Sea Creature Bones.",
            dependsOn = { "accept-4733-beached-sea-creature" },
            complete = QuestObjective(4733, 1, "Sea Creature Bones"),
            route = {
                Point(MAP.DARKSHORE, 0.313, 0.874, "Beached Sea Creature",
                    "Travel to Beached Sea Creature."),
            },
        },
        {
            id = "turnin-4733-beached-sea-creature",
            kind = "turnin",
            priority = 810,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 19 } },
                },
            },
            text = "Turn in Beached Sea Creature to Gwennyth Bly'Leggonde.",
            dependsOn = { "objective-4733-beached-sea-creature-1" },
            complete = QuestState(4733, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.366, 0.454, "Gwennyth Bly'Leggonde",
                    "Travel to Gwennyth Bly'Leggonde."),
            },
        },
        {
            id = "turnin-1001-buzzbox-411",
            kind = "turnin",
            priority = 820,
            text = "Turn in Buzzbox 411 in Mist's Edge.",
            dependsOn = { "objective-1001-buzzbox-411" },
            complete = QuestState(1001, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.4195, 0.2864, "Mist's Edge",
                    "Travel to Mist's Edge."),
            },
        },
        {
            id = "accept-1002-buzzbox-323",
            kind = "accept",
            priority = 830,
            text = "Accept Buzzbox 323 in Mist's Edge.",
            complete = QuestState(1002, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.4195, 0.2864, "Mist's Edge",
                    "Travel to Mist's Edge."),
            },
        },
        {
            id = "turnin-954-bashal-aran",
            kind = "turnin",
            priority = 840,
            text = "Turn in Bashal'Aran to Asterion in Bashal'Aran.",
            dependsOn = { "accept-954-bashal-aran" },
            complete = QuestState(954, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.4420, 0.3630, "Asterion",
                    "Travel to Asterion."),
            },
        },
        {
            id = "accept-955-bashal-aran",
            kind = "accept",
            priority = 850,
            text = "Accept Bashal'Aran from Asterion in Bashal'Aran.",
            complete = QuestState(955, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.4420, 0.3630, "Asterion",
                    "Travel to Asterion."),
            },
        },
        {
            id = "objective-955-bashal-aran",
            kind = "objective",
            priority = 860,
            text = "Kill Wild Grell to collect 8 Grell Earring in Bashal'Aran.",
            dependsOn = { "accept-955-bashal-aran" },
            complete = QuestState(955, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.4700, 0.3800, "Wild Grell",
                    "Travel to Wild Grell."),
            },
        },
        {
            id = "turnin-955-bashal-aran",
            kind = "turnin",
            priority = 870,
            text = "Turn in Bashal'Aran to Asterion in Bashal'Aran.",
            dependsOn = { "objective-955-bashal-aran" },
            complete = QuestState(955, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.4420, 0.3630, "Asterion",
                    "Travel to Asterion."),
            },
        },
        {
            id = "accept-956-bashal-aran",
            kind = "accept",
            priority = 880,
            text = "Accept Bashal'Aran from Asterion in Bashal'Aran.",
            complete = QuestState(956, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.4420, 0.3630, "Asterion",
                    "Travel to Asterion."),
            },
        },
        {
            id = "objective-956-bashal-aran",
            kind = "objective",
            priority = 890,
            text = "Kill Deth'ryll Satyr in Bashal'Aran until you find Ancient Moonstone Seal.",
            dependsOn = { "accept-956-bashal-aran" },
            complete = QuestState(956, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.4700, 0.3700, "Deth'ryll Satyr",
                    "Travel to Deth'ryll Satyr."),
            },
        },
        {
            id = "turnin-956-bashal-aran",
            kind = "turnin",
            priority = 900,
            text = "Turn in Bashal'Aran to Asterion in Bashal'Aran.",
            dependsOn = { "objective-956-bashal-aran" },
            complete = QuestState(956, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.4420, 0.3630, "Asterion",
                    "Travel to Asterion."),
            },
        },
        {
            id = "accept-957-bashal-aran",
            kind = "accept",
            priority = 910,
            text = "Accept Bashal'Aran from Asterion in Bashal'Aran.",
            complete = QuestState(957, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.4420, 0.3630, "Asterion",
                    "Travel to Asterion."),
            },
        },
        {
            id = "objective-4811-the-red-crystal",
            kind = "objective",
            priority = 920,
            text = "Find the Red Crystal to the east of Auberdine on the Mountain's border.",
            dependsOn = { "accept-4811-the-red-crystal" },
            complete = QuestState(4811, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.4730, 0.4870, "The Red Crystal",
                    "Travel to The Red Crystal."),
            },
        },
        {
            id = "objective-984-how-big-a-threat",
            kind = "objective",
            priority = 930,
            text = "Find a corrupt furbolg camp in Darkshore, you just need to reach the waypoint to complete the quest.",
            dependsOn = { "accept-984-how-big-a-threat" },
            complete = QuestState(984, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.3992, 0.5362, "How Big a Threat?",
                    "Travel to How Big a Threat?."),
            },
        },
        {
            id = "accept-953-the-fall-of-ameth-aran",
            kind = "accept",
            priority = 940,
            text = "Accept The Fall of Ameth'Aran from Sentinel Tysha Moonblade in Twilight Vale.",
            complete = QuestState(953, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.4030, 0.5968, "Sentinel Tysha Moonblade",
                    "Travel to Sentinel Tysha Moonblade."),
            },
        },
        {
            id = "objective-953-1-read-the-lay-of-ameth-aran",
            kind = "objective",
            priority = 950,
            text = "Click on the Lay of Ameth'Aran tablet in Ameth'Aran.",
            dependsOn = { "accept-953-the-fall-of-ameth-aran" },
            complete = QuestObjective(953, 1),
            route = {
                Point(MAP.DARKSHORE, 0.4327, 0.5866, "Ameth'Aran",
                    "Travel to Ameth'Aran."),
            },
        },
        {
            id = "objective-953-2-read-the-fall-of-ameth-aran",
            kind = "objective",
            priority = 960,
            text = "Click on the Fall of Ameth'Aran tablet in Ameth'Aran.",
            dependsOn = { "accept-953-the-fall-of-ameth-aran" },
            complete = QuestObjective(953, 2),
            route = {
                Point(MAP.DARKSHORE, 0.4272, 0.6313, "Ameth'Aran",
                    "Travel to Ameth'Aran."),
            },
        },
        {
            id = "objective-957-bashal-aran",
            kind = "objective",
            priority = 970,
            text = "Click on the Ancient flame in Ameth'Aran.",
            dependsOn = { "accept-957-bashal-aran" },
            complete = QuestState(957, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.4238, 0.6190, "Ameth'Aran",
                    "Travel to Ameth'Aran."),
            },
        },
        {
            id = "objective-963-for-love-eternal",
            kind = "objective",
            priority = 980,
            text = "Kill Anaya Dawnrunner and collect Anaya's Pendant in Ameth'Aran She's level 16 and can be tough to solo if you're too low level, you might need to help or complete later.",
            dependsOn = { "accept-963-for-love-eternal" },
            complete = QuestState(963, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.4318, 0.5999, "Anaya Dawnrunner",
                    "Travel to Anaya Dawnrunner."),
            },
        },
        {
            id = "turnin-953-the-fall-of-ameth-aran",
            kind = "turnin",
            priority = 990,
            text = "Turn in The Fall of Ameth'Aran to Sentinel Tysha Moonblade in Twilight Vale.",
            dependsOn = { "objective-953-1-read-the-lay-of-ameth-aran", "objective-953-2-read-the-fall-of-ameth-aran" },
            complete = QuestState(953, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.4030, 0.5968, "Sentinel Tysha Moonblade",
                    "Travel to Sentinel Tysha Moonblade."),
            },
        },
        {
            id = "objective-958-tools-of-the-highborne",
            kind = "objective",
            priority = 1000,
            text = "Kill any of the Highborne mobs in Ameth'Aran to collect 7 Highborne Relic.",
            dependsOn = { "accept-958-tools-of-the-highborne" },
            complete = QuestState(958, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.4300, 0.6000, "Cursed Highborne",
                    "Travel to Cursed Highborne."),
            },
        },
        {
            id = "objective-2118-plagued-lands",
            kind = "objective",
            priority = 1010,
            text = "Find Rabid Thistle Bear and use Tharnariun's Hope on the bear to capture it.",
            dependsOn = { "accept-2118-plagued-lands" },
            complete = QuestState(2118, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.3900, 0.6600, "Rabid Thistle Bear",
                    "Travel to Rabid Thistle Bear."),
            },
        },
        {
            id = "turnin-963-for-love-eternal",
            kind = "turnin",
            priority = 1020,
            text = "Turn in For Love Eternal to Cerellean Whiteclaw in Auberdine.",
            dependsOn = { "objective-963-for-love-eternal" },
            complete = QuestState(963, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3576, 0.4368, "Cerellean Whiteclaw",
                    "Travel to Cerellean Whiteclaw."),
            },
        },
        {
            id = "turnin-4811-the-red-crystal",
            kind = "turnin",
            priority = 1030,
            text = "Turn in The Red Crystal to Sentinel Glynda Nal'Shea in Auberdine.",
            dependsOn = { "objective-4811-the-red-crystal" },
            complete = QuestState(4811, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3764, 0.4336, "Sentinel Glynda Nal'Shea",
                    "Travel to Sentinel Glynda Nal'Shea."),
            },
        },
        {
            id = "accept-4812-as-water-cascades",
            kind = "accept",
            priority = 1040,
            text = "Accept As Water Cascades from Sentinel Glynda Nal'Shea in Auberdine.",
            complete = QuestState(4812, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3764, 0.4336, "Sentinel Glynda Nal'Shea",
                    "Travel to Sentinel Glynda Nal'Shea."),
            },
        },
        {
            id = "objective-4812-empty-water-tube",
            kind = "objective",
            priority = 1050,
            text = "Use the Empty Water Tube to create Moonwell Water Tube in the Moonwell.",
            dependsOn = { "accept-4812-as-water-cascades" },
            complete = QuestState(4812, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.3780, 0.4400, "Empty Water Tube",
                    "Travel to Empty Water Tube."),
            },
        },
        {
            id = "turnin-2118-plagued-lands",
            kind = "turnin",
            priority = 1060,
            text = "Turn in Plagued Lands to Tharnariun Treetender in Auberdine.",
            dependsOn = { "objective-2118-plagued-lands" },
            complete = QuestState(2118, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3885, 0.4344, "Tharnariun Treetender",
                    "Travel to Tharnariun Treetender."),
            },
        },
        {
            id = "accept-2138-cleansing-of-the-infected",
            kind = "accept",
            priority = 1070,
            text = "Accept Cleansing of the Infected from Tharnariun Treetender in Auberdine.",
            complete = QuestState(2138, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3885, 0.4344, "Tharnariun Treetender",
                    "Travel to Tharnariun Treetender."),
            },
        },
        {
            id = "turnin-984-how-big-a-threat",
            kind = "turnin",
            priority = 1080,
            text = "Turn in How Big a Threat? to Terenthis in Auberdine.",
            dependsOn = { "objective-984-how-big-a-threat" },
            complete = QuestState(984, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3935, 0.4346, "Terenthis",
                    "Travel to Terenthis."),
            },
        },
        {
            id = "accept-985-how-big-a-threat",
            kind = "accept",
            priority = 1090,
            text = "Accept How Big a Threat? from Terenthis in Auberdine.",
            complete = QuestState(985, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3935, 0.4346, "Terenthis",
                    "Travel to Terenthis."),
            },
        },
        {
            id = "accept-4761-thundris-windweaver",
            kind = "accept",
            priority = 1100,
            text = "Accept Thundris Windweaver from Terenthis in Auberdine.",
            complete = QuestState(4761, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3935, 0.4346, "Terenthis",
                    "Travel to Terenthis."),
            },
        },
        {
            id = "accept-965-the-tower-of-althalaxx",
            kind = "accept",
            priority = 1110,
            text = "Accept The Tower of Althalaxx from Sentinel Elissa Starbreeze in Auberdine.",
            complete = QuestState(965, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3907, 0.4353, "Sentinel Elissa Starbreeze",
                    "Travel to Sentinel Elissa Starbreeze."),
            },
        },
        {
            id = "accept-982-deep-ocean-vast-sea",
            kind = "accept",
            priority = 1120,
            text = "Accept Deep Ocean, Vast Sea from Gorbold Steelhand in Auberdine.",
            complete = QuestState(982, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3812, 0.4122, "Gorbold Steelhand",
                    "Travel to Gorbold Steelhand."),
            },
        },
        {
            id = "turnin-958-tools-of-the-highborne",
            kind = "turnin",
            priority = 1130,
            text = "Turn in Tools of the Highborne to Thundris Windweaver in Auberdine.",
            dependsOn = { "objective-958-tools-of-the-highborne" },
            complete = QuestState(958, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3741, 0.4016, "Thundris Windweaver",
                    "Travel to Thundris Windweaver."),
            },
        },
        {
            id = "turnin-4761-thundris-windweaver",
            kind = "turnin",
            priority = 1140,
            text = "Turn in Thundris Windweaver to Thundris Windweaver in Auberdine.",
            dependsOn = { "accept-4761-thundris-windweaver" },
            complete = QuestState(4761, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3741, 0.4016, "Thundris Windweaver",
                    "Travel to Thundris Windweaver."),
            },
        },
        {
            id = "accept-4762-the-cliffspring-river",
            kind = "accept",
            priority = 1150,
            text = "Accept The Cliffspring River from Thundris Windweaver in Auberdine.",
            complete = QuestState(4762, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3741, 0.4016, "Thundris Windweaver",
                    "Travel to Thundris Windweaver."),
            },
        },
        {
            id = "turnin-4723-beached-sea-creature",
            kind = "turnin",
            priority = 1160,
            text = "Turn in Beached Sea Creature to Gwennyth Bly'Leggonde in Auberdine.",
            dependsOn = { "accept-4723-beached-sea-creature" },
            complete = QuestState(4723, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3661, 0.4559, "Gwennyth Bly'Leggonde",
                    "Travel to Gwennyth Bly'Leggonde."),
            },
        },
        {
            id = "accept-6121-lessons-anew",
            kind = "accept",
            priority = 1170,
            conditions = {
                all = {
                    { class = 11 },
                },
            },
            text = "Accept Lessons Anew from Mathrengyl Bearwalker in Cenarion Enclave.",
            complete = QuestState(6121, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.3538, 0.0828, "Mathrengyl Bearwalker",
                    "Travel to Mathrengyl Bearwalker."),
            },
        },
        {
            id = "turnin-6121-lessons-anew",
            kind = "turnin",
            priority = 1180,
            conditions = {
                all = {
                    { class = 11 },
                },
            },
            text = "Turn in Lessons Anew to Dendrite Starblaze in Nighthaven.",
            dependsOn = { "accept-6121-lessons-anew" },
            complete = QuestState(6121, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.5626, 0.3064, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze."),
            },
        },
        {
            id = "accept-6122-the-principal-source",
            kind = "accept",
            priority = 1190,
            conditions = {
                all = {
                    { class = 11 },
                },
            },
            text = "Accept The Principal Source from Dendrite Starblaze in Nighthaven.",
            complete = QuestState(6122, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.5626, 0.3064, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze."),
            },
        },
        {
            id = "turnin-957-bashal-aran",
            kind = "turnin",
            priority = 1200,
            text = "Turn in Bashal'Aran to Asterion in Bashal'Aran.",
            dependsOn = { "objective-957-bashal-aran" },
            complete = QuestState(957, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.4420, 0.3630, "Asterion",
                    "Travel to Asterion."),
            },
        },
        {
            id = "objective-982-1-silver-dawning-s-lockbox",
            kind = "objective",
            priority = 1210,
            text = "Collect Silver Dawning's Lockbox from the lowest deck and rear side of the sunken ship.",
            dependsOn = { "accept-982-deep-ocean-vast-sea" },
            complete = QuestObjective(982, 1),
            route = {
                Point(MAP.DARKSHORE, 0.3820, 0.2880, "Silver Dawning's Lockbox",
                    "Travel to Silver Dawning's Lockbox."),
            },
        },
        {
            id = "objective-982-2-mist-veil-s-lockbox",
            kind = "objective",
            priority = 1220,
            text = "Collect Mist Veil's Lockbox from the lowest deck and rear side of the sunken ship.",
            dependsOn = { "accept-982-deep-ocean-vast-sea" },
            complete = QuestObjective(982, 2),
            route = {
                Point(MAP.DARKSHORE, 0.3960, 0.2750, "Mist Veil's Lockbox",
                    "Travel to Mist Veil's Lockbox."),
            },
        },
        {
            id = "accept-4725-beached-sea-turtle",
            kind = "accept",
            priority = 1230,
            text = "Accept Beached Sea Turtle in Mist's Edge.",
            complete = QuestState(4725, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.4423, 0.2066, "Mist's Edge",
                    "Travel to Mist's Edge."),
            },
        },
        {
            id = "accept-4731-beached-sea-turtle",
            kind = "accept",
            priority = 1240,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 19 } },
                },
            },
            text = "Accept Beached Sea Turtle from Beached Sea Turtle.",
            complete = QuestState(4731, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.317, 0.837, "Beached Sea Turtle",
                    "Travel to Beached Sea Turtle."),
            },
        },
        {
            id = "accept-4732-beached-sea-turtle",
            kind = "accept",
            priority = 1250,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 19 } },
                },
            },
            text = "Accept Beached Sea Turtle from Beached Sea Turtle.",
            complete = QuestState(4732, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.313, 0.856, "Beached Sea Turtle",
                    "Travel to Beached Sea Turtle."),
            },
        },
        {
            id = "objective-4732-beached-sea-turtle-1",
            kind = "objective",
            priority = 1260,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 19 } },
                },
            },
            text = "Beached Sea Turtle: Sea Turtle Remains.",
            dependsOn = { "accept-4732-beached-sea-turtle" },
            complete = QuestObjective(4732, 1, "Sea Turtle Remains"),
            route = {
                Point(MAP.DARKSHORE, 0.313, 0.856, "Beached Sea Turtle",
                    "Travel to Beached Sea Turtle."),
            },
        },
        {
            id = "turnin-4732-beached-sea-turtle",
            kind = "turnin",
            priority = 1270,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 19 } },
                },
            },
            text = "Turn in Beached Sea Turtle to Gwennyth Bly'Leggonde.",
            dependsOn = { "objective-4732-beached-sea-turtle-1" },
            complete = QuestState(4732, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.366, 0.454, "Gwennyth Bly'Leggonde",
                    "Travel to Gwennyth Bly'Leggonde."),
            },
        },
        {
            id = "objective-4731-beached-sea-turtle-1",
            kind = "objective",
            priority = 1280,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 19 } },
                },
            },
            text = "Beached Sea Turtle: Strangely Marked Box.",
            dependsOn = { "accept-4731-beached-sea-turtle" },
            complete = QuestObjective(4731, 1, "Strangely Marked Box"),
            route = {
                Point(MAP.DARKSHORE, 0.317, 0.837, "Beached Sea Turtle",
                    "Travel to Beached Sea Turtle."),
            },
        },
        {
            id = "turnin-4731-beached-sea-turtle",
            kind = "turnin",
            priority = 1290,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 19 } },
                },
            },
            text = "Turn in Beached Sea Turtle to Gwennyth Bly'Leggonde.",
            dependsOn = { "objective-4731-beached-sea-turtle-1" },
            complete = QuestState(4731, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.366, 0.454, "Gwennyth Bly'Leggonde",
                    "Travel to Gwennyth Bly'Leggonde."),
            },
        },
        {
            id = "objective-1002-buzzbox-323",
            kind = "objective",
            priority = 1300,
            text = "Kill Moonstalker cats and collect 6 Moonstalker Fang.",
            dependsOn = { "accept-1002-buzzbox-323" },
            complete = QuestState(1002, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.4900, 0.2700, "Continue toward Buzzbox 323",
                    "Continue toward Buzzbox 323."),
                Point(MAP.DARKSHORE, 0.4000, 0.6700, "Moonstalker",
                    "Travel to Moonstalker."),
            },
        },
        {
            id = "turnin-1002-buzzbox-323",
            kind = "turnin",
            priority = 1310,
            text = "Turn in Buzzbox 323 in Cliffspring River.",
            dependsOn = { "objective-1002-buzzbox-323" },
            complete = QuestState(1002, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.5125, 0.2461, "Cliffspring River",
                    "Travel to Cliffspring River."),
            },
        },
        {
            id = "accept-1003-buzzbox-525",
            kind = "accept",
            priority = 1320,
            text = "Accept Buzzbox 525 in Cliffspring River.",
            complete = QuestState(1003, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.5125, 0.2461, "Cliffspring River",
                    "Travel to Cliffspring River."),
            },
        },
        {
            id = "objective-4762-the-cliffspring-river",
            kind = "objective",
            priority = 1330,
            text = "Go to Cliffspring River waterfall and use the Empty Sampling Tube.",
            dependsOn = { "accept-4762-the-cliffspring-river" },
            complete = QuestState(4762, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.5084, 0.2560, "Cliffspring River",
                    "Travel to Cliffspring River."),
            },
        },
        {
            id = "objective-6122-the-principal-source",
            kind = "objective",
            priority = 1340,
            conditions = {
                all = {
                    { class = 11 },
                },
            },
            text = "Use the Empty Cliffspring Falls Sampler to draw a sample of water from the mouth of the cave by Cliffspring Falls.",
            dependsOn = { "accept-6122-the-principal-source" },
            complete = QuestState(6122, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.5485, 0.3321, "Cliffspring Falls",
                    "Travel to Cliffspring Falls."),
            },
        },
        {
            id = "objective-947-cave-mushrooms",
            kind = "objective",
            priority = 1350,
            text = "Follow the path to the cave guarded by Naga's and collect 5 Scaber Stalk and 1 Death Cap from the ground inside the cave.",
            dependsOn = { "accept-947-cave-mushrooms" },
            complete = QuestState(947, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.5426, 0.3183, "Continue toward Cave Mushrooms",
                    "Continue toward Cave Mushrooms."),
                Point(MAP.DARKSHORE, 0.5499, 0.3294, "Continue toward Cave Mushrooms",
                    "Continue toward Cave Mushrooms."),
                Point(MAP.DARKSHORE, 0.5496, 0.3337, "Continue toward Cave Mushrooms",
                    "Continue toward Cave Mushrooms."),
                Point(MAP.DARKSHORE, 0.5600, 0.3500, "Cave Mushrooms",
                    "Travel to Cave Mushrooms."),
            },
        },
        {
            id = "turnin-4812-as-water-cascades",
            kind = "turnin",
            priority = 1360,
            text = "Turn in As Water Cascades.",
            dependsOn = { "objective-4812-empty-water-tube" },
            complete = QuestState(4812, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.4735, 0.4866, "As Water Cascades",
                    "Travel to As Water Cascades."),
            },
        },
        {
            id = "accept-4813-the-fragments-within",
            kind = "accept",
            priority = 1370,
            text = "Accept The Fragments Within in Dark Shore.",
            complete = QuestState(4813, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.4735, 0.4866, "Dark Shore",
                    "Travel to Dark Shore."),
            },
        },
        {
            id = "objective-985-how-big-a-threat",
            kind = "objective",
            priority = 1380,
            text = "Kill 8 Blackwood Pathfinder and 5 Blackwood Windtalker in the furbolg camp.",
            dependsOn = { "accept-985-how-big-a-threat" },
            complete = QuestState(985, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.3900, 0.5400, "Continue toward How Big a Threat?",
                    "Continue toward How Big a Threat?."),
                Point(MAP.DARKSHORE, 0.3900, 0.5200, "Blackwood Pathfinder",
                    "Travel to Blackwood Pathfinder."),
            },
        },
        {
            id = "accept-4722-beached-sea-turtle",
            kind = "accept",
            priority = 1390,
            text = "Accept Beached Sea Turtle.",
            complete = QuestState(4722, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3720, 0.6210, "Beached Sea Turtle",
                    "Travel to Beached Sea Turtle."),
            },
        },
        {
            id = "accept-4728-beached-sea-creature",
            kind = "accept",
            priority = 1400,
            text = "Accept Beached Sea Creature.",
            complete = QuestState(4728, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3610, 0.7070, "Beached Sea Creature",
                    "Travel to Beached Sea Creature."),
            },
        },
        {
            id = "objective-2138-cleansing-of-the-infected",
            kind = "objective",
            priority = 1410,
            text = "Kill 20 Rabid Thistle Bear which are spread throughout the area past Bashal'Ara.",
            dependsOn = { "accept-2138-cleansing-of-the-infected" },
            complete = QuestState(2138, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.4800, 0.3000, "Continue toward Cleansing of the Infected",
                    "Continue toward Cleansing of the Infected."),
                Point(MAP.DARKSHORE, 0.3900, 0.6600, "Rabid Thistle Bear",
                    "Travel to Rabid Thistle Bear."),
            },
        },
        {
            id = "objective-1003-buzzbox-525",
            kind = "objective",
            priority = 1420,
            text = "Kill Grizzled Thistle Bear for 4 Grizzled Scalpwhich are found in the Southern area of Darkshore around.",
            dependsOn = { "accept-1003-buzzbox-525" },
            complete = QuestState(1003, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.4200, 0.8300, "Grizzled Thistle Bear",
                    "Travel to Grizzled Thistle Bear."),
            },
        },
        {
            id = "turnin-1003-buzzbox-525",
            kind = "turnin",
            priority = 1430,
            text = "Turn in Buzzbox 525 in Twilight Vale.",
            dependsOn = { "objective-1003-buzzbox-525" },
            complete = QuestState(1003, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.4138, 0.8053, "Twilight Vale",
                    "Travel to Twilight Vale."),
            },
        },
        {
            id = "turnin-4728-beached-sea-creature",
            kind = "turnin",
            priority = 1440,
            text = "Turn in Beached Sea Creature to Gwennyth Bly'Leggonde in Auberdine.",
            dependsOn = { "accept-4728-beached-sea-creature" },
            complete = QuestState(4728, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3661, 0.4559, "Gwennyth Bly'Leggonde",
                    "Travel to Gwennyth Bly'Leggonde."),
            },
        },
        {
            id = "turnin-4725-beached-sea-turtle",
            kind = "turnin",
            priority = 1450,
            text = "Turn in Beached Sea Turtle to Gwennyth Bly'Leggonde in Auberdine.",
            dependsOn = { "accept-4725-beached-sea-turtle" },
            complete = QuestState(4725, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3661, 0.4559, "Gwennyth Bly'Leggonde",
                    "Travel to Gwennyth Bly'Leggonde."),
            },
        },
        {
            id = "turnin-4722-beached-sea-turtle",
            kind = "turnin",
            priority = 1460,
            text = "Turn in Beached Sea Turtle to Gwennyth Bly'Leggonde in Auberdine.",
            dependsOn = { "accept-4722-beached-sea-turtle" },
            complete = QuestState(4722, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3661, 0.4559, "Gwennyth Bly'Leggonde",
                    "Travel to Gwennyth Bly'Leggonde."),
            },
        },
        {
            id = "accept-1138-fruit-of-the-sea",
            kind = "accept",
            priority = 1470,
            text = "Accept Fruit of the Sea from Gubber Blump in Auberdine.",
            complete = QuestState(1138, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3613, 0.4492, "Gubber Blump",
                    "Travel to Gubber Blump."),
            },
        },
        {
            id = "turnin-947-cave-mushrooms",
            kind = "turnin",
            priority = 1480,
            text = "Turn in Cave Mushrooms to Barithras Moonshade in Auberdine.",
            dependsOn = { "objective-947-cave-mushrooms" },
            complete = QuestState(947, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3732, 0.4366, "Barithras Moonshade",
                    "Travel to Barithras Moonshade."),
            },
        },
        {
            id = "accept-948-onu",
            kind = "accept",
            priority = 1490,
            text = "Accept Onu from Barithras Moonshade in Auberdine.",
            complete = QuestState(948, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3732, 0.4366, "Barithras Moonshade",
                    "Travel to Barithras Moonshade."),
            },
        },
        {
            id = "accept-960-onu-is-meditating",
            kind = "accept",
            priority = 1500,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Onu is meditating from Onu.",
            complete = QuestState(960, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.436, 0.764, "Onu",
                    "Travel to Onu."),
            },
        },
        {
            id = "accept-961-onu-is-meditating",
            kind = "accept",
            priority = 1510,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Onu is meditating from Onu.",
            complete = QuestState(961, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.436, 0.764, "Onu",
                    "Travel to Onu."),
            },
        },
        {
            id = "objective-961-onu-is-meditating-1",
            kind = "objective",
            priority = 1550,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Onu is meditating: Onu is meditating.",
            dependsOn = { "accept-961-onu-is-meditating" },
            complete = QuestObjective(961, 1, "Onu is meditating"),
            route = {
                Point(MAP.DARKSHORE, 0.436, 0.764, "Onu",
                    "Travel to Onu."),
            },
        },
        {
            id = "turnin-961-onu-is-meditating",
            kind = "turnin",
            priority = 1560,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Onu is meditating to Onu.",
            dependsOn = { "objective-961-onu-is-meditating-1" },
            complete = QuestState(961, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.436, 0.764, "Onu",
                    "Travel to Onu."),
            },
        },
        {
            id = "objective-960-onu-is-meditating-1",
            kind = "objective",
            priority = 1570,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Onu is meditating: Onu is meditating.",
            dependsOn = { "accept-960-onu-is-meditating" },
            complete = QuestObjective(960, 1, "Onu is meditating"),
            route = {
                Point(MAP.DARKSHORE, 0.436, 0.764, "Onu",
                    "Travel to Onu."),
            },
        },
        {
            id = "turnin-960-onu-is-meditating",
            kind = "turnin",
            priority = 1580,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Onu is meditating to Onu.",
            dependsOn = { "objective-960-onu-is-meditating-1" },
            complete = QuestState(960, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.436, 0.764, "Onu",
                    "Travel to Onu."),
            },
        },
        {
            id = "turnin-4813-the-fragments-within",
            kind = "turnin",
            priority = 1590,
            text = "Turn in The Fragments Within to Sentinel Glynda Nal'Shea in Auberdine.",
            dependsOn = { "accept-4813-the-fragments-within" },
            complete = QuestState(4813, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3764, 0.4336, "Sentinel Glynda Nal'Shea",
                    "Travel to Sentinel Glynda Nal'Shea."),
            },
        },
        {
            id = "accept-87760-holy-diver",
            kind = "accept",
            priority = 1591,
            conditions = {
                all = {
                    { level = { min = 20 } },
                },
            },
            text = "Accept Holy Diver from Gwennyth Bly'Leggonde.",
            complete = QuestState(87760, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.366, 0.454, "Gwennyth Bly'Leggonde",
                    "Travel to Gwennyth Bly'Leggonde."),
            },
        },
        {
            id = "objective-87760-holy-diver-1",
            kind = "objective",
            priority = 1592,
            conditions = {
                all = {
                    { level = { min = 20 } },
                },
            },
            text = "Holy Diver: Rod of Deep Dominion.",
            dependsOn = { "accept-87760-holy-diver" },
            complete = QuestObjective(87760, 1, "Rod of Deep Dominion"),
            route = {
                Point(MAP.DARKSHORE, 0.500, 0.136, "Stormscale Beastmistress",
                    "Travel to Stormscale Beastmistress."),
            },
        },
        {
            id = "turnin-87760-holy-diver",
            kind = "turnin",
            priority = 1593,
            conditions = {
                all = {
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Holy Diver to Gwennyth Bly'Leggonde.",
            dependsOn = { "objective-87760-holy-diver-1" },
            complete = QuestState(87760, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.366, 0.454, "Gwennyth Bly'Leggonde",
                    "Travel to Gwennyth Bly'Leggonde."),
            },
        },
        {
            id = "accept-729-the-absent-minded-prospector",
            kind = "accept",
            priority = 1600,
            text = "Accept The Absent Minded Prospector from Archaeologist Hollee in Auberdine.",
            complete = QuestState(729, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3748, 0.4185, "Archaeologist Hollee",
                    "Travel to Archaeologist Hollee."),
            },
        },
        {
            id = "turnin-4762-the-cliffspring-river",
            kind = "turnin",
            priority = 1610,
            text = "Turn in The Cliffspring River to Thundris Windweaver in Auberdine.",
            dependsOn = { "objective-4762-the-cliffspring-river" },
            complete = QuestState(4762, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3741, 0.4016, "Thundris Windweaver",
                    "Travel to Thundris Windweaver."),
            },
        },
        {
            id = "accept-4763-the-blackwood-corrupted",
            kind = "accept",
            priority = 1620,
            text = "Accept The Blackwood Corrupted from Thundris Windweaver in Auberdine.",
            complete = QuestState(4763, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3741, 0.4016, "Thundris Windweaver",
                    "Travel to Thundris Windweaver."),
            },
        },
        {
            id = "turnin-982-deep-ocean-vast-sea",
            kind = "turnin",
            priority = 1630,
            text = "Turn in Deep Ocean, Vast Sea to Gorbold Steelhand in Auberdine.",
            dependsOn = { "objective-982-1-silver-dawning-s-lockbox", "objective-982-2-mist-veil-s-lockbox" },
            complete = QuestState(982, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3809, 0.4120, "Gorbold Steelhand",
                    "Travel to Gorbold Steelhand."),
            },
        },
        {
            id = "turnin-2138-cleansing-of-the-infected",
            kind = "turnin",
            priority = 1640,
            text = "Turn in Cleansing of the Infected to Tharnariun Treetender in Auberdine.",
            dependsOn = { "objective-2138-cleansing-of-the-infected" },
            complete = QuestState(2138, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3885, 0.4344, "Tharnariun Treetender",
                    "Travel to Tharnariun Treetender."),
            },
        },
        {
            id = "accept-2139-tharnariun-s-hope",
            kind = "accept",
            priority = 1650,
            text = "Accept Tharnariun's Hope from Tharnariun Treetender in Auberdine.",
            complete = QuestState(2139, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3885, 0.4344, "Tharnariun Treetender",
                    "Travel to Tharnariun Treetender."),
            },
        },
        {
            id = "turnin-985-how-big-a-threat",
            kind = "turnin",
            priority = 1660,
            text = "Turn in How Big a Threat? to Terenthis in Auberdine.",
            dependsOn = { "objective-985-how-big-a-threat" },
            complete = QuestState(985, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3935, 0.4346, "Terenthis",
                    "Travel to Terenthis."),
            },
        },
        {
            id = "accept-986-a-lost-master",
            kind = "accept",
            priority = 1670,
            text = "Accept A Lost Master from Terenthis in Auberdine.",
            complete = QuestState(986, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3932, 0.4345, "Terenthis",
                    "Travel to Terenthis."),
            },
        },
        {
            id = "turnin-6122-the-principal-source",
            kind = "turnin",
            priority = 1680,
            conditions = {
                all = {
                    { class = 11 },
                },
            },
            text = "Turn in The Principal Source to Alanndarian Nightsong in Auberdine.",
            dependsOn = { "objective-6122-the-principal-source" },
            complete = QuestState(6122, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3769, 0.4066, "Alanndarian Nightsong",
                    "Travel to Alanndarian Nightsong."),
            },
        },
        {
            id = "accept-6123-gathering-the-cure",
            kind = "accept",
            priority = 1690,
            conditions = {
                all = {
                    { class = 11 },
                },
            },
            text = "Accept Gathering the Cure from Alanndarian Nightsong in Auberdine.",
            complete = QuestState(6123, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3769, 0.4069, "Alanndarian Nightsong",
                    "Travel to Alanndarian Nightsong."),
            },
        },
        {
            id = "objective-2139-tharnariun-s-hope",
            kind = "objective",
            priority = 1700,
            text = "Go to the cave where you will find the Den Mother (level 19) with several level 9-10 cubs (52.40, 35,88).",
            dependsOn = { "accept-2139-tharnariun-s-hope" },
            complete = QuestState(2139, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.5160, 0.3738, "Den Mother",
                    "Travel to Den Mother."),
            },
        },
        {
            id = "objective-4763-the-blackwood-corrupted",
            kind = "objective",
            priority = 1710,
            text = "Use the Filled Cleansing Bowl on the bonfire to summon Xabraxxis, kill him and collect the Talisman of Corruption.",
            dependsOn = { "accept-4763-the-blackwood-corrupted" },
            complete = QuestState(4763, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.5240, 0.3340, "Xabraxxis",
                    "Travel to Xabraxxis."),
            },
        },
        {
            id = "turnin-965-the-tower-of-althalaxx",
            kind = "turnin",
            priority = 1720,
            text = "Turn in The Tower of Althalaxx to Balthule Shadowstrike in Dark Shore.",
            dependsOn = { "accept-965-the-tower-of-althalaxx" },
            complete = QuestState(965, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.5495, 0.2492, "Balthule Shadowstrike",
                    "Travel to Balthule Shadowstrike."),
            },
        },
        {
            id = "accept-966-the-tower-of-althalaxx",
            kind = "accept",
            priority = 1730,
            text = "Accept The Tower of Althalaxx from Balthule Shadowstrike in Dark Shore.",
            complete = QuestState(966, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.5495, 0.2492, "Balthule Shadowstrike",
                    "Travel to Balthule Shadowstrike."),
            },
        },
        {
            id = "objective-966-the-tower-of-althalaxx",
            kind = "objective",
            priority = 1740,
            text = "Kill Dark Strand Fanatic and collect 4 Worn Parchment around the Tower of Althalaxx.",
            dependsOn = { "accept-966-the-tower-of-althalaxx" },
            complete = QuestState(966, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.5500, 0.2700, "Dark Strand Fanatic",
                    "Travel to Dark Strand Fanatic."),
            },
        },
        {
            id = "turnin-966-the-tower-of-althalaxx",
            kind = "turnin",
            priority = 1750,
            text = "Turn in The Tower of Althalaxx to Balthule Shadowstrike in Dark Shore.",
            dependsOn = { "objective-966-the-tower-of-althalaxx" },
            complete = QuestState(966, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.5495, 0.2492, "Balthule Shadowstrike",
                    "Travel to Balthule Shadowstrike."),
            },
        },
        {
            id = "accept-967-the-tower-of-althalaxx",
            kind = "accept",
            priority = 1760,
            text = "Accept The Tower of Althalaxx from Balthule Shadowstrike in Dark Shore.",
            complete = QuestState(967, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.5495, 0.2492, "Balthule Shadowstrike",
                    "Travel to Balthule Shadowstrike."),
            },
        },
        {
            id = "accept-4727-beached-sea-turtle",
            kind = "accept",
            priority = 1770,
            text = "Accept Beached Sea Turtle in Mist's Edge.",
            complete = QuestState(4727, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.5310, 0.1820, "Mist's Edge",
                    "Travel to Mist's Edge."),
            },
        },
        {
            id = "objective-1138-fruit-of-the-sea",
            kind = "objective",
            priority = 1780,
            text = "Kill Encrusted Tide Crawler or Reef Crawler and collect 6 Fine Crab Chunks in Mist's Edge.",
            dependsOn = { "accept-1138-fruit-of-the-sea" },
            complete = QuestState(1138, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.5100, 0.2200, "Encrusted Tide Crawler",
                    "Travel to Encrusted Tide Crawler."),
            },
        },
        {
            id = "turnin-1138-fruit-of-the-sea",
            kind = "turnin",
            priority = 1790,
            text = "Turn in Fruit of the Sea to Gubber Blump in Auberdine.",
            dependsOn = { "objective-1138-fruit-of-the-sea" },
            complete = QuestState(1138, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3613, 0.4492, "Gubber Blump",
                    "Travel to Gubber Blump."),
            },
        },
        {
            id = "turnin-4727-beached-sea-turtle",
            kind = "turnin",
            priority = 1800,
            text = "Turn in Beached Sea Turtle to Gwennyth Bly'Leggonde in Auberdine.",
            dependsOn = { "accept-4727-beached-sea-turtle" },
            complete = QuestState(4727, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3661, 0.4559, "Gwennyth Bly'Leggonde",
                    "Travel to Gwennyth Bly'Leggonde."),
            },
        },
        {
            id = "turnin-4763-the-blackwood-corrupted",
            kind = "turnin",
            priority = 1810,
            text = "Turn in The Blackwood Corrupted to Thundris Windweaver in Auberdine.",
            dependsOn = { "objective-4763-the-blackwood-corrupted" },
            complete = QuestState(4763, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3741, 0.4016, "Thundris Windweaver",
                    "Travel to Thundris Windweaver."),
            },
        },
        {
            id = "turnin-2139-tharnariun-s-hope",
            kind = "turnin",
            priority = 1820,
            text = "Turn in Tharnariun's Hope to Tharnariun Treetender in Auberdine.",
            dependsOn = { "objective-2139-tharnariun-s-hope" },
            complete = QuestState(2139, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3885, 0.4344, "Tharnariun Treetender",
                    "Travel to Tharnariun Treetender."),
            },
        },
        {
            id = "objective-6123-2-12-item-15851",
            kind = "objective",
            priority = 1830,
            conditions = {
                all = {
                    { class = 11 },
                },
            },
            text = "Collect 12 Lunar Fungus inside the caves. Each cave has about 3.",
            dependsOn = { "accept-6123-gathering-the-cure" },
            complete = QuestObjective(6123, 2),
            route = {
                Point(MAP.DARKSHORE, 0.4642, 0.4561, "Continue toward Lunar Fungus",
                    "Continue toward Lunar Fungus."),
                Point(MAP.DARKSHORE, 0.4319, 0.4575, "Continue toward Lunar Fungus",
                    "Continue toward Lunar Fungus."),
                Point(MAP.DARKSHORE, 0.4327, 0.4917, "Continue toward Lunar Fungus",
                    "Continue toward Lunar Fungus."),
                Point(MAP.DARKSHORE, 0.4365, 0.5041, "Continue toward Lunar Fungus",
                    "Continue toward Lunar Fungus."),
                Point(MAP.DARKSHORE, 0.4260, 0.5239, "Lunar Fungus",
                    "Travel to Lunar Fungus."),
            },
        },
        {
            id = "objective-6123-1-5-item-2449",
            kind = "objective",
            priority = 1840,
            conditions = {
                all = {
                    { class = 11 },
                },
            },
            text = "Gather 5 Earthroot with Herb Gathering in Teldrassil or purchase from the auction house.",
            dependsOn = { "accept-6123-gathering-the-cure" },
            complete = QuestObjective(6123, 1),
        },
        {
            id = "turnin-6123-gathering-the-cure",
            kind = "turnin",
            priority = 1850,
            conditions = {
                all = {
                    { class = 11 },
                },
            },
            text = "Turn in Gathering the Cure to Alanndarian Nightsong in Auberdine.",
            dependsOn = { "objective-6123-2-12-item-15851", "objective-6123-1-5-item-2449" },
            complete = QuestState(6123, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3768, 0.4067, "Alanndarian Nightsong",
                    "Travel to Alanndarian Nightsong."),
            },
        },
        {
            id = "accept-6124-curing-the-sick",
            kind = "accept",
            priority = 1860,
            conditions = {
                all = {
                    { class = 11 },
                },
            },
            text = "Accept Curing the Sick from Alanndarian Nightsong in Auberdine.",
            complete = QuestState(6124, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3771, 0.4083, "Alanndarian Nightsong",
                    "Travel to Alanndarian Nightsong."),
            },
        },
        {
            id = "objective-6124-curing-the-sick",
            kind = "objective",
            priority = 1870,
            conditions = {
                all = {
                    { class = 11 },
                },
            },
            text = "Use the Curative Animal Salve on 10 Sickly Deer that are located throughout Darkshore. The deers are very scattered throughout Darkshore and can take a long time to complete this quest.",
            dependsOn = { "accept-6124-curing-the-sick" },
            complete = QuestState(6124, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.4160, 0.4620, "Continue toward Curing the Sick",
                    "Continue toward Curing the Sick."),
                Point(MAP.DARKSHORE, 0.4160, 0.3840, "Continue toward Curing the Sick",
                    "Continue toward Curing the Sick."),
                Point(MAP.DARKSHORE, 0.4380, 0.4180, "Continue toward Curing the Sick",
                    "Continue toward Curing the Sick."),
                Point(MAP.DARKSHORE, 0.4700, 0.4220, "Continue toward Curing the Sick",
                    "Continue toward Curing the Sick."),
                Point(MAP.DARKSHORE, 0.4940, 0.3520, "Continue toward Curing the Sick",
                    "Continue toward Curing the Sick."),
                Point(MAP.DARKSHORE, 0.4560, 0.3160, "Continue toward Curing the Sick",
                    "Continue toward Curing the Sick."),
                Point(MAP.DARKSHORE, 0.4460, 0.2800, "Continue toward Curing the Sick",
                    "Continue toward Curing the Sick."),
                Point(MAP.DARKSHORE, 0.4460, 0.2460, "Continue toward Curing the Sick",
                    "Continue toward Curing the Sick."),
                Point(MAP.DARKSHORE, 0.5200, 0.3240, "Sickly Deer",
                    "Travel to Sickly Deer."),
            },
        },
        {
            id = "turnin-6124-curing-the-sick",
            kind = "turnin",
            priority = 1880,
            conditions = {
                all = {
                    { class = 11 },
                },
            },
            text = "Turn in Curing the Sick to Dendrite Starblaze in Nighthaven.",
            dependsOn = { "objective-6124-curing-the-sick" },
            complete = QuestState(6124, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.5625, 0.3059, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze."),
            },
        },
        {
            id = "accept-6125-power-over-poison",
            kind = "accept",
            priority = 1890,
            conditions = {
                all = {
                    { class = 11 },
                },
            },
            text = "Accept Power over Poison from Dendrite Starblaze in Nighthaven.",
            complete = QuestState(6125, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.5625, 0.3059, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze."),
            },
        },
        {
            id = "turnin-6125-power-over-poison",
            kind = "turnin",
            priority = 1900,
            conditions = {
                all = {
                    { class = 11 },
                },
            },
            text = "Turn in Power over Poison to Dendrite Starblaze in Cenarion Enclave.",
            dependsOn = { "accept-6125-power-over-poison" },
            complete = QuestState(6125, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.3536, 0.0831, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze."),
            },
        },
        {
            id = "accept-26-a-lesson-to-learn",
            kind = "accept",
            priority = 1910,
            conditions = {
                all = {
                    { class = 11 },
                },
            },
            text = "Accept A Lesson to Learn from Mathrengyl Bearwalker in Cenarion Enclave.",
            complete = QuestState(26, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.3536, 0.0831, "Mathrengyl Bearwalker",
                    "Travel to Mathrengyl Bearwalker."),
            },
        },
        {
            id = "accept-26-a-lesson-to-learn-2",
            kind = "accept",
            priority = 1920,
            conditions = {
                all = {
                    { class = 11 },
                },
            },
            text = "Accept A Lesson to Learn from Mathrengyl Bearwalker in Cenarion Enclave.",
            complete = QuestState(26, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.3536, 0.0831, "Mathrengyl Bearwalker",
                    "Travel to Mathrengyl Bearwalker."),
            },
        },
        {
            id = "turnin-26-a-lesson-to-learn",
            kind = "turnin",
            priority = 1930,
            conditions = {
                all = {
                    { class = 11 },
                },
            },
            text = "Turn in A Lesson to Learn to Dendrite Starblaze in Nighthaven.",
            dependsOn = { "accept-26-a-lesson-to-learn" },
            complete = QuestState(26, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.5621, 0.3060, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze."),
            },
        },
        {
            id = "accept-29-trial-of-the-lake",
            kind = "accept",
            priority = 1940,
            conditions = {
                all = {
                    { class = 11 },
                },
            },
            text = "Accept Trial of the Lake from Dendrite Starblaze in Nighthaven.",
            complete = QuestState(29, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.5591, 0.3132, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze."),
            },
        },
        {
            id = "objective-29-trial-of-the-lake",
            kind = "objective",
            priority = 1950,
            conditions = {
                all = {
                    { class = 11 },
                },
            },
            text = "Use Spirit Ichor in Shrine of Remulos.",
            dependsOn = { "accept-29-trial-of-the-lake" },
            complete = QuestState(29, "complete"),
            route = {
                Point(MAP.MOONGLADE, 0.3622, 0.4135, "Shrine of Remulos",
                    "Travel to Shrine of Remulos."),
            },
        },
        {
            id = "turnin-29-trial-of-the-lake",
            kind = "turnin",
            priority = 1960,
            conditions = {
                all = {
                    { class = 11 },
                },
            },
            text = "Turn in Trial of the Lake to Tajarri in Shrine of Remulos.",
            dependsOn = { "objective-29-trial-of-the-lake" },
            complete = QuestState(29, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.3650, 0.4018, "Tajarri",
                    "Travel to Tajarri."),
            },
        },
        {
            id = "accept-272-trial-of-the-sea-lion",
            kind = "accept",
            priority = 1970,
            conditions = {
                all = {
                    { class = 11 },
                },
            },
            text = "Accept Trial of the Sea Lion from Tajarri in Shrine of Remulos.",
            complete = QuestState(272, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.3650, 0.4018, "Tajarri",
                    "Travel to Tajarri."),
            },
        },
        {
            id = "objective-272-trial-of-the-sea-lion",
            kind = "objective",
            priority = 1980,
            conditions = {
                all = {
                    { class = 11 },
                },
            },
            text = "Use Half Pendant of Aquatic Agility to combine into Pendant of the Sea Lion in Shrine of Remulos.",
            dependsOn = { "accept-272-trial-of-the-sea-lion" },
            complete = QuestState(272, "complete"),
            route = {
                Point(MAP.MOONGLADE, 0.3625, 0.4124, "Shrine of Remulos",
                    "Travel to Shrine of Remulos."),
            },
        },
        {
            id = "turnin-272-trial-of-the-sea-lion",
            kind = "turnin",
            priority = 1990,
            conditions = {
                all = {
                    { class = 11 },
                },
            },
            text = "Turn in Trial of the Sea Lion to Dendrite Starblaze in Nighthaven.",
            dependsOn = { "objective-272-trial-of-the-sea-lion" },
            complete = QuestState(272, "completed"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3063, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze."),
            },
        },
        {
            id = "accept-5061-aquatic-form",
            kind = "accept",
            priority = 2000,
            conditions = {
                all = {
                    { class = 11 },
                },
            },
            text = "Accept Aquatic Form from Dendrite Starblaze in Nighthaven.",
            complete = QuestState(5061, "activeOrCompleted"),
            route = {
                Point(MAP.MOONGLADE, 0.5620, 0.3063, "Dendrite Starblaze",
                    "Travel to Dendrite Starblaze."),
            },
        },
        {
            id = "turnin-5061-aquatic-form",
            kind = "turnin",
            priority = 2010,
            conditions = {
                all = {
                    { class = 11 },
                },
            },
            text = "Turn in Aquatic Form to Mathrengyl Bearwalker in Cenarion Enclave.",
            dependsOn = { "accept-5061-aquatic-form" },
            complete = QuestState(5061, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.3534, 0.0836, "Mathrengyl Bearwalker",
                    "Travel to Mathrengyl Bearwalker."),
            },
        },
        {
            id = "accept-1685-gakin-s-summons",
            kind = "accept",
            priority = 2020,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept Gakin's Summons from Remen Marcot in Lion's Pride Inn.",
            complete = QuestState(1685, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNN, 0.0450, 0.6621, "Remen Marcot",
                    "Travel to Remen Marcot."),
            },
        },
        {
            id = "accept-1716-devourer-of-souls",
            kind = "accept",
            priority = 2030,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept Devourer of Souls from Gakin the Darkbinder in The Slaughtered Lamb.",
            complete = QuestState(1716, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.2537, 0.7861, "Gakin the Darkbinder",
                    "Travel to Gakin the Darkbinder."),
            },
        },
        {
            id = "turnin-1717-gakin-s-summons",
            kind = "turnin",
            priority = 2040,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in Gakin's Summons to Gakin the Darkbinder in The Slaughtered Lamb.",
            complete = QuestState(1717, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.2530, 0.7852, "Gakin the Darkbinder",
                    "Travel to Gakin the Darkbinder."),
            },
        },
        {
            id = "accept-1716-devourer-of-souls-2",
            kind = "accept",
            priority = 2050,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept Devourer of Souls from Gakin the Darkbinder in The Slaughtered Lamb.",
            complete = QuestState(1716, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.2530, 0.7852, "Gakin the Darkbinder",
                    "Travel to Gakin the Darkbinder."),
            },
        },
        {
            id = "turnin-1716-devourer-of-souls",
            kind = "turnin",
            priority = 2060,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in Devourer of Souls to Takar the Seer in Southern Barrens.",
            dependsOn = { "accept-1716-devourer-of-souls" },
            complete = QuestState(1716, "completed"),
            route = {
                Point(MAP.BARRENS, 0.4930, 0.5710, "Takar the Seer",
                    "Travel to Takar the Seer."),
            },
        },
        {
            id = "accept-1738-heartswood",
            kind = "accept",
            priority = 2070,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept Heartswood from Takar the Seer in Southern Barrens.",
            complete = QuestState(1738, "activeOrCompleted"),
            route = {
                Point(MAP.BARRENS, 0.4930, 0.5710, "Takar the Seer",
                    "Travel to Takar the Seer."),
            },
        },
        {
            id = "objective-1738-heartswood",
            kind = "objective",
            priority = 2080,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Collect the Heartswood from the big tree in The Ruins of Ordil'Aran.",
            dependsOn = { "accept-1738-heartswood" },
            complete = QuestState(1738, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.3150, 0.3144, "The Ruins of Ordil'Aran",
                    "Travel to The Ruins of Ordil'Aran."),
            },
        },
        {
            id = "turnin-1738-heartswood",
            kind = "turnin",
            priority = 2090,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in Heartswood to Gakin the Darkbinder in The Slaughtered Lamb.",
            dependsOn = { "objective-1738-heartswood" },
            complete = QuestState(1738, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.2528, 0.7850, "Gakin the Darkbinder",
                    "Travel to Gakin the Darkbinder."),
            },
        },
        {
            id = "accept-1739-the-binding",
            kind = "accept",
            priority = 2100,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept The Binding from Gakin the Darkbinder in The Slaughtered Lamb.",
            complete = QuestState(1739, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.2528, 0.7850, "Gakin the Darkbinder",
                    "Travel to Gakin the Darkbinder."),
            },
        },
        {
            id = "objective-1739-the-binding",
            kind = "objective",
            priority = 2110,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Using the Heartswood Core, summon and subdue a Summoned Succubus in The Slaughtered Lamb.",
            dependsOn = { "accept-1739-the-binding" },
            complete = QuestState(1739, "complete"),
            route = {
                Point(MAP.STORMWIND, 0.2507, 0.7737, "Summoned Succubus",
                    "Travel to Summoned Succubus."),
            },
        },
        {
            id = "turnin-1739-the-binding",
            kind = "turnin",
            priority = 2120,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in The Binding to Gakin the Darkbinder in The Slaughtered Lamb.",
            dependsOn = { "objective-1739-the-binding" },
            complete = QuestState(1739, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.2524, 0.7858, "Gakin the Darkbinder",
                    "Travel to Gakin the Darkbinder."),
            },
        },
        {
            id = "objective-1650-tome-of-valor",
            kind = "objective",
            priority = 2130,
            conditions = {
                all = {
                    { class = 2 },
                    { quest = { id = 1649, state = "completed" } },
                },
            },
            text = "Speak to Brandur Ironhammer and collect Tome of Valor in Hall of Mysteries This is an optional Paladin quest to unlock Sense Undead skill and Bastion of Stormwind Tick to skip.",
            dependsOn = { "accept-1650-the-tome-of-valor" },
            complete = QuestState(1650, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.2312, 0.0607, "Brandur Ironhammer",
                    "Travel to Brandur Ironhammer."),
            },
        },
        {
            id = "objective-1650-tome-of-valor-2",
            kind = "objective",
            priority = 2140,
            conditions = {
                all = {
                    { class = 2 },
                    { quest = { id = 1649, state = "completed" } },
                },
            },
            text = "Speak to Duthorian Rall and collect Tome of Valor in Cathedral of Light This is an optional Paladin quest to unlock Sense Undead skill and Bastion of Stormwind Tick to skip.",
            dependsOn = { "accept-1650-the-tome-of-valor" },
            complete = QuestState(1650, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.3984, 0.2986, "Duthorian Rall",
                    "Travel to Duthorian Rall."),
            },
        },
        {
            id = "accept-1649-the-tome-of-valor",
            kind = "accept",
            priority = 2150,
            conditions = {
                all = {
                    { class = 2 },
                    { quest = { id = 1649, state = "completed" } },
                },
            },
            text = "Use the Tome of Valor to accept The Tome of Valor.",
            complete = QuestState(1649, "activeOrCompleted"),
        },
        {
            id = "turnin-1649-the-tome-of-valor",
            kind = "turnin",
            priority = 2160,
            conditions = {
                all = {
                    { class = 2 },
                    { quest = { id = 1649, state = "completed" } },
                },
            },
            text = "Turn in The Tome of Valor to Duthorian Rall in Cathedral of Light.",
            dependsOn = { "accept-1649-the-tome-of-valor" },
            complete = QuestState(1649, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.3985, 0.2991, "Duthorian Rall",
                    "Travel to Duthorian Rall."),
            },
        },
        {
            id = "accept-1650-the-tome-of-valor",
            kind = "accept",
            priority = 2170,
            conditions = {
                all = {
                    { class = 2 },
                    { quest = { id = 1649, state = "completed" } },
                },
            },
            text = "Accept The Tome of Valor from Duthorian Rall in Cathedral of Light.",
            complete = QuestState(1650, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.3985, 0.2991, "Duthorian Rall",
                    "Travel to Duthorian Rall."),
            },
        },
        {
            id = "turnin-1650-the-tome-of-valor",
            kind = "turnin",
            priority = 2180,
            conditions = {
                all = {
                    { class = 2 },
                    { quest = { id = 1649, state = "completed" } },
                },
            },
            text = "Turn in The Tome of Valor to Daphne Stilwell in The Dagger Hills.",
            dependsOn = { "objective-1650-tome-of-valor", "objective-1650-tome-of-valor-2" },
            complete = QuestState(1650, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.3849, 0.8262, "Continue toward The Tome of Valor",
                    "Continue toward The Tome of Valor."),
                Point(MAP.WESTFALL, 0.3992, 0.8668, "Continue toward The Tome of Valor",
                    "Continue toward The Tome of Valor."),
                Point(MAP.WESTFALL, 0.4148, 0.8885, "Daphne Stilwell",
                    "Travel to Daphne Stilwell."),
            },
        },
        {
            id = "accept-1651-the-tome-of-valor",
            kind = "accept",
            priority = 2190,
            conditions = {
                all = {
                    { class = 2 },
                    { quest = { id = 1649, state = "completed" } },
                },
            },
            text = "Accept The Tome of Valor from Daphne Stilwell in The Dagger Hills.",
            complete = QuestState(1651, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.4127, 0.8908, "Daphne Stilwell",
                    "Travel to Daphne Stilwell."),
            },
        },
        {
            id = "objective-1651-the-tome-of-valor",
            kind = "objective",
            priority = 2200,
            conditions = {
                all = {
                    { class = 2 },
                    { quest = { id = 1649, state = "completed" } },
                },
            },
            text = "Defend Daphne Stilwell from the Defias attack in The Dagger Hills Up to 4 level 17 Defias Raider will attack you at the same time, be ready to use cooldowns and potions if you have any.",
            dependsOn = { "accept-1651-the-tome-of-valor" },
            complete = QuestState(1651, "complete"),
            route = {
                Point(MAP.WESTFALL, 0.4221, 0.8867, "Daphne Stilwell",
                    "Travel to Daphne Stilwell."),
            },
        },
        {
            id = "turnin-1651-the-tome-of-valor",
            kind = "turnin",
            priority = 2210,
            conditions = {
                all = {
                    { class = 2 },
                    { quest = { id = 1649, state = "completed" } },
                },
            },
            text = "Turn in The Tome of Valor to Daphne Stilwell in The Dagger Hills.",
            dependsOn = { "objective-1651-the-tome-of-valor" },
            complete = QuestState(1651, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.4162, 0.8884, "Daphne Stilwell",
                    "Travel to Daphne Stilwell."),
            },
        },
        {
            id = "accept-1652-the-tome-of-valor",
            kind = "accept",
            priority = 2220,
            conditions = {
                all = {
                    { class = 2 },
                    { quest = { id = 1649, state = "completed" } },
                },
            },
            text = "Accept The Tome of Valor from Daphne Stilwell in The Dagger Hills.",
            complete = QuestState(1652, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.4118, 0.8853, "Daphne Stilwell",
                    "Travel to Daphne Stilwell."),
            },
        },
        {
            id = "turnin-1652-the-tome-of-valor",
            kind = "turnin",
            priority = 2230,
            conditions = {
                all = {
                    { class = 2 },
                    { quest = { id = 1649, state = "completed" } },
                },
            },
            text = "Turn in The Tome of Valor to Duthorian Rall in Cathedral of Light.",
            dependsOn = { "accept-1652-the-tome-of-valor" },
            complete = QuestState(1652, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.3982, 0.2978, "Duthorian Rall",
                    "Travel to Duthorian Rall."),
            },
        },
        {
            id = "accept-4740-wanted-murkdeep",
            kind = "accept",
            priority = 2240,
            text = "Accept WANTED: Murkdeep! in Auberdine.",
            complete = QuestState(4740, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3721, 0.4427, "Auberdine",
                    "Travel to Auberdine."),
            },
        },
        {
            id = "accept-944-the-master-s-glaive",
            kind = "accept",
            priority = 2250,
            text = "Accept The Master's Glaive from Onu in Grove of the Ancients.",
            complete = QuestState(944, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.4355, 0.7632, "Onu",
                    "Travel to Onu."),
            },
        },
        {
            id = "accept-98025-wanted-jaivhanel",
            kind = "accept",
            priority = 2260,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 13 } },
                },
            },
            text = "Accept WANTED: Jai'vhanel from WANTED: Murkdeep!.",
            complete = QuestState(98025, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.372, 0.442, "WANTED: Murkdeep!",
                    "Travel to WANTED: Murkdeep!."),
            },
        },
        {
            id = "objective-98025-wanted-jaivhanel-1",
            kind = "objective",
            priority = 2270,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 13 } },
                },
            },
            text = "WANTED: Jai'vhanel: Feather of Jai'vhanel.",
            dependsOn = { "accept-98025-wanted-jaivhanel" },
            complete = QuestObjective(98025, 1, "Feather of Jai'vhanel"),
            route = {
                Point(MAP.DARKSHORE, 0.450, 0.582, "Jai'vhanel",
                    "Travel to Jai'vhanel."),
            },
        },
        {
            id = "turnin-98025-wanted-jaivhanel",
            kind = "turnin",
            priority = 2280,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 13 } },
                },
            },
            text = "Turn in WANTED: Jai'vhanel to Sentinel Glynda Nal'Shea.",
            dependsOn = { "objective-98025-wanted-jaivhanel-1" },
            complete = QuestState(98025, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.376, 0.434, "Sentinel Glynda Nal'Shea",
                    "Travel to Sentinel Glynda Nal'Shea."),
            },
        },
        {
            id = "objective-944-the-master-s-glaive",
            kind = "objective",
            priority = 2290,
            text = "Travel south from the Grove of Ancients into The Master's Glaive until you've completed the quest.",
            dependsOn = { "accept-944-the-master-s-glaive" },
            complete = QuestState(944, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.3925, 0.8498, "The Master's Glaive",
                    "Travel to The Master's Glaive."),
            },
        },
        {
            id = "turnin-944-the-master-s-glaive",
            kind = "turnin",
            priority = 2300,
            text = "Turn in The Master's Glaive in The Master's Glaive.",
            dependsOn = { "objective-944-the-master-s-glaive" },
            complete = QuestState(944, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3925, 0.8498, "The Master's Glaive",
                    "Travel to The Master's Glaive."),
            },
        },
        {
            id = "accept-949-the-twilight-camp",
            kind = "accept",
            priority = 2310,
            text = "Use the Phial of Scrying to accept The Twilight Camp.",
            complete = QuestState(949, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3925, 0.8498, "The Master's Glaive",
                    "Travel to The Master's Glaive."),
            },
        },
        {
            id = "turnin-949-the-twilight-camp",
            kind = "turnin",
            priority = 2320,
            text = "Turn in The Twilight Camp in The Master's Glaive.",
            dependsOn = { "accept-949-the-twilight-camp" },
            complete = QuestState(949, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3857, 0.8602, "The Master's Glaive",
                    "Travel to The Master's Glaive."),
            },
        },
        {
            id = "accept-950-return-to-onu",
            kind = "accept",
            priority = 2330,
            text = "Accept Return to Onu in The Master's Glaive.",
            complete = QuestState(950, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3857, 0.8602, "The Master's Glaive",
                    "Travel to The Master's Glaive."),
            },
        },
        {
            id = "accept-945-therylune-s-escape",
            kind = "accept",
            priority = 2340,
            text = "Accept Therylune's Escape from Therylune in The Master's Glaive.",
            complete = QuestState(945, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3870, 0.8740, "Therylune",
                    "Travel to Therylune."),
            },
        },
        {
            id = "objective-945-therylune-s-escape",
            kind = "objective",
            priority = 2350,
            text = "Escort Therylune until she escapes.",
            dependsOn = { "accept-945-therylune-s-escape" },
            complete = QuestState(945, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.2270, 0.5190, "Therylune",
                    "Travel to Therylune."),
            },
        },
        {
            id = "accept-731-the-absent-minded-prospector",
            kind = "accept",
            priority = 2360,
            text = "Accept The Absent Minded Prospector from Prospector Remtravel in Remtravel's Excavation.",
            complete = QuestState(731, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3576, 0.8371, "Prospector Remtravel",
                    "Travel to Prospector Remtravel."),
            },
        },
        {
            id = "objective-731-the-absent-minded-prospector",
            kind = "objective",
            priority = 2370,
            text = "Protect Prospector Remtravel as he searches for the mysterious fossil This can be quite difficult to solo, try to clear the mobs in the area before accepting the quest. You can redo the quest if you fail but you need to wait about 5 mins for the quest giver to respawn.",
            dependsOn = { "accept-731-the-absent-minded-prospector" },
            complete = QuestState(731, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.3600, 0.8600, "Prospector Remtravel",
                    "Travel to Prospector Remtravel."),
            },
        },
        {
            id = "objective-4740-wanted-murkdeep",
            kind = "objective",
            priority = 2380,
            text = "Kill murlocs around the area and Murkdeep will eventually appear, kill him complete the quest.",
            dependsOn = { "accept-4740-wanted-murkdeep" },
            complete = QuestState(4740, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.3655, 0.7653, "Murkdeep",
                    "Travel to Murkdeep."),
            },
        },
        {
            id = "accept-4730-beached-sea-creature",
            kind = "accept",
            priority = 2390,
            conditions = {
                all = {
                    { quest = { id = 4681, state = "completed" } },
                },
            },
            text = "Accept Beached Sea Creature in Twilight Shore.",
            complete = QuestState(4730, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3266, 0.8089, "Twilight Shore",
                    "Travel to Twilight Shore."),
            },
        },
        {
            id = "turnin-4730-beached-sea-creature",
            kind = "turnin",
            priority = 2400,
            conditions = {
                all = {
                    { quest = { id = 4681, state = "completed" } },
                },
            },
            text = "Turn in Beached Sea Creature to Gwennyth Bly'Leggonde in Auberdine.",
            dependsOn = { "accept-4730-beached-sea-creature" },
            complete = QuestState(4730, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3661, 0.4559, "Gwennyth Bly'Leggonde",
                    "Travel to Gwennyth Bly'Leggonde."),
            },
        },
        {
            id = "turnin-731-the-absent-minded-prospector",
            kind = "turnin",
            priority = 2410,
            text = "Turn in The Absent Minded Prospector to Archaeologist Hollee in Auberdine.",
            dependsOn = { "objective-731-the-absent-minded-prospector" },
            complete = QuestState(731, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3746, 0.4188, "Archaeologist Hollee",
                    "Travel to Archaeologist Hollee."),
            },
        },
        {
            id = "turnin-4740-wanted-murkdeep",
            kind = "turnin",
            priority = 2420,
            text = "Turn in WANTED: Murkdeep! to Sentinel Glynda Nal'Shea in Auberdine.",
            dependsOn = { "objective-4740-wanted-murkdeep" },
            complete = QuestState(4740, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3770, 0.4344, "Sentinel Glynda Nal'Shea",
                    "Travel to Sentinel Glynda Nal'Shea."),
            },
        },
        {
            id = "turnin-950-return-to-onu",
            kind = "turnin",
            priority = 2430,
            text = "Turn in Return to Onu to Onu in Grove of the Ancients.",
            dependsOn = { "accept-950-return-to-onu" },
            complete = QuestState(950, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.4355, 0.7632, "Onu",
                    "Travel to Onu."),
            },
        },
        {
            id = "accept-951-mathystra-relics",
            kind = "accept",
            priority = 2440,
            text = "Accept Mathystra Relics from Onu in Grove of the Ancients.",
            complete = QuestState(951, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.4357, 0.7634, "Onu",
                    "Travel to Onu."),
            },
        },
        {
            id = "accept-5321-the-sleeper-has-awakened",
            kind = "accept",
            priority = 2450,
            text = "Accept The Sleeper Has Awakened from Kerlonian Evershade in Grove of the Ancients.",
            complete = QuestState(5321, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.4438, 0.7642, "Kerlonian Evershade",
                    "Travel to Kerlonian Evershade."),
            },
        },
        {
            id = "objective-5321-1-horn-of-awakening",
            kind = "objective",
            priority = 2460,
            text = "Collect Horn of Awakening from the chest next to Kerlonian Evershade in Grove of the Ancients.",
            dependsOn = { "accept-5321-the-sleeper-has-awakened" },
            complete = QuestObjective(5321, 1),
            route = {
                Point(MAP.DARKSHORE, 0.4437, 0.7636, "Kerlonian Evershade",
                    "Travel to Kerlonian Evershade."),
            },
        },
        {
            id = "accept-5713-one-shot-one-kill",
            kind = "accept",
            priority = 2470,
            text = "Accept One Shot. One Kill. from Sentinel Aynasha in Dark Shore.",
            complete = QuestState(5713, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.4580, 0.9020, "Sentinel Aynasha",
                    "Travel to Sentinel Aynasha."),
            },
        },
        {
            id = "objective-5713-one-shot-one-kill",
            kind = "objective",
            priority = 2480,
            text = "Protect Sentinel Aynasha until the quest is complete.",
            dependsOn = { "accept-5713-one-shot-one-kill" },
            complete = QuestState(5713, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.4580, 0.9020, "Sentinel Aynasha",
                    "Travel to Sentinel Aynasha."),
            },
        },
        {
            id = "objective-5321-the-sleeper-has-awakened",
            kind = "objective",
            priority = 2490,
            text = "Escort Kerlonian Evershade to Maestra's Post Avoid the main road so you don't get ambushed by 4 mobs.",
            dependsOn = { "accept-5321-the-sleeper-has-awakened" },
            complete = QuestState(5321, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.2901, 0.2566, "Continue toward The Sleeper Has Awakened",
                    "Continue toward The Sleeper Has Awakened."),
                Point(MAP.ASHENVALE, 0.2725, 0.3562, "Kerlonian Evershade",
                    "Travel to Kerlonian Evershade."),
            },
        },
        {
            id = "turnin-5321-the-sleeper-has-awakened",
            kind = "turnin",
            priority = 2500,
            text = "Turn in The Sleeper Has Awakened to Liladris Moonriver in Maestra's Post.",
            dependsOn = { "objective-5321-1-horn-of-awakening", "objective-5321-the-sleeper-has-awakened" },
            complete = QuestState(5321, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.2725, 0.3562, "Liladris Moonriver",
                    "Travel to Liladris Moonriver."),
            },
        },
        {
            id = "accept-741-the-absent-minded-prospector",
            kind = "accept",
            priority = 2510,
            conditions = {
                all = {
                    { quest = { id = 731, state = "completed" } },
                },
            },
            text = "Accept The Absent Minded Prospector from Archaeologist Hollee in Auberdine.",
            complete = QuestState(741, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3746, 0.4188, "Archaeologist Hollee",
                    "Travel to Archaeologist Hollee."),
            },
        },
        {
            id = "accept-2098-gyromast-s-retrieval",
            kind = "accept",
            priority = 2520,
            text = "Accept Gyromast's Retrieval from Gelkak Gyromast in Mist's Edge.",
            complete = QuestState(2098, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.5668, 0.1353, "Gelkak Gyromast",
                    "Travel to Gelkak Gyromast."),
            },
        },
        {
            id = "objective-2098-3-raging-reef-crawler",
            kind = "objective",
            priority = 2530,
            text = "Kill Raging Reef Crawler until you collect Bottom of Gelkak's Key in Mist's Edge.",
            dependsOn = { "accept-2098-gyromast-s-retrieval" },
            complete = QuestObjective(2098, 3),
            route = {
                Point(MAP.DARKSHORE, 0.5636, 0.1722, "Raging Reef Crawler",
                    "Travel to Raging Reef Crawler."),
            },
        },
        {
            id = "objective-2098-2-greymist-tidehunter",
            kind = "objective",
            priority = 2540,
            text = "Kill Greymist Tidehunter until you collect Middle of Gelkak's Key in Mist's Edge.",
            dependsOn = { "accept-2098-gyromast-s-retrieval" },
            complete = QuestObjective(2098, 2),
            route = {
                Point(MAP.DARKSHORE, 0.5541, 0.1233, "Greymist Tidehunter",
                    "Travel to Greymist Tidehunter."),
            },
        },
        {
            id = "objective-2098-1-giant-foreststrider",
            kind = "objective",
            priority = 2550,
            text = "Kill Giant Foreststrider until you collect Top of Gelkak's Key in Mist's Edge.",
            dependsOn = { "accept-2098-gyromast-s-retrieval" },
            complete = QuestObjective(2098, 1),
            route = {
                Point(MAP.DARKSHORE, 0.6171, 0.1154, "Giant Foreststrider",
                    "Travel to Giant Foreststrider."),
            },
        },
        {
            id = "turnin-2098-gyromast-s-retrieval",
            kind = "turnin",
            priority = 2560,
            text = "Turn in Gyromast's Retrieval to Gelkak Gyromast in Mist's Edge.",
            dependsOn = { "objective-2098-3-raging-reef-crawler", "objective-2098-2-greymist-tidehunter", "objective-2098-1-giant-foreststrider" },
            complete = QuestState(2098, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.5667, 0.1349, "Gelkak Gyromast",
                    "Travel to Gelkak Gyromast."),
            },
        },
        {
            id = "accept-2078-gyromast-s-revenge",
            kind = "accept",
            priority = 2570,
            text = "Accept Gyromast's Revenge from Gelkak Gyromast in Mist's Edge.",
            complete = QuestState(2078, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.5667, 0.1349, "Gelkak Gyromast",
                    "Travel to Gelkak Gyromast."),
            },
        },
        {
            id = "objective-2078-gyromast-s-revenge",
            kind = "objective",
            priority = 2580,
            text = "Speak to The Threshwackonator 4100 and bring it back to the quest giver in Mist's Edge The Threshwackonator 4100 will turn hostile as soon as you reach Gelkak Gyromast, be ready to use all your cooldowns as it can be difficult to solo.",
            dependsOn = { "accept-2078-gyromast-s-revenge" },
            complete = QuestState(2078, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.5579, 0.1826, "The Threshwackonator 4100",
                    "Travel to The Threshwackonator 4100."),
            },
        },
        {
            id = "turnin-2078-gyromast-s-revenge",
            kind = "turnin",
            priority = 2590,
            text = "Turn in Gyromast's Revenge to Gelkak Gyromast in Mist's Edge.",
            dependsOn = { "objective-2078-gyromast-s-revenge" },
            complete = QuestState(2078, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.5667, 0.1351, "Gelkak Gyromast",
                    "Travel to Gelkak Gyromast."),
            },
        },
        {
            id = "accept-993-a-lost-master",
            kind = "accept",
            priority = 2600,
            conditions = {
                all = {
                    { quest = { id = 985, state = "completed" } },
                },
            },
            text = "Accept A Lost Master from Terenthis in Auberdine.",
            complete = QuestState(993, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3934, 0.4349, "Terenthis",
                    "Travel to Terenthis."),
            },
        },
        {
            id = "turnin-993-a-lost-master",
            kind = "turnin",
            priority = 2610,
            conditions = {
                all = {
                    { quest = { id = 985, state = "completed" } },
                },
            },
            text = "Turn in A Lost Master to Volcor in Blackwood Den.",
            dependsOn = { "accept-993-a-lost-master" },
            complete = QuestState(993, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.4496, 0.8533, "Volcor",
                    "Travel to Volcor."),
            },
        },
        {
            id = "accept-98028-baron-marinous",
            kind = "accept",
            priority = 2611,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 21 } },
                },
            },
            text = "Accept Baron Marinous from Onu.",
            complete = QuestState(98028, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.436, 0.764, "Onu",
                    "Travel to Onu."),
            },
        },
        {
            id = "objective-98028-baron-marinous-1",
            kind = "objective",
            priority = 2612,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 21 } },
                },
            },
            text = "Baron Marinous: Clouded Water Globe.",
            dependsOn = { "accept-98028-baron-marinous" },
            complete = QuestObjective(98028, 1, "Clouded Water Globe"),
            route = {
                Point(MAP.DARKSHORE, 0.436, 0.764, "Onu",
                    "Travel to Onu."),
            },
        },
        {
            id = "turnin-98028-baron-marinous",
            kind = "turnin",
            priority = 2613,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 21 } },
                },
            },
            text = "Turn in Baron Marinous to Onu.",
            dependsOn = { "objective-98028-baron-marinous-1" },
            complete = QuestState(98028, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.436, 0.764, "Onu",
                    "Travel to Onu."),
            },
        },
        {
            id = "accept-994-escape-through-force",
            kind = "accept",
            priority = 2620,
            conditions = {
                all = {
                    { quest = { id = 985, state = "completed" } },
                    { ["not"] = { quest = { id = 995, state = "activeOrCompleted" } } },
                },
            },
            text = "Accept Escape Through Force from Volcor in Blackwood Den.",
            complete = QuestState(994, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.4496, 0.8533, "Volcor",
                    "Travel to Volcor."),
            },
        },
        {
            id = "objective-994-escape-through-force",
            kind = "objective",
            priority = 2630,
            conditions = {
                all = {
                    { quest = { id = 985, state = "completed" } },
                    { ["not"] = { quest = { id = 995, state = "activeOrCompleted" } } },
                },
            },
            text = "Escort Volcor until he escape in Blackwood Den.",
            dependsOn = { "accept-994-escape-through-force" },
            complete = QuestState(994, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.4200, 0.8100, "Volcor",
                    "Travel to Volcor."),
            },
        },
        {
            id = "accept-995-escape-through-stealth",
            kind = "accept",
            priority = 2640,
            conditions = {
                all = {
                    { quest = { id = 985, state = "completed" } },
                    { ["not"] = { quest = { id = 994, state = "activeOrCompleted" } } },
                },
            },
            text = "Accept Escape Through Stealth from Volcor in Blackwood Den.",
            complete = QuestState(995, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.4501, 0.8534, "Volcor",
                    "Travel to Volcor."),
            },
        },
        {
            id = "objective-995-escape-through-stealth",
            kind = "objective",
            priority = 2650,
            conditions = {
                all = {
                    { quest = { id = 985, state = "completed" } },
                    { ["not"] = { quest = { id = 994, state = "activeOrCompleted" } } },
                },
            },
            text = "Escape the Furbolg cave and meet Terenthis in Auberdine.",
            dependsOn = { "accept-995-escape-through-stealth" },
            complete = QuestState(995, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.4475, 0.8521, "Escape Through Stealth",
                    "Travel to Escape Through Stealth."),
            },
        },
        {
            id = "turnin-995-escape-through-stealth",
            kind = "turnin",
            priority = 2660,
            conditions = {
                all = {
                    { quest = { id = 985, state = "completed" } },
                    { ["not"] = { quest = { id = 994, state = "activeOrCompleted" } } },
                },
            },
            text = "Turn in Escape Through Stealth to Terenthis in Auberdine.",
            dependsOn = { "objective-995-escape-through-stealth" },
            complete = QuestState(995, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3934, 0.4348, "Terenthis",
                    "Travel to Terenthis."),
            },
        },
        {
            id = "turnin-994-escape-through-stealth",
            kind = "turnin",
            priority = 2670,
            conditions = {
                all = {
                    { quest = { id = 985, state = "completed" } },
                    { ["not"] = { quest = { id = 995, state = "activeOrCompleted" } } },
                },
            },
            text = "Turn in Escape Through Stealth to Terenthis in Auberdine.",
            dependsOn = { "objective-994-escape-through-force" },
            complete = QuestState(994, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3934, 0.4348, "Terenthis",
                    "Travel to Terenthis."),
            },
        },
        {
            id = "turnin-741-the-absent-minded-prospector",
            kind = "turnin",
            priority = 2680,
            conditions = {
                all = {
                    { quest = { id = 731, state = "completed" } },
                },
            },
            text = "Turn in The Absent Minded Prospector to Chief Archaeologist Greywhisker in Darnassus.",
            dependsOn = { "accept-741-the-absent-minded-prospector" },
            complete = QuestState(741, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.3137, 0.8414, "Chief Archaeologist Greywhisker",
                    "Travel to Chief Archaeologist Greywhisker."),
            },
        },
        {
            id = "accept-942-the-absent-minded-prospector",
            kind = "accept",
            priority = 2690,
            conditions = {
                all = {
                    { quest = { id = 731, state = "completed" } },
                },
            },
            text = "Accept The Absent Minded Prospector from Chief Archaeologist Greywhisker in Darnassus.",
            complete = QuestState(942, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.3128, 0.8365, "Chief Archaeologist Greywhisker",
                    "Travel to Chief Archaeologist Greywhisker."),
            },
        },
        {
            id = "accept-968-the-powers-below",
            kind = "accept",
            priority = 2700,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 20 } },
                },
            },
            text = "Accept The Powers Below from Gerrig Bonegrip.",
            complete = QuestState(968, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.504, 0.060, "Gerrig Bonegrip",
                    "Travel to Gerrig Bonegrip in Ironforge."),
            },
        },
        {
            id = "objective-968-the-powers-below-1",
            kind = "objective",
            priority = 2710,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 20 } },
                },
            },
            text = "The Powers Below: Book: The Powers Below.",
            dependsOn = { "accept-968-the-powers-below" },
            complete = QuestObjective(968, 1, "Book: The Powers Below"),
            route = {
                Point(MAP.IRONFORGE, 0.504, 0.060, "Gerrig Bonegrip",
                    "Travel to Gerrig Bonegrip in Ironforge."),
            },
        },
        {
            id = "turnin-968-the-powers-below",
            kind = "turnin",
            priority = 2720,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in The Powers Below to Gerrig Bonegrip.",
            dependsOn = { "objective-968-the-powers-below-1" },
            complete = QuestState(968, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.504, 0.060, "Gerrig Bonegrip",
                    "Travel to Gerrig Bonegrip in Ironforge."),
            },
        },
        {
            id = "accept-98013-swelling-forces",
            kind = "accept",
            priority = 2730,
            conditions = {
                all = {
                    { level = { min = 20 } },
                },
            },
            text = "Accept Swelling Forces from Arbal.",
            complete = QuestState(98013, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.436, 0.764, "Arbal",
                    "Travel to Arbal."),
            },
        },
        {
            id = "objective-98013-swelling-forces-1",
            kind = "objective",
            priority = 2740,
            conditions = {
                all = {
                    { level = { min = 20 } },
                },
            },
            text = "Swelling Forces: Stormscale Myrmidon.",
            dependsOn = { "accept-98013-swelling-forces" },
            complete = QuestObjective(98013, 1, "Stormscale Myrmidon"),
            route = {
                Point(MAP.DARKSHORE, 0.436, 0.764, "Arbal",
                    "Travel to Arbal."),
            },
        },
        {
            id = "objective-98013-swelling-forces-2",
            kind = "objective",
            priority = 2750,
            conditions = {
                all = {
                    { level = { min = 20 } },
                },
            },
            text = "Swelling Forces: Stormscale Sorceress.",
            dependsOn = { "accept-98013-swelling-forces" },
            complete = QuestObjective(98013, 2, "Stormscale Sorceress"),
            route = {
                Point(MAP.DARKSHORE, 0.436, 0.764, "Arbal",
                    "Travel to Arbal."),
            },
        },
        {
            id = "objective-98013-swelling-forces-3",
            kind = "objective",
            priority = 2760,
            conditions = {
                all = {
                    { level = { min = 20 } },
                },
            },
            text = "Swelling Forces: Stormscale Warrior.",
            dependsOn = { "accept-98013-swelling-forces" },
            complete = QuestObjective(98013, 3, "Stormscale Warrior"),
            route = {
                Point(MAP.DARKSHORE, 0.436, 0.764, "Arbal",
                    "Travel to Arbal."),
            },
        },
        {
            id = "turnin-98013-swelling-forces",
            kind = "turnin",
            priority = 2770,
            conditions = {
                all = {
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Swelling Forces to Arbal.",
            dependsOn = { "objective-98013-swelling-forces-3" },
            complete = QuestState(98013, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.436, 0.764, "Arbal",
                    "Travel to Arbal."),
            },
        },
        {
            id = "accept-970-the-tower-of-althalaxx",
            kind = "accept",
            priority = 2780,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 21 } },
                },
            },
            text = "Accept The Tower of Althalaxx from Delgren the Purifier.",
            complete = QuestState(970, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.262, 0.386, "Delgren the Purifier",
                    "Travel to Delgren the Purifier in Ashenvale."),
            },
        },
        {
            id = "accept-1140-the-tower-of-althalaxx",
            kind = "accept",
            priority = 2820,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 28 } },
                },
            },
            dependsOn = { "turnin-973-the-tower-of-althalaxx" },
            text = "Accept The Tower of Althalaxx from Delgren the Purifier.",
            complete = QuestState(1140, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.262, 0.386, "Delgren the Purifier",
                    "Travel to Delgren the Purifier in Ashenvale."),
            },
        },
        {
            id = "accept-973-the-tower-of-althalaxx",
            kind = "accept",
            priority = 2821,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 24 } },
                },
            },
            text = "Accept The Tower of Althalaxx from Delgren the Purifier.",
            complete = QuestState(973, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.262, 0.386, "Delgren the Purifier",
                    "Travel to Delgren the Purifier in Ashenvale."),
            },
        },
        {
            id = "objective-973-the-tower-of-althalaxx-1",
            kind = "objective",
            priority = 2822,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 24 } },
                },
            },
            text = "The Tower of Althalaxx: Ilkrud Magthrull's Tome.",
            dependsOn = { "accept-973-the-tower-of-althalaxx" },
            complete = QuestObjective(973, 1, "Ilkrud Magthrull's Tome"),
            route = {
                Point(MAP.ASHENVALE, 0.252, 0.606, "Ilkrud Magthrull",
                    "Travel to Ilkrud Magthrull in Ashenvale."),
            },
        },
        {
            id = "turnin-973-the-tower-of-althalaxx",
            kind = "turnin",
            priority = 2823,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 24 } },
                },
            },
            text = "Turn in The Tower of Althalaxx to Delgren the Purifier.",
            dependsOn = { "objective-973-the-tower-of-althalaxx-1" },
            complete = QuestState(973, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.262, 0.386, "Delgren the Purifier",
                    "Travel to Delgren the Purifier in Ashenvale."),
            },
        },
        {
            id = "objective-1140-the-tower-of-althalaxx-1",
            kind = "objective",
            priority = 2830,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 28 } },
                },
            },
            text = "The Tower of Althalaxx: Free the Highborne soul in Night Run.",
            dependsOn = { "accept-1140-the-tower-of-althalaxx" },
            complete = QuestObjective(1140, 1, "Free the Highborne soul in Night Run"),
            route = {
                Point(MAP.ASHENVALE, 0.262, 0.386, "Delgren the Purifier",
                    "Travel to Delgren the Purifier in Ashenvale."),
            },
        },
        {
            id = "objective-1140-the-tower-of-althalaxx-2",
            kind = "objective",
            priority = 2840,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 28 } },
                },
            },
            text = "The Tower of Althalaxx: Free the Highborne soul in Satyrnaar.",
            dependsOn = { "accept-1140-the-tower-of-althalaxx" },
            complete = QuestObjective(1140, 2, "Free the Highborne soul in Satyrnaar"),
            route = {
                Point(MAP.ASHENVALE, 0.262, 0.386, "Delgren the Purifier",
                    "Travel to Delgren the Purifier in Ashenvale."),
            },
        },
        {
            id = "turnin-1140-the-tower-of-althalaxx",
            kind = "turnin",
            priority = 2850,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 28 } },
                },
            },
            text = "Turn in The Tower of Althalaxx to Delgren the Purifier.",
            dependsOn = { "objective-1140-the-tower-of-althalaxx-2" },
            complete = QuestState(1140, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.262, 0.386, "Delgren the Purifier",
                    "Travel to Delgren the Purifier in Ashenvale."),
            },
        },
        {
            id = "accept-1167-the-tower-of-althalaxx",
            kind = "accept",
            priority = 2860,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 28 } },
                },
            },
            text = "Accept The Tower of Althalaxx from Delgren the Purifier.",
            dependsOn = { "turnin-1140-the-tower-of-althalaxx" },
            complete = QuestState(1167, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.262, 0.386, "Delgren the Purifier",
                "Travel to Delgren the Purifier."),
            },
        },
        {
            id = "turnin-1167-the-tower-of-althalaxx",
            kind = "turnin",
            priority = 2860.1,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 28 } },
                },
            },
            dependsOn = { "accept-1167-the-tower-of-althalaxx" },
            text = "Turn it in to Balthule Shadowstrike.",
            complete = QuestState(1167, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.550, 0.248, "Balthule Shadowstrike",
                    "Travel to Balthule Shadowstrike in Ashenvale."),
            },
        },
        {
            id = "accept-1143-the-tower-of-althalaxx",
            kind = "accept",
            priority = 2870,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 31 } },
                },
            },
            dependsOn = { "turnin-1167-the-tower-of-althalaxx" },
            text = "Accept The Tower of Althalaxx from Balthule Shadowstrike.",
            complete = QuestState(1143, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.550, 0.248, "Balthule Shadowstrike",
                    "Travel to Balthule Shadowstrike."),
            },
        },
        {
            id = "objective-1143-the-tower-of-althalaxx-1",
            kind = "objective",
            priority = 2880,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 31 } },
                },
            },
            text = "The Tower of Althalaxx: Athrikus Narassin's Head.",
            dependsOn = { "accept-1143-the-tower-of-althalaxx" },
            complete = QuestObjective(1143, 1, "Athrikus Narassin's Head"),
            route = {
                Point(MAP.DARKSHORE, 0.560, 0.260, "Athrikus Narassin",
                    "Travel to Athrikus Narassin."),
            },
        },
        {
            id = "turnin-1143-the-tower-of-althalaxx",
            kind = "turnin",
            priority = 2890,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 31 } },
                },
            },
            text = "Turn in The Tower of Althalaxx to Balthule Shadowstrike.",
            dependsOn = { "objective-1143-the-tower-of-althalaxx-1" },
            complete = QuestState(1143, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.550, 0.248, "Balthule Shadowstrike",
                    "Travel to Balthule Shadowstrike."),
            },
        },
        {
            id = "accept-981-the-tower-of-althalaxx",
            kind = "accept",
            priority = 2900,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 31 } },
                },
            },
            text = "Accept The Tower of Althalaxx from Balthule Shadowstrike.",
            dependsOn = { "turnin-1143-the-tower-of-althalaxx" },
            complete = QuestState(981, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.550, 0.248, "Balthule Shadowstrike",
                "Travel to Balthule Shadowstrike."),
            },
        },
        {
            id = "turnin-981-the-tower-of-althalaxx",
            kind = "turnin",
            priority = 2900.1,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 31 } },
                },
            },
            dependsOn = { "accept-981-the-tower-of-althalaxx" },
            text = "Turn it in to Delgren the Purifier.",
            complete = QuestState(981, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.262, 0.386, "Delgren the Purifier",
                    "Travel to Delgren the Purifier."),
            },
        },
        {
            id = "objective-970-the-tower-of-althalaxx-1",
            kind = "objective",
            priority = 2910,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 21 } },
                },
            },
            text = "The Tower of Althalaxx: Glowing Soul Gem.",
            dependsOn = { "accept-970-the-tower-of-althalaxx" },
            complete = QuestObjective(970, 1, "Glowing Soul Gem"),
            route = {
                Point(MAP.ASHENVALE, 0.320, 0.300, "Dark Strand Cultist",
                    "Travel to Dark Strand Cultist in Ashenvale."),
            },
        },
        {
            id = "turnin-970-the-tower-of-althalaxx",
            kind = "turnin",
            priority = 2920,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 21 } },
                },
            },
            text = "Turn in The Tower of Althalaxx to Delgren the Purifier.",
            dependsOn = { "objective-970-the-tower-of-althalaxx-1" },
            complete = QuestState(970, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.262, 0.386, "Delgren the Purifier",
                    "Travel to Delgren the Purifier in Ashenvale."),
            },
        },
        {
            id = "accept-97894-business-in-auberdine",
            kind = "accept",
            priority = 2930,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 17 } },
                },
            },
            text = "Accept Business in Auberdine from Borgus Steelhand.",
            complete = QuestState(97894, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.380, 0.412, "Gorbold Steelhand",
                "Travel to Gorbold Steelhand in Stormwind City."),
            },
        },
        {
            id = "turnin-97894-business-in-auberdine",
            kind = "turnin",
            priority = 2930.1,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 17 } },
                },
            },
            text = "Turn it in to Gorbold Steelhand.",
            dependsOn = { "accept-97894-business-in-auberdine" },
            complete = QuestState(97894, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.380, 0.412, "Gorbold Steelhand",
                    "Travel to Gorbold Steelhand in Stormwind City."),
            },
        },
        {
            id = "accept-97926-making-do",
            kind = "accept",
            priority = 2940,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 17 } },
                },
            },
            text = "Accept Making Do from Baros Alexston.",
            complete = QuestState(97926, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.490, 0.302, "Baros Alexston",
                    "Travel to Baros Alexston in Stormwind City."),
            },
        },
        {
            id = "objective-97926-making-do-1",
            kind = "objective",
            priority = 2950,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 17 } },
                },
            },
            text = "Making Do: Alexston's Reply.",
            dependsOn = { "accept-97926-making-do" },
            complete = QuestObjective(97926, 1, "Alexston's Reply"),
            route = {
                Point(MAP.STORMWIND, 0.490, 0.302, "Baros Alexston",
                    "Travel to Baros Alexston in Stormwind City."),
            },
        },
        {
            id = "turnin-97926-making-do",
            kind = "turnin",
            priority = 2960,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 17 } },
                },
            },
            text = "Turn in Making Do to Thundris Windweaver.",
            dependsOn = { "objective-97926-making-do-1" },
            complete = QuestState(97926, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.374, 0.402, "Thundris Windweaver",
                    "Travel to Thundris Windweaver in Stormwind City."),
            },
        },
        {
            id = "accept-943-the-absent-minded-prospector",
            kind = "accept",
            priority = 2970,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 24 } },
                },
            },
            text = "Accept The Absent Minded Prospector from Archaeologist Flagongut.",
            complete = QuestState(943, "activeOrCompleted"),
            route = {
                Point(MAP.ZONE_1437, 0.108, 0.604, "Archaeologist Flagongut",
                    "Travel to Archaeologist Flagongut in Wetlands."),
            },
        },
        {
            id = "objective-943-the-absent-minded-prospector-1",
            kind = "objective",
            priority = 2980,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 24 } },
                },
            },
            text = "The Absent Minded Prospector: Stone of Relu.",
            dependsOn = { "accept-943-the-absent-minded-prospector" },
            complete = QuestObjective(943, 1, "Stone of Relu"),
            route = {
                Point(MAP.ZONE_1437, 0.370, 0.434, "Mottled Raptor",
                    "Travel to Mottled Raptor in Wetlands."),
            },
        },
        {
            id = "objective-943-the-absent-minded-prospector-2",
            kind = "objective",
            priority = 2990,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 24 } },
                },
            },
            text = "The Absent Minded Prospector: Flagongut's Fossil.",
            dependsOn = { "accept-943-the-absent-minded-prospector" },
            complete = QuestObjective(943, 2, "Flagongut's Fossil"),
            route = {
                Point(MAP.ZONE_1437, 0.370, 0.434, "Mottled Raptor",
                    "Travel to Mottled Raptor in Wetlands."),
            },
        },
        {
            id = "turnin-943-the-absent-minded-prospector",
            kind = "turnin",
            priority = 3000,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 24 } },
                },
            },
            text = "Turn in The Absent Minded Prospector to Archaeologist Flagongut.",
            dependsOn = { "objective-943-the-absent-minded-prospector-2" },
            complete = QuestState(943, "completed"),
            route = {
                Point(MAP.ZONE_1437, 0.108, 0.604, "Archaeologist Flagongut",
                    "Travel to Archaeologist Flagongut in Wetlands."),
            },
        },
    },
})
