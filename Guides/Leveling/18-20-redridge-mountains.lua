local _, ns = ...

-- Alliance Era leveling route for Redridge Mountains, levels 18-20.
-- Forever quests from the Redridge list that sit on this pass are woven in.
-- Alther's Mill and Blackrock Blockade wait for the later Redridge chapter, where the route clears the Blackrock camp. Level 60 signs stay out.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    REDRIDGE = 1433,
    DUN_MOROGH = 1426,
    IRONFORGE = 1455,
    STORMWIND = 1453,
    ELWYNN = 1429,
    WESTFALL = 1436,
    WETLANDS = 1437,
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
    id = "leveling-era-18-20-redridge-mountains",
    title = "18-20 Redridge Mountains",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 18 } },
        },
    },
    goals = {
        {
            id = "travel-kharanos",
            kind = "travel",
            priority = 10,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Travel to Kharanos in Dun Morogh.",
            route = {
                Point(MAP.DUN_MOROGH, 0.4760, 0.5260, "Kharanos",
                    "Travel to Kharanos."),
            },
        },
        {
            id = "accept-2299-to-hulfdan",
            kind = "accept",
            priority = 20,
            conditions = {
                all = {
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
            id = "travel-2298-the-forlorn-cavern",
            kind = "travel",
            priority = 30,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Travel to The Forlorn Cavern in Ironforge.",
            route = {
                Point(MAP.IRONFORGE, 0.5159, 0.1468, "The Forlorn Cavern",
                    "Travel to The Forlorn Cavern."),
            },
        },
        {
            id = "turnin-2299-to-hulfdan",
            kind = "turnin",
            priority = 40,
            conditions = {
                all = {
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
            priority = 50,
            conditions = {
                all = {
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
            priority = 60,
            conditions = {
                all = {
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
            priority = 70,
            conditions = {
                all = {
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
            id = "travel-2281-lake-everstill",
            kind = "travel",
            priority = 80,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Travel to Lake Everstill.",
            route = {
                Point(MAP.REDRIDGE, 0.2810, 0.5213, "Lake Everstill",
                    "Travel to Lake Everstill."),
            },
        },
        {
            id = "turnin-2281-redridge-rendezvous",
            kind = "turnin",
            priority = 90,
            conditions = {
                all = {
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
            priority = 100,
            conditions = {
                all = {
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
            id = "travel-2282-alther-s-mill",
            kind = "travel",
            priority = 110,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Travel to Alther's Mill.",
            route = {
                Point(MAP.REDRIDGE, 0.5199, 0.4492, "Alther's Mill",
                    "Travel to Alther's Mill."),
            },
        },
        {
            id = "objective-2282-alther-s-mill",
            kind = "objective",
            priority = 120,
            conditions = {
                all = {
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
            id = "travel-lake-everstill",
            kind = "travel",
            priority = 130,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Travel to Lake Everstill.",
            route = {
                Point(MAP.REDRIDGE, 0.2817, 0.5208, "Lake Everstill",
                    "Travel to Lake Everstill."),
            },
        },
        {
            id = "turnin-2282-alther-s-mill",
            kind = "turnin",
            priority = 140,
            conditions = {
                all = {
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
            id = "travel-stormwind-city",
            kind = "travel",
            priority = 150,
            conditions = {
                all = {
                    { race = { 4, 7, 3 } },
                },
            },
            text = "Travel to Stormwind City.",
            route = {
                Point(MAP.STORMWIND, 0.5801, 0.1657, "Stormwind City",
                    "Travel to Stormwind City."),
            },
        },
        {
            id = "travel-244-three-corners",
            kind = "travel",
            priority = 160,
            text = "Travel to Three Corners in Redridge Mountains.",
            route = {
                Point(MAP.REDRIDGE, 0.1532, 0.7142, "Three Corners",
                    "Travel to Three Corners."),
            },
        },
        {
            id = "accept-244-encroaching-gnolls",
            kind = "accept",
            priority = 170,
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
            priority = 180,
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
            priority = 190,
            text = "Accept Assessing the Threat from Deputy Feldon in Redridge Mountains.",
            complete = QuestState(246, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.3074, 0.6015, "Deputy Feldon",
                    "Travel to Deputy Feldon."),
            },
        },
        {
            id = "accept-98407-show-of-force",
            kind = "accept",
            priority = 191,
            text = "Accept Show of Force from Deputy Feldon.",
            complete = QuestState(98407, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.3080, 0.6000, "Deputy Feldon",
                    "Travel to Deputy Feldon."),
            },
        },
        {
            id = "accept-125-the-lost-tools",
            kind = "accept",
            priority = 200,
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
            priority = 210,
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
            priority = 220,
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
            priority = 230,
            text = "Accept A Free Lunch from Darcy Parker in Redridge Mountains.",
            complete = QuestState(129, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.2708, 0.4513, "Darcy Parker",
                    "Travel to Darcy Parker."),
            },
        },
        {
            id = "note-92-lakeshire",
            kind = "note",
            priority = 240,
            text = "Set your hearth in Lakeshire with Innkeeper Brianna.",
            route = {
                Point(MAP.REDRIDGE, 0.2701, 0.4490, "Innkeeper Brianna",
                    "Travel to Innkeeper Brianna."),
            },
        },
        {
            id = "accept-92-redridge-goulash",
            kind = "accept",
            priority = 250,
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
            priority = 260,
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
            priority = 270,
            text = "Accept Messenger to Stormwind from Magistrate Solomon in Lakeshire.",
            complete = QuestState(120, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.3001, 0.4433, "Magistrate Solomon",
                    "Travel to Magistrate Solomon."),
            },
        },
        {
            id = "travel-stormwind-city-2",
            kind = "travel",
            priority = 280,
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
            id = "turnin-120-messenger-to-stormwind",
            kind = "turnin",
            priority = 290,
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
            priority = 300,
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
            priority = 310,
            text = "Travel to Goldshire.",
            route = {
                Point(MAP.ELWYNN, 0.4170, 0.6553, "Goldshire",
                    "Travel to Goldshire."),
            },
        },
        {
            id = "turnin-118-the-price-of-shoes",
            kind = "turnin",
            priority = 320,
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
            priority = 330,
            text = "Accept Return to Verner from Smith Argus in Goldshire.",
            complete = QuestState(119, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNN, 0.4170, 0.6553, "Smith Argus",
                    "Travel to Smith Argus."),
            },
        },
        {
            id = "travel-lakeshire",
            kind = "travel",
            priority = 340,
            text = "Travel or Hearthstone to Lakeshire.",
            route = {
                Point(MAP.REDRIDGE, 0.3090, 0.4730, "Lakeshire",
                    "Travel to Lakeshire."),
            },
        },
        {
            id = "turnin-119-return-to-verner",
            kind = "turnin",
            priority = 350,
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
            priority = 360,
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
            priority = 370,
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
            priority = 380,
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
            priority = 390,
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
            priority = 400,
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
            priority = 410,
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
            priority = 420,
            text = "Kill the Murloc Shorestriker, Murloc Minor Tidecaller and Murloc Flesheater in the water, collect 10 Spotted Sunfish Also keep all Murloc Fin that you find.",
            dependsOn = { "accept-127-selling-fish" },
            complete = QuestState(127, "complete"),
        },
        {
            id = "travel-125-lakeshire",
            kind = "travel",
            priority = 430,
            text = "Travel to Lakeshire.",
            route = {
                Point(MAP.REDRIDGE, 0.3218, 0.4884, "Lakeshire",
                    "Travel to Lakeshire."),
            },
        },
        {
            id = "turnin-125-the-lost-tools",
            kind = "turnin",
            priority = 440,
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
            priority = 450,
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
            priority = 460,
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
            priority = 470,
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
            priority = 480,
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
            priority = 490,
            text = "Accept Visit the Herbalist from Watch Captain Parker in Three Corners.",
            complete = QuestState(130, "activeOrCompleted"),
            route = {
                Point(MAP.REDRIDGE, 0.1532, 0.7142, "Watch Captain Parker",
                    "Travel to Watch Captain Parker."),
            },
        },
        {
            id = "travel-92-three-corners",
            kind = "travel",
            priority = 500,
            text = "Travel to Three Corners.",
            route = {
                Point(MAP.REDRIDGE, 0.1220, 0.7799, "Three Corners",
                    "Travel to Three Corners."),
            },
        },
        {
            id = "objective-92-3-tarantula",
            kind = "objective",
            priority = 510,
            text = "Kill Tarantula and collect 5 Crisp Spider Meat in Three Corners.",
            dependsOn = { "accept-92-redridge-goulash" },
            complete = QuestObjective(92, 3),
            route = {
                Point(MAP.REDRIDGE, 0.1220, 0.7799, "Tarantula",
                    "Travel to Tarantula."),
            },
        },
        {
            id = "travel-92-lakeridge-highway",
            kind = "travel",
            priority = 520,
            text = "Travel to Lakeridge Highway.",
            route = {
                Point(MAP.REDRIDGE, 0.3088, 0.8320, "Lakeridge Highway",
                    "Travel to Lakeridge Highway."),
            },
        },
        {
            id = "objective-246-assessing-the-threat",
            kind = "objective",
            priority = 530,
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
            id = "objective-98407-show-of-force",
            kind = "objective",
            priority = 535,
            text = "Show of Force: collect 5 Spiked Collars from Redridge Thrashers.",
            dependsOn = { "accept-98407-show-of-force" },
            complete = QuestState(98407, "complete"),
            route = {
                Point(MAP.REDRIDGE, 0.3000, 0.8120, "Redridge Thrasher",
                    "Travel to Redridge Thrasher."),
            },
        },
        {
            id = "objective-92-2-dire-condor",
            kind = "objective",
            priority = 540,
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
            priority = 550,
            text = "Kill Black Dragon Whelp and collect 6 Underbelly Whelp Scale in Lakeridge Highway.",
            dependsOn = { "accept-122-underbelly-scales" },
            complete = QuestState(122, "complete"),
            route = {
                Point(MAP.REDRIDGE, 0.3337, 0.6713, "Black Dragon Whelp",
                    "Travel to Black Dragon Whelp."),
            },
        },
        {
            id = "travel-131-lakeshire",
            kind = "travel",
            priority = 560,
            text = "Travel to Lakeshire.",
            route = {
                Point(MAP.REDRIDGE, 0.3074, 0.6015, "Lakeshire",
                    "Travel to Lakeshire."),
            },
        },
        {
            id = "turnin-246-assessing-the-threat",
            kind = "turnin",
            priority = 570,
            text = "Turn in Assessing the Threat to Deputy Feldon in Lakeshire.",
            dependsOn = { "objective-246-assessing-the-threat" },
            complete = QuestState(246, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.3074, 0.6015, "Deputy Feldon",
                    "Travel to Deputy Feldon."),
            },
        },
        {
            id = "turnin-98407-show-of-force",
            kind = "turnin",
            priority = 575,
            text = "Turn in Show of Force to Deputy Feldon.",
            dependsOn = { "objective-98407-show-of-force" },
            complete = QuestState(98407, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.3080, 0.6000, "Deputy Feldon",
                    "Travel to Deputy Feldon."),
            },
        },
        {
            id = "turnin-130-visit-the-herbalist",
            kind = "turnin",
            priority = 580,
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
            priority = 590,
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
            priority = 600,
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
            priority = 610,
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
            priority = 620,
            text = "Turn in Underbelly Scales to Verner Osgood in Lakeshire.",
            dependsOn = { "objective-122-underbelly-scales" },
            complete = QuestState(122, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.3102, 0.4732, "Verner Osgood",
                    "Travel to Verner Osgood."),
            },
        },
        {
            id = "travel-89-redridge-canyons",
            kind = "travel",
            priority = 630,
            text = "Travel to Redridge Canyons.",
            route = {
                Point(MAP.REDRIDGE, 0.3172, 0.4124, "Continue toward Redridge Canyons",
                    "Continue toward Redridge Canyons."),
                Point(MAP.REDRIDGE, 0.2595, 0.3577, "Redridge Canyons",
                    "Travel to Redridge Canyons."),
            },
        },
        {
            id = "objective-124-a-baying-of-gnolls",
            kind = "objective",
            priority = 640,
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
            priority = 650,
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
            id = "travel-lakeshire-2",
            kind = "travel",
            priority = 660,
            text = "Travel to Lakeshire.",
            route = {
                Point(MAP.REDRIDGE, 0.3218, 0.4884, "Lakeshire",
                    "Travel to Lakeshire."),
            },
        },
        {
            id = "turnin-89-the-everstill-bridge",
            kind = "turnin",
            priority = 670,
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
            priority = 680,
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
            priority = 690,
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
            priority = 700,
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
            priority = 710,
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
            priority = 720,
            text = "Turn in Murloc Poachers to Dockmaster Baren in Lakeshire.",
            dependsOn = { "objective-150-murloc-poachers" },
            complete = QuestState(150, "completed"),
            route = {
                Point(MAP.REDRIDGE, 0.2768, 0.4738, "Dockmaster Baren",
                    "Travel to Dockmaster Baren."),
            },
        },
        {
            id = "travel-2360-si-7",
            kind = "travel",
            priority = 730,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Travel to SI:7 in Stormwind City.",
            route = {
                Point(MAP.STORMWIND, 0.7591, 0.5995, "SI:7",
                    "Travel to SI:7."),
            },
        },
        {
            id = "accept-2360-mathias-and-the-defias",
            kind = "accept",
            priority = 740,
            conditions = {
                all = {
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
            id = "travel-2360-the-dust-plains",
            kind = "travel",
            priority = 750,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Travel to The Dust Plains in Westfall.",
            route = {
                Point(MAP.WESTFALL, 0.6845, 0.7008, "The Dust Plains",
                    "Travel to The Dust Plains."),
            },
        },
        {
            id = "turnin-2360-mathias-and-the-defias",
            kind = "turnin",
            priority = 760,
            conditions = {
                all = {
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
            priority = 770,
            conditions = {
                all = {
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
            priority = 780,
            conditions = {
                all = {
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
            id = "travel-2607-si-7",
            kind = "travel",
            priority = 790,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Travel to SI:7 in Stormwind City.",
            route = {
                Point(MAP.STORMWIND, 0.7591, 0.5995, "SI:7",
                    "Travel to SI:7."),
            },
        },
        {
            id = "turnin-2359-klaven-s-tower",
            kind = "turnin",
            priority = 800,
            conditions = {
                all = {
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
            priority = 810,
            conditions = {
                all = {
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
            priority = 820,
            conditions = {
                all = {
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
            priority = 830,
            conditions = {
                all = {
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
            priority = 840,
            conditions = {
                all = {
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
            priority = 850,
            conditions = {
                all = {
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
            priority = 860,
            conditions = {
                all = {
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
            priority = 870,
            conditions = {
                all = {
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
            priority = 880,
            conditions = {
                all = {
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
            priority = 890,
            conditions = {
                all = {
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
            priority = 900,
            conditions = {
                all = {
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
            priority = 910,
            conditions = {
                all = {
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
            priority = 920,
            conditions = {
                all = {
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
            priority = 930,
            conditions = {
                all = {
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
            priority = 940,
            conditions = {
                all = {
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
            id = "objective-eau-de-mixilpixil",
            kind = "objective",
            priority = 950,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Use Eau de Mixilpixil to cure the Touch of Zanzil debuff.",
        },
    },
})
