local _, ns = ...

-- Westfall Loremaster route.
-- The step order follows the leveling route. Quests that are on the
-- Wowhead zone page and not on that route are woven in at the giver
-- the route already visits, or after the series quest they follow.
-- Leveling route: Guides/Leveling/12-17-westfall.lua
-- Quest list: https://www.wowhead.com/forever/quests/eastern-kingdoms/westfall
-- Dungeon quests stay in the dungeon guides.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    WESTFALL = 1436,
    STORMWIND = 1453,
    ELWYNN = 1429,
    IRONFORGE = 1455,
    DUN_MOROGH = 1426,
    WETLANDS = 1437,
    REDRIDGE = 1433,
    DUSKWOOD = 1431,
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
    id = "leveling-westfall",
    title = "Westfall",
    category = "Loremaster Guides",
    revision = 1,
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
            id = "accept-64-the-forgotten-heirloom",
            kind = "accept",
            priority = 430,
            text = "Accept The Forgotten Heirloom from Farmer Furlbrow in The Jansen Stead.",
            complete = QuestState(64, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.6000, 0.1937, "Farmer Furlbrow",
                    "Travel to Farmer Furlbrow."),
            },
        },
        {
            id = "accept-36-westfall-stew",
            kind = "accept",
            priority = 440,
            text = "Accept Westfall Stew from Verna Furlbrow in The Jansen Stead.",
            complete = QuestState(36, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.5992, 0.1945, "Verna Furlbrow",
                    "Travel to Verna Furlbrow."),
            },
        },
        {
            id = "accept-151-poor-old-blanchy",
            kind = "accept",
            priority = 450,
            text = "Accept Poor Old Blanchy from Verna Furlbrow in The Jansen Stead.",
            complete = QuestState(151, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.5992, 0.1945, "Verna Furlbrow",
                    "Travel to Verna Furlbrow."),
            },
        },
        {
            id = "accept-184-furlbrows-deed",
            kind = "accept",
            priority = 460,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 9 } },
                },
            },
            text = "Accept Furlbrow's Deed from Farmer Furlbrow.",
            complete = QuestState(184, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.600, 0.194, "Farmer Furlbrow",
                    "Travel to Farmer Furlbrow."),
            },
        },
        {
            id = "objective-184-furlbrows-deed-1",
            kind = "objective",
            priority = 470,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 9 } },
                },
            },
            text = "Furlbrow's Deed: Furlbrow's Deed.",
            dependsOn = { "accept-184-furlbrows-deed" },
            complete = QuestObjective(184, 1, "Furlbrow's Deed"),
            route = {
                Point(MAP.WESTFALL, 0.600, 0.194, "Farmer Furlbrow",
                    "Travel to Farmer Furlbrow."),
            },
        },
        {
            id = "turnin-184-furlbrows-deed",
            kind = "turnin",
            priority = 480,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 9 } },
                },
            },
            text = "Turn in Furlbrow's Deed to Farmer Furlbrow.",
            dependsOn = { "objective-184-furlbrows-deed-1" },
            complete = QuestState(184, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.600, 0.194, "Farmer Furlbrow",
                    "Travel to Farmer Furlbrow."),
            },
        },
        {
            id = "turnin-36-westfall-stew",
            kind = "turnin",
            priority = 490,
            text = "Turn in Westfall Stew to Salma Saldean in Saldean's Farm.",
            dependsOn = { "accept-36-westfall-stew" },
            complete = QuestState(36, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.5640, 0.3055, "Salma Saldean",
                    "Travel to Salma Saldean."),
            },
        },
        {
            id = "accept-38-westfall-stew",
            kind = "accept",
            priority = 500,
            text = "Accept Westfall Stew from Salma Saldean in Saldean's Farm.",
            complete = QuestState(38, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.5640, 0.3051, "Salma Saldean",
                    "Travel to Salma Saldean."),
            },
        },
        {
            id = "accept-22-goretusk-liver-pie",
            kind = "accept",
            priority = 510,
            text = "Accept Goretusk Liver Pie from Salma Saldean in Saldean's Farm.",
            complete = QuestState(22, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.5623, 0.3089, "Salma Saldean",
                    "Travel to Salma Saldean."),
            },
        },
        {
            id = "accept-9-the-killing-fields",
            kind = "accept",
            priority = 520,
            text = "Accept The Killing Fields from Farmer Saldean in Saldean's Farm.",
            complete = QuestState(9, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.5600, 0.3120, "Farmer Saldean",
                    "Travel to Farmer Saldean."),
            },
        },
        {
            id = "objective-151-poor-old-blanchy",
            kind = "objective",
            priority = 530,
            text = "Start collecting Handful of Oats from Sack of Oats on the ground in Saldean's Farm Try to get 3-4 Handful of Oats and to complete later (56.9, 19,3).",
            dependsOn = { "accept-151-poor-old-blanchy" },
            complete = QuestState(151, "complete"),
        },
        {
            id = "accept-12-the-people-s-militia",
            kind = "accept",
            priority = 540,
            text = "Accept The People's Militia from Marshal Gryan Stoutmantle in Sentinel Hill.",
            complete = QuestState(12, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.5637, 0.4764, "Marshal Gryan Stoutmantle",
                    "Travel to Marshal Gryan Stoutmantle."),
            },
        },
        {
            id = "accept-102-patrolling-westfall",
            kind = "accept",
            priority = 550,
            text = "Accept Patrolling Westfall from Captain Danuvin in Sentinel Hill.",
            complete = QuestState(102, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.5649, 0.4749, "Captain Danuvin",
                    "Travel to Captain Danuvin."),
            },
        },
        {
            id = "accept-6181-a-swift-message",
            kind = "accept",
            priority = 560,
            conditions = {
                all = {
                    { race = 1 },
                },
            },
            text = "Accept A Swift Message from Quartermaster Lewis in Sentinel Hill.",
            complete = QuestState(6181, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.5690, 0.4720, "Quartermaster Lewis",
                    "Travel to Quartermaster Lewis."),
            },
        },
        {
            id = "accept-153-red-leather-bandanas",
            kind = "accept",
            priority = 570,
            text = "Accept Red Leather Bandanas from Scout Galiaan in Sentinel Hill.",
            complete = QuestState(153, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.5400, 0.5300, "Scout Galiaan",
                    "Travel to Scout Galiaan."),
            },
        },
        {
            id = "turnin-6181-a-swift-message",
            kind = "turnin",
            priority = 580,
            conditions = {
                all = {
                    { race = 1 },
                },
            },
            text = "Turn in A Swift Message to Thor in Sentinel Hill.",
            dependsOn = { "accept-6181-a-swift-message" },
            complete = QuestState(6181, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.5654, 0.5264, "Thor",
                    "Travel to Thor."),
            },
        },
        {
            id = "accept-6281-continue-to-stormwind",
            kind = "accept",
            priority = 590,
            conditions = {
                all = {
                    { race = 1 },
                },
            },
            text = "Accept Continue to Stormwind from Thor in Sentinel Hill.",
            complete = QuestState(6281, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.5654, 0.5264, "Thor",
                    "Travel to Thor."),
            },
        },
        {
            id = "turnin-61-shipment-to-stormwind",
            kind = "turnin",
            priority = 600,
            conditions = {
                all = {
                    { race = 1 },
                },
            },
            text = "Turn in Shipment to Stormwind to Morgan Pestle in Trade District.",
            complete = QuestState(61, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.5623, 0.6459, "Morgan Pestle",
                    "Travel to Morgan Pestle."),
            },
        },
        {
            id = "turnin-6281-continue-to-stormwind",
            kind = "turnin",
            priority = 610,
            conditions = {
                all = {
                    { race = 1 },
                },
            },
            text = "Turn in Continue to Stormwind to Osric Strang in Old Town.",
            dependsOn = { "accept-6281-continue-to-stormwind" },
            complete = QuestState(6281, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.7421, 0.4753, "Osric Strang",
                    "Travel to Osric Strang."),
            },
        },
        {
            id = "accept-6261-dungar-longdrink",
            kind = "accept",
            priority = 620,
            conditions = {
                all = {
                    { race = 1 },
                },
            },
            text = "Accept Dungar Longdrink from Osric Strang in Old Town.",
            complete = QuestState(6261, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.7421, 0.4753, "Osric Strang",
                    "Travel to Osric Strang."),
            },
        },
        {
            id = "turnin-6261-dungar-longdrink",
            kind = "turnin",
            priority = 630,
            conditions = {
                all = {
                    { race = 1 },
                },
            },
            text = "Turn in Dungar Longdrink to Dungar Longdrink in Trade District.",
            dependsOn = { "accept-6261-dungar-longdrink" },
            complete = QuestState(6261, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.6631, 0.6219, "Dungar Longdrink",
                    "Travel to Dungar Longdrink."),
            },
        },
        {
            id = "accept-6285-return-to-lewis",
            kind = "accept",
            priority = 640,
            conditions = {
                all = {
                    { race = 1 },
                },
            },
            text = "Accept Return to Lewis from Dungar Longdrink in Trade District.",
            complete = QuestState(6285, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.6631, 0.6219, "Dungar Longdrink",
                    "Travel to Dungar Longdrink."),
            },
        },
        {
            id = "turnin-6285-return-to-lewis",
            kind = "turnin",
            priority = 650,
            conditions = {
                all = {
                    { race = 1 },
                },
            },
            text = "Turn in Return to Lewis to Dungar Longdrink.",
            dependsOn = { "accept-6285-return-to-lewis" },
            complete = QuestState(6285, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.5690, 0.4720, "Dungar Longdrink",
                    "Travel to Dungar Longdrink."),
            },
        },
        {
            id = "objective-12-the-people-s-militia",
            kind = "objective",
            priority = 660,
            text = "Kill 15 Defias Smuggler and 15 Defias Trapper in Jangolode Mine.",
            dependsOn = { "accept-12-the-people-s-militia" },
            complete = QuestState(12, "complete"),
            route = {
                Point(MAP.WESTFALL, 0.4681, 0.3949, "Defias Smuggler",
                    "Travel to Defias Smuggler."),
            },
        },
        {
            id = "objective-153-red-leather-bandanas",
            kind = "objective",
            priority = 670,
            text = "Collect Red Leather Bandana from Defias enemies.",
            dependsOn = { "accept-153-red-leather-bandanas" },
            complete = QuestState(153, "complete"),
            route = {
                Point(MAP.WESTFALL, 0.4681, 0.3949, "Defias Smuggler",
                    "Travel to Defias Smuggler."),
            },
        },
        {
            id = "turnin-153-red-leather-bandanas",
            kind = "turnin",
            priority = 680,
            text = "Turn in Red Leather Bandanas to Scout Galiaan in Sentinel Hill.",
            dependsOn = { "objective-153-red-leather-bandanas" },
            complete = QuestState(153, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.5399, 0.5298, "Scout Galiaan",
                    "Travel to Scout Galiaan."),
            },
        },
        {
            id = "turnin-12-the-people-s-militia",
            kind = "turnin",
            priority = 690,
            text = "Turn in The People's Militia to Marshal Gryan Stoutmantle in Sentinel Hill.",
            dependsOn = { "objective-12-the-people-s-militia" },
            complete = QuestState(12, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.5636, 0.4751, "Marshal Gryan Stoutmantle",
                    "Travel to Marshal Gryan Stoutmantle."),
            },
        },
        {
            id = "accept-13-the-people-s-militia",
            kind = "accept",
            priority = 700,
            text = "Accept The People's Militia from Marshal Gryan Stoutmantle in Sentinel Hill.",
            complete = QuestState(13, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.5636, 0.4751, "Marshal Gryan Stoutmantle",
                    "Travel to Marshal Gryan Stoutmantle."),
            },
        },
        {
            id = "objective-151-poor-old-blanchy-2",
            kind = "objective",
            priority = 710,
            text = "Collect 8 Handful of Oats from Sack of Oats on the ground in Saldean's Farm and The Molsen Farm (56.9, 19,3).",
            dependsOn = { "accept-151-poor-old-blanchy" },
            complete = QuestState(151, "complete"),
            route = {
                Point(MAP.WESTFALL, 0.4603, 0.3832, "Saldean's Farm",
                    "Travel to Saldean's Farm."),
            },
        },
        {
            id = "turnin-151-poor-old-blanchy",
            kind = "turnin",
            priority = 720,
            text = "Turn in Poor Old Blanchy to Verna Furlbrow in The Jansen Stead.",
            dependsOn = { "objective-151-poor-old-blanchy", "objective-151-poor-old-blanchy-2" },
            complete = QuestState(151, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.5991, 0.1937, "Verna Furlbrow",
                    "Travel to Verna Furlbrow."),
            },
        },
        {
            id = "objective-38-4-harvest-golem",
            kind = "objective",
            priority = 730,
            text = "Kill Harvest Golem and collect 3 Ripe Okra in Saldean's Farm Also collect 5 Hops for a later quest.",
            dependsOn = { "accept-38-westfall-stew" },
            complete = QuestObjective(38, 4),
            route = {
                Point(MAP.WESTFALL, 0.5624, 0.3547, "Harvest Golem",
                    "Travel to Harvest Golem."),
            },
        },
        {
            id = "objective-116-harvest-golem",
            kind = "objective",
            priority = 740,
            text = "Kill Harvest Golem and collect 5 Ripe Okra for a later quest in Saldean's Farm.",
            dependsOn = { "accept-116-dry-times" },
            complete = QuestState(116, "complete"),
            route = {
                Point(MAP.WESTFALL, 0.5624, 0.3547, "Harvest Golem",
                    "Travel to Harvest Golem."),
            },
        },
        {
            id = "objective-102-1-patrolling-westfall",
            kind = "objective",
            priority = 750,
            text = "Kill Gnolls near The Jansen Stead and collect 8 Gnoll Paw.",
            dependsOn = { "accept-102-patrolling-westfall" },
            complete = QuestObjective(102, 1),
            route = {
                Point(MAP.WESTFALL, 0.5690, 0.1343, "Riverpaw Gnoll",
                    "Travel to Riverpaw Gnoll."),
            },
        },
        {
            id = "objective-38-2-3-item-730",
            kind = "objective",
            priority = 760,
            text = "Kill Murlocs in Longshore and collect 3 Murloc Eye.",
            dependsOn = { "accept-38-westfall-stew" },
            complete = QuestObjective(38, 2),
            route = {
                Point(MAP.WESTFALL, 0.5561, 0.0902, "Murloc Raider",
                    "Travel to Murloc Raider."),
            },
        },
        {
            id = "objective-136-captain-sanders-treasure-map",
            kind = "objective",
            priority = 770,
            text = "Kill Murlocs until you find Captain Sanders' Treasure Map in Longshore.",
            complete = QuestState(136, "complete"),
            route = {
                Point(MAP.WESTFALL, 0.5661, 0.0947, "Murloc Raider",
                    "Travel to Murloc Raider."),
            },
        },
        {
            id = "turnin-102-patrolling-westfall",
            kind = "turnin",
            priority = 780,
            text = "Turn in Patrolling Westfall to Captain Danuvin in Sentinel Hill.",
            dependsOn = { "objective-102-1-patrolling-westfall" },
            complete = QuestState(102, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.5636, 0.4759, "Captain Danuvin",
                    "Travel to Captain Danuvin."),
            },
        },
        {
            id = "objective-38-westfall-stew",
            kind = "objective",
            priority = 790,
            text = "Kill Young Goretusk and Young Fleshripper and collect 3 Goretusk Snout and 3 Stringy Vulture Meat scatterred in Westfall.",
            dependsOn = { "accept-38-westfall-stew" },
            complete = QuestState(38, "complete"),
            route = {
                Point(MAP.WESTFALL, 0.4656, 0.1945, "Young Goretusk",
                    "Travel to Young Goretusk."),
            },
        },
        {
            id = "objective-22-goretusk-liver-pie",
            kind = "objective",
            priority = 800,
            text = "Kill Young Goretusk and collect 8 Goretusk Liver scatterred in Westfall.",
            dependsOn = { "accept-22-goretusk-liver-pie" },
            complete = QuestState(22, "complete"),
            route = {
                Point(MAP.WESTFALL, 0.4656, 0.1945, "Young Goretusk",
                    "Travel to Young Goretusk."),
            },
        },
        {
            id = "turnin-38-westfall-stew",
            kind = "turnin",
            priority = 810,
            text = "Turn in Westfall Stew to Salma Saldean in Saldean's Farm.",
            dependsOn = { "objective-38-4-harvest-golem", "objective-38-2-3-item-730", "objective-38-westfall-stew" },
            complete = QuestState(38, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.5642, 0.3048, "Salma Saldean",
                    "Travel to Salma Saldean."),
            },
        },
        {
            id = "turnin-22-goretusk-liver-pie",
            kind = "turnin",
            priority = 820,
            text = "Turn in Goretusk Liver Pie to Salma Saldean in Saldean's Farm.",
            dependsOn = { "objective-22-goretusk-liver-pie" },
            complete = QuestState(22, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.5642, 0.3053, "Salma Saldean",
                    "Travel to Salma Saldean."),
            },
        },
        {
            id = "objective-64-the-forgotten-heirloom",
            kind = "objective",
            priority = 830,
            text = "Collect Furlbrow's Pocket Watch from Furlbrow's Wardrobe. Benny Blanco guards the house. You do not need to kill him to loot the watch.",
            dependsOn = { "accept-64-the-forgotten-heirloom" },
            complete = QuestState(64, "complete"),
            route = {
                Point(MAP.WESTFALL, 0.4938, 0.1927, "Benny Blaanco",
                    "Travel to Benny Blaanco."),
            },
        },
        {
            id = "turnin-64-the-forgotten-heirloom",
            kind = "turnin",
            priority = 840,
            text = "Turn in The Forgotten Heirloom to Farmer Furlbrow in The Jansen Stead.",
            dependsOn = { "objective-64-the-forgotten-heirloom" },
            complete = QuestState(64, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.5994, 0.1941, "Farmer Furlbrow",
                    "Travel to Farmer Furlbrow."),
            },
        },
        {
            id = "objective-9-the-killing-fields",
            kind = "objective",
            priority = 850,
            text = "Kill 20 Harvest Watcher in the 3 farms and also collect 5 Flask of Oil for a later quest.",
            dependsOn = { "accept-9-the-killing-fields" },
            complete = QuestState(9, "complete"),
            route = {
                Point(MAP.WESTFALL, 0.5341, 0.3197, "Harvest Watcher",
                    "Travel to Harvest Watcher."),
            },
        },
        {
            id = "turnin-9-the-killing-fields",
            kind = "turnin",
            priority = 860,
            text = "Turn in The Killing Fields to Farmer Saldean in Saldean's Farm.",
            dependsOn = { "objective-9-the-killing-fields" },
            complete = QuestState(9, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.5599, 0.3128, "Farmer Saldean",
                    "Travel to Farmer Saldean."),
            },
        },
        {
            id = "objective-13-the-people-s-militia",
            kind = "objective",
            priority = 870,
            text = "Kill 15 Defias Pillager and Defias Looter in Moonbrook.",
            dependsOn = { "accept-13-the-people-s-militia" },
            complete = QuestState(13, "complete"),
            route = {
                Point(MAP.WESTFALL, 0.4401, 0.6947, "Defias Pillager",
                    "Travel to Defias Pillager."),
            },
        },
        {
            id = "turnin-13-the-people-s-militia",
            kind = "turnin",
            priority = 880,
            text = "Turn in The People's Militia to Marshal Gryan Stoutmantle in Sentinel Hill.",
            dependsOn = { "objective-13-the-people-s-militia" },
            complete = QuestState(13, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.5632, 0.4755, "Marshal Gryan Stoutmantle",
                    "Travel to Marshal Gryan Stoutmantle."),
            },
        },
        {
            id = "accept-14-the-people-s-militia",
            kind = "accept",
            priority = 890,
            text = "Accept The People's Militia from Marshal Gryan Stoutmantle in Sentinel Hill.",
            complete = QuestState(14, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.5632, 0.4755, "Marshal Gryan Stoutmantle",
                    "Travel to Marshal Gryan Stoutmantle."),
            },
        },
        {
            id = "accept-65-the-defias-brotherhood",
            kind = "accept",
            priority = 900,
            text = "Accept The Defias Brotherhood from Marshal Gryan Stoutmantle in Sentinel Hill.",
            complete = QuestState(65, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.5633, 0.4752, "Marshal Gryan Stoutmantle",
                    "Travel to Marshal Gryan Stoutmantle."),
            },
        },
        {
            id = "accept-244-encroaching-gnolls",
            kind = "accept",
            priority = 910,
            text = "Accept Encroaching Gnolls from Watch Captain Parker in Three Corners.",
            complete = QuestState(244, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.1532, 0.7142, "Watch Captain Parker",
                    "Travel to Watch Captain Parker."),
            },
        },
        {
            id = "turnin-244-encroaching-gnolls",
            kind = "turnin",
            priority = 920,
            text = "Turn in Encroaching Gnolls to Deputy Feldon in Redridge Mountains.",
            dependsOn = { "accept-244-encroaching-gnolls" },
            complete = QuestState(244, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.3074, 0.6015, "Deputy Feldon",
                    "Travel to Deputy Feldon."),
            },
        },
        {
            id = "accept-246-assessing-the-threat",
            kind = "accept",
            priority = 930,
            text = "Accept Assessing the Threat from Deputy Feldon in Redridge Mountains.",
            complete = QuestState(246, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.3068, 0.5981, "Deputy Feldon",
                    "Travel to Deputy Feldon."),
            },
        },
        {
            id = "accept-3741-hilary-s-necklace",
            kind = "accept",
            priority = 940,
            text = "Accept Hilary's Necklace from Shawn in Lake Everstill.",
            complete = QuestState(3741, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.2930, 0.5362, "Shawn",
                    "Travel to Shawn."),
            },
        },
        {
            id = "objective-3741-hilary-s-necklace",
            kind = "objective",
            priority = 950,
            text = "Find Nida's Necklace inside a mud pile underwater in the lake, check around each waypoint.",
            dependsOn = { "accept-3741-hilary-s-necklace" },
            complete = QuestState(3741, "complete"),
            route = {
                Point(MAP.REDRIDGE, 0.3670, 0.5430, "Hilary's Necklace",
                    "Travel to Hilary's Necklace."),
            },
        },
        {
            id = "turnin-3741-hilary-s-necklace",
            kind = "turnin",
            priority = 960,
            text = "Turn in Hilary's Necklace to Nida in Lake Everstill.",
            dependsOn = { "objective-3741-hilary-s-necklace" },
            complete = QuestState(3741, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.2918, 0.5349, "Nida",
                    "Travel to Nida."),
            },
        },
        {
            id = "accept-118-the-price-of-shoes",
            kind = "accept",
            priority = 970,
            text = "Accept The Price of Shoes from Verner Osgood in Lakeshire.",
            complete = QuestState(118, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.3082, 0.4739, "Verner Osgood",
                    "Travel to Verner Osgood."),
            },
        },
        {
            id = "accept-120-messenger-to-stormwind",
            kind = "accept",
            priority = 980,
            text = "Accept Messenger to Stormwind from Magistrate Solomon in Lakeshire.",
            complete = QuestState(120, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.3001, 0.4433, "Magistrate Solomon",
                    "Travel to Magistrate Solomon."),
            },
        },
        {
            id = "accept-129-a-free-lunch",
            kind = "accept",
            priority = 990,
            text = "Accept A Free Lunch from Darcy Parker in Lakeshire.",
            complete = QuestState(129, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.2667, 0.4420, "Darcy Parker",
                    "Travel to Darcy Parker."),
            },
        },
        {
            id = "accept-116-dry-times",
            kind = "accept",
            priority = 1000,
            text = "Accept Dry Times from Barkeep Daniels in Lakeshire.",
            complete = QuestState(116, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.2695, 0.4389, "Barkeep Daniels",
                    "Travel to Barkeep Daniels."),
            },
        },
        {
            id = "turnin-65-the-defias-brotherhood",
            kind = "turnin",
            priority = 1010,
            text = "Turn in The Defias Brotherhood to Wiley the Black in Lakeshire.",
            dependsOn = { "accept-65-the-defias-brotherhood" },
            complete = QuestState(65, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.2665, 0.4518, "Wiley the Black",
                    "Travel to Wiley the Black."),
            },
        },
        {
            id = "accept-132-the-defias-brotherhood",
            kind = "accept",
            priority = 1020,
            text = "Accept The Defias Brotherhood from Wiley the Black in Lakeshire.",
            complete = QuestState(132, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.2665, 0.4518, "Wiley the Black",
                    "Travel to Wiley the Black."),
            },
        },
        {
            id = "turnin-132-the-defias-brotherhood",
            kind = "turnin",
            priority = 1030,
            text = "Turn in The Defias Brotherhood to Marshal Gryan Stoutmantle in Sentinel Hill.",
            dependsOn = { "accept-132-the-defias-brotherhood" },
            complete = QuestState(132, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.5628, 0.4753, "Marshal Gryan Stoutmantle",
                    "Travel to Marshal Gryan Stoutmantle."),
            },
        },
        {
            id = "accept-135-the-defias-brotherhood",
            kind = "accept",
            priority = 1040,
            text = "Accept The Defias Brotherhood from Marshal Gryan Stoutmantle in Sentinel Hill.",
            complete = QuestState(135, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.5628, 0.4753, "Marshal Gryan Stoutmantle",
                    "Travel to Marshal Gryan Stoutmantle."),
            },
        },
        {
            id = "objective-116-2-cask-of-merlot",
            kind = "objective",
            priority = 1050,
            text = "Buy Cask of Merlot from Roberto Pupellyverbos in Valley Of Heroes.",
            dependsOn = { "accept-116-dry-times" },
            complete = QuestObjective(116, 2),
            route = {
                Point(MAP.STORMWIND, 0.5290, 0.6780, "Roberto Pupellyverbos",
                    "Travel to Roberto Pupellyverbos."),
            },
        },
        {
            id = "turnin-135-the-defias-brotherhood",
            kind = "turnin",
            priority = 1060,
            text = "Turn in The Defias Brotherhood to Master Mathias Shaw in SI:7.",
            dependsOn = { "accept-135-the-defias-brotherhood" },
            complete = QuestState(135, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.7586, 0.5980, "Master Mathias Shaw",
                    "Travel to Master Mathias Shaw."),
            },
        },
        {
            id = "accept-141-the-defias-brotherhood",
            kind = "accept",
            priority = 1070,
            text = "Accept The Defias Brotherhood from Master Mathias Shaw in SI:7.",
            complete = QuestState(141, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.7586, 0.5980, "Master Mathias Shaw",
                    "Travel to Master Mathias Shaw."),
            },
        },
        {
            id = "turnin-120-messenger-to-stormwind",
            kind = "turnin",
            priority = 1080,
            text = "Turn in Messenger to Stormwind to General Marcus Jonathan in Valley Of Heroes.",
            dependsOn = { "accept-120-messenger-to-stormwind" },
            complete = QuestState(120, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.6404, 0.7531, "General Marcus Jonathan",
                    "Travel to General Marcus Jonathan."),
            },
        },
        {
            id = "accept-121-messenger-to-stormwind",
            kind = "accept",
            priority = 1090,
            text = "Accept Messenger to Stormwind from General Marcus Jonathan in Valley Of Heroes.",
            complete = QuestState(121, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.6465, 0.7693, "General Marcus Jonathan",
                    "Travel to General Marcus Jonathan."),
            },
        },
        {
            id = "turnin-118-the-price-of-shoes",
            kind = "turnin",
            priority = 1100,
            text = "Turn in The Price of Shoes to Smith Argus in Goldshire.",
            dependsOn = { "accept-118-the-price-of-shoes" },
            complete = QuestState(118, "completed"),
            route = {
                Point(MAP.ELWYNN, 0.4170, 0.6553, "Smith Argus",
                    "Travel to Smith Argus."),
            },
        },
        {
            id = "accept-119-return-to-verner",
            kind = "accept",
            priority = 1110,
            text = "Accept Return to Verner from Smith Argus in Goldshire.",
            complete = QuestState(119, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNN, 0.4170, 0.6553, "Smith Argus",
                    "Travel to Smith Argus."),
            },
        },
        {
            id = "objective-116-4-skin-of-sweet-rum",
            kind = "objective",
            priority = 1120,
            text = "Buy Skin of Sweet Rum from Barkeep Dobbins in Goldshire.",
            dependsOn = { "accept-116-dry-times" },
            complete = QuestObjective(116, 4),
            route = {
                Point(MAP.ELWYNN, 0.4380, 0.6580, "Barkeep Dobbins",
                    "Travel to Barkeep Dobbins."),
            },
        },
        {
            id = "turnin-119-return-to-verner",
            kind = "turnin",
            priority = 1130,
            text = "Turn in Return to Verner to Verner Osgood in Lakeshire.",
            dependsOn = { "accept-119-return-to-verner" },
            complete = QuestState(119, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.3090, 0.4730, "Verner Osgood",
                    "Travel to Verner Osgood."),
            },
        },
        {
            id = "accept-122-underbelly-scales",
            kind = "accept",
            priority = 1140,
            text = "Accept Underbelly Scales from Verner Osgood in Lakeshire.",
            complete = QuestState(122, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.3049, 0.4802, "Verner Osgood",
                    "Travel to Verner Osgood."),
            },
        },
        {
            id = "turnin-121-messenger-to-stormwind",
            kind = "turnin",
            priority = 1150,
            text = "Turn in Messenger to Stormwind to Magistrate Solomon in Lakeshire.",
            dependsOn = { "accept-121-messenger-to-stormwind" },
            complete = QuestState(121, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.3000, 0.4441, "Magistrate Solomon",
                    "Travel to Magistrate Solomon."),
            },
        },
        {
            id = "accept-143-messenger-to-westfall",
            kind = "accept",
            priority = 1160,
            text = "Accept Messenger to Westfall from Magistrate Solomon in Lakeshire.",
            complete = QuestState(143, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.3000, 0.4441, "Magistrate Solomon",
                    "Travel to Magistrate Solomon."),
            },
        },
        {
            id = "turnin-143-messenger-to-westfall",
            kind = "turnin",
            priority = 1170,
            text = "Turn in Messenger to Westfall to Marshal Gryan Stoutmantle in Sentinel Hill.",
            dependsOn = { "accept-143-messenger-to-westfall" },
            complete = QuestState(143, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.5633, 0.4752, "Marshal Gryan Stoutmantle",
                    "Travel to Marshal Gryan Stoutmantle."),
            },
        },
        {
            id = "accept-144-messenger-to-westfall",
            kind = "accept",
            priority = 1180,
            text = "Accept Messenger to Westfall from Marshal Gryan Stoutmantle in Sentinel Hill.",
            complete = QuestState(144, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.5633, 0.4752, "Marshal Gryan Stoutmantle",
                    "Travel to Marshal Gryan Stoutmantle."),
            },
        },
        {
            id = "turnin-141-the-defias-brotherhood",
            kind = "turnin",
            priority = 1190,
            text = "Turn in The Defias Brotherhood to Marshal Gryan Stoutmantle in Sentinel Hill.",
            dependsOn = { "accept-141-the-defias-brotherhood" },
            complete = QuestState(141, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.5629, 0.4762, "Marshal Gryan Stoutmantle",
                    "Travel to Marshal Gryan Stoutmantle."),
            },
        },
        {
            id = "accept-142-the-defias-brotherhood",
            kind = "accept",
            priority = 1200,
            text = "Accept The Defias Brotherhood from Marshal Gryan Stoutmantle in Sentinel Hill.",
            complete = QuestState(142, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.5629, 0.4762, "Marshal Gryan Stoutmantle",
                    "Travel to Marshal Gryan Stoutmantle."),
            },
        },
        {
            id = "objective-142-the-defias-brotherhood",
            kind = "objective",
            priority = 1210,
            text = "Kill Defias Messenger and collect A Mysterious Message, he should be near the road entrance to Moonbrook.",
            dependsOn = { "accept-142-the-defias-brotherhood" },
            complete = QuestState(142, "complete"),
            route = {
                Point(MAP.WESTFALL, 0.4572, 0.6802, "Defias Messenger",
                    "Travel to Defias Messenger."),
            },
        },
        {
            id = "accept-103-keeper-of-the-flame",
            kind = "accept",
            priority = 1220,
            text = "Accept Keeper of the Flame from Captain Grayson in Westfall Lighthouse.",
            complete = QuestState(103, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.3002, 0.8600, "Captain Grayson",
                    "Travel to Captain Grayson."),
            },
        },
        {
            id = "objective-103-keeper-of-the-flame",
            kind = "objective",
            priority = 1320,
            text = "Kill 20 Harvest Watcher in the 3 farms and collect 5 Flask of Oil for a later quest.",
            dependsOn = { "accept-103-keeper-of-the-flame" },
            complete = QuestState(103, "complete"),
            route = {
                Point(MAP.WESTFALL, 0.5341, 0.3197, "Harvest Watcher",
                    "Travel to Harvest Watcher."),
            },
        },
        {
            id = "turnin-103-keeper-of-the-flame",
            kind = "turnin",
            priority = 1330,
            text = "Turn in Keeper of the Flame to Captain Grayson in Westfall Lighthouse.",
            dependsOn = { "objective-103-keeper-of-the-flame" },
            complete = QuestState(103, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.2997, 0.8598, "Captain Grayson",
                    "Travel to Captain Grayson."),
            },
        },
        {
            id = "turnin-136-captain-sander-s-hidden-treasure",
            kind = "turnin",
            priority = 1340,
            text = "Turn in Captain Sander's Hidden Treasure in Longshore.",
            dependsOn = { "objective-136-captain-sanders-treasure-map" },
            complete = QuestState(136, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.2591, 0.4772, "Longshore",
                    "Travel to Longshore."),
            },
        },
        {
            id = "accept-138-captain-sander-s-hidden-treasure",
            kind = "accept",
            priority = 1350,
            text = "Accept Captain Sander's Hidden Treasure in Longshore.",
            complete = QuestState(138, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.2700, 0.4829, "Longshore",
                    "Travel to Longshore."),
            },
        },
        {
            id = "turnin-138-captain-sander-s-hidden-treasure",
            kind = "turnin",
            priority = 1360,
            text = "Turn in Captain Sander's Hidden Treasure.",
            dependsOn = { "accept-138-captain-sander-s-hidden-treasure" },
            complete = QuestState(138, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.4047, 0.4790, "Captain Sander's Hidden Treasure",
                    "Travel to Captain Sander's Hidden Treasure."),
            },
        },
        {
            id = "accept-139-captain-sander-s-hidden-treasure",
            kind = "accept",
            priority = 1370,
            text = "Accept Captain Sander's Hidden Treasure.",
            complete = QuestState(139, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.4048, 0.4764, "Captain Sander's Hidden Treasure",
                    "Travel to Captain Sander's Hidden Treasure."),
            },
        },
        {
            id = "turnin-139-captain-sander-s-hidden-treasure",
            kind = "turnin",
            priority = 1380,
            text = "Turn in Captain Sander's Hidden Treasure in Jangolode Mine.",
            dependsOn = { "accept-139-captain-sander-s-hidden-treasure" },
            complete = QuestState(139, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.4068, 0.1706, "Jangolode Mine",
                    "Travel to Jangolode Mine."),
            },
        },
        {
            id = "accept-140-captain-sander-s-hidden-treasure",
            kind = "accept",
            priority = 1390,
            text = "Accept Captain Sander's Hidden Treasure in Jangolode Mine.",
            complete = QuestState(140, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.4068, 0.1706, "Jangolode Mine",
                    "Travel to Jangolode Mine."),
            },
        },
        {
            id = "turnin-140-captain-sander-s-hidden-treasure",
            kind = "turnin",
            priority = 1400,
            text = "Turn in Captain Sander's Hidden Treasure in Longshore.",
            dependsOn = { "accept-140-captain-sander-s-hidden-treasure" },
            complete = QuestState(140, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.2600, 0.1694, "Longshore",
                    "Travel to Longshore."),
            },
        },
        {
            id = "turnin-142-the-defias-brotherhood",
            kind = "turnin",
            priority = 1410,
            text = "Turn in The Defias Brotherhood to Marshal Gryan Stoutmantle in Sentinel Hill.",
            dependsOn = { "objective-142-the-defias-brotherhood" },
            complete = QuestState(142, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.5629, 0.4760, "Marshal Gryan Stoutmantle",
                    "Travel to Marshal Gryan Stoutmantle."),
            },
        },
        {
            id = "accept-155-the-defias-brotherhood",
            kind = "accept",
            priority = 1420,
            text = "Accept The Defias Brotherhood from The Defias Traitor in Sentinel Hill.",
            complete = QuestState(155, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.5629, 0.4760, "The Defias Traitor",
                    "Travel to The Defias Traitor."),
            },
        },
        {
            id = "objective-155-the-defias-brotherhood",
            kind = "objective",
            priority = 1430,
            text = "Escort the Defias Traitor to discover where VanCleef is hiding. Near the fountain in Moonbrook he pulls several enemies. This is an elite. Bring a group.",
            dependsOn = { "accept-155-the-defias-brotherhood" },
            complete = QuestState(155, "complete"),
            route = {
                Point(MAP.WESTFALL, 0.4257, 0.7127, "The Defias Traitor",
                    "Travel to The Defias Traitor."),
            },
        },
        {
            id = "turnin-117-thunderbrew",
            kind = "turnin",
            priority = 1440,
            text = "Turn in Thunderbrew to Grimbooze Thunderbrew in The Dagger Hills. This is an elite. Bring a group.",
            complete = QuestState(117, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.4465, 0.8027, "Grimbooze Thunderbrew",
                    "Travel to Grimbooze Thunderbrew."),
            },
        },
        {
            id = "objective-116-1-keg-of-thunderbrew-lager",
            kind = "objective",
            priority = 1450,
            text = "You should receive from Grimbooze Thunderbrew by turning in 'Thunderbrew' quest. This is an elite. Bring a group.",
            dependsOn = { "accept-116-dry-times" },
            complete = QuestObjective(116, 1),
            route = {
                Point(MAP.WESTFALL, 0.4465, 0.8027, "Grimbooze Thunderbrew",
                    "Travel to Grimbooze Thunderbrew."),
            },
        },
        {
            id = "accept-152-the-coast-isnt-clear",
            kind = "accept",
            priority = 1451,
            conditions = {
                all = {
                    { level = { min = 19 } },
                },
            },
            text = "Accept The Coast Isn't Clear from Captain Grayson.",
            complete = QuestState(152, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.300, 0.860, "Captain Grayson",
                    "Travel to Captain Grayson."),
            },
        },
        {
            id = "objective-152-the-coast-isnt-clear-1",
            kind = "objective",
            priority = 1452,
            conditions = {
                all = {
                    { level = { min = 19 } },
                },
            },
            text = "The Coast Isn't Clear: Murloc Coastrunner.",
            dependsOn = { "accept-152-the-coast-isnt-clear" },
            complete = QuestObjective(152, 1, "Murloc Coastrunner"),
            route = {
                Point(MAP.WESTFALL, 0.300, 0.860, "Captain Grayson",
                    "Travel to Captain Grayson."),
            },
        },
        {
            id = "objective-152-the-coast-isnt-clear-2",
            kind = "objective",
            priority = 1453,
            conditions = {
                all = {
                    { level = { min = 19 } },
                },
            },
            text = "The Coast Isn't Clear: Murloc Warrior.",
            dependsOn = { "accept-152-the-coast-isnt-clear" },
            complete = QuestObjective(152, 2, "Murloc Warrior"),
            route = {
                Point(MAP.WESTFALL, 0.300, 0.860, "Captain Grayson",
                    "Travel to Captain Grayson."),
            },
        },
        {
            id = "objective-152-the-coast-isnt-clear-3",
            kind = "objective",
            priority = 1454,
            conditions = {
                all = {
                    { level = { min = 19 } },
                },
            },
            text = "The Coast Isn't Clear: Murloc Tidehunter.",
            dependsOn = { "accept-152-the-coast-isnt-clear" },
            complete = QuestObjective(152, 3, "Murloc Tidehunter"),
            route = {
                Point(MAP.WESTFALL, 0.300, 0.860, "Captain Grayson",
                    "Travel to Captain Grayson."),
            },
        },
        {
            id = "objective-152-the-coast-isnt-clear-4",
            kind = "objective",
            priority = 1455,
            conditions = {
                all = {
                    { level = { min = 19 } },
                },
            },
            text = "The Coast Isn't Clear: Murloc Oracle.",
            dependsOn = { "accept-152-the-coast-isnt-clear" },
            complete = QuestObjective(152, 4, "Murloc Oracle"),
            route = {
                Point(MAP.WESTFALL, 0.300, 0.860, "Captain Grayson",
                    "Travel to Captain Grayson."),
            },
        },
        {
            id = "turnin-152-the-coast-isnt-clear",
            kind = "turnin",
            priority = 1456,
            conditions = {
                all = {
                    { level = { min = 19 } },
                },
            },
            text = "Turn in The Coast Isn't Clear to Captain Grayson.",
            dependsOn = { "objective-152-the-coast-isnt-clear-4" },
            complete = QuestState(152, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.300, 0.860, "Captain Grayson",
                    "Travel to Captain Grayson."),
            },
        },
        {
            id = "accept-104-the-coastal-menace",
            kind = "accept",
            priority = 1457,
            conditions = {
                all = {
                    { level = { min = 20 } },
                },
            },
            text = "Accept The Coastal Menace from Captain Grayson.",
            complete = QuestState(104, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.300, 0.860, "Captain Grayson",
                    "Travel to Captain Grayson."),
            },
        },
        {
            id = "objective-104-the-coastal-menace-1",
            kind = "objective",
            priority = 1458,
            conditions = {
                all = {
                    { level = { min = 20 } },
                },
            },
            text = "The Coastal Menace: Scale of Old Murk-Eye.",
            dependsOn = { "accept-104-the-coastal-menace" },
            complete = QuestObjective(104, 1, "Scale of Old Murk-Eye"),
            route = {
                Point(MAP.WESTFALL, 0.342, 0.838, "Old Murk-Eye",
                    "Travel to Old Murk-Eye."),
            },
        },
        {
            id = "turnin-104-the-coastal-menace",
            kind = "turnin",
            priority = 1459,
            conditions = {
                all = {
                    { level = { min = 20 } },
                },
            },
            text = "Turn in The Coastal Menace to Captain Grayson.",
            dependsOn = { "objective-104-the-coastal-menace-1" },
            complete = QuestState(104, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.300, 0.860, "Captain Grayson",
                    "Travel to Captain Grayson."),
            },
        },
        {
            id = "accept-49-sweet-amber",
            kind = "accept",
            priority = 1490,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 44 } },
                },
            },
            dependsOn = { "turnin-48-sweet-amber" },
            text = "Accept Sweet Amber from Grimbooze Thunderbrew.",
            complete = QuestState(49, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.446, 0.802, "Grimbooze Thunderbrew",
                    "Travel to Grimbooze Thunderbrew."),
            },
        },
        {
            id = "accept-48-sweet-amber",
            kind = "accept",
            priority = 1491,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 44 } },
                },
            },
            text = "Accept Sweet Amber from Grimbooze Thunderbrew.",
            complete = QuestState(48, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.446, 0.802, "Grimbooze Thunderbrew",
                    "Travel to Grimbooze Thunderbrew."),
            },
        },
        {
            id = "objective-48-sweet-amber-1",
            kind = "objective",
            priority = 1492,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 44 } },
                },
            },
            text = "Sweet Amber: Holy Spring Water.",
            dependsOn = { "accept-48-sweet-amber" },
            complete = QuestObjective(48, 1, "Holy Spring Water"),
            route = {
                Point(MAP.WESTFALL, 0.446, 0.802, "Grimbooze Thunderbrew",
                    "Travel to Grimbooze Thunderbrew."),
            },
        },
        {
            id = "turnin-48-sweet-amber",
            kind = "turnin",
            priority = 1493,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 44 } },
                },
            },
            text = "Turn in Sweet Amber to Grimbooze Thunderbrew.",
            dependsOn = { "objective-48-sweet-amber-1" },
            complete = QuestState(48, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.446, 0.802, "Grimbooze Thunderbrew",
                    "Travel to Grimbooze Thunderbrew."),
            },
        },
        {
            id = "objective-49-sweet-amber-1",
            kind = "objective",
            priority = 1500,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 44 } },
                },
            },
            text = "Sweet Amber: Sack of Barley.",
            dependsOn = { "accept-49-sweet-amber" },
            complete = QuestObjective(49, 1, "Sack of Barley"),
            route = {
                Point(MAP.WESTFALL, 0.446, 0.802, "Grimbooze Thunderbrew",
                    "Travel to Grimbooze Thunderbrew."),
            },
        },
        {
            id = "objective-49-sweet-amber-2",
            kind = "objective",
            priority = 1510,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 44 } },
                },
            },
            text = "Sweet Amber: Sack of Corn.",
            dependsOn = { "accept-49-sweet-amber" },
            complete = QuestObjective(49, 2, "Sack of Corn"),
            route = {
                Point(MAP.WESTFALL, 0.446, 0.802, "Grimbooze Thunderbrew",
                    "Travel to Grimbooze Thunderbrew."),
            },
        },
        {
            id = "objective-49-sweet-amber-3",
            kind = "objective",
            priority = 1520,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 44 } },
                },
            },
            text = "Sweet Amber: Sack of Rye.",
            dependsOn = { "accept-49-sweet-amber" },
            complete = QuestObjective(49, 3, "Sack of Rye"),
            route = {
                Point(MAP.WESTFALL, 0.446, 0.802, "Grimbooze Thunderbrew",
                    "Travel to Grimbooze Thunderbrew."),
            },
        },
        {
            id = "turnin-49-sweet-amber",
            kind = "turnin",
            priority = 1530,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 44 } },
                },
            },
            text = "Turn in Sweet Amber to Grimbooze Thunderbrew.",
            dependsOn = { "objective-49-sweet-amber-3" },
            complete = QuestState(49, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.446, 0.802, "Grimbooze Thunderbrew",
                    "Travel to Grimbooze Thunderbrew."),
            },
        },
        {
            id = "accept-50-sweet-amber",
            kind = "accept",
            priority = 1540,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 44 } },
                },
            },
            dependsOn = { "turnin-49-sweet-amber" },
            text = "Accept Sweet Amber from Grimbooze Thunderbrew.",
            complete = QuestState(50, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.446, 0.802, "Grimbooze Thunderbrew",
                    "Travel to Grimbooze Thunderbrew."),
            },
        },
        {
            id = "objective-50-sweet-amber-1",
            kind = "objective",
            priority = 1550,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 44 } },
                },
            },
            text = "Sweet Amber: Truesilver Bar.",
            dependsOn = { "accept-50-sweet-amber" },
            complete = QuestObjective(50, 1, "Truesilver Bar"),
            route = {
                Point(MAP.WESTFALL, 0.622, 0.390, "Fel Interloper",
                    "Travel to Fel Interloper."),
            },
        },
        {
            id = "turnin-50-sweet-amber",
            kind = "turnin",
            priority = 1560,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 44 } },
                },
            },
            text = "Turn in Sweet Amber to Grimbooze Thunderbrew.",
            dependsOn = { "objective-50-sweet-amber-1" },
            complete = QuestState(50, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.446, 0.802, "Grimbooze Thunderbrew",
                    "Travel to Grimbooze Thunderbrew."),
            },
        },
        {
            id = "accept-51-sweet-amber",
            kind = "accept",
            priority = 1570,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 44 } },
                },
            },
            dependsOn = { "turnin-50-sweet-amber" },
            text = "Accept Sweet Amber from Grimbooze Thunderbrew.",
            complete = QuestState(51, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.446, 0.802, "Grimbooze Thunderbrew",
                    "Travel to Grimbooze Thunderbrew."),
            },
        },
        {
            id = "objective-51-sweet-amber-1",
            kind = "objective",
            priority = 1580,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 44 } },
                },
            },
            text = "Sweet Amber: A Sycamore Branch.",
            dependsOn = { "accept-51-sweet-amber" },
            complete = QuestObjective(51, 1, "A Sycamore Branch"),
            route = {
                Point(MAP.WESTFALL, 0.446, 0.802, "Grimbooze Thunderbrew",
                    "Travel to Grimbooze Thunderbrew."),
            },
        },
        {
            id = "turnin-51-sweet-amber",
            kind = "turnin",
            priority = 1590,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 44 } },
                },
            },
            text = "Turn in Sweet Amber to Grimbooze Thunderbrew.",
            dependsOn = { "objective-51-sweet-amber-1" },
            complete = QuestState(51, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.446, 0.802, "Grimbooze Thunderbrew",
                    "Travel to Grimbooze Thunderbrew."),
            },
        },
        {
            id = "accept-53-sweet-amber",
            kind = "accept",
            priority = 1600,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 44 } },
                },
            },
            dependsOn = { "turnin-51-sweet-amber" },
            text = "Accept Sweet Amber from Grimbooze Thunderbrew.",
            complete = QuestState(53, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.446, 0.802, "Grimbooze Thunderbrew",
                    "Travel to Grimbooze Thunderbrew."),
            },
        },
        {
            id = "objective-53-sweet-amber-1",
            kind = "objective",
            priority = 1610,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 44 } },
                },
            },
            text = "Sweet Amber: Bundle of Charred Oak.",
            dependsOn = { "accept-53-sweet-amber" },
            complete = QuestObjective(53, 1, "Bundle of Charred Oak"),
            route = {
                Point(MAP.WESTFALL, 0.446, 0.802, "Grimbooze Thunderbrew",
                    "Travel to Grimbooze Thunderbrew."),
            },
        },
        {
            id = "turnin-53-sweet-amber",
            kind = "turnin",
            priority = 1620,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 44 } },
                },
            },
            text = "Turn in Sweet Amber to Grimbooze Thunderbrew.",
            dependsOn = { "objective-53-sweet-amber-1" },
            complete = QuestState(53, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.446, 0.802, "Grimbooze Thunderbrew",
                    "Travel to Grimbooze Thunderbrew."),
            },
        },
        {
            id = "objective-14-the-people-s-militia",
            kind = "objective",
            priority = 1630,
            text = "Kill the required Defias enemies in The Dagger Hills.",
            dependsOn = { "accept-14-the-people-s-militia" },
            complete = QuestState(14, "complete"),
            route = {
                Point(MAP.WESTFALL, 0.4960, 0.7719, "Defias Knuckleduster",
                    "Travel to Defias Knuckleduster."),
            },
        },
        {
            id = "turnin-14-the-people-s-militia",
            kind = "turnin",
            priority = 1640,
            text = "Turn in The People's Militia to Marshal Gryan Stoutmantle in Sentinel Hill.",
            dependsOn = { "objective-14-the-people-s-militia" },
            complete = QuestState(14, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.5630, 0.4755, "Marshal Gryan Stoutmantle",
                    "Travel to Marshal Gryan Stoutmantle."),
            },
        },
        {
            id = "turnin-155-the-defias-brotherhood",
            kind = "turnin",
            priority = 1650,
            text = "Turn in The Defias Brotherhood to Marshal Gryan Stoutmantle in Sentinel Hil.",
            dependsOn = { "objective-155-the-defias-brotherhood" },
            complete = QuestState(155, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.5629, 0.4761, "Marshal Gryan Stoutmantle",
                    "Travel to Marshal Gryan Stoutmantle."),
            },
        },
        {
            id = "turnin-144-messenger-to-westfall",
            kind = "turnin",
            priority = 1660,
            text = "Turn in Messenger to Westfall to Magistrate Solomon in Lakeshire.",
            dependsOn = { "accept-144-messenger-to-westfall" },
            complete = QuestState(144, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.3000, 0.4441, "Magistrate Solomon",
                    "Travel to Magistrate Solomon."),
            },
        },
        {
            id = "objective-122-underbelly-scales",
            kind = "objective",
            priority = 1670,
            text = "Kill Black Dragon Whelp and collect 6 Underbelly Whelp Scale in Lakeridge Highway.",
            dependsOn = { "accept-122-underbelly-scales" },
            complete = QuestState(122, "complete"),
            route = {
                Point(MAP.REDRIDGE, 0.5810, 0.7610, "Black Dragon Whelp",
                    "Travel to Black Dragon Whelp."),
            },
        },
        {
            id = "objective-246-assessing-the-threat",
            kind = "objective",
            priority = 1680,
            text = "Kill 10 Redridge Mongrel and 6 Redridge Poacher which can be found to the south in Lakeridge Highway.",
            dependsOn = { "accept-246-assessing-the-threat" },
            complete = QuestState(246, "complete"),
            route = {
                Point(MAP.REDRIDGE, 0.2993, 0.8080, "Redridge Mongrel",
                    "Travel to Redridge Mongrel."),
            },
        },
        {
            id = "turnin-129-a-free-lunch",
            kind = "turnin",
            priority = 1690,
            text = "Turn in A Free Lunch to Watch Captain Parker in Three Corners.",
            dependsOn = { "accept-129-a-free-lunch" },
            complete = QuestState(129, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.1543, 0.7132, "Watch Captain Parker",
                    "Travel to Watch Captain Parker."),
            },
        },
        {
            id = "accept-130-visit-the-herbalist",
            kind = "accept",
            priority = 1700,
            text = "Accept Visit the Herbalist from Tarantula in Three Corners.",
            complete = QuestState(130, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.1543, 0.7132, "Tarantula",
                    "Travel to Tarantula."),
            },
        },
        {
            id = "objective-116-3-bottle-of-moonshine",
            kind = "objective",
            priority = 1710,
            text = "Buy Bottle of Moonshine from Barkeep Hann in Darkshire.",
            dependsOn = { "accept-116-dry-times" },
            complete = QuestObjective(116, 3),
            route = {
                Point(MAP.DUSKWOOD, 0.7368, 0.4408, "Barkeep Hann",
                    "Travel to Barkeep Hann."),
            },
        },
        {
            id = "turnin-246-assessing-the-threat",
            kind = "turnin",
            priority = 1720,
            text = "Turn in Assessing the Threat to Deputy Feldon in Redridge Mountains.",
            dependsOn = { "objective-246-assessing-the-threat" },
            complete = QuestState(246, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.3075, 0.5999, "Deputy Feldon",
                    "Travel to Deputy Feldon."),
            },
        },
        {
            id = "turnin-122-underbelly-scales",
            kind = "turnin",
            priority = 1730,
            text = "Turn in Underbelly Scales to Verner Osgood in Lakeshire.",
            dependsOn = { "objective-122-underbelly-scales" },
            complete = QuestState(122, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.3102, 0.4732, "Verner Osgood",
                    "Travel to Verner Osgood."),
            },
        },
        {
            id = "turnin-116-dry-times",
            kind = "turnin",
            priority = 1740,
            text = "Turn in Dry Times to Barkeep Daniels in Lakeshire.",
            dependsOn = { "objective-116-harvest-golem", "objective-116-2-cask-of-merlot", "objective-116-4-skin-of-sweet-rum", "objective-116-1-keg-of-thunderbrew-lager", "objective-116-3-bottle-of-moonshine" },
            complete = QuestState(116, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.2650, 0.4411, "Barkeep Daniels",
                    "Travel to Barkeep Daniels."),
            },
        },
        {
            id = "turnin-130-visit-the-herbalist",
            kind = "turnin",
            priority = 1750,
            text = "Turn in Visit the Herbalist to Martie Jainrose in Lakeshire.",
            dependsOn = { "accept-130-visit-the-herbalist" },
            complete = QuestState(130, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.2189, 0.4637, "Martie Jainrose",
                    "Travel to Martie Jainrose."),
            },
        },
        {
            id = "accept-131-delivering-daffodils",
            kind = "accept",
            priority = 1760,
            text = "Accept Delivering Daffodils from Martie Jainrose in Lakeshire.",
            complete = QuestState(131, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.2189, 0.4637, "Martie Jainrose",
                    "Travel to Martie Jainrose."),
            },
        },
        {
            id = "turnin-131-delivering-daffodils",
            kind = "turnin",
            priority = 1770,
            text = "Turn in Delivering Daffodils to Darcy Parker in Lakeshire.",
            dependsOn = { "accept-131-delivering-daffodils" },
            complete = QuestState(131, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.2677, 0.4431, "Darcy Parker",
                    "Travel to Darcy Parker."),
            },
        },
        {
            id = "turnin-98021-journey-to-sentinel-hill",
            kind = "turnin",
            priority = 1780,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 13 } },
                },
            },
            text = "Accept Journey to Sentinel Hill from Highlord Bolvar Fordragon, then turn it in to Gryan Stoutmantle.",
            complete = QuestState(98021, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.562, 0.476, "Gryan Stoutmantle",
                    "Travel to Gryan Stoutmantle in Stormwind City."),
            },
        },
        {
            id = "accept-92909-harvesting-the-harvesters",
            kind = "accept",
            priority = 1790,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 15 } },
                },
            },
            text = "Accept Harvesting the Harvesters from Ozwin Ironsprocket.",
            complete = QuestState(92909, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.516, 0.322, "Ozwin Ironsprocket",
                    "Travel to Ozwin Ironsprocket."),
            },
        },
        {
            id = "accept-92910-harvesting-the-harvesters",
            kind = "accept",
            priority = 1800,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 15 } },
                },
            },
            text = "Accept Harvesting the Harvesters from Ozwin Ironsprocket.",
            complete = QuestState(92910, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.516, 0.322, "Ozwin Ironsprocket",
                    "Travel to Ozwin Ironsprocket."),
            },
        },
        {
            id = "accept-92911-harvesting-the-harvesters",
            kind = "accept",
            priority = 1810,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 15 } },
                },
            },
            text = "Accept Harvesting the Harvesters from Ozwin Ironsprocket.",
            complete = QuestState(92911, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.516, 0.322, "Ozwin Ironsprocket",
                    "Travel to Ozwin Ironsprocket."),
            },
        },
        {
            id = "objective-92911-harvesting-the-harvesters-1",
            kind = "objective",
            priority = 1820,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 15 } },
                },
            },
            text = "Harvesting the Harvesters: Golem Isospring.",
            dependsOn = { "accept-92911-harvesting-the-harvesters" },
            complete = QuestObjective(92911, 1, "Golem Isospring"),
            route = {
                Point(MAP.WESTFALL, 0.564, 0.350, "Harvest Golem",
                    "Travel to Harvest Golem."),
            },
        },
        {
            id = "objective-92911-harvesting-the-harvesters-2",
            kind = "objective",
            priority = 1830,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 15 } },
                },
            },
            text = "Harvesting the Harvesters: Copper Modulator.",
            dependsOn = { "accept-92911-harvesting-the-harvesters" },
            complete = QuestObjective(92911, 2, "Copper Modulator"),
            route = {
                Point(MAP.WESTFALL, 0.564, 0.350, "Harvest Golem",
                    "Travel to Harvest Golem."),
            },
        },
        {
            id = "objective-92911-harvesting-the-harvesters-3",
            kind = "objective",
            priority = 1840,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 15 } },
                },
            },
            text = "Harvesting the Harvesters: Crude Scope.",
            dependsOn = { "accept-92911-harvesting-the-harvesters" },
            complete = QuestObjective(92911, 3, "Crude Scope"),
            route = {
                Point(MAP.WESTFALL, 0.564, 0.350, "Harvest Golem",
                    "Travel to Harvest Golem."),
            },
        },
        {
            id = "turnin-92911-harvesting-the-harvesters",
            kind = "turnin",
            priority = 1850,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 15 } },
                },
            },
            text = "Turn in Harvesting the Harvesters to Ozwin Ironsprocket.",
            dependsOn = { "objective-92911-harvesting-the-harvesters-3" },
            complete = QuestState(92911, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.516, 0.322, "Ozwin Ironsprocket",
                    "Travel to Ozwin Ironsprocket."),
            },
        },
        {
            id = "objective-92910-harvesting-the-harvesters-1",
            kind = "objective",
            priority = 1860,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 15 } },
                },
            },
            text = "Harvesting the Harvesters: Precessive Autocognition Assembly.",
            dependsOn = { "accept-92910-harvesting-the-harvesters" },
            complete = QuestObjective(92910, 1, "Precessive Autocognition Assembly"),
            route = {
                Point(MAP.WESTFALL, 0.516, 0.322, "Ozwin Ironsprocket",
                    "Travel to Ozwin Ironsprocket."),
            },
        },
        {
            id = "turnin-92910-harvesting-the-harvesters",
            kind = "turnin",
            priority = 1870,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 15 } },
                },
            },
            text = "Turn in Harvesting the Harvesters to Ozwin Ironsprocket.",
            dependsOn = { "objective-92910-harvesting-the-harvesters-1" },
            complete = QuestState(92910, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.516, 0.322, "Ozwin Ironsprocket",
                    "Travel to Ozwin Ironsprocket."),
            },
        },
        {
            id = "objective-92909-harvesting-the-harvesters-1",
            kind = "objective",
            priority = 1880,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 15 } },
                },
            },
            text = "Harvesting the Harvesters: Golem Isospring.",
            dependsOn = { "accept-92909-harvesting-the-harvesters" },
            complete = QuestObjective(92909, 1, "Golem Isospring"),
            route = {
                Point(MAP.WESTFALL, 0.564, 0.350, "Harvest Golem",
                    "Travel to Harvest Golem."),
            },
        },
        {
            id = "objective-92909-harvesting-the-harvesters-2",
            kind = "objective",
            priority = 1890,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 15 } },
                },
            },
            text = "Harvesting the Harvesters: Harvester Gyrostabilizer.",
            dependsOn = { "accept-92909-harvesting-the-harvesters" },
            complete = QuestObjective(92909, 2, "Harvester Gyrostabilizer"),
            route = {
                Point(MAP.WESTFALL, 0.522, 0.556, "Decrepit Harvester",
                    "Travel to Decrepit Harvester."),
            },
        },
        {
            id = "turnin-92909-harvesting-the-harvesters",
            kind = "turnin",
            priority = 1900,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 15 } },
                },
            },
            text = "Turn in Harvesting the Harvesters to Ozwin Ironsprocket.",
            dependsOn = { "objective-92909-harvesting-the-harvesters-2" },
            complete = QuestState(92909, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.516, 0.322, "Ozwin Ironsprocket",
                    "Travel to Ozwin Ironsprocket."),
            },
        },
        {
            id = "accept-92742-testing-the-wells",
            kind = "accept",
            priority = 1910,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 12 } },
                },
            },
            text = "Accept Testing the Wells from Alba Fairmoon.",
            complete = QuestState(92742, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.524, 0.530, "Alba Fairmoon",
                    "Travel to Alba Fairmoon."),
            },
        },
        {
            id = "accept-92744-murloc-gills",
            kind = "accept",
            priority = 1920,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 12 } },
                },
            },
            text = "Accept Murloc Gills from Alba Fairmoon.",
            complete = QuestState(92744, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.524, 0.530, "Alba Fairmoon",
                    "Travel to Alba Fairmoon."),
            },
        },
        {
            id = "accept-92745-the-state-of-the-mines",
            kind = "accept",
            priority = 1930,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 14 } },
                },
            },
            text = "Accept The State of the Mines from Alba Fairmoon.",
            complete = QuestState(92745, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.524, 0.530, "Alba Fairmoon",
                    "Travel to Alba Fairmoon."),
            },
        },
        {
            id = "accept-92747-moonbrook-espionage",
            kind = "accept",
            priority = 1940,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 16 } },
                },
            },
            text = "Accept Moonbrook Espionage from Alba Fairmoon.",
            complete = QuestState(92747, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.524, 0.530, "Alba Fairmoon",
                    "Travel to Alba Fairmoon."),
            },
        },
        {
            id = "accept-92753-destruction-in-deadmines",
            kind = "accept",
            priority = 1950,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 18 } },
                },
            },
            text = "Accept Destruction in Deadmines from Alba Fairmoon.",
            complete = QuestState(92753, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.524, 0.530, "Alba Fairmoon",
                    "Travel to Alba Fairmoon."),
            },
        },
        {
            id = "accept-92819-destruction-in-deadmines",
            kind = "accept",
            priority = 1960,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 18 } },
                },
            },
            text = "Accept Destruction in Deadmines from Alba Fairmoon.",
            complete = QuestState(92819, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.386, 0.836, "Alba Fairmoon",
                    "Travel to Alba Fairmoon."),
            },
        },
        {
            id = "objective-92819-destruction-in-deadmines-1",
            kind = "objective",
            priority = 1970,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 18 } },
                },
            },
            text = "Destruction in Deadmines: Detonator used.",
            dependsOn = { "accept-92819-destruction-in-deadmines" },
            complete = QuestObjective(92819, 1, "Detonator used"),
            route = {
                Point(MAP.WESTFALL, 0.386, 0.836, "Alba Fairmoon",
                    "Travel to Alba Fairmoon."),
            },
        },
        {
            id = "turnin-92819-destruction-in-deadmines",
            kind = "turnin",
            priority = 1980,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 18 } },
                },
            },
            text = "Turn in Destruction in Deadmines to Alba Fairmoon.",
            dependsOn = { "objective-92819-destruction-in-deadmines-1" },
            complete = QuestState(92819, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.386, 0.836, "Alba Fairmoon",
                    "Travel to Alba Fairmoon."),
            },
        },
        {
            id = "objective-92753-destruction-in-deadmines-1",
            kind = "objective",
            priority = 1990,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 18 } },
                },
            },
            text = "Destruction in Deadmines: Explosives placed.",
            dependsOn = { "accept-92753-destruction-in-deadmines" },
            complete = QuestObjective(92753, 1, "Explosives placed"),
            route = {
                Point(MAP.WESTFALL, 0.524, 0.530, "Alba Fairmoon",
                    "Travel to Alba Fairmoon."),
            },
        },
        {
            id = "objective-92753-destruction-in-deadmines-2",
            kind = "objective",
            priority = 2000,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 18 } },
                },
            },
            text = "Destruction in Deadmines: Extra-Destructive Explosives.",
            dependsOn = { "accept-92753-destruction-in-deadmines" },
            complete = QuestObjective(92753, 2, "Extra-Destructive Explosives"),
            route = {
                Point(MAP.WESTFALL, 0.524, 0.530, "Alba Fairmoon",
                    "Travel to Alba Fairmoon."),
            },
        },
        {
            id = "turnin-92753-destruction-in-deadmines",
            kind = "turnin",
            priority = 2010,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 18 } },
                },
            },
            text = "Turn in Destruction in Deadmines to Alba Fairmoon.",
            dependsOn = { "objective-92753-destruction-in-deadmines-2" },
            complete = QuestState(92753, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.386, 0.836, "Alba Fairmoon",
                    "Travel to Alba Fairmoon."),
            },
        },
        {
            id = "objective-92747-moonbrook-espionage-1",
            kind = "objective",
            priority = 2020,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 16 } },
                },
            },
            text = "Moonbrook Espionage: Suspicious Industrial Supplies.",
            dependsOn = { "accept-92747-moonbrook-espionage" },
            complete = QuestObjective(92747, 1, "Suspicious Industrial Supplies"),
            route = {
                Point(MAP.WESTFALL, 0.524, 0.530, "Alba Fairmoon",
                    "Travel to Alba Fairmoon."),
            },
        },
        {
            id = "turnin-92747-moonbrook-espionage",
            kind = "turnin",
            priority = 2030,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 16 } },
                },
            },
            text = "Turn in Moonbrook Espionage to Alba Fairmoon.",
            dependsOn = { "objective-92747-moonbrook-espionage-1" },
            complete = QuestState(92747, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.524, 0.530, "Alba Fairmoon",
                    "Travel to Alba Fairmoon."),
            },
        },
        {
            id = "objective-92745-the-state-of-the-mines-1",
            kind = "objective",
            priority = 2040,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 14 } },
                },
            },
            text = "The State of the Mines: Kobold Digger.",
            dependsOn = { "accept-92745-the-state-of-the-mines" },
            complete = QuestObjective(92745, 1, "Kobold Digger"),
            route = {
                Point(MAP.WESTFALL, 0.524, 0.530, "Alba Fairmoon",
                    "Travel to Alba Fairmoon."),
            },
        },
        {
            id = "objective-92745-the-state-of-the-mines-2",
            kind = "objective",
            priority = 2050,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 14 } },
                },
            },
            text = "The State of the Mines: Riverpaw Miner.",
            dependsOn = { "accept-92745-the-state-of-the-mines" },
            complete = QuestObjective(92745, 2, "Riverpaw Miner"),
            route = {
                Point(MAP.WESTFALL, 0.524, 0.530, "Alba Fairmoon",
                    "Travel to Alba Fairmoon."),
            },
        },
        {
            id = "turnin-92745-the-state-of-the-mines",
            kind = "turnin",
            priority = 2060,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 14 } },
                },
            },
            text = "Turn in The State of the Mines to Alba Fairmoon.",
            dependsOn = { "objective-92745-the-state-of-the-mines-2" },
            complete = QuestState(92745, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.524, 0.530, "Alba Fairmoon",
                    "Travel to Alba Fairmoon."),
            },
        },
        {
            id = "objective-92744-murloc-gills-1",
            kind = "objective",
            priority = 2070,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 12 } },
                },
            },
            text = "Murloc Gills: Longshore Murloc Gill.",
            dependsOn = { "accept-92744-murloc-gills" },
            complete = QuestObjective(92744, 1, "Longshore Murloc Gill"),
            route = {
                Point(MAP.WESTFALL, 0.562, 0.094, "Murloc Coastrunner",
                    "Travel to Murloc Coastrunner."),
            },
        },
        {
            id = "turnin-92744-murloc-gills",
            kind = "turnin",
            priority = 2080,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in Murloc Gills to Alba Fairmoon.",
            dependsOn = { "objective-92744-murloc-gills-1" },
            complete = QuestState(92744, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.524, 0.530, "Alba Fairmoon",
                    "Travel to Alba Fairmoon."),
            },
        },
        {
            id = "objective-92742-testing-the-wells-1",
            kind = "objective",
            priority = 2090,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 12 } },
                },
            },
            text = "Testing the Wells: Jansen Stead Water Sample.",
            dependsOn = { "accept-92742-testing-the-wells" },
            complete = QuestObjective(92742, 1, "Jansen Stead Water Sample"),
            route = {
                Point(MAP.WESTFALL, 0.524, 0.530, "Alba Fairmoon",
                    "Travel to Alba Fairmoon."),
            },
        },
        {
            id = "objective-92742-testing-the-wells-2",
            kind = "objective",
            priority = 2100,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 12 } },
                },
            },
            text = "Testing the Wells: Molsen Farm Water Sample.",
            dependsOn = { "accept-92742-testing-the-wells" },
            complete = QuestObjective(92742, 2, "Molsen Farm Water Sample"),
            route = {
                Point(MAP.WESTFALL, 0.524, 0.530, "Alba Fairmoon",
                    "Travel to Alba Fairmoon."),
            },
        },
        {
            id = "objective-92742-testing-the-wells-3",
            kind = "objective",
            priority = 2110,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 12 } },
                },
            },
            text = "Testing the Wells: Well Water Sample Kit.",
            dependsOn = { "accept-92742-testing-the-wells" },
            complete = QuestObjective(92742, 3, "Well Water Sample Kit"),
            route = {
                Point(MAP.WESTFALL, 0.524, 0.530, "Alba Fairmoon",
                    "Travel to Alba Fairmoon."),
            },
        },
        {
            id = "turnin-92742-testing-the-wells",
            kind = "turnin",
            priority = 2120,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in Testing the Wells to Alba Fairmoon.",
            dependsOn = { "objective-92742-testing-the-wells-3" },
            complete = QuestState(92742, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.524, 0.530, "Alba Fairmoon",
                    "Travel to Alba Fairmoon."),
            },
        },
        {
            id = "turnin-92748-explosive-consultation",
            kind = "turnin",
            priority = 2130,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 16 } },
                },
            },
            text = "Accept Explosive Consultation from Alba Fairmoon, then turn it in to Sprite Jumpsprocket.",
            complete = QuestState(92748, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.546, 0.080, "Sprite Jumpsprocket",
                    "Travel to Sprite Jumpsprocket."),
            },
        },
        {
            id = "accept-92749-a-dynamite-plan",
            kind = "accept",
            priority = 2140,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 16 } },
                },
            },
            text = "Accept A Dynamite Plan from Sprite Jumpsprocket.",
            complete = QuestState(92749, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.546, 0.080, "Sprite Jumpsprocket",
                    "Travel to Sprite Jumpsprocket in Stormwind City."),
            },
        },
        {
            id = "accept-92752-explosive-consultation",
            kind = "accept",
            priority = 2150,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 16 } },
                },
            },
            text = "Accept Explosive Consultation from Sprite Jumpsprocket.",
            complete = QuestState(92752, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.546, 0.080, "Sprite Jumpsprocket",
                    "Travel to Sprite Jumpsprocket in Stormwind City."),
            },
        },
        {
            id = "objective-92752-explosive-consultation-1",
            kind = "objective",
            priority = 2160,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 16 } },
                },
            },
            text = "Explosive Consultation: Extra-Destructive Explosives.",
            dependsOn = { "accept-92752-explosive-consultation" },
            complete = QuestObjective(92752, 1, "Extra-Destructive Explosives"),
            route = {
                Point(MAP.STORMWIND, 0.546, 0.080, "Sprite Jumpsprocket",
                    "Travel to Sprite Jumpsprocket in Stormwind City."),
            },
        },
        {
            id = "turnin-92752-explosive-consultation",
            kind = "turnin",
            priority = 2170,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 16 } },
                },
            },
            text = "Turn in Explosive Consultation to Alba Fairmoon.",
            dependsOn = { "objective-92752-explosive-consultation-1" },
            complete = QuestState(92752, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.524, 0.530, "Alba Fairmoon",
                    "Travel to Alba Fairmoon in Stormwind City."),
            },
        },
        {
            id = "objective-92749-a-dynamite-plan-1",
            kind = "objective",
            priority = 2180,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 16 } },
                },
            },
            text = "A Dynamite Plan: Coarse Dynamite.",
            dependsOn = { "accept-92749-a-dynamite-plan" },
            complete = QuestObjective(92749, 1, "Coarse Dynamite"),
            route = {
                Point(MAP.STORMWIND, 0.546, 0.080, "Sprite Jumpsprocket",
                    "Travel to Sprite Jumpsprocket in Stormwind City."),
            },
        },
        {
            id = "turnin-92749-a-dynamite-plan",
            kind = "turnin",
            priority = 2190,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 16 } },
                },
            },
            text = "Turn in A Dynamite Plan to Sprite Jumpsprocket.",
            dependsOn = { "objective-92749-a-dynamite-plan-1" },
            complete = QuestState(92749, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.546, 0.080, "Sprite Jumpsprocket",
                    "Travel to Sprite Jumpsprocket in Stormwind City."),
            },
        },
        {
            id = "turnin-92750-detonation-at-a-distance",
            kind = "turnin",
            priority = 2200,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 16 } },
                },
            },
            text = "Accept Detonation at a Distance from Sprite Jumpsprocket, then turn it in to Jasper Fel.",
            complete = QuestState(92750, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.782, 0.588, "Jasper Fel",
                    "Travel to Jasper Fel in Stormwind City."),
            },
        },
        {
            id = "accept-92751-detonation-at-a-distance",
            kind = "accept",
            priority = 2210,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 16 } },
                },
            },
            text = "Accept Detonation at a Distance from Jasper Fel.",
            complete = QuestState(92751, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.782, 0.588, "Jasper Fel",
                    "Travel to Jasper Fel in Stormwind City."),
            },
        },
        {
            id = "objective-92751-detonation-at-a-distance-1",
            kind = "objective",
            priority = 2220,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 16 } },
                },
            },
            text = "Detonation at a Distance: Remote Detonator Kit.",
            dependsOn = { "accept-92751-detonation-at-a-distance" },
            complete = QuestObjective(92751, 1, "Remote Detonator Kit"),
            route = {
                Point(MAP.STORMWIND, 0.782, 0.588, "Jasper Fel",
                    "Travel to Jasper Fel in Stormwind City."),
            },
        },
        {
            id = "turnin-92751-detonation-at-a-distance",
            kind = "turnin",
            priority = 2230,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 16 } },
                },
            },
            text = "Turn in Detonation at a Distance to Sprite Jumpsprocket.",
            dependsOn = { "objective-92751-detonation-at-a-distance-1" },
            complete = QuestState(92751, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.546, 0.080, "Sprite Jumpsprocket",
                    "Travel to Sprite Jumpsprocket in Stormwind City."),
            },
        },
        {
            id = "objective-92109-my-first-alchemy-set-1",
            kind = "objective",
            priority = 2240,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            useClientPin = true,
            text = "My First Alchemy Set: Empty Vial. No saved spot for this, so the guide follows the pin in your quest log.",
            complete = QuestObjective(92109, 1, "Empty Vial"),
            route = {},
        },
        {
            id = "objective-92109-my-first-alchemy-set-2",
            kind = "objective",
            priority = 2250,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            useClientPin = true,
            text = "My First Alchemy Set: Peacebloom. No saved spot for this, so the guide follows the pin in your quest log.",
            complete = QuestObjective(92109, 2, "Peacebloom"),
            route = {},
        },
        {
            id = "objective-92109-my-first-alchemy-set-3",
            kind = "objective",
            priority = 2260,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            useClientPin = true,
            text = "My First Alchemy Set: Silverleaf. No saved spot for this, so the guide follows the pin in your quest log.",
            complete = QuestObjective(92109, 3, "Silverleaf"),
            route = {},
        },
        {
            id = "turnin-92109-my-first-alchemy-set",
            kind = "turnin",
            priority = 2270,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            useClientPin = true,
            text = "Turn in My First Alchemy Set. No saved spot for this, so the guide follows the pin in your quest log.",
            dependsOn = { "objective-92109-my-first-alchemy-set-3" },
            complete = QuestState(92109, "completed"),
            route = {},
        },
        {
            id = "objective-92110-my-first-real-potion-1",
            kind = "objective",
            priority = 2280,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            dependsOn = { "turnin-92109-my-first-alchemy-set" },
            useClientPin = true,
            text = "My First Real Potion: Murloc Eye. No saved spot for this, so the guide follows the pin in your quest log.",
            complete = QuestObjective(92110, 1, "Murloc Eye"),
            route = {},
        },
        {
            id = "turnin-92110-my-first-real-potion",
            kind = "turnin",
            priority = 2290,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            useClientPin = true,
            text = "Turn in My First Real Potion. No saved spot for this, so the guide follows the pin in your quest log.",
            dependsOn = { "objective-92110-my-first-real-potion-1" },
            complete = QuestState(92110, "completed"),
            route = {},
        },
        {
            id = "accept-79008-and-that-note-you-found",
            kind = "accept",
            priority = 2300,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 22 } },
                },
            },
            text = "Accept ...and that note you found from Burned-Out Remains.",
            complete = QuestState(79008, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.375, 0.507, "Burned-Out Remains",
                    "Travel to Burned-Out Remains."),
            },
        },
        {
            id = "objective-79008-and-that-note-you-found-1",
            kind = "objective",
            priority = 2310,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 22 } },
                },
            },
            text = "...and that note you found: ...and that note you found.",
            dependsOn = { "accept-79008-and-that-note-you-found" },
            complete = QuestObjective(79008, 1, "...and that note you found"),
            route = {
                Point(MAP.WESTFALL, 0.375, 0.507, "Burned-Out Remains",
                    "Travel to Burned-Out Remains."),
            },
        },
        {
            id = "turnin-79008-and-that-note-you-found",
            kind = "turnin",
            priority = 2320,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 22 } },
                },
            },
            text = "Turn in ...and that note you found to Burned-Out Remains.",
            dependsOn = { "objective-79008-and-that-note-you-found-1" },
            complete = QuestState(79008, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.375, 0.507, "Burned-Out Remains",
                    "Travel to Burned-Out Remains."),
            },
        },
        {
            id = "turnin-93928-of-mice-and-milk",
            kind = "turnin",
            priority = 2330,
            conditions = {
                all = {
                    { level = { min = 15 } },
                },
            },
            text = "Accept Of Mice and Milk from Mouse, then turn it in to Hemet Nesingwary.",
            complete = QuestState(93928, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.356, 0.108, "Hemet Nesingwary",
                    "Travel to Hemet Nesingwary."),
            },
        },
    },
})
