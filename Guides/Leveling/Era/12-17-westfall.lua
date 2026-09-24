local _, ns = ...

-- Alliance Era leveling route for Westfall, levels 12-17.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
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
    id = "leveling-era-12-17-westfall",
    title = "12-17 Westfall (Era)",
    category = "Leveling Quest Guides",
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
            id = "travel-1786-heroes-vigil",
            kind = "travel",
            priority = 150,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 1 },
                },
            },
            text = "Travel to Heroes' Vigil.",
            route = {
                Point(MAP.ELWYNN, 0.7253, 0.5140, "Heroes' Vigil",
                    "Travel to Heroes' Vigil."),
            },
        },
        {
            id = "objective-1786-the-tome-of-divinity",
            kind = "objective",
            priority = 160,
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
            priority = 170,
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
            priority = 180,
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
            priority = 190,
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
            id = "travel-1788-cathedral-of-light",
            kind = "travel",
            priority = 200,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 1 },
                },
            },
            text = "Travel to Cathedral of Light.",
            route = {
                Point(MAP.STORMWIND, 0.3849, 0.2638, "Cathedral of Light",
                    "Travel to Cathedral of Light."),
            },
        },
        {
            id = "turnin-1787-the-tome-of-divinity",
            kind = "turnin",
            priority = 210,
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
            priority = 220,
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
            priority = 230,
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
            priority = 240,
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
            priority = 250,
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
            priority = 260,
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
            priority = 270,
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
            priority = 280,
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
            priority = 290,
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
            priority = 300,
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
            priority = 310,
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
            priority = 320,
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
            priority = 330,
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
            priority = 340,
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
            priority = 350,
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
            priority = 360,
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
            priority = 370,
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
            id = "travel-1783-ironband-s-compound",
            kind = "travel",
            priority = 380,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Travel to Ironband's Compound.",
            route = {
                Point(MAP.DUN_MOROGH, 0.5154, 0.4012, "Continue toward Ironband's Compound",
                    "Continue toward Ironband's Compound."),
                Point(MAP.DUN_MOROGH, 0.7833, 0.5806, "Ironband's Compound",
                    "Travel to Ironband's Compound."),
            },
        },
        {
            id = "objective-1783-narm-faulk",
            kind = "objective",
            priority = 390,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Use Symbol of Life to ressurect Narm Faulk.",
            dependsOn = { "accept-1783-the-tome-of-divinity" },
            complete = QuestState(1783, "complete"),
        },
        {
            id = "turnin-1783-the-tome-of-divinity",
            kind = "turnin",
            priority = 400,
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
            priority = 410,
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
            priority = 420,
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
            id = "travel-1785-hall-of-mysteries",
            kind = "travel",
            priority = 430,
            conditions = {
                all = {
                    { class = 2 },
                    { race = 3 },
                },
            },
            text = "Travel to Hall of Mysteries.",
            route = {
                Point(MAP.IRONFORGE, 0.2356, 0.0838, "Hall of Mysteries",
                    "Travel to Hall of Mysteries."),
            },
        },
        {
            id = "turnin-1784-the-tome-of-divinity",
            kind = "turnin",
            priority = 440,
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
            priority = 450,
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
            priority = 460,
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
            id = "travel-307-menethil-harbor",
            kind = "travel",
            priority = 470,
            conditions = {
                all = {
                    { race = 4 },
                },
            },
            text = "Travel to Menethil Harbor.",
            route = {
                Point(MAP.WETLANDS, 0.0960, 0.5960, "Menethil Harbor",
                    "Travel to Menethil Harbor."),
            },
        },
        {
            id = "travel-307-algaz-station",
            kind = "travel",
            priority = 480,
            conditions = {
                all = {
                    { race = 4 },
                },
            },
            text = "Follow the road to Algaz Station in Loch Modan.",
            route = {
                Point(MAP.WETLANDS, 0.1129, 0.5352, "Continue toward Algaz Station",
                    "Continue toward Algaz Station."),
                Point(MAP.WETLANDS, 0.1444, 0.4560, "Continue toward Algaz Station",
                    "Continue toward Algaz Station."),
                Point(MAP.WETLANDS, 0.2313, 0.4343, "Continue toward Algaz Station",
                    "Continue toward Algaz Station."),
                Point(MAP.WETLANDS, 0.3216, 0.3921, "Continue toward Algaz Station",
                    "Continue toward Algaz Station."),
                Point(MAP.WETLANDS, 0.3735, 0.3679, "Continue toward Algaz Station",
                    "Continue toward Algaz Station."),
                Point(MAP.WETLANDS, 0.4979, 0.3921, "Continue toward Algaz Station",
                    "Continue toward Algaz Station."),
                Point(MAP.WETLANDS, 0.5626, 0.5275, "Continue toward Algaz Station",
                    "Continue toward Algaz Station."),
                Point(MAP.WETLANDS, 0.5788, 0.6170, "Continue toward Algaz Station",
                    "Continue toward Algaz Station."),
                Point(MAP.WETLANDS, 0.5771, 0.6911, "Continue toward Algaz Station",
                    "Continue toward Algaz Station."),
                Point(MAP.WETLANDS, 0.5439, 0.7204, "Algaz Station",
                    "Travel to Algaz Station."),
            },
        },
        {
            id = "travel-109-the-jansen-stead",
            kind = "travel",
            priority = 490,
            text = "Travel to The Jansen Stead.",
            route = {
                Point(MAP.WESTFALL, 0.6000, 0.1937, "The Jansen Stead",
                    "Travel to The Jansen Stead."),
            },
        },
        {
            id = "accept-64-the-forgotten-heirloom",
            kind = "accept",
            priority = 500,
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
            priority = 510,
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
            priority = 520,
            text = "Accept Poor Old Blanchy from Verna Furlbrow in The Jansen Stead.",
            complete = QuestState(151, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.5992, 0.1945, "Verna Furlbrow",
                    "Travel to Verna Furlbrow."),
            },
        },
        {
            id = "turnin-36-westfall-stew",
            kind = "turnin",
            priority = 530,
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
            priority = 540,
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
            priority = 550,
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
            priority = 560,
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
            priority = 570,
            text = "Start collecting Handful of Oats from Sack of Oats on the ground in Saldean's Farm Try to get 3-4 Handful of Oats and to complete later (56.9, 19,3).",
            dependsOn = { "accept-151-poor-old-blanchy" },
            complete = QuestState(151, "complete"),
        },
        {
            id = "travel-6181-sentinel-hill",
            kind = "travel",
            priority = 580,
            text = "Travel to Sentinel Hill.",
            route = {
                Point(MAP.WESTFALL, 0.5630, 0.4760, "Sentinel Hill",
                    "Travel to Sentinel Hill."),
            },
        },
        {
            id = "accept-12-the-people-s-militia",
            kind = "accept",
            priority = 590,
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
            priority = 600,
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
            priority = 610,
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
            priority = 620,
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
            priority = 630,
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
            priority = 640,
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
            id = "travel-6261-stormwind-city",
            kind = "travel",
            priority = 650,
            conditions = {
                all = {
                    { race = 1 },
                },
            },
            text = "Travel to Stormwind City.",
            route = {
                Point(MAP.STORMWIND, 0.5623, 0.6459, "Stormwind City",
                    "Travel to Stormwind City."),
            },
        },
        {
            id = "turnin-61-shipment-to-stormwind",
            kind = "turnin",
            priority = 660,
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
            priority = 670,
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
            priority = 680,
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
            priority = 690,
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
            priority = 700,
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
            id = "travel-353-sentinel-hill",
            kind = "travel",
            priority = 710,
            conditions = {
                all = {
                    { race = 1 },
                },
            },
            text = "Travel to Sentinel Hill. Dungar Longdrink in Trade District.",
            route = {
                Point(MAP.WESTFALL, 0.5690, 0.4720, "Dungar Longdrink",
                    "Travel to Dungar Longdrink."),
            },
        },
        {
            id = "turnin-6285-return-to-lewis",
            kind = "turnin",
            priority = 720,
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
            priority = 730,
            text = "Kill 15 Defias Smuggler and 15 Defias Trapper in Jangolode Mine.",
            dependsOn = { "accept-12-the-people-s-militia" },
            complete = QuestState(12, "complete"),
            route = {
                Point(MAP.WESTFALL, 0.4839, 0.4648, "Continue toward The People's Militia",
                    "Continue toward The People's Militia."),
                Point(MAP.WESTFALL, 0.5092, 0.4039, "Continue toward The People's Militia",
                    "Continue toward The People's Militia."),
                Point(MAP.WESTFALL, 0.4681, 0.3949, "Defias Smuggler",
                    "Travel to Defias Smuggler."),
            },
        },
        {
            id = "objective-153-red-leather-bandanas",
            kind = "objective",
            priority = 740,
            text = "Collect Red Leather Bandana from Defias enemies.",
            dependsOn = { "accept-153-red-leather-bandanas" },
            complete = QuestState(153, "complete"),
            route = {
                Point(MAP.WESTFALL, 0.4839, 0.4648, "Continue toward Red Leather Bandanas",
                    "Continue toward Red Leather Bandanas."),
                Point(MAP.WESTFALL, 0.5092, 0.4039, "Continue toward Red Leather Bandanas",
                    "Continue toward Red Leather Bandanas."),
                Point(MAP.WESTFALL, 0.4681, 0.3949, "Defias Smuggler",
                    "Travel to Defias Smuggler."),
            },
        },
        {
            id = "travel-sentinel-hill",
            kind = "travel",
            priority = 750,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 13, state = "activeOrCompleted" } } },
                },
            },
            text = "Travel to Sentinel Hill.",
            route = {
                Point(MAP.WESTFALL, 0.5399, 0.5298, "Sentinel Hill",
                    "Travel to Sentinel Hill."),
            },
        },
        {
            id = "turnin-153-red-leather-bandanas",
            kind = "turnin",
            priority = 760,
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
            priority = 770,
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
            priority = 780,
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
            priority = 790,
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
            priority = 800,
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
            priority = 810,
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
            priority = 820,
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
            priority = 830,
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
            priority = 840,
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
            priority = 850,
            text = "Kill Murlocs until you find Captain Sanders' Treasure Map in Longshore.",
            complete = QuestState(136, "complete"),
            route = {
                Point(MAP.WESTFALL, 0.5661, 0.0947, "Murloc Raider",
                    "Travel to Murloc Raider."),
            },
        },
        {
            id = "travel-sentinel-hill-2",
            kind = "travel",
            priority = 860,
            text = "Travel to Sentinel Hill.",
            route = {
                Point(MAP.WESTFALL, 0.5636, 0.4759, "Sentinel Hill",
                    "Travel to Sentinel Hill."),
            },
        },
        {
            id = "turnin-102-patrolling-westfall",
            kind = "turnin",
            priority = 870,
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
            priority = 880,
            text = "Kill Young Goretusk and Young Fleshripper and collect 3 Goretusk Snout and 3 Stringy Vulture Meat scatterred in Westfall.",
            dependsOn = { "accept-38-westfall-stew" },
            complete = QuestState(38, "complete"),
            route = {
                Point(MAP.WESTFALL, 0.5351, 0.3961, "Continue toward Westfall Stew",
                    "Continue toward Westfall Stew."),
                Point(MAP.WESTFALL, 0.6111, 0.3665, "Continue toward Westfall Stew",
                    "Continue toward Westfall Stew."),
                Point(MAP.WESTFALL, 0.5185, 0.1730, "Continue toward Westfall Stew",
                    "Continue toward Westfall Stew."),
                Point(MAP.WESTFALL, 0.4656, 0.1945, "Young Goretusk",
                    "Travel to Young Goretusk."),
            },
        },
        {
            id = "objective-22-goretusk-liver-pie",
            kind = "objective",
            priority = 890,
            text = "Kill Young Goretusk and collect 8 Goretusk Liver scatterred in Westfall.",
            dependsOn = { "accept-22-goretusk-liver-pie" },
            complete = QuestState(22, "complete"),
            route = {
                Point(MAP.WESTFALL, 0.5351, 0.3961, "Continue toward Goretusk Liver Pie",
                    "Continue toward Goretusk Liver Pie."),
                Point(MAP.WESTFALL, 0.6111, 0.3665, "Continue toward Goretusk Liver Pie",
                    "Continue toward Goretusk Liver Pie."),
                Point(MAP.WESTFALL, 0.5185, 0.1730, "Continue toward Goretusk Liver Pie",
                    "Continue toward Goretusk Liver Pie."),
                Point(MAP.WESTFALL, 0.4656, 0.1945, "Young Goretusk",
                    "Travel to Young Goretusk."),
            },
        },
        {
            id = "travel-64-saldean-s-farm",
            kind = "travel",
            priority = 900,
            text = "Travel to Saldean's Farm.",
            route = {
                Point(MAP.WESTFALL, 0.5642, 0.3048, "Saldean's Farm",
                    "Travel to Saldean's Farm."),
            },
        },
        {
            id = "turnin-38-westfall-stew",
            kind = "turnin",
            priority = 910,
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
            priority = 920,
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
            priority = 930,
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
            priority = 940,
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
            priority = 950,
            text = "Kill 20 Harvest Watcher in the 3 farms and also collect 5 Flask of Oil for a later quest.",
            dependsOn = { "accept-9-the-killing-fields" },
            complete = QuestState(9, "complete"),
            route = {
                Point(MAP.WESTFALL, 0.5094, 0.2184, "Continue toward The Killing Fields",
                    "Continue toward The Killing Fields."),
                Point(MAP.WESTFALL, 0.4473, 0.3525, "Continue toward The Killing Fields",
                    "Continue toward The Killing Fields."),
                Point(MAP.WESTFALL, 0.5341, 0.3197, "Harvest Watcher",
                    "Travel to Harvest Watcher."),
            },
        },
        {
            id = "turnin-9-the-killing-fields",
            kind = "turnin",
            priority = 960,
            text = "Turn in The Killing Fields to Farmer Saldean in Saldean's Farm.",
            dependsOn = { "objective-9-the-killing-fields" },
            complete = QuestState(9, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.5599, 0.3128, "Farmer Saldean",
                    "Travel to Farmer Saldean."),
            },
        },
        {
            id = "travel-13-moonbrook",
            kind = "travel",
            priority = 970,
            text = "Travel to Moonbrook.",
            route = {
                Point(MAP.WESTFALL, 0.4401, 0.6947, "Moonbrook",
                    "Travel to Moonbrook."),
            },
        },
        {
            id = "objective-13-the-people-s-militia",
            kind = "objective",
            priority = 980,
            text = "Kill 15 Defias Pillager and Defias Looter in Moonbrook.",
            dependsOn = { "accept-13-the-people-s-militia" },
            complete = QuestState(13, "complete"),
            route = {
                Point(MAP.WESTFALL, 0.4401, 0.6947, "Defias Pillager",
                    "Travel to Defias Pillager."),
            },
        },
        {
            id = "travel-sentinel-hill-3",
            kind = "travel",
            priority = 990,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 14, state = "activeOrCompleted" } } },
                },
            },
            text = "Travel to Sentinel Hill.",
            route = {
                Point(MAP.WESTFALL, 0.5632, 0.4755, "Sentinel Hill",
                    "Travel to Sentinel Hill."),
            },
        },
        {
            id = "turnin-13-the-people-s-militia",
            kind = "turnin",
            priority = 1000,
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
            priority = 1010,
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
            priority = 1020,
            text = "Accept The Defias Brotherhood from Marshal Gryan Stoutmantle in Sentinel Hill.",
            complete = QuestState(65, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.5633, 0.4752, "Marshal Gryan Stoutmantle",
                    "Travel to Marshal Gryan Stoutmantle."),
            },
        },
        {
            id = "travel-244-three-corners",
            kind = "travel",
            priority = 1030,
            text = "Travel to Three Corners in Redridge Mountains.",
            route = {
                Point(MAP.REDRIDGE, 0.1532, 0.7142, "Three Corners",
                    "Travel to Three Corners."),
            },
        },
        {
            id = "accept-244-encroaching-gnolls",
            kind = "accept",
            priority = 1040,
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
            priority = 1050,
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
            priority = 1060,
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
            priority = 1070,
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
            priority = 1080,
            text = "Find Nida's Necklace inside a mud pile underwater in the lake, check around each waypoint.",
            dependsOn = { "accept-3741-hilary-s-necklace" },
            complete = QuestState(3741, "complete"),
            route = {
                Point(MAP.REDRIDGE, 0.1930, 0.5180, "Continue toward Hilary's Necklace",
                    "Continue toward Hilary's Necklace."),
                Point(MAP.REDRIDGE, 0.2410, 0.5460, "Continue toward Hilary's Necklace",
                    "Continue toward Hilary's Necklace."),
                Point(MAP.REDRIDGE, 0.2660, 0.5140, "Continue toward Hilary's Necklace",
                    "Continue toward Hilary's Necklace."),
                Point(MAP.REDRIDGE, 0.2800, 0.5600, "Continue toward Hilary's Necklace",
                    "Continue toward Hilary's Necklace."),
                Point(MAP.REDRIDGE, 0.3370, 0.5540, "Continue toward Hilary's Necklace",
                    "Continue toward Hilary's Necklace."),
                Point(MAP.REDRIDGE, 0.3670, 0.5430, "Hilary's Necklace",
                    "Travel to Hilary's Necklace."),
            },
        },
        {
            id = "turnin-3741-hilary-s-necklace",
            kind = "turnin",
            priority = 1090,
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
            priority = 1100,
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
            priority = 1110,
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
            priority = 1120,
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
            priority = 1130,
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
            priority = 1140,
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
            priority = 1150,
            text = "Accept The Defias Brotherhood from Wiley the Black in Lakeshire.",
            complete = QuestState(132, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.2665, 0.4518, "Wiley the Black",
                    "Travel to Wiley the Black."),
            },
        },
        {
            id = "note-129-lakeshire",
            kind = "note",
            priority = 1160,
            text = "Set your hearth in Lakeshire with Innkeeper Brianna.",
            route = {
                Point(MAP.REDRIDGE, 0.2701, 0.4490, "Innkeeper Brianna",
                    "Travel to Innkeeper Brianna."),
            },
        },
        {
            id = "travel-135-sentinel-hill",
            kind = "travel",
            priority = 1170,
            text = "Travel to Sentinel Hill.",
            route = {
                Point(MAP.WESTFALL, 0.5628, 0.4753, "Sentinel Hill",
                    "Travel to Sentinel Hill."),
            },
        },
        {
            id = "turnin-132-the-defias-brotherhood",
            kind = "turnin",
            priority = 1180,
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
            priority = 1190,
            text = "Accept The Defias Brotherhood from Marshal Gryan Stoutmantle in Sentinel Hill.",
            complete = QuestState(135, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.5628, 0.4753, "Marshal Gryan Stoutmantle",
                    "Travel to Marshal Gryan Stoutmantle."),
            },
        },
        {
            id = "travel-stormwind-city",
            kind = "travel",
            priority = 1200,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 121, state = "activeOrCompleted" } } },
                },
            },
            text = "Travel to Stormwind City.",
            route = {
                Point(MAP.STORMWIND, 0.6404, 0.7531, "Stormwind City",
                    "Travel to Stormwind City."),
            },
        },
        {
            id = "objective-116-2-cask-of-merlot",
            kind = "objective",
            priority = 1210,
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
            priority = 1220,
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
            priority = 1230,
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
            priority = 1240,
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
            priority = 1250,
            text = "Accept Messenger to Stormwind from General Marcus Jonathan in Valley Of Heroes.",
            complete = QuestState(121, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.6465, 0.7693, "General Marcus Jonathan",
                    "Travel to General Marcus Jonathan."),
            },
        },
        {
            id = "travel-119-goldshire",
            kind = "travel",
            priority = 1260,
            text = "Travel to Goldshire.",
            route = {
                Point(MAP.ELWYNN, 0.4170, 0.6553, "Goldshire",
                    "Travel to Goldshire."),
            },
        },
        {
            id = "turnin-118-the-price-of-shoes",
            kind = "turnin",
            priority = 1270,
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
            priority = 1280,
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
            priority = 1290,
            text = "Buy Skin of Sweet Rum from Barkeep Dobbins in Goldshire.",
            dependsOn = { "accept-116-dry-times" },
            complete = QuestObjective(116, 4),
            route = {
                Point(MAP.ELWYNN, 0.4380, 0.6580, "Barkeep Dobbins",
                    "Travel to Barkeep Dobbins."),
            },
        },
        {
            id = "travel-122-lakeshire",
            kind = "travel",
            priority = 1300,
            text = "Travel or Hearthstone to Lakeshire.",
            route = {
                Point(MAP.REDRIDGE, 0.3090, 0.4730, "Lakeshire",
                    "Travel to Lakeshire."),
            },
        },
        {
            id = "turnin-119-return-to-verner",
            kind = "turnin",
            priority = 1310,
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
            priority = 1320,
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
            priority = 1330,
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
            priority = 1340,
            text = "Accept Messenger to Westfall from Magistrate Solomon in Lakeshire.",
            complete = QuestState(143, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.3000, 0.4441, "Magistrate Solomon",
                    "Travel to Magistrate Solomon."),
            },
        },
        {
            id = "travel-144-sentinel-hill",
            kind = "travel",
            priority = 1350,
            text = "Travel or Hearthstone to Sentinel Hill.",
            route = {
                Point(MAP.WESTFALL, 0.5633, 0.4752, "Sentinel Hill",
                    "Travel to Sentinel Hill."),
            },
        },
        {
            id = "turnin-143-messenger-to-westfall",
            kind = "turnin",
            priority = 1360,
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
            priority = 1370,
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
            priority = 1380,
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
            priority = 1390,
            text = "Accept The Defias Brotherhood from Marshal Gryan Stoutmantle in Sentinel Hill.",
            complete = QuestState(142, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.5629, 0.4762, "Marshal Gryan Stoutmantle",
                    "Travel to Marshal Gryan Stoutmantle."),
            },
        },
        {
            id = "note-13-sentinel-hill",
            kind = "note",
            priority = 1400,
            text = "Set your hearth in Sentinel Hill with Innkeeper Heather.",
            route = {
                Point(MAP.WESTFALL, 0.5284, 0.5369, "Innkeeper Heather",
                    "Travel to Innkeeper Heather."),
            },
        },
        {
            id = "travel-142-moonbrook",
            kind = "travel",
            priority = 1410,
            text = "Travel to Moonbrook.",
            route = {
                Point(MAP.WESTFALL, 0.4401, 0.6947, "Moonbrook",
                    "Travel to Moonbrook."),
            },
        },
        {
            id = "objective-142-the-defias-brotherhood",
            kind = "objective",
            priority = 1420,
            text = "Kill Defias Messenger and collect A Mysterious Message, he should be near the road entrance to Moonbrook.",
            dependsOn = { "accept-142-the-defias-brotherhood" },
            complete = QuestState(142, "complete"),
            route = {
                Point(MAP.WESTFALL, 0.4572, 0.6802, "Defias Messenger",
                    "Travel to Defias Messenger."),
            },
        },
        {
            id = "travel-103-westfall-lighthouse",
            kind = "travel",
            priority = 1430,
            text = "Travel to Westfall Lighthouse.",
            route = {
                Point(MAP.WESTFALL, 0.3002, 0.8600, "Westfall Lighthouse",
                    "Travel to Westfall Lighthouse."),
            },
        },
        {
            id = "accept-103-keeper-of-the-flame",
            kind = "accept",
            priority = 1440,
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
            priority = 1450,
            text = "Kill 20 Harvest Watcher in the 3 farms and collect 5 Flask of Oil for a later quest.",
            dependsOn = { "accept-103-keeper-of-the-flame" },
            complete = QuestState(103, "complete"),
            route = {
                Point(MAP.WESTFALL, 0.5094, 0.2184, "Continue toward Keeper of the Flame",
                    "Continue toward Keeper of the Flame."),
                Point(MAP.WESTFALL, 0.4473, 0.3525, "Continue toward Keeper of the Flame",
                    "Continue toward Keeper of the Flame."),
                Point(MAP.WESTFALL, 0.5341, 0.3197, "Harvest Watcher",
                    "Travel to Harvest Watcher."),
            },
        },
        {
            id = "turnin-103-keeper-of-the-flame",
            kind = "turnin",
            priority = 1460,
            text = "Turn in Keeper of the Flame to Captain Grayson in Westfall Lighthouse.",
            dependsOn = { "objective-103-keeper-of-the-flame" },
            complete = QuestState(103, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.2997, 0.8598, "Captain Grayson",
                    "Travel to Captain Grayson."),
            },
        },
        {
            id = "travel-138-longshore",
            kind = "travel",
            priority = 1470,
            text = "Travel to Longshore.",
            route = {
                Point(MAP.WESTFALL, 0.2591, 0.4772, "Longshore",
                    "Travel to Longshore."),
            },
        },
        {
            id = "turnin-136-captain-sander-s-hidden-treasure",
            kind = "turnin",
            priority = 1480,
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
            priority = 1490,
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
            priority = 1500,
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
            priority = 1510,
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
            priority = 1520,
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
            priority = 1530,
            text = "Accept Captain Sander's Hidden Treasure in Jangolode Mine.",
            complete = QuestState(140, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.4068, 0.1706, "Jangolode Mine",
                    "Travel to Jangolode Mine."),
            },
        },
        {
            id = "travel-longshore",
            kind = "travel",
            priority = 1540,
            text = "Travel to Longshore.",
            route = {
                Point(MAP.WESTFALL, 0.2600, 0.1694, "Longshore",
                    "Travel to Longshore."),
            },
        },
        {
            id = "turnin-140-captain-sander-s-hidden-treasure",
            kind = "turnin",
            priority = 1550,
            text = "Turn in Captain Sander's Hidden Treasure in Longshore.",
            dependsOn = { "accept-140-captain-sander-s-hidden-treasure" },
            complete = QuestState(140, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.2600, 0.1694, "Longshore",
                    "Travel to Longshore."),
            },
        },
        {
            id = "travel-sentinel-hill-4",
            kind = "travel",
            priority = 1560,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 14, state = "activeOrCompleted" } } },
                },
            },
            text = "Travel or Hearthstone to Sentinel Hill.",
            route = {
                Point(MAP.WESTFALL, 0.5632, 0.4755, "Sentinel Hill",
                    "Travel to Sentinel Hill."),
            },
        },
        {
            id = "turnin-142-the-defias-brotherhood",
            kind = "turnin",
            priority = 1570,
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
            priority = 1580,
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
            priority = 1590,
            text = "Escort the Defias Traitor to discover where VanCleef is hiding. Near the fountain in Moonbrook he pulls several enemies. This is an elite. Bring a group.",
            dependsOn = { "accept-155-the-defias-brotherhood" },
            complete = QuestState(155, "complete"),
            route = {
                Point(MAP.WESTFALL, 0.5720, 0.6053, "Continue toward The Defias Brotherhood",
                    "Continue toward The Defias Brotherhood."),
                Point(MAP.WESTFALL, 0.5775, 0.6497, "Continue toward The Defias Brotherhood",
                    "Continue toward The Defias Brotherhood."),
                Point(MAP.WESTFALL, 0.4573, 0.6502, "Continue toward The Defias Brotherhood",
                    "Continue toward The Defias Brotherhood."),
                Point(MAP.WESTFALL, 0.4257, 0.7127, "The Defias Traitor",
                    "Travel to The Defias Traitor."),
            },
        },
        {
            id = "travel-14-the-dagger-hills",
            kind = "travel",
            priority = 1600,
            text = "Travel to The Dagger Hills.",
            route = {
                Point(MAP.WESTFALL, 0.5287, 0.7129, "Continue toward The Dagger Hills",
                    "Continue toward The Dagger Hills."),
                Point(MAP.WESTFALL, 0.4960, 0.7719, "Continue toward The Dagger Hills",
                    "Continue toward The Dagger Hills."),
                Point(MAP.WESTFALL, 0.4465, 0.8027, "The Dagger Hills",
                    "Travel to The Dagger Hills."),
            },
        },
        {
            id = "turnin-117-thunderbrew",
            kind = "turnin",
            priority = 1610,
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
            priority = 1620,
            text = "You should receive from Grimbooze Thunderbrew by turning in 'Thunderbrew' quest. This is an elite. Bring a group.",
            dependsOn = { "accept-116-dry-times" },
            complete = QuestObjective(116, 1),
            route = {
                Point(MAP.WESTFALL, 0.4465, 0.8027, "Grimbooze Thunderbrew",
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
            id = "travel-sentinel-hill-5",
            kind = "travel",
            priority = 1640,
            text = "Travel to Sentinel Hill.",
            route = {
                Point(MAP.WESTFALL, 0.5632, 0.4755, "Sentinel Hill",
                    "Travel to Sentinel Hill."),
            },
        },
        {
            id = "turnin-14-the-people-s-militia",
            kind = "turnin",
            priority = 1650,
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
            priority = 1660,
            text = "Turn in The Defias Brotherhood to Marshal Gryan Stoutmantle in Sentinel Hil.",
            dependsOn = { "objective-155-the-defias-brotherhood" },
            complete = QuestState(155, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.5629, 0.4761, "Marshal Gryan Stoutmantle",
                    "Travel to Marshal Gryan Stoutmantle."),
            },
        },
        {
            id = "travel-145-lakeshire",
            kind = "travel",
            priority = 1670,
            text = "Travel to Lakeshire.",
            route = {
                Point(MAP.REDRIDGE, 0.2651, 0.4533, "Lakeshire",
                    "Travel to Lakeshire."),
            },
        },
        {
            id = "turnin-144-messenger-to-westfall",
            kind = "turnin",
            priority = 1680,
            text = "Turn in Messenger to Westfall to Magistrate Solomon in Lakeshire.",
            dependsOn = { "accept-144-messenger-to-westfall" },
            complete = QuestState(144, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.3000, 0.4441, "Magistrate Solomon",
                    "Travel to Magistrate Solomon."),
            },
        },
        {
            id = "travel-246-lakeridge-highway",
            kind = "travel",
            priority = 1690,
            text = "Travel to Lakeridge Highway.",
            route = {
                Point(MAP.REDRIDGE, 0.3337, 0.6713, "Lakeridge Highway",
                    "Travel to Lakeridge Highway."),
            },
        },
        {
            id = "objective-122-underbelly-scales",
            kind = "objective",
            priority = 1700,
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
            priority = 1710,
            text = "Kill 10 Redridge Mongrel and 6 Redridge Poacher which can be found to the south in Lakeridge Highway.",
            dependsOn = { "accept-246-assessing-the-threat" },
            complete = QuestState(246, "complete"),
            route = {
                Point(MAP.REDRIDGE, 0.1519, 0.6342, "Continue toward Assessing the Threat",
                    "Continue toward Assessing the Threat."),
                Point(MAP.REDRIDGE, 0.2993, 0.8080, "Redridge Mongrel",
                    "Travel to Redridge Mongrel."),
            },
        },
        {
            id = "travel-three-corners",
            kind = "travel",
            priority = 1720,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 130, state = "activeOrCompleted" } } },
                },
            },
            text = "Travel to Three Corners.",
            route = {
                Point(MAP.REDRIDGE, 0.1543, 0.7132, "Three Corners",
                    "Travel to Three Corners."),
            },
        },
        {
            id = "turnin-129-a-free-lunch",
            kind = "turnin",
            priority = 1730,
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
            priority = 1740,
            text = "Accept Visit the Herbalist from Tarantula in Three Corners.",
            complete = QuestState(130, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.1543, 0.7132, "Tarantula",
                    "Travel to Tarantula."),
            },
        },
        {
            id = "travel-116-darkshire",
            kind = "travel",
            priority = 1750,
            text = "Travel to Darkshire.",
            route = {
                Point(MAP.DUSKWOOD, 0.7750, 0.4440, "Darkshire",
                    "Travel to Darkshire."),
            },
        },
        {
            id = "objective-116-3-bottle-of-moonshine",
            kind = "objective",
            priority = 1760,
            text = "Buy Bottle of Moonshine from Barkeep Hann in Darkshire.",
            dependsOn = { "accept-116-dry-times" },
            complete = QuestObjective(116, 3),
            route = {
                Point(MAP.DUSKWOOD, 0.7368, 0.4408, "Barkeep Hann",
                    "Travel to Barkeep Hann."),
            },
        },
        {
            id = "travel-lakeshire",
            kind = "travel",
            priority = 1770,
            text = "Travel to Lakeshire.",
            route = {
                Point(MAP.REDRIDGE, 0.3075, 0.5999, "Lakeshire",
                    "Travel to Lakeshire."),
            },
        },
        {
            id = "turnin-246-assessing-the-threat",
            kind = "turnin",
            priority = 1780,
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
            priority = 1790,
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
            priority = 1800,
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
            priority = 1810,
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
            priority = 1820,
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
            priority = 1830,
            text = "Turn in Delivering Daffodils to Darcy Parker in Lakeshire.",
            dependsOn = { "accept-131-delivering-daffodils" },
            complete = QuestState(131, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.2677, 0.4431, "Darcy Parker",
                    "Travel to Darcy Parker."),
            },
        },
    },
})
