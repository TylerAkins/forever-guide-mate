local _, ns = ...

-- Alliance Era leveling route for Darkshore, levels 12-17.
-- Forever quests from the Darkshore list that sit on this pass are woven in.
-- Left out: Business in Auberdine and Making Do start in Stormwind, off this road.
-- Grind stops and flight-point pickups are not part of this route.
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
    id = "leveling-era-12-17-darkshore",
    title = "12-17 Darkshore",
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
            id = "objective-1783-narm-faulk",
            kind = "objective",
            priority = 390,
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
            id = "accept-3524-washed-ashore",
            kind = "accept",
            priority = 500,
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
            priority = 510,
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
            priority = 520,
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
            priority = 540,
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
            priority = 560,
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
            priority = 570,
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
            priority = 580,
            text = "Accept The Red Crystal from Sentinel Glynda Nal'Shea in Auberdine.",
            complete = QuestState(4811, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3764, 0.4336, "Sentinel Glynda Nal'Shea",
                    "Travel to Sentinel Glynda Nal'Shea."),
            },
        },
        {
            id = "accept-98025-wanted-jaivhanel",
            kind = "accept",
            priority = 581,
            conditions = { level = { min = 13 } },
            text = "Accept WANTED: Jai'vhanel from the poster beside Sentinel Glynda Nal'Shea in Auberdine.",
            complete = QuestState(98025, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3720, 0.4420, "WANTED: Jai'vhanel",
                    "Travel to WANTED: Jai'vhanel."),
            },
        },
        {
            id = "note-963-auberdine",
            kind = "note",
            priority = 590,
            text = "Set your hearth in Auberdine with Innkeeper Shaussiy.",
            route = {
                Point(MAP.DARKSHORE, 0.3700, 0.4410, "Innkeeper Shaussiy",
                    "Travel to Innkeeper Shaussiy."),
            },
        },
        {
            id = "accept-947-cave-mushrooms",
            kind = "accept",
            priority = 600,
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
            priority = 610,
            text = "Accept The Family and the Fishing Pole from Gubber Blump in Auberdine.",
            complete = QuestState(1141, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3610, 0.4496, "Gubber Blump",
                    "Travel to Gubber Blump."),
            },
        },
        {
            id = "objective-1141-fishing-pole",
            kind = "objective",
            priority = 620,
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
            priority = 630,
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
            priority = 640,
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
            priority = 650,
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
            priority = 660,
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
            priority = 670,
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
            priority = 680,
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
            priority = 690,
            text = "Accept How Big a Threat? from Terenthis in Auberdine.",
            complete = QuestState(984, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3935, 0.4346, "Terenthis",
                    "Travel to Terenthis."),
            },
        },
        {
            id = "objective-3524-washed-ashore",
            kind = "objective",
            priority = 700,
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
            priority = 720,
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
            priority = 730,
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
            priority = 740,
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
            priority = 750,
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
            priority = 760,
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
            priority = 770,
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
            priority = 790,
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
            priority = 810,
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
            priority = 830,
            text = "Accept Beached Sea Creature in Mist's Edge.",
            complete = QuestState(4723, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.4189, 0.3161, "Mist's Edge",
                    "Travel to Mist's Edge."),
            },
        },
        {
            id = "turnin-1001-buzzbox-411",
            kind = "turnin",
            priority = 840,
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
            priority = 850,
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
            priority = 860,
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
            priority = 870,
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
            priority = 880,
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
            priority = 890,
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
            priority = 900,
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
            priority = 910,
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
            priority = 920,
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
            priority = 930,
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
            priority = 940,
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
            priority = 950,
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
            priority = 970,
            text = "Accept The Fall of Ameth'Aran from Sentinel Tysha Moonblade in Twilight Vale.",
            complete = QuestState(953, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.4030, 0.5968, "Sentinel Tysha Moonblade",
                    "Travel to Sentinel Tysha Moonblade."),
            },
        },
        {
            id = "objective-98025-wanted-jaivhanel",
            kind = "objective",
            priority = 975,
            conditions = { level = { min = 13 } },
            text = "WANTED: Jai'vhanel: slay the owl north of Ameth'Aran and take a feather.",
            dependsOn = { "accept-98025-wanted-jaivhanel" },
            complete = QuestState(98025, "complete"),
            route = {
                Point(MAP.DARKSHORE, 0.4500, 0.5820, "Jai'vhanel",
                    "Travel to Jai'vhanel."),
            },
        },
        {
            id = "objective-953-1-read-the-lay-of-ameth-aran",
            kind = "objective",
            priority = 980,
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
            priority = 990,
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
            priority = 1000,
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
            priority = 1010,
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
            priority = 1030,
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
            priority = 1040,
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
            priority = 1050,
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
            priority = 1070,
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
            priority = 1080,
            text = "Turn in The Red Crystal to Sentinel Glynda Nal'Shea in Auberdine.",
            dependsOn = { "objective-4811-the-red-crystal" },
            complete = QuestState(4811, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3764, 0.4336, "Sentinel Glynda Nal'Shea",
                    "Travel to Sentinel Glynda Nal'Shea."),
            },
        },
        {
            id = "turnin-98025-wanted-jaivhanel",
            kind = "turnin",
            priority = 1081,
            conditions = { level = { min = 13 } },
            text = "Turn in WANTED: Jai'vhanel to Sentinel Glynda Nal'Shea in Auberdine.",
            dependsOn = { "objective-98025-wanted-jaivhanel" },
            complete = QuestState(98025, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3760, 0.4340, "Sentinel Glynda Nal'Shea",
                    "Travel to Sentinel Glynda Nal'Shea."),
            },
        },
        {
            id = "accept-4812-as-water-cascades",
            kind = "accept",
            priority = 1090,
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
            priority = 1100,
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
            priority = 1110,
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
            priority = 1120,
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
            priority = 1130,
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
            priority = 1140,
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
            priority = 1150,
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
            priority = 1160,
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
            priority = 1170,
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
            priority = 1180,
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
            priority = 1190,
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
            priority = 1200,
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
            priority = 1210,
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
            priority = 1230,
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
            priority = 1250,
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
            priority = 1260,
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
            priority = 1270,
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
            priority = 1280,
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
            priority = 1290,
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
            priority = 1310,
            text = "Accept Beached Sea Turtle in Mist's Edge.",
            complete = QuestState(4725, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.4423, 0.2066, "Mist's Edge",
                    "Travel to Mist's Edge."),
            },
        },
        {
            id = "objective-1002-buzzbox-323",
            kind = "objective",
            priority = 1320,
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
            priority = 1330,
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
            priority = 1340,
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
            priority = 1350,
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
            priority = 1360,
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
            priority = 1370,
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
            priority = 1380,
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
            priority = 1390,
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
            priority = 1400,
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
            priority = 1410,
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
            priority = 1420,
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
            priority = 1430,
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
            priority = 1440,
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
            priority = 1460,
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
            priority = 1480,
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
            priority = 1490,
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
            priority = 1500,
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
            priority = 1510,
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
            priority = 1520,
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
            priority = 1530,
            text = "Accept Onu from Barithras Moonshade in Auberdine.",
            complete = QuestState(948, "activeOrCompleted"),
            route = {
                Point(MAP.DARKSHORE, 0.3732, 0.4366, "Barithras Moonshade",
                    "Travel to Barithras Moonshade."),
            },
        },
        {
            id = "turnin-4813-the-fragments-within",
            kind = "turnin",
            priority = 1540,
            text = "Turn in The Fragments Within to Sentinel Glynda Nal'Shea in Auberdine.",
            dependsOn = { "accept-4813-the-fragments-within" },
            complete = QuestState(4813, "completed"),
            route = {
                Point(MAP.DARKSHORE, 0.3764, 0.4336, "Sentinel Glynda Nal'Shea",
                    "Travel to Sentinel Glynda Nal'Shea."),
            },
        },
        {
            id = "accept-729-the-absent-minded-prospector",
            kind = "accept",
            priority = 1550,
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
            priority = 1560,
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
            priority = 1570,
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
            priority = 1580,
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
            priority = 1590,
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
            priority = 1600,
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
            priority = 1610,
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
            priority = 1620,
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
            priority = 1630,
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
            priority = 1640,
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
            priority = 1650,
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
            priority = 1660,
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
            priority = 1670,
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
            priority = 1680,
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
            priority = 1690,
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
            priority = 1700,
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
            priority = 1710,
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
            priority = 1730,
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
            priority = 1740,
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
            priority = 1760,
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
            priority = 1770,
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
            priority = 1780,
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
            priority = 1790,
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
            priority = 1800,
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
            priority = 1810,
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
            priority = 1820,
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
            priority = 1830,
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
            priority = 1840,
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
            priority = 1860,
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
            priority = 1870,
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
            priority = 1890,
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
            priority = 1900,
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
            priority = 1940,
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
            priority = 1950,
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
            priority = 1970,
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
            priority = 1980,
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
            priority = 1990,
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
            priority = 2030,
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
            priority = 2050,
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
            priority = 2060,
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
            priority = 2080,
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
    },
})
