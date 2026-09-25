local _, ns = ...

-- Redridge Mountains Loremaster route.
-- The step order follows the leveling route. Quests that are on the
-- Wowhead zone page and not on that route are woven in at the giver
-- the route already visits, or after the series quest they follow.
-- Leveling route: Guides/Leveling/Era/18-20-redridge-mountains.lua, Guides/Leveling/Era/27-28-redridge-mountains.lua
-- Quest list: https://www.wowhead.com/forever/quests/eastern-kingdoms/redridge-mountains
-- Dungeon quests stay in the dungeon guides.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    REDRIDGE = 1433,
    DUN_MOROGH = 1426,
    IRONFORGE = 1455,
    STORMWIND = 1453,
    ELWYNN = 1429,
    WESTFALL = 1436,
    WETLANDS = 1437,
    ZONE_1413 = 1413,
    ZONE_1431 = 1431,
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
    id = "leveling-redridge-mountains",
    title = "Redridge Mountains",
    category = "Loremaster Guides",
    revision = 1,
    conditions = {
        all = {
            { level = { min = 18 } },
        },
    },
    goals = {
        {
            id = "accept-2299-to-hulfdan",
            kind = "accept",
            priority = 10,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                },
            },
            text = "Accept To Hulfdan! from Hogral Bakkan in Kharanos.",
            complete = QuestState(2299, "activeOrCompleted"),
            route = {
                Point(MAP.DUN_MOROGH, 0.4760, 0.5260, "Hogral Bakkan",
                    "Travel to Hogral Bakkan."),
            },
        },
        {
            id = "turnin-2299-to-hulfdan",
            kind = "turnin",
            priority = 20,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                },
            },
            text = "Turn in To Hulfdan! to Hulfdan Blackbeard in The Forlorn Cavern.",
            dependsOn = { "accept-2299-to-hulfdan" },
            complete = QuestState(2299, "completed"),
            route = {
                Point(MAP.IRONFORGE, 0.5159, 0.1468, "Hulfdan Blackbeard",
                    "Travel to Hulfdan Blackbeard."),
            },
        },
        {
            id = "accept-2298-kingly-shakedown",
            kind = "accept",
            priority = 30,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                },
            },
            text = "Accept Kingly Shakedown from Hulfdan Blackbeard in The Forlorn Cavern.",
            complete = QuestState(2298, "activeOrCompleted"),
            route = {
                Point(MAP.IRONFORGE, 0.5159, 0.1468, "Hulfdan Blackbeard",
                    "Travel to Hulfdan Blackbeard."),
            },
        },
        {
            id = "turnin-2298-kingly-shakedown",
            kind = "turnin",
            priority = 40,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                },
            },
            text = "Turn in Kingly Shakedown to Renzik \"The Shiv\" in SI:7.",
            dependsOn = { "accept-2298-kingly-shakedown" },
            complete = QuestState(2298, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.7595, 0.6036, "Renzik 'The Shiv'",
                    "Travel to Renzik 'The Shiv'."),
            },
        },
        {
            id = "accept-2281-redridge-rendezvous",
            kind = "accept",
            priority = 50,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                },
            },
            text = "Accept Redridge Rendezvous from Renzik \"The Shiv\" in SI:7.",
            complete = QuestState(2281, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.7595, 0.6036, "Renzik 'The Shiv'",
                    "Travel to Renzik 'The Shiv'."),
            },
        },
        {
            id = "turnin-2281-redridge-rendezvous",
            kind = "turnin",
            priority = 60,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                },
            },
            text = "Turn in Redridge Rendezvous to Lucius in Lake Everstill.",
            dependsOn = { "accept-2281-redridge-rendezvous" },
            complete = QuestState(2281, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.2810, 0.5213, "Lucius",
                    "Travel to Lucius."),
            },
        },
        {
            id = "accept-2282-alther-s-mill",
            kind = "accept",
            priority = 70,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                },
            },
            text = "Accept Alther's Mill from Lucius in Lake Everstill.",
            complete = QuestState(2282, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.2810, 0.5213, "Lucius",
                    "Travel to Lucius."),
            },
        },
        {
            id = "objective-2282-alther-s-mill",
            kind = "objective",
            priority = 80,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                },
            },
            text = "Use Pick Lock on the pratice boxes until you reach about level 75 lock pick then open the Lucius's Lockbox to collect Token of Thievery in Alther's Mill.",
            dependsOn = { "accept-2282-alther-s-mill" },
            complete = QuestState(2282, "complete"),
            route = {
                Point(MAP.REDRIDGE, 0.5199, 0.4492, "Alther's Mill",
                    "Travel to Alther's Mill."),
            },
        },
        {
            id = "turnin-2282-alther-s-mill",
            kind = "turnin",
            priority = 90,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                },
            },
            text = "Turn in Alther's Mill to Lucius in Lake Everstill.",
            dependsOn = { "objective-2282-alther-s-mill" },
            complete = QuestState(2282, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.2817, 0.5208, "Lucius",
                    "Travel to Lucius."),
            },
        },
        {
            id = "accept-244-encroaching-gnolls",
            kind = "accept",
            priority = 100,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
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
            priority = 110,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
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
            priority = 120,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Assessing the Threat from Deputy Feldon in Redridge Mountains.",
            complete = QuestState(246, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.3074, 0.6015, "Deputy Feldon",
                    "Travel to Deputy Feldon."),
            },
        },
        {
            id = "accept-125-the-lost-tools",
            kind = "accept",
            priority = 130,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept The Lost Tools from Foreman Oslow in Lakeshire.",
            complete = QuestState(125, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.3218, 0.4884, "Foreman Oslow",
                    "Travel to Foreman Oslow."),
            },
        },
        {
            id = "accept-3741-hilary-s-necklace",
            kind = "accept",
            priority = 140,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Hilary's Necklace from Shawn in Lake Everstill.",
            complete = QuestState(3741, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.2933, 0.5349, "Shawn",
                    "Travel to Shawn."),
            },
        },
        {
            id = "accept-127-selling-fish",
            kind = "accept",
            priority = 150,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Selling Fish from Dockmaster Baren in Lakeshire.",
            complete = QuestState(127, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.2768, 0.4738, "Dockmaster Baren",
                    "Travel to Dockmaster Baren."),
            },
        },
        {
            id = "accept-129-a-free-lunch",
            kind = "accept",
            priority = 160,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept A Free Lunch from Darcy Parker in Redridge Mountains.",
            complete = QuestState(129, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.2708, 0.4513, "Darcy Parker",
                    "Travel to Darcy Parker."),
            },
        },
        {
            id = "accept-92-redridge-goulash",
            kind = "accept",
            priority = 170,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Redridge Goulash from Chef Breanna in Lakeshire.",
            complete = QuestState(92, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.2270, 0.4388, "Chef Breanna",
                    "Travel to Chef Breanna."),
            },
        },
        {
            id = "accept-118-the-price-of-shoes",
            kind = "accept",
            priority = 180,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
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
            priority = 190,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Messenger to Stormwind from Magistrate Solomon in Lakeshire.",
            complete = QuestState(120, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.3001, 0.4433, "Magistrate Solomon",
                    "Travel to Magistrate Solomon."),
            },
        },
        {
            id = "accept-98407-show-of-force",
            kind = "accept",
            priority = 200,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 11 } },
                },
            },
            text = "Accept Show of Force from Deputy Feldon.",
            complete = QuestState(98407, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.308, 0.600, "Deputy Feldon",
                    "Travel to Deputy Feldon."),
            },
        },
        {
            id = "accept-95999-wanted-incinerator-garim",
            kind = "accept",
            priority = 210,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 16 } },
                },
            },
            text = "Accept WANTED: Incinerator Gar'im from Magistrate Solomon.",
            complete = QuestState(95999, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.300, 0.442, "Magistrate Solomon",
                    "Travel to Magistrate Solomon."),
            },
        },
        {
            id = "objective-95999-wanted-incinerator-garim-1",
            kind = "objective",
            priority = 220,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 16 } },
                },
            },
            text = "WANTED: Incinerator Gar'im: Broken Staff of Incinerator Gar'im. This is an elite. Bring a group.",
            dependsOn = { "accept-95999-wanted-incinerator-garim" },
            complete = QuestObjective(95999, 1, "Broken Staff of Incinerator Gar'im"),
            route = {
                Point(MAP.REDRIDGE, 0.778, 0.862, "Incinerator Gar'im",
                    "Travel to Incinerator Gar'im."),
            },
        },
        {
            id = "turnin-95999-wanted-incinerator-garim",
            kind = "turnin",
            priority = 230,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 16 } },
                },
            },
            text = "Turn in WANTED: Incinerator Gar'im to Magistrate Solomon.",
            dependsOn = { "objective-95999-wanted-incinerator-garim-1" },
            complete = QuestState(95999, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.300, 0.442, "Magistrate Solomon",
                    "Travel to Magistrate Solomon."),
            },
        },
        {
            id = "objective-98407-show-of-force-1",
            kind = "objective",
            priority = 240,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 11 } },
                },
            },
            text = "Show of Force: Spiked Collar.",
            dependsOn = { "accept-98407-show-of-force" },
            complete = QuestObjective(98407, 1, "Spiked Collar"),
            route = {
                Point(MAP.REDRIDGE, 0.300, 0.812, "Redridge Thrasher",
                    "Travel to Redridge Thrasher."),
            },
        },
        {
            id = "turnin-98407-show-of-force",
            kind = "turnin",
            priority = 250,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 11 } },
                },
            },
            text = "Turn in Show of Force to Deputy Feldon.",
            dependsOn = { "objective-98407-show-of-force-1" },
            complete = QuestState(98407, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.308, 0.600, "Deputy Feldon",
                    "Travel to Deputy Feldon."),
            },
        },
        {
            id = "turnin-120-messenger-to-stormwind",
            kind = "turnin",
            priority = 260,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
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
            priority = 270,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
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
            priority = 280,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
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
            priority = 290,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Return to Verner from Smith Argus in Goldshire.",
            complete = QuestState(119, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNN, 0.4170, 0.6553, "Smith Argus",
                    "Travel to Smith Argus."),
            },
        },
        {
            id = "turnin-119-return-to-verner",
            kind = "turnin",
            priority = 300,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
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
            priority = 310,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Underbelly Scales from Verner Osgood in Lakeshire.",
            complete = QuestState(122, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.3049, 0.4802, "Verner Osgood",
                    "Travel to Verner Osgood."),
            },
        },
        {
            id = "accept-124-a-baying-of-gnolls",
            kind = "accept",
            priority = 320,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept A Baying of Gnolls from Verner Osgood in Lakeshire.",
            complete = QuestState(124, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.3091, 0.4792, "Verner Osgood",
                    "Travel to Verner Osgood."),
            },
        },
        {
            id = "turnin-121-messenger-to-stormwind",
            kind = "turnin",
            priority = 330,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Messenger to Stormwind to Magistrate Solomon in Lakeshire.",
            dependsOn = { "accept-121-messenger-to-stormwind" },
            complete = QuestState(121, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.3000, 0.4441, "Magistrate Solomon",
                    "Travel to Magistrate Solomon."),
            },
        },
        {
            id = "objective-92-1-great-goretusk",
            kind = "objective",
            priority = 340,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill Great Goretusk and collect 5 Great Goretusk Snout to the west of the lake.",
            dependsOn = { "accept-92-redridge-goulash" },
            complete = QuestObjective(92, 1),
            route = {
                Point(MAP.REDRIDGE, 0.1650, 0.4960, "Great Goretusk",
                    "Travel to Great Goretusk."),
            },
        },
        {
            id = "objective-3741-hilary-s-necklace",
            kind = "objective",
            priority = 350,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
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
            id = "objective-125-the-lost-tools",
            kind = "objective",
            priority = 360,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "You can find Oslow's Toolbox in the Sunken Chest underwater.",
            dependsOn = { "accept-125-the-lost-tools" },
            complete = QuestState(125, "complete"),
            route = {
                Point(MAP.REDRIDGE, 0.4140, 0.5470, "The Lost Tools",
                    "Travel to The Lost Tools."),
            },
        },
        {
            id = "objective-127-selling-fish",
            kind = "objective",
            priority = 370,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill the Murloc Shorestriker, Murloc Minor Tidecaller and Murloc Flesheater in the water, collect 10 Spotted Sunfish Also keep all Murloc Fin that you find.",
            dependsOn = { "accept-127-selling-fish" },
            complete = QuestState(127, "complete"),
        },
        {
            id = "turnin-125-the-lost-tools",
            kind = "turnin",
            priority = 380,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in The Lost Tools to Foreman Oslow in Lakeshire.",
            dependsOn = { "objective-125-the-lost-tools" },
            complete = QuestState(125, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.3218, 0.4884, "Foreman Oslow",
                    "Travel to Foreman Oslow."),
            },
        },
        {
            id = "accept-89-the-everstill-bridge",
            kind = "accept",
            priority = 390,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept The Everstill Bridge from Foreman Oslow in Lakeshire.",
            complete = QuestState(89, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.3218, 0.4884, "Foreman Oslow",
                    "Travel to Foreman Oslow."),
            },
        },
        {
            id = "turnin-3741-hilary-s-necklace",
            kind = "turnin",
            priority = 400,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Hilary's Necklace to Nida in Lake Everstill.",
            dependsOn = { "objective-3741-hilary-s-necklace" },
            complete = QuestState(3741, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.2928, 0.5344, "Nida",
                    "Travel to Nida."),
            },
        },
        {
            id = "turnin-127-selling-fish",
            kind = "turnin",
            priority = 410,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Selling Fish to Dockmaster Baren in Lakeshire.",
            dependsOn = { "objective-127-selling-fish" },
            complete = QuestState(127, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.2768, 0.4738, "Dockmaster Baren",
                    "Travel to Dockmaster Baren."),
            },
        },
        {
            id = "turnin-129-a-free-lunch",
            kind = "turnin",
            priority = 420,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in A Free Lunch to Watch Captain Parker in Three Corners.",
            dependsOn = { "accept-129-a-free-lunch" },
            complete = QuestState(129, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.1532, 0.7142, "Watch Captain Parker",
                    "Travel to Watch Captain Parker."),
            },
        },
        {
            id = "accept-130-visit-the-herbalist",
            kind = "accept",
            priority = 430,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Visit the Herbalist from Watch Captain Parker in Three Corners.",
            complete = QuestState(130, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.1532, 0.7142, "Watch Captain Parker",
                    "Travel to Watch Captain Parker."),
            },
        },
        {
            id = "objective-92-3-tarantula",
            kind = "objective",
            priority = 440,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill Tarantula and collect 5 Crisp Spider Meat in Three Corners.",
            dependsOn = { "accept-92-redridge-goulash" },
            complete = QuestObjective(92, 3),
            route = {
                Point(MAP.REDRIDGE, 0.1220, 0.7799, "Tarantula",
                    "Travel to Tarantula."),
            },
        },
        {
            id = "objective-246-assessing-the-threat",
            kind = "objective",
            priority = 450,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill 10 Redridge Mongrel and 6 Redridge Poacher which can be found to the south in Lakeridge Highway.",
            dependsOn = { "accept-246-assessing-the-threat" },
            complete = QuestState(246, "complete"),
            route = {
                Point(MAP.REDRIDGE, 0.3088, 0.8320, "Continue toward Assessing the Threat",
                    "Continue toward Assessing the Threat."),
                Point(MAP.REDRIDGE, 0.4198, 0.7288, "Redridge Mongrel",
                    "Travel to Redridge Mongrel."),
            },
        },
        {
            id = "objective-92-2-dire-condor",
            kind = "objective",
            priority = 460,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill Dire Condor and get 5 pieces of Tough Condor Meat Tip: also kill Black Dragon Whelp in the area for easy XP.",
            dependsOn = { "accept-92-redridge-goulash" },
            complete = QuestObjective(92, 2),
            route = {
                Point(MAP.REDRIDGE, 0.5910, 0.7717, "Dire Condor",
                    "Travel to Dire Condor."),
            },
        },
        {
            id = "objective-122-underbelly-scales",
            kind = "objective",
            priority = 470,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill Black Dragon Whelp and collect 6 Underbelly Whelp Scale in Lakeridge Highway.",
            dependsOn = { "accept-122-underbelly-scales" },
            complete = QuestState(122, "complete"),
            route = {
                Point(MAP.REDRIDGE, 0.3337, 0.6713, "Black Dragon Whelp",
                    "Travel to Black Dragon Whelp."),
            },
        },
        {
            id = "turnin-246-assessing-the-threat",
            kind = "turnin",
            priority = 480,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Assessing the Threat to Deputy Feldon in Lakeshire.",
            dependsOn = { "objective-246-assessing-the-threat" },
            complete = QuestState(246, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.3074, 0.6015, "Deputy Feldon",
                    "Travel to Deputy Feldon."),
            },
        },
        {
            id = "turnin-130-visit-the-herbalist",
            kind = "turnin",
            priority = 490,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Visit the Herbalist to Martie Jainrose in Lakeshire.",
            dependsOn = { "accept-130-visit-the-herbalist" },
            complete = QuestState(130, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.2203, 0.4636, "Martie Jainrose",
                    "Travel to Martie Jainrose."),
            },
        },
        {
            id = "accept-131-delivering-daffodils",
            kind = "accept",
            priority = 500,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Delivering Daffodils from Martie Jainrose in Lakeshire.",
            complete = QuestState(131, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.2203, 0.4636, "Martie Jainrose",
                    "Travel to Martie Jainrose."),
            },
        },
        {
            id = "turnin-92-redridge-goulash",
            kind = "turnin",
            priority = 510,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Redridge Goulash to Chef Breanna in Lakeshire.",
            dependsOn = { "objective-92-1-great-goretusk", "objective-92-3-tarantula", "objective-92-2-dire-condor" },
            complete = QuestState(92, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.2270, 0.4388, "Chef Breanna",
                    "Travel to Chef Breanna."),
            },
        },
        {
            id = "turnin-131-delivering-daffodils",
            kind = "turnin",
            priority = 520,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Delivering Daffodils to Darcy Parker in Lakeshire.",
            dependsOn = { "accept-131-delivering-daffodils" },
            complete = QuestState(131, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.2708, 0.4513, "Darcy Parker",
                    "Travel to Darcy Parker."),
            },
        },
        {
            id = "turnin-122-underbelly-scales",
            kind = "turnin",
            priority = 530,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Underbelly Scales to Verner Osgood in Lakeshire.",
            dependsOn = { "objective-122-underbelly-scales" },
            complete = QuestState(122, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.3102, 0.4732, "Verner Osgood",
                    "Travel to Verner Osgood."),
            },
        },
        {
            id = "objective-124-a-baying-of-gnolls",
            kind = "objective",
            priority = 540,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill 8 Redridge Mystic and 10 Redridge Brute in Redridge Canyons.",
            dependsOn = { "accept-124-a-baying-of-gnolls" },
            complete = QuestState(124, "complete"),
            route = {
                Point(MAP.REDRIDGE, 0.2595, 0.3577, "Continue toward A Baying of Gnolls",
                    "Continue toward A Baying of Gnolls."),
                Point(MAP.REDRIDGE, 0.2164, 0.3616, "Redridge Mystic",
                    "Travel to Redridge Mystic."),
            },
        },
        {
            id = "objective-89-the-everstill-bridge",
            kind = "objective",
            priority = 550,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Collect 5 Iron Pike and 5 Iron Rivet dropped by any Gnolls in Redridge Canyons.",
            dependsOn = { "accept-89-the-everstill-bridge" },
            complete = QuestState(89, "complete"),
            route = {
                Point(MAP.REDRIDGE, 0.3879, 0.3167, "Continue toward The Everstill Bridge",
                    "Continue toward The Everstill Bridge."),
                Point(MAP.REDRIDGE, 0.3118, 0.2270, "Redridge Mystic",
                    "Travel to Redridge Mystic."),
            },
        },
        {
            id = "turnin-89-the-everstill-bridge",
            kind = "turnin",
            priority = 560,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in The Everstill Bridge to Foreman Oslow in Lakeshire.",
            dependsOn = { "objective-89-the-everstill-bridge" },
            complete = QuestState(89, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.3218, 0.4884, "Foreman Oslow",
                    "Travel to Foreman Oslow."),
            },
        },
        {
            id = "turnin-124-a-baying-of-gnolls",
            kind = "turnin",
            priority = 570,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in A Baying of Gnolls to Verner Osgood in Lakeshire.",
            dependsOn = { "objective-124-a-baying-of-gnolls" },
            complete = QuestState(124, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.3103, 0.4742, "Verner Osgood",
                    "Travel to Verner Osgood."),
            },
        },
        {
            id = "accept-126-howling-in-the-hills",
            kind = "accept",
            priority = 580,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Howling in the Hills from Verner Osgood in Lakeshire.",
            complete = QuestState(126, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.3103, 0.4742, "Verner Osgood",
                    "Travel to Verner Osgood."),
            },
        },
        {
            id = "accept-150-murloc-poachers",
            kind = "accept",
            priority = 590,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Murloc Poachers from Dockmaster Baren in Lakeshire.",
            complete = QuestState(150, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.2768, 0.4738, "Dockmaster Baren",
                    "Travel to Dockmaster Baren."),
            },
        },
        {
            id = "objective-150-murloc-poachers",
            kind = "objective",
            priority = 600,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill Murloc Scout for 8 Murloc Fin you can find them throughout the lake in Redridge Mountains.",
            dependsOn = { "accept-150-murloc-poachers" },
            complete = QuestState(150, "complete"),
            route = {
                Point(MAP.REDRIDGE, 0.4000, 0.4800, "Murloc Scout",
                    "Travel to Murloc Scout."),
            },
        },
        {
            id = "turnin-150-murloc-poachers",
            kind = "turnin",
            priority = 610,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Murloc Poachers to Dockmaster Baren in Lakeshire.",
            dependsOn = { "objective-150-murloc-poachers" },
            complete = QuestState(150, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.2768, 0.4738, "Dockmaster Baren",
                    "Travel to Dockmaster Baren."),
            },
        },
        {
            id = "accept-2360-mathias-and-the-defias",
            kind = "accept",
            priority = 620,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                },
            },
            text = "Accept Mathias and the Defias from Master Mathias Shaw in SI:7.",
            complete = QuestState(2360, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.7591, 0.5995, "Master Mathias Shaw",
                    "Travel to Master Mathias Shaw."),
            },
        },
        {
            id = "turnin-2360-mathias-and-the-defias",
            kind = "turnin",
            priority = 630,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                },
            },
            text = "Turn in Mathias and the Defias to Agent Kearnen in The Dust Plains.",
            dependsOn = { "accept-2360-mathias-and-the-defias" },
            complete = QuestState(2360, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.6845, 0.7008, "Agent Kearnen",
                    "Travel to Agent Kearnen."),
            },
        },
        {
            id = "accept-2359-klaven-s-tower",
            kind = "accept",
            priority = 640,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                },
            },
            text = "Accept Klaven's Tower from Agent Kearnen in The Dust Plains.",
            complete = QuestState(2359, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.6845, 0.7008, "Agent Kearnen",
                    "Travel to Agent Kearnen."),
            },
        },
        {
            id = "objective-2359-2-malformed-defias-drone",
            kind = "objective",
            priority = 650,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                },
            },
            text = "Use Pick Pocket on Malformed Defias Drone to steal the Defias Tower Key in The Dust Plains.",
            dependsOn = { "accept-2359-klaven-s-tower" },
            complete = QuestObjective(2359, 2),
            route = {
                Point(MAP.WESTFALL, 0.6951, 0.7482, "Malformed Defias Drone",
                    "Travel to Malformed Defias Drone."),
            },
        },
        {
            id = "turnin-2359-klaven-s-tower",
            kind = "turnin",
            priority = 660,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                },
            },
            text = "Turn in Klaven's Tower to Master Mathias Shaw in SI:7.",
            dependsOn = { "objective-2359-2-malformed-defias-drone" },
            complete = QuestState(2359, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.7598, 0.5988, "Master Mathias Shaw",
                    "Travel to Master Mathias Shaw."),
            },
        },
        {
            id = "accept-2607-the-touch-of-zanzil",
            kind = "accept",
            priority = 670,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                },
            },
            text = "Accept The Touch of Zanzil from Master Mathias Shaw in SI:7.",
            complete = QuestState(2607, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.7598, 0.5988, "Master Mathias Shaw",
                    "Travel to Master Mathias Shaw."),
            },
        },
        {
            id = "turnin-2607-the-touch-of-zanzil",
            kind = "turnin",
            priority = 680,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                },
            },
            text = "Turn in The Touch of Zanzil to Doc Mixilpixil in SI:7.",
            dependsOn = { "accept-2607-the-touch-of-zanzil" },
            complete = QuestState(2607, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.7802, 0.5884, "Doc Mixilpixil",
                    "Travel to Doc Mixilpixil."),
            },
        },
        {
            id = "accept-2608-the-touch-of-zanzil",
            kind = "accept",
            priority = 690,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                },
            },
            text = "Accept The Touch of Zanzil from Doc Mixilpixil in SI:7.",
            complete = QuestState(2608, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.7797, 0.5897, "Doc Mixilpixil",
                    "Travel to Doc Mixilpixil."),
            },
        },
        {
            id = "objective-2608-the-touch-of-zanzil",
            kind = "objective",
            priority = 700,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                },
            },
            text = "Type \"/Lay\" to lay down to be examined by Doc Mixilpixil.",
            dependsOn = { "accept-2608-the-touch-of-zanzil" },
            complete = QuestState(2608, "complete"),
            route = {
                Point(MAP.STORMWIND, 0.7797, 0.5897, "Doc Mixilpixil",
                    "Travel to Doc Mixilpixil."),
            },
        },
        {
            id = "turnin-2608-the-touch-of-zanzil",
            kind = "turnin",
            priority = 710,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                },
            },
            text = "Turn in The Touch of Zanzil to Doc Mixilpixil in SI:7.",
            dependsOn = { "objective-2608-the-touch-of-zanzil" },
            complete = QuestState(2608, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.7798, 0.5890, "Doc Mixilpixil",
                    "Travel to Doc Mixilpixil."),
            },
        },
        {
            id = "accept-2609-the-touch-of-zanzil",
            kind = "accept",
            priority = 720,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                },
            },
            text = "Accept The Touch of Zanzil from Doc Mixilpixil in SI:7.",
            complete = QuestState(2609, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.7798, 0.5890, "Doc Mixilpixil",
                    "Travel to Doc Mixilpixil."),
            },
        },
        {
            id = "objective-2609-1-simple-wildflowers",
            kind = "objective",
            priority = 730,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                },
            },
            text = "Buy Simple Wildflowers from Bernard Gump in The Canals.",
            dependsOn = { "accept-2609-the-touch-of-zanzil" },
            complete = QuestObjective(2609, 1),
            route = {
                Point(MAP.STORMWIND, 0.6513, 0.6005, "Continue toward Simple Wildflowers",
                    "Continue toward Simple Wildflowers."),
                Point(MAP.STORMWIND, 0.6419, 0.6112, "Bernard Gump",
                    "Travel to Bernard Gump."),
            },
        },
        {
            id = "objective-2609-2-cracked-vial",
            kind = "objective",
            priority = 740,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                },
            },
            text = "Buy Cracked Vial from Edna Mullby in Trade District.",
            dependsOn = { "accept-2609-the-touch-of-zanzil" },
            complete = QuestObjective(2609, 2),
            route = {
                Point(MAP.STORMWIND, 0.5810, 0.6064, "Edna Mullby",
                    "Travel to Edna Mullby."),
            },
        },
        {
            id = "objective-2609-4-spool-of-light-chartreuse-silk-thread",
            kind = "objective",
            priority = 750,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                },
            },
            text = "Collect Spool of Light Chartreuse Silk Thread from the floor inside the shop, it's near the crate on the left hand side as you walk in.",
            dependsOn = { "accept-2609-the-touch-of-zanzil" },
            complete = QuestObjective(2609, 4),
            route = {
                Point(MAP.STORMWIND, 0.3997, 0.4623, "Spool of Light Chartreuse Silk Thread",
                    "Travel to Spool of Light Chartreuse Silk Thread."),
            },
        },
        {
            id = "objective-2609-3-bronze-tube",
            kind = "objective",
            priority = 760,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                },
            },
            text = "Buy Bronze Tube from Billibub Cogspinner in Dwarven District.",
            dependsOn = { "accept-2609-the-touch-of-zanzil" },
            complete = QuestObjective(2609, 3),
            route = {
                Point(MAP.STORMWIND, 0.5524, 0.0712, "Billibub Cogspinner",
                    "Travel to Billibub Cogspinner."),
            },
        },
        {
            id = "objective-2609-3-bronze-tube-2",
            kind = "objective",
            priority = 770,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                },
            },
            text = "Buy Bronze Tube from Loslor Rudge in Steelgrill's Depot.",
            dependsOn = { "accept-2609-the-touch-of-zanzil" },
            complete = QuestObjective(2609, 3),
            route = {
                Point(MAP.DUN_MOROGH, 0.5008, 0.4936, "Loslor Rudge",
                    "Travel to Loslor Rudge."),
            },
        },
        {
            id = "objective-2609-3-bronze-tube-3",
            kind = "objective",
            priority = 780,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                },
            },
            text = "Buy Bronze Tube from Gearcutter Cogspinner in Tinker Town.",
            dependsOn = { "accept-2609-the-touch-of-zanzil" },
            complete = QuestObjective(2609, 3),
            route = {
                Point(MAP.IRONFORGE, 0.6787, 0.4269, "Gearcutter Cogspinner",
                    "Travel to Gearcutter Cogspinner."),
            },
        },
        {
            id = "objective-2609-3-bronze-tube-4",
            kind = "objective",
            priority = 790,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                },
            },
            text = "Buy Bronze Tube from Neal Allen in Menethil Keep.",
            dependsOn = { "accept-2609-the-touch-of-zanzil" },
            complete = QuestObjective(2609, 3),
            route = {
                Point(MAP.WETLANDS, 0.1078, 0.5673, "Neal Allen",
                    "Travel to Neal Allen."),
            },
        },
        {
            id = "turnin-2609-the-touch-of-zanzil",
            kind = "turnin",
            priority = 800,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { class = 4 },
                },
            },
            text = "Turn in The Touch of Zanzil to Doc Mixilpixil in SI:7.",
            dependsOn = { "objective-2609-1-simple-wildflowers", "objective-2609-2-cracked-vial", "objective-2609-4-spool-of-light-chartreuse-silk-thread", "objective-2609-3-bronze-tube", "objective-2609-3-bronze-tube-2", "objective-2609-3-bronze-tube-3", "objective-2609-3-bronze-tube-4" },
            complete = QuestState(2609, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.7802, 0.5887, "Doc Mixilpixil",
                    "Travel to Doc Mixilpixil."),
            },
        },
        {
            id = "accept-128-blackrock-bounty",
            kind = "accept",
            priority = 810,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Blackrock Bounty from Guard Howe in Lakeshire.",
            complete = QuestState(128, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.3152, 0.5790, "Guard Howe",
                    "Travel to Guard Howe."),
            },
        },
        {
            id = "accept-20-blackrock-menace",
            kind = "accept",
            priority = 820,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Blackrock Menace from Marshal Marris in Lakeshire.",
            complete = QuestState(20, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.3340, 0.4890, "Marshal Marris",
                    "Travel to Marshal Marris."),
            },
        },
        {
            id = "accept-169-wanted-gath-ilzogg",
            kind = "accept",
            priority = 830,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Wanted: Gath'Ilzogg in Lakeshire.",
            complete = QuestState(169, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.2954, 0.4603, "Lakeshire",
                    "Travel to Lakeshire."),
            },
        },
        {
            id = "accept-91-solomon-s-law",
            kind = "accept",
            priority = 840,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Solomon's Law from Bailiff Conacher in Lakeshire.",
            complete = QuestState(91, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.2964, 0.4435, "Bailiff Conacher",
                    "Travel to Bailiff Conacher."),
            },
        },
        {
            id = "accept-180-wanted-lieutenant-fangore",
            kind = "accept",
            priority = 850,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Wanted: Lieutenant Fangore in Lakeshire.",
            complete = QuestState(180, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.2670, 0.4650, "Lakeshire",
                    "Travel to Lakeshire."),
            },
        },
        {
            id = "accept-34-an-unwelcome-guest",
            kind = "accept",
            priority = 860,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept An Unwelcome Guest from Martie Jainrose in Lakeshire.",
            complete = QuestState(34, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.2190, 0.4627, "Martie Jainrose",
                    "Travel to Martie Jainrose."),
            },
        },
        {
            id = "accept-115-shadow-magic",
            kind = "accept",
            priority = 870,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 18 } },
                },
            },
            text = "Accept Shadow Magic from Marshal Marris.",
            complete = QuestState(115, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.334, 0.488, "Marshal Marris",
                    "Travel to Marshal Marris."),
            },
        },
        {
            id = "objective-115-shadow-magic-1",
            kind = "objective",
            priority = 880,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 18 } },
                },
            },
            text = "Shadow Magic: Midnight Orb. This is an elite. Bring a group.",
            dependsOn = { "accept-115-shadow-magic" },
            complete = QuestObjective(115, 1, "Midnight Orb"),
            route = {
                Point(MAP.REDRIDGE, 0.684, 0.546, "Blackrock Shadowcaster",
                    "Travel to Blackrock Shadowcaster."),
            },
        },
        {
            id = "turnin-115-shadow-magic",
            kind = "turnin",
            priority = 890,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 18 } },
                },
            },
            text = "Turn in Shadow Magic to Marshal Marris.",
            dependsOn = { "objective-115-shadow-magic-1" },
            complete = QuestState(115, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.334, 0.488, "Marshal Marris",
                    "Travel to Marshal Marris."),
            },
        },
        {
            id = "objective-34-an-unwelcome-guest",
            kind = "objective",
            priority = 900,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill Bellygrub and collect Bellygrub's Tusk west of Lakeshire.",
            dependsOn = { "accept-34-an-unwelcome-guest" },
            complete = QuestState(34, "complete"),
            route = {
                Point(MAP.REDRIDGE, 0.1700, 0.4800, "Bellygrub",
                    "Travel to Bellygrub."),
            },
        },
        {
            id = "turnin-34-an-unwelcome-guest",
            kind = "turnin",
            priority = 910,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in An Unwelcome Guest to Martie Jainrose in Lakeshire.",
            dependsOn = { "objective-34-an-unwelcome-guest" },
            complete = QuestState(34, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.2190, 0.4627, "Martie Jainrose",
                    "Travel to Martie Jainrose."),
            },
        },
        {
            id = "objective-20-blackrock-menace",
            kind = "objective",
            priority = 920,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Collect 10 Battleworn Axe which drop from Blackrock Grunt, Blackrock Summoner, Blackrock Tracker and Blackrock Outrunner found along the Northern road or at their encampment at.",
            dependsOn = { "accept-20-blackrock-menace" },
            complete = QuestState(20, "complete"),
            route = {
                Point(MAP.REDRIDGE, 0.2920, 0.1160, "Blackrock Grunt",
                    "Travel to Blackrock Grunt."),
            },
        },
        {
            id = "objective-128-blackrock-bounty",
            kind = "objective",
            priority = 930,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill 15 Blackrock Champion which are found in Render's Rock.",
            dependsOn = { "accept-128-blackrock-bounty" },
            complete = QuestState(128, "complete"),
            route = {
                Point(MAP.REDRIDGE, 0.3100, 0.1400, "Blackrock Champion",
                    "Travel to Blackrock Champion."),
            },
        },
        {
            id = "accept-219-missing-in-action",
            kind = "accept",
            priority = 940,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Missing In Action from Corporal Keeshan in Render's Rock.",
            complete = QuestState(219, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.2836, 0.1274, "Corporal Keeshan",
                    "Travel to Corporal Keeshan."),
            },
        },
        {
            id = "objective-219-missing-in-action",
            kind = "objective",
            priority = 950,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "This is an escort quest where you must protect Corporal Keeshan through the cave He is a strong NPC who you should let tank but also be sure to pull the mobs to him instead of him charging into them to prevent any unwanted adds He is an elite warrior so will help taunt any mobs off you, skip this quest if its too hard.",
            dependsOn = { "accept-219-missing-in-action" },
            complete = QuestState(219, "complete"),
            route = {
                Point(MAP.REDRIDGE, 0.3122, 0.1504, "Continue toward Missing In Action",
                    "Continue toward Missing In Action."),
                Point(MAP.REDRIDGE, 0.3341, 0.4852, "Corporal Keeshan",
                    "Travel to Corporal Keeshan."),
            },
        },
        {
            id = "turnin-219-missing-in-action",
            kind = "turnin",
            priority = 960,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Missing In Action to Marshal Marris in Lakeshire.",
            dependsOn = { "objective-219-missing-in-action" },
            complete = QuestState(219, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.3340, 0.4890, "Marshal Marris",
                    "Travel to Marshal Marris."),
            },
        },
        {
            id = "turnin-20-blackrock-menace",
            kind = "turnin",
            priority = 970,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Blackrock Menace to Marshal Marris in Lakeshire.",
            dependsOn = { "objective-20-blackrock-menace" },
            complete = QuestState(20, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.3340, 0.4890, "Marshal Marris",
                    "Travel to Marshal Marris."),
            },
        },
        {
            id = "accept-19-tharilzun",
            kind = "accept",
            priority = 980,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 18 } },
                },
            },
            dependsOn = { "turnin-20-blackrock-menace" },
            text = "Accept Tharil'zun from Marshal Marris.",
            complete = QuestState(19, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.334, 0.488, "Marshal Marris",
                    "Travel to Marshal Marris."),
            },
        },
        {
            id = "objective-19-tharilzun-1",
            kind = "objective",
            priority = 990,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 18 } },
                },
            },
            text = "Tharil'zun: Tharil'zun's Head. This is an elite. Bring a group.",
            dependsOn = { "accept-19-tharilzun" },
            complete = QuestObjective(19, 1, "Tharil'zun's Head"),
            route = {
                Point(MAP.REDRIDGE, 0.692, 0.594, "Tharil'zun",
                    "Travel to Tharil'zun."),
            },
        },
        {
            id = "turnin-19-tharilzun",
            kind = "turnin",
            priority = 1000,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 18 } },
                },
            },
            text = "Turn in Tharil'zun to Marshal Marris.",
            dependsOn = { "objective-19-tharilzun-1" },
            complete = QuestState(19, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.334, 0.488, "Marshal Marris",
                    "Travel to Marshal Marris."),
            },
        },
        {
            id = "accept-98386-althers-mill",
            kind = "accept",
            priority = 1010,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 15 } },
                },
            },
            dependsOn = { "turnin-20-blackrock-menace" },
            text = "Accept Alther's Mill from Foreman Oslow.",
            complete = QuestState(98386, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.322, 0.486, "Foreman Oslow",
                    "Travel to Foreman Oslow."),
            },
        },
        {
            id = "objective-98386-althers-mill-1",
            kind = "objective",
            priority = 1020,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 15 } },
                },
            },
            text = "Alther's Mill: Greater Tarantula.",
            dependsOn = { "accept-98386-althers-mill" },
            complete = QuestObjective(98386, 1, "Greater Tarantula"),
            route = {
                Point(MAP.REDRIDGE, 0.322, 0.486, "Foreman Oslow",
                    "Travel to Foreman Oslow."),
            },
        },
        {
            id = "objective-98386-althers-mill-2",
            kind = "objective",
            priority = 1030,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 15 } },
                },
            },
            text = "Alther's Mill: Greater Tarantula.",
            dependsOn = { "accept-98386-althers-mill" },
            complete = QuestObjective(98386, 2, "Greater Tarantula"),
            route = {
                Point(MAP.REDRIDGE, 0.322, 0.486, "Foreman Oslow",
                    "Travel to Foreman Oslow."),
            },
        },
        {
            id = "objective-98386-althers-mill-3",
            kind = "objective",
            priority = 1040,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 15 } },
                },
            },
            text = "Alther's Mill: Greater Tarantula.",
            dependsOn = { "accept-98386-althers-mill" },
            complete = QuestObjective(98386, 3, "Greater Tarantula"),
            route = {
                Point(MAP.REDRIDGE, 0.322, 0.486, "Foreman Oslow",
                    "Travel to Foreman Oslow."),
            },
        },
        {
            id = "turnin-98386-althers-mill",
            kind = "turnin",
            priority = 1050,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 15 } },
                },
            },
            text = "Turn in Alther's Mill to Foreman Oslow.",
            dependsOn = { "objective-98386-althers-mill-3" },
            complete = QuestState(98386, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.322, 0.486, "Foreman Oslow",
                    "Travel to Foreman Oslow."),
            },
        },
        {
            id = "accept-98387-blackrock-blockade",
            kind = "accept",
            priority = 1060,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 18 } },
                },
            },
            dependsOn = { "turnin-98386-althers-mill" },
            text = "Accept Blackrock Blockade from Marshal Marris.",
            complete = QuestState(98387, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.334, 0.488, "Marshal Marris",
                    "Travel to Marshal Marris."),
            },
        },
        {
            id = "objective-98387-blackrock-blockade-1",
            kind = "objective",
            priority = 1070,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 18 } },
                },
            },
            text = "Blackrock Blockade: Stolen Supplies.",
            dependsOn = { "accept-98387-blackrock-blockade" },
            complete = QuestObjective(98387, 1, "Stolen Supplies"),
            route = {
                Point(MAP.REDRIDGE, 0.334, 0.488, "Marshal Marris",
                    "Travel to Marshal Marris."),
            },
        },
        {
            id = "objective-98387-blackrock-blockade-2",
            kind = "objective",
            priority = 1080,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 18 } },
                },
            },
            text = "Blackrock Blockade: Stolen Weapon.",
            dependsOn = { "accept-98387-blackrock-blockade" },
            complete = QuestObjective(98387, 2, "Stolen Weapon"),
            route = {
                Point(MAP.REDRIDGE, 0.334, 0.488, "Marshal Marris",
                    "Travel to Marshal Marris."),
            },
        },
        {
            id = "turnin-98387-blackrock-blockade",
            kind = "turnin",
            priority = 1090,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 18 } },
                },
            },
            text = "Turn in Blackrock Blockade to Marshal Marris.",
            dependsOn = { "objective-98387-blackrock-blockade-2" },
            complete = QuestState(98387, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.334, 0.488, "Marshal Marris",
                    "Travel to Marshal Marris."),
            },
        },
        {
            id = "turnin-128-blackrock-bounty",
            kind = "turnin",
            priority = 1100,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Blackrock Bounty to Guard Howe in Lakeshire.",
            dependsOn = { "objective-128-blackrock-bounty" },
            complete = QuestState(128, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.3152, 0.5790, "Guard Howe",
                    "Travel to Guard Howe."),
            },
        },
        {
            id = "objective-180-wanted-lieutenant-fangore",
            kind = "objective",
            priority = 1110,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill General Fangore and collect Fangore's Paw in Galardell Valley General Fangore is a level 26 non-elite but is surrounded by other mobs. Clear any mobs first before attacking him and then loot Fangore's Paw.",
            dependsOn = { "accept-180-wanted-lieutenant-fangore" },
            complete = QuestState(180, "complete"),
            route = {
                Point(MAP.REDRIDGE, 0.8000, 0.4000, "General Fangore",
                    "Travel to General Fangore."),
            },
        },
        {
            id = "objective-91-solomon-s-law",
            kind = "objective",
            priority = 1120,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Collect 10 Shadowhide Pendant from Shadowhide Warrior, Shadowhide Gnoll, Rabid Shadowhide Gnoll and Shadowhide Brute in Galardell Valley.",
            dependsOn = { "accept-91-solomon-s-law" },
            complete = QuestState(91, "complete"),
            route = {
                Point(MAP.REDRIDGE, 0.7400, 0.4700, "Shadowhide Warrior",
                    "Travel to Shadowhide Warrior."),
            },
        },
        {
            id = "turnin-91-solomon-s-law",
            kind = "turnin",
            priority = 1130,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Solomon's Law to Bailiff Conacher in Lakeshire.",
            dependsOn = { "objective-91-solomon-s-law" },
            complete = QuestState(91, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.2964, 0.4435, "Bailiff Conacher",
                    "Travel to Bailiff Conacher."),
            },
        },
        {
            id = "turnin-180-wanted-lieutenant-fangore",
            kind = "turnin",
            priority = 1140,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Wanted: Lieutenant Fangore to Magistrate Solomon in Lakeshire.",
            dependsOn = { "objective-180-wanted-lieutenant-fangore" },
            complete = QuestState(180, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.3000, 0.4400, "Magistrate Solomon",
                    "Travel to Magistrate Solomon."),
            },
        },
        {
            id = "objective-95816-sign-me-up-1",
            kind = "objective",
            priority = 1150,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Sign Me Up!: Advertising License Application. Wowhead has no pin, so follow the quest text.",
            complete = QuestObjective(95816, 1, "Advertising License Application"),
            route = {},
        },
        {
            id = "objective-95816-sign-me-up-2",
            kind = "objective",
            priority = 1160,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Sign Me Up!: Massive Pile of Completed Forms. Wowhead has no pin, so follow the quest text.",
            complete = QuestObjective(95816, 2, "Massive Pile of Completed Forms"),
            route = {},
        },
        {
            id = "turnin-95816-sign-me-up",
            kind = "turnin",
            priority = 1170,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Sign Me Up! to . Wowhead has no pin, so follow the quest text.",
            dependsOn = { "objective-95816-sign-me-up-2" },
            complete = QuestState(95816, "completed"),
            route = {},
        },
        {
            id = "accept-98247-shipping-label",
            kind = "accept",
            priority = 1180,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Shipping Label from Marcy Baker.",
            complete = QuestState(98247, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.096, 0.710, "Marcy Baker",
                    "Travel to Marcy Baker."),
            },
        },
        {
            id = "objective-98247-shipping-label-1",
            kind = "objective",
            priority = 1190,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Shipping Label: Shipping Label.",
            dependsOn = { "accept-98247-shipping-label" },
            complete = QuestObjective(98247, 1, "Shipping Label"),
            route = {
                Point(MAP.REDRIDGE, 0.096, 0.710, "Marcy Baker",
                    "Travel to Marcy Baker."),
            },
        },
        {
            id = "turnin-98247-shipping-label",
            kind = "turnin",
            priority = 1200,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Shipping Label to Marcy Baker.",
            dependsOn = { "objective-98247-shipping-label-1" },
            complete = QuestState(98247, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.096, 0.710, "Marcy Baker",
                    "Travel to Marcy Baker."),
            },
        },
        {
            id = "accept-98248-shipping-label",
            kind = "accept",
            priority = 1210,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Accept Shipping Label from Dokimi.",
            complete = QuestState(98248, "activeOrCompleted"),
            route = {
                Point(MAP.ZONE_1413, 0.500, 0.292, "Dokimi",
                    "Travel to Dokimi in The Barrens."),
            },
        },
        {
            id = "objective-98248-shipping-label-1",
            kind = "objective",
            priority = 1220,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Shipping Label: Shipping Label.",
            dependsOn = { "accept-98248-shipping-label" },
            complete = QuestObjective(98248, 1, "Shipping Label"),
            route = {
                Point(MAP.ZONE_1413, 0.500, 0.292, "Dokimi",
                    "Travel to Dokimi in The Barrens."),
            },
        },
        {
            id = "turnin-98248-shipping-label",
            kind = "turnin",
            priority = 1230,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 10 } },
                },
            },
            text = "Turn in Shipping Label to Dokimi.",
            dependsOn = { "objective-98248-shipping-label-1" },
            complete = QuestState(98248, "completed"),
            route = {
                Point(MAP.ZONE_1413, 0.500, 0.292, "Dokimi",
                    "Travel to Dokimi in The Barrens."),
            },
        },
        {
            id = "accept-116-dry-times",
            kind = "accept",
            priority = 1240,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 12 } },
                },
            },
            text = "Accept Dry Times from Barkeep Daniels.",
            complete = QuestState(116, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.266, 0.440, "Barkeep Daniels",
                    "Travel to Barkeep Daniels."),
            },
        },
        {
            id = "objective-116-dry-times-1",
            kind = "objective",
            priority = 1250,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 12 } },
                },
            },
            text = "Dry Times: Keg of Thunderbrew.",
            dependsOn = { "accept-116-dry-times" },
            complete = QuestObjective(116, 1, "Keg of Thunderbrew"),
            route = {
                Point(MAP.REDRIDGE, 0.266, 0.440, "Barkeep Daniels",
                    "Travel to Barkeep Daniels."),
            },
        },
        {
            id = "objective-116-dry-times-2",
            kind = "objective",
            priority = 1260,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 12 } },
                },
            },
            text = "Dry Times: Cask of Merlot.",
            dependsOn = { "accept-116-dry-times" },
            complete = QuestObjective(116, 2, "Cask of Merlot"),
            route = {
                Point(MAP.REDRIDGE, 0.266, 0.440, "Barkeep Daniels",
                    "Travel to Barkeep Daniels."),
            },
        },
        {
            id = "objective-116-dry-times-3",
            kind = "objective",
            priority = 1270,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 12 } },
                },
            },
            text = "Dry Times: Bottle of Moonshine.",
            dependsOn = { "accept-116-dry-times" },
            complete = QuestObjective(116, 3, "Bottle of Moonshine"),
            route = {
                Point(MAP.REDRIDGE, 0.266, 0.440, "Barkeep Daniels",
                    "Travel to Barkeep Daniels."),
            },
        },
        {
            id = "objective-116-dry-times-4",
            kind = "objective",
            priority = 1280,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 12 } },
                },
            },
            text = "Dry Times: Skin of Sweet Rum.",
            dependsOn = { "accept-116-dry-times" },
            complete = QuestObjective(116, 4, "Skin of Sweet Rum"),
            route = {
                Point(MAP.REDRIDGE, 0.266, 0.440, "Barkeep Daniels",
                    "Travel to Barkeep Daniels."),
            },
        },
        {
            id = "turnin-116-dry-times",
            kind = "turnin",
            priority = 1290,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in Dry Times to Barkeep Daniels.",
            dependsOn = { "objective-116-dry-times-4" },
            complete = QuestState(116, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.266, 0.440, "Barkeep Daniels",
                    "Travel to Barkeep Daniels."),
            },
        },
        {
            id = "accept-143-messenger-to-westfall",
            kind = "accept",
            priority = 1300,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 14 } },
                },
            },
            text = "Accept Messenger to Westfall from Magistrate Solomon.",
            complete = QuestState(143, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.300, 0.442, "Magistrate Solomon",
                    "Travel to Magistrate Solomon."),
            },
        },
        {
            id = "objective-143-messenger-to-westfall-1",
            kind = "objective",
            priority = 1310,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 14 } },
                },
            },
            text = "Messenger to Westfall: Solomon's Plea to Westfall.",
            dependsOn = { "accept-143-messenger-to-westfall" },
            complete = QuestObjective(143, 1, "Solomon's Plea to Westfall"),
            route = {
                Point(MAP.REDRIDGE, 0.300, 0.442, "Magistrate Solomon",
                    "Travel to Magistrate Solomon."),
            },
        },
        {
            id = "turnin-143-messenger-to-westfall",
            kind = "turnin",
            priority = 1320,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 14 } },
                },
            },
            text = "Turn in Messenger to Westfall to Gryan Stoutmantle.",
            dependsOn = { "objective-143-messenger-to-westfall-1" },
            complete = QuestState(143, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.562, 0.476, "Gryan Stoutmantle",
                    "Travel to Gryan Stoutmantle."),
            },
        },
        {
            id = "accept-144-messenger-to-westfall",
            kind = "accept",
            priority = 1330,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 14 } },
                },
            },
            dependsOn = { "turnin-143-messenger-to-westfall" },
            text = "Accept Messenger to Westfall from Gryan Stoutmantle.",
            complete = QuestState(144, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.562, 0.476, "Gryan Stoutmantle",
                    "Travel to Gryan Stoutmantle in Westfall."),
            },
        },
        {
            id = "objective-144-messenger-to-westfall-1",
            kind = "objective",
            priority = 1340,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 14 } },
                },
            },
            text = "Messenger to Westfall: Stoutmantle's Response to Solomon.",
            dependsOn = { "accept-144-messenger-to-westfall" },
            complete = QuestObjective(144, 1, "Stoutmantle's Response to Solomon"),
            route = {
                Point(MAP.WESTFALL, 0.562, 0.476, "Gryan Stoutmantle",
                    "Travel to Gryan Stoutmantle in Westfall."),
            },
        },
        {
            id = "turnin-144-messenger-to-westfall",
            kind = "turnin",
            priority = 1350,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 14 } },
                },
            },
            text = "Turn in Messenger to Westfall to Magistrate Solomon.",
            dependsOn = { "objective-144-messenger-to-westfall-1" },
            complete = QuestState(144, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.300, 0.442, "Magistrate Solomon",
                    "Travel to Magistrate Solomon in Westfall."),
            },
        },
        {
            id = "accept-178-theocritus-retrieval",
            kind = "accept",
            priority = 1360,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 15 } },
                },
            },
            text = "Accept Theocritus' Retrieval from Theocritus.",
            complete = QuestState(178, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNN, 0.652, 0.698, "Theocritus",
                    "Travel to Theocritus in Elwynn Forest."),
            },
        },
        {
            id = "accept-94-a-watchful-eye",
            kind = "accept",
            priority = 1370,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 20 } },
                },
            },
            text = "Accept A Watchful Eye from Theocritus.",
            complete = QuestState(94, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNN, 0.652, 0.698, "Theocritus",
                    "Travel to Theocritus in Elwynn Forest."),
            },
        },
        {
            id = "accept-249-morganth",
            kind = "accept",
            priority = 1380,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 20 } },
                },
            },
            text = "Accept Morganth from Theocritus.",
            complete = QuestState(249, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNN, 0.652, 0.698, "Theocritus",
                    "Travel to Theocritus in Elwynn Forest."),
            },
        },
        {
            id = "objective-249-morganth-1",
            kind = "objective",
            priority = 1390,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 20 } },
                },
            },
            text = "Morganth: Pendant of Shadow. This is an elite. Bring a group.",
            dependsOn = { "accept-249-morganth" },
            complete = QuestObjective(249, 1, "Pendant of Shadow"),
            route = {
                Point(MAP.ELWYNN, 0.800, 0.494, "Morganth",
                    "Travel to Morganth in Elwynn Forest."),
            },
        },
        {
            id = "turnin-249-morganth",
            kind = "turnin",
            priority = 1400,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Morganth to Theocritus.",
            dependsOn = { "objective-249-morganth-1" },
            complete = QuestState(249, "completed"),
            route = {
                Point(MAP.ELWYNN, 0.652, 0.698, "Theocritus",
                    "Travel to Theocritus in Elwynn Forest."),
            },
        },
        {
            id = "objective-94-a-watchful-eye-1",
            kind = "objective",
            priority = 1410,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 20 } },
                },
            },
            text = "A Watchful Eye: Glyph of Azora.",
            dependsOn = { "accept-94-a-watchful-eye" },
            complete = QuestObjective(94, 1, "Glyph of Azora"),
            route = {
                Point(MAP.ELWYNN, 0.652, 0.698, "Theocritus",
                    "Travel to Theocritus in Elwynn Forest."),
            },
        },
        {
            id = "turnin-94-a-watchful-eye",
            kind = "turnin",
            priority = 1420,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in A Watchful Eye to Old Lion Statue.",
            dependsOn = { "objective-94-a-watchful-eye-1" },
            complete = QuestState(94, "completed"),
            route = {
                Point(MAP.ELWYNN, 0.843, 0.469, "Old Lion Statue",
                    "Travel to Old Lion Statue in Elwynn Forest."),
            },
        },
        {
            id = "accept-248-looking-further",
            kind = "accept",
            priority = 1430,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 20 } },
                },
            },
            dependsOn = { "turnin-94-a-watchful-eye" },
            text = "Accept Looking Further from Old Lion Statue.",
            complete = QuestState(248, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.843, 0.469, "Old Lion Statue",
                    "Travel to Old Lion Statue."),
            },
        },
        {
            id = "objective-248-looking-further-1",
            kind = "objective",
            priority = 1440,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 20 } },
                },
            },
            text = "Looking Further: Glyph of Azora. This is an elite. Bring a group.",
            dependsOn = { "accept-248-looking-further" },
            complete = QuestObjective(248, 1, "Glyph of Azora"),
            route = {
                Point(MAP.REDRIDGE, 0.843, 0.469, "Old Lion Statue",
                    "Travel to Old Lion Statue."),
            },
        },
        {
            id = "turnin-248-looking-further",
            kind = "turnin",
            priority = 1450,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 20 } },
                },
            },
            text = "Turn in Looking Further to An Empty Jar.",
            dependsOn = { "objective-248-looking-further-1" },
            complete = QuestState(248, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.632, 0.497, "An Empty Jar",
                    "Travel to An Empty Jar."),
            },
        },
        {
            id = "objective-178-theocritus-retrieval-1",
            kind = "objective",
            priority = 1460,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 15 } },
                },
            },
            text = "Theocritus' Retrieval: Faded Shadowhide Pendant.",
            dependsOn = { "accept-178-theocritus-retrieval" },
            complete = QuestObjective(178, 1, "Faded Shadowhide Pendant"),
            route = {
                Point(MAP.ELWYNN, 0.652, 0.698, "Theocritus",
                    "Travel to Theocritus in Elwynn Forest."),
            },
        },
        {
            id = "turnin-178-theocritus-retrieval",
            kind = "turnin",
            priority = 1470,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 15 } },
                },
            },
            text = "Turn in Theocritus' Retrieval to Theocritus.",
            dependsOn = { "objective-178-theocritus-retrieval-1" },
            complete = QuestState(178, "completed"),
            route = {
                Point(MAP.ELWYNN, 0.652, 0.698, "Theocritus",
                    "Travel to Theocritus in Elwynn Forest."),
            },
        },
        {
            id = "accept-145-messenger-to-darkshire",
            kind = "accept",
            priority = 1480,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 18 } },
                },
            },
            text = "Accept Messenger to Darkshire from Magistrate Solomon.",
            complete = QuestState(145, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.300, 0.442, "Magistrate Solomon",
                    "Travel to Magistrate Solomon."),
            },
        },
        {
            id = "objective-145-messenger-to-darkshire-1",
            kind = "objective",
            priority = 1490,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 18 } },
                },
            },
            text = "Messenger to Darkshire: Solomon's Plea to Darkshire.",
            dependsOn = { "accept-145-messenger-to-darkshire" },
            complete = QuestObjective(145, 1, "Solomon's Plea to Darkshire"),
            route = {
                Point(MAP.REDRIDGE, 0.300, 0.442, "Magistrate Solomon",
                    "Travel to Magistrate Solomon."),
            },
        },
        {
            id = "turnin-145-messenger-to-darkshire",
            kind = "turnin",
            priority = 1500,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 18 } },
                },
            },
            text = "Turn in Messenger to Darkshire to Lord Ello Ebonlocke.",
            dependsOn = { "objective-145-messenger-to-darkshire-1" },
            complete = QuestState(145, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.718, 0.464, "Lord Ello Ebonlocke",
                    "Travel to Lord Ello Ebonlocke."),
            },
        },
        {
            id = "accept-146-messenger-to-darkshire",
            kind = "accept",
            priority = 1510,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 18 } },
                },
            },
            dependsOn = { "turnin-145-messenger-to-darkshire" },
            text = "Accept Messenger to Darkshire from Lord Ello Ebonlocke.",
            complete = QuestState(146, "activeOrCompleted"),
            route = {
                Point(MAP.ZONE_1431, 0.718, 0.464, "Lord Ello Ebonlocke",
                    "Travel to Lord Ello Ebonlocke in Duskwood."),
            },
        },
        {
            id = "objective-146-messenger-to-darkshire-1",
            kind = "objective",
            priority = 1520,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 18 } },
                },
            },
            text = "Messenger to Darkshire: Ebonlocke's Response to Solomon.",
            dependsOn = { "accept-146-messenger-to-darkshire" },
            complete = QuestObjective(146, 1, "Ebonlocke's Response to Solomon"),
            route = {
                Point(MAP.ZONE_1431, 0.718, 0.464, "Lord Ello Ebonlocke",
                    "Travel to Lord Ello Ebonlocke in Duskwood."),
            },
        },
        {
            id = "turnin-146-messenger-to-darkshire",
            kind = "turnin",
            priority = 1530,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 18 } },
                },
            },
            text = "Turn in Messenger to Darkshire to Magistrate Solomon.",
            dependsOn = { "objective-146-messenger-to-darkshire-1" },
            complete = QuestState(146, "completed"),
            route = {
                Point(MAP.ZONE_1431, 0.300, 0.442, "Magistrate Solomon",
                    "Travel to Magistrate Solomon in Duskwood."),
            },
        },
    },
})
