local _, ns = ...

-- Alliance Era leveling route for Ashenvale, levels 29-30.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    ASHENVALE = 1440,
    WETLANDS = 1437,
    DARNASSUS = 1457,
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
    id = "leveling-era-29-30-ashenvale",
    title = "29-30 Ashenvale (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 29 } },
        },
    },
    goals = {
        {
            id = "accept-321-lightforge-iron",
            kind = "accept",
            priority = 20,
            conditions = {
                all = {
                    { quest = { id = 270, state = "completed" } },
                },
            },
            text = "Accept Lightforge Iron from Glorin Steelbrow in Deepwater Tavern.",
            complete = QuestState(321, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.1060, 0.6055, "Glorin Steelbrow",
                    "Travel to Glorin Steelbrow."),
            },
        },
        {
            id = "turnin-321-lightforge-iron",
            kind = "turnin",
            priority = 30,
            conditions = {
                all = {
                    { quest = { id = 270, state = "completed" } },
                },
            },
            text = "Turn in Lightforge Iron in Menethil Bay.",
            dependsOn = { "accept-321-lightforge-iron" },
            complete = QuestState(321, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.1213, 0.6418, "Menethil Bay",
                    "Travel to Menethil Bay."),
            },
        },
        {
            id = "accept-324-the-lost-ingots",
            kind = "accept",
            priority = 40,
            conditions = {
                all = {
                    { quest = { id = 270, state = "completed" } },
                },
            },
            text = "Accept The Lost Ingots in Menethil Bay.",
            complete = QuestState(324, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.1213, 0.6418, "Menethil Bay",
                    "Travel to Menethil Bay."),
            },
        },
        {
            id = "objective-324-the-lost-ingots",
            kind = "objective",
            priority = 50,
            conditions = {
                all = {
                    { quest = { id = 270, state = "completed" } },
                },
            },
            text = "Kill Bluegill Raider and collect 5 Lightforge Ingot in Baradin Bay.",
            dependsOn = { "accept-324-the-lost-ingots" },
            complete = QuestState(324, "complete"),
            route = {
                Point(MAP.WETLANDS, 0.0964, 0.6660, "Bluegill Raider",
                    "Travel to Bluegill Raider."),
            },
        },
        {
            id = "turnin-324-the-lost-ingots",
            kind = "turnin",
            priority = 60,
            conditions = {
                all = {
                    { quest = { id = 270, state = "completed" } },
                },
            },
            text = "Turn in The Lost Ingots to Glorin Steelbrow in Deepwater Tavern.",
            dependsOn = { "objective-324-the-lost-ingots" },
            complete = QuestState(324, "completed"),
            route = {
                Point(MAP.WETLANDS, 0.1059, 0.6059, "Glorin Steelbrow",
                    "Travel to Glorin Steelbrow."),
            },
        },
        {
            id = "accept-322-blessed-arm",
            kind = "accept",
            priority = 70,
            conditions = {
                all = {
                    { quest = { id = 270, state = "completed" } },
                },
            },
            text = "Accept Blessed Arm from Glorin Steelbrow in Deepwater Tavern.",
            complete = QuestState(322, "activeOrCompleted"),
            route = {
                Point(MAP.WETLANDS, 0.1059, 0.6059, "Glorin Steelbrow",
                    "Travel to Glorin Steelbrow."),
            },
        },
        {
            id = "accept-4581-kayneth-stillwind",
            kind = "accept",
            priority = 90,
            text = "Accept Kayneth Stillwind from Shindrell Swiftfire in Astranaar.",
            complete = QuestState(4581, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.3466, 0.4885, "Shindrell Swiftfire",
                    "Travel to Shindrell Swiftfire."),
            },
        },
        {
            id = "note-1021-astranaar",
            kind = "note",
            priority = 100,
            text = "Set your hearth in Astranaar with Innkeeper Kimlya.",
            route = {
                Point(MAP.ASHENVALE, 0.3696, 0.4924, "Innkeeper Kimlya",
                    "Travel to Innkeeper Kimlya."),
            },
        },
        {
            id = "accept-991-raene-s-cleansing",
            kind = "accept",
            priority = 110,
            text = "Accept Raene's Cleansing from Raene Wolfrunner in Astranaar.",
            complete = QuestState(991, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.3659, 0.4959, "Raene Wolfrunner",
                    "Travel to Raene Wolfrunner."),
            },
        },
        {
            id = "accept-1035-fallen-sky-lake",
            kind = "accept",
            priority = 120,
            conditions = {
                all = {
                    { quest = { id = 1034, state = "completed" } },
                },
            },
            text = "Accept Fallen Sky Lake from Pelturas Whitemoon in Astranaar.",
            complete = QuestState(1035, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.3736, 0.5178, "Pelturas Whitemoon",
                    "Travel to Pelturas Whitemoon."),
            },
        },
        {
            id = "accept-1022-the-howling-vale",
            kind = "accept",
            priority = 140,
            text = "Accept The Howling Vale from Sentinel Melyria Frostshadow in The Shrine of Aessina.",
            complete = QuestState(1022, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.2220, 0.5280, "Sentinel Melyria Frostshadow",
                    "Travel to Sentinel Melyria Frostshadow."),
            },
        },
        {
            id = "accept-1021-vile-satyr-dryads-in-danger",
            kind = "accept",
            priority = 150,
            text = "Accept Vile Satyr! Dryads in Danger! from Illiyana in The Shrine of Aessina.",
            complete = QuestState(1021, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.2160, 0.5320, "Illiyana",
                    "Travel to Illiyana."),
            },
        },
        {
            id = "turnin-991-raene-s-cleansing",
            kind = "turnin",
            priority = 170,
            text = "Turn in Raene's Cleansing to Teronis' Corpse in Lake Falathim.",
            dependsOn = { "accept-991-raene-s-cleansing" },
            complete = QuestState(991, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.2032, 0.4239, "Teronis' Corpse",
                    "Travel to Teronis' Corpse."),
            },
        },
        {
            id = "accept-1023-raene-s-cleansing",
            kind = "accept",
            priority = 180,
            text = "Accept Raene's Cleansing from Teronis' Corpse in Lake Falathim.",
            complete = QuestState(1023, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.2032, 0.4239, "Teronis' Corpse",
                    "Travel to Teronis' Corpse."),
            },
        },
        {
            id = "objective-1023-raene-s-cleansing",
            kind = "objective",
            priority = 190,
            text = "Kill the Saltspittle Oracle, Saltspittle Puddlejumper or Saltspittle Warrior at the nearby lake until you've collected the Glowing Gem.",
            dependsOn = { "accept-1023-raene-s-cleansing" },
            complete = QuestState(1023, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.1900, 0.4300, "Saltspittle Oracle",
                    "Travel to Saltspittle Oracle."),
            },
        },
        {
            id = "turnin-1023-raene-s-cleansing",
            kind = "turnin",
            priority = 210,
            text = "Turn in Raene's Cleansing to Raene Wolfrunner in Astranaar.",
            dependsOn = { "objective-1023-raene-s-cleansing" },
            complete = QuestState(1023, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.3659, 0.4959, "Raene Wolfrunner",
                    "Travel to Raene Wolfrunner."),
            },
        },
        {
            id = "accept-1024-raene-s-cleansing",
            kind = "accept",
            priority = 220,
            text = "Accept Raene's Cleansing from Raene Wolfrunner in Astranaar.",
            complete = QuestState(1024, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.3659, 0.4959, "Raene Wolfrunner",
                    "Travel to Raene Wolfrunner."),
            },
        },
        {
            id = "turnin-1024-raene-s-cleansing",
            kind = "turnin",
            priority = 240,
            text = "Turn in Raene's Cleansing to Shael'dryn in Moonwell.",
            dependsOn = { "accept-1024-raene-s-cleansing" },
            complete = QuestState(1024, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.5349, 0.4630, "Shael'dryn",
                    "Travel to Shael'dryn."),
            },
        },
        {
            id = "accept-1026-raene-s-cleansing",
            kind = "accept",
            priority = 250,
            text = "Accept Raene's Cleansing from Shael'dryn in Moonwell.",
            complete = QuestState(1026, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.5349, 0.4630, "Shael'dryn",
                    "Travel to Shael'dryn."),
            },
        },
        {
            id = "objective-1026-crazed-ancient",
            kind = "objective",
            priority = 260,
            text = "Kill Crazed Ancient until you collect a Wooden Key.",
            dependsOn = { "accept-1026-raene-s-cleansing" },
            complete = QuestState(1026, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.5513, 0.3422, "Continue toward Crazed Ancient",
                    "Continue toward Crazed Ancient."),
                Point(MAP.ASHENVALE, 0.5582, 0.3361, "Crazed Ancient",
                    "Travel to Crazed Ancient."),
            },
        },
        {
            id = "objective-1026-raene-s-cleansing",
            kind = "objective",
            priority = 270,
            text = "Collect Iron Shaft from the worn chest in Nightsong Woods.",
            dependsOn = { "accept-1026-raene-s-cleansing" },
            complete = QuestState(1026, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.5441, 0.3537, "Nightsong Woods",
                    "Travel to Nightsong Woods."),
            },
        },
        {
            id = "objective-1022-the-howling-vale",
            kind = "objective",
            priority = 290,
            text = "Click on Tome of Mel'Thandris in The Howling Vale.",
            dependsOn = { "accept-1022-the-howling-vale" },
            complete = QuestState(1022, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.5048, 0.3916, "The Howling Vale",
                    "Travel to The Howling Vale."),
            },
        },
        {
            id = "turnin-1026-raene-s-cleansing",
            kind = "turnin",
            priority = 310,
            text = "Turn in Raene's Cleansing to Shael'dryn in Moonwell.",
            dependsOn = { "objective-1026-crazed-ancient", "objective-1026-raene-s-cleansing" },
            complete = QuestState(1026, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.5351, 0.4622, "Shael'dryn",
                    "Travel to Shael'dryn."),
            },
        },
        {
            id = "accept-1027-raene-s-cleansing",
            kind = "accept",
            priority = 320,
            text = "Accept Raene's Cleansing from Shael'dryn in Moonwell.",
            complete = QuestState(1027, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.5351, 0.4622, "Shael'dryn",
                    "Travel to Shael'dryn."),
            },
        },
        {
            id = "turnin-1021-vile-satyr-dryads-in-danger",
            kind = "turnin",
            priority = 340,
            text = "Turn in Vile Satyr! Dryads in Danger! to Anilia in Xavian.",
            dependsOn = { "accept-1021-vile-satyr-dryads-in-danger" },
            complete = QuestState(1021, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.7832, 0.4483, "Anilia",
                    "Travel to Anilia."),
            },
        },
        {
            id = "accept-1031-the-branch-of-cenarius",
            kind = "accept",
            priority = 350,
            text = "Accept The Branch of Cenarius from Anilia in Xavian.",
            complete = QuestState(1031, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.7832, 0.4483, "Anilia",
                    "Travel to Anilia."),
            },
        },
        {
            id = "objective-1031-the-branch-of-cenarius",
            kind = "objective",
            priority = 360,
            text = "Kill Geltharis and collect Branch of Cenarius in Xavian.",
            dependsOn = { "accept-1031-the-branch-of-cenarius" },
            complete = QuestState(1031, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.7804, 0.4245, "Geltharis",
                    "Travel to Geltharis."),
            },
        },
        {
            id = "turnin-4581-kayneth-stillwind",
            kind = "turnin",
            priority = 380,
            text = "Turn in Kayneth Stillwind to Kayneth Stillwind in Forest Song.",
            dependsOn = { "accept-4581-kayneth-stillwind" },
            complete = QuestState(4581, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.8520, 0.4477, "Kayneth Stillwind",
                    "Travel to Kayneth Stillwind."),
            },
        },
        {
            id = "accept-1011-forsaken-diseases",
            kind = "accept",
            priority = 390,
            text = "Accept Forsaken Diseases from Kayneth Stillwind in Forest Song.",
            complete = QuestState(1011, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.8520, 0.4477, "Kayneth Stillwind",
                    "Travel to Kayneth Stillwind."),
            },
        },
        {
            id = "objective-1011-forsaken-diseases",
            kind = "objective",
            priority = 410,
            text = "Collect a Bottle of Disease in The Dor'Danil Barrow Den.",
            dependsOn = { "accept-1011-forsaken-diseases" },
            complete = QuestState(1011, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.8616, 0.5042, "Continue toward Forsaken Diseases",
                    "Continue toward Forsaken Diseases."),
                Point(MAP.ASHENVALE, 0.7800, 0.5619, "Continue toward Forsaken Diseases",
                    "Continue toward Forsaken Diseases."),
                Point(MAP.ASHENVALE, 0.7529, 0.7219, "The Dor'Danil Barrow Den",
                    "Travel to The Dor'Danil Barrow Den."),
            },
        },
        {
            id = "objective-1027-raene-s-cleansing",
            kind = "objective",
            priority = 420,
            text = "Kill Rotting Slime until you collect Iron Pommel in The Dor'Danil Barrow Den Tip: It can also be found inside the chest they drop.",
            dependsOn = { "accept-1027-raene-s-cleansing" },
            complete = QuestState(1027, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.7300, 0.7328, "Rotting Slime",
                    "Travel to Rotting Slime."),
            },
        },
        {
            id = "objective-1035-fallen-sky-lake",
            kind = "objective",
            priority = 440,
            conditions = {
                all = {
                    { quest = { id = 1034, state = "completed" } },
                },
            },
            text = "Kill a Shadethicket Oracle and collect Fallen Moonstone Fallen Sky Lake.",
            dependsOn = { "accept-1035-fallen-sky-lake" },
            complete = QuestState(1035, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.6676, 0.8203, "Shadethicket Oracle",
                    "Travel to Shadethicket Oracle."),
            },
        },
        {
            id = "turnin-1011-forsaken-diseases",
            kind = "turnin",
            priority = 460,
            text = "Turn in Forsaken Diseases to Kayneth Stillwind in Forest Song.",
            dependsOn = { "objective-1011-forsaken-diseases" },
            complete = QuestState(1011, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.8523, 0.4470, "Kayneth Stillwind",
                    "Travel to Kayneth Stillwind."),
            },
        },
        {
            id = "accept-1012-insane-druids",
            kind = "accept",
            priority = 470,
            text = "Accept Insane Druids from Kayneth Stillwind in Forest Song.",
            complete = QuestState(1012, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.8523, 0.4470, "Kayneth Stillwind",
                    "Travel to Kayneth Stillwind."),
            },
        },
        {
            id = "objective-1012-1-taneel-darkwood",
            kind = "objective",
            priority = 490,
            text = "Kill Taneel Darkwood for the quest Insane Druids inside the cave in The Dor'Danil Barrow Den.",
            dependsOn = { "accept-1012-insane-druids" },
            complete = QuestObjective(1012, 1),
            route = {
                Point(MAP.ASHENVALE, 0.7596, 0.7535, "Continue toward Taneel Darkwood",
                    "Continue toward Taneel Darkwood."),
                Point(MAP.ASHENVALE, 0.7725, 0.7474, "Taneel Darkwood",
                    "Travel to Taneel Darkwood."),
            },
        },
        {
            id = "objective-1012-2-uthil-mooncall",
            kind = "objective",
            priority = 500,
            text = "Kill Uthil Mooncall for the quest Insane Druids in in The Dor'Danil Barrow Den.",
            dependsOn = { "accept-1012-insane-druids" },
            complete = QuestObjective(1012, 2),
            route = {
                Point(MAP.ASHENVALE, 0.7808, 0.7287, "Uthil Mooncall",
                    "Travel to Uthil Mooncall."),
            },
        },
        {
            id = "objective-1012-3-mavoris-cloudsbreak",
            kind = "objective",
            priority = 510,
            text = "Kill Mavoris Cloudsbreak for the quest Insane Druids in in The Dor'Danil Barrow Den.",
            dependsOn = { "accept-1012-insane-druids" },
            complete = QuestObjective(1012, 3),
            route = {
                Point(MAP.ASHENVALE, 0.7505, 0.7418, "Mavoris Cloudsbreak",
                    "Travel to Mavoris Cloudsbreak."),
            },
        },
        {
            id = "turnin-1012-insane-druids",
            kind = "turnin",
            priority = 520,
            text = "Turn in Insane Druids to Kayneth Stillwind in Forest Song.",
            dependsOn = { "objective-1012-1-taneel-darkwood", "objective-1012-2-uthil-mooncall", "objective-1012-3-mavoris-cloudsbreak" },
            complete = QuestState(1012, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.8522, 0.4469, "Kayneth Stillwind",
                    "Travel to Kayneth Stillwind."),
            },
        },
        {
            id = "turnin-1035-fallen-sky-lake",
            kind = "turnin",
            priority = 540,
            conditions = {
                all = {
                    { quest = { id = 1034, state = "completed" } },
                },
            },
            text = "Turn in Fallen Sky Lake to Pelturas Whitemoon in Astranaar.",
            dependsOn = { "objective-1035-fallen-sky-lake" },
            complete = QuestState(1035, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.3735, 0.5179, "Pelturas Whitemoon",
                    "Travel to Pelturas Whitemoon."),
            },
        },
        {
            id = "turnin-1027-raene-s-cleansing",
            kind = "turnin",
            priority = 560,
            text = "Turn in Raene's Cleansing to Shael'dryn in Moonwell.",
            dependsOn = { "objective-1027-raene-s-cleansing" },
            complete = QuestState(1027, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.5356, 0.4621, "Shael'dryn",
                    "Travel to Shael'dryn."),
            },
        },
        {
            id = "accept-1028-raene-s-cleansing",
            kind = "accept",
            priority = 570,
            text = "Accept Raene's Cleansing from Shael'dryn in Moonwell.",
            complete = QuestState(1028, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.5356, 0.4621, "Shael'dryn",
                    "Travel to Shael'dryn."),
            },
        },
        {
            id = "turnin-1028-raene-s-cleansing",
            kind = "turnin",
            priority = 580,
            text = "Turn in Raene's Cleansing.",
            dependsOn = { "accept-1028-raene-s-cleansing" },
            complete = QuestState(1028, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.5297, 0.5456, "Continue toward Raene's Cleansing",
                    "Continue toward Raene's Cleansing."),
                Point(MAP.ASHENVALE, 0.5563, 0.5129, "Continue toward Raene's Cleansing",
                    "Continue toward Raene's Cleansing."),
                Point(MAP.ASHENVALE, 0.5743, 0.5144, "Continue toward Raene's Cleansing",
                    "Continue toward Raene's Cleansing."),
                Point(MAP.ASHENVALE, 0.5635, 0.4928, "Raene's Cleansing",
                    "Travel to Raene's Cleansing."),
            },
        },
        {
            id = "accept-1055-raene-s-cleansing",
            kind = "accept",
            priority = 590,
            text = "Accept Raene's Cleansing.",
            complete = QuestState(1055, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.5635, 0.4928, "Raene's Cleansing",
                    "Travel to Raene's Cleansing."),
            },
        },
        {
            id = "turnin-1055-raene-s-cleansing",
            kind = "turnin",
            priority = 610,
            text = "Turn in Raene's Cleansing to Shael'dryn in Moonwell.",
            dependsOn = { "accept-1055-raene-s-cleansing" },
            complete = QuestState(1055, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.5355, 0.4620, "Shael'dryn",
                    "Travel to Shael'dryn."),
            },
        },
        {
            id = "accept-1029-raene-s-cleansing",
            kind = "accept",
            priority = 620,
            text = "Accept Raene's Cleansing from Shael'dryn in Moonwell.",
            complete = QuestState(1029, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.5355, 0.4620, "Shael'dryn",
                    "Travel to Shael'dryn."),
            },
        },
        {
            id = "turnin-1029-raene-s-cleansing",
            kind = "turnin",
            priority = 640,
            text = "Turn in Raene's Cleansing to Raene Wolfrunner in Astranaar.",
            dependsOn = { "accept-1029-raene-s-cleansing" },
            complete = QuestState(1029, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.3662, 0.4958, "Raene Wolfrunner",
                    "Travel to Raene Wolfrunner."),
            },
        },
        {
            id = "accept-1030-raene-s-cleansing",
            kind = "accept",
            priority = 650,
            text = "Accept Raene's Cleansing from Raene Wolfrunner in Astranaar.",
            complete = QuestState(1030, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.3662, 0.4958, "Raene Wolfrunner",
                    "Travel to Raene Wolfrunner."),
            },
        },
        {
            id = "objective-1045-dartol-s-rod-of-transformation",
            kind = "objective",
            priority = 670,
            text = "Use Dartol's Rod of Transformation to gain the Furbolg Form buff.",
            dependsOn = { "accept-1045-raene-s-cleansing" },
            complete = QuestState(1045, "complete"),
        },
        {
            id = "accept-1045-raene-s-cleansing",
            kind = "accept",
            priority = 680,
            text = "Accept Raene's Cleansing from Krolg in Mystral Lake.",
            complete = QuestState(1045, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.5264, 0.7430, "Continue toward Raene's Cleansing",
                    "Continue toward Raene's Cleansing."),
                Point(MAP.ASHENVALE, 0.5084, 0.7506, "Krolg",
                    "Travel to Krolg."),
            },
        },
        {
            id = "objective-1045-raene-s-cleansing",
            kind = "objective",
            priority = 690,
            text = "Kill Ran Bloodtooth and 4 Bloodtooth Guard in Bloodtooth Camp.",
            dependsOn = { "accept-1045-raene-s-cleansing" },
            complete = QuestState(1045, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.5445, 0.7459, "Continue toward Raene's Cleansing",
                    "Continue toward Raene's Cleansing."),
                Point(MAP.ASHENVALE, 0.5470, 0.7950, "Ran Bloodtooth",
                    "Travel to Ran Bloodtooth."),
            },
        },
        {
            id = "objective-1046-dartol-s-rod-of-transformation",
            kind = "objective",
            priority = 700,
            text = "Use Dartol's Rod of Transformation to gain the Furbolg Form buff.",
            dependsOn = { "accept-1046-raene-s-cleansing" },
            complete = QuestState(1046, "complete"),
        },
        {
            id = "turnin-1045-raene-s-cleansing",
            kind = "turnin",
            priority = 710,
            text = "Turn in Raene's Cleansing to Krolg in Mystral Lake.",
            dependsOn = { "objective-1045-dartol-s-rod-of-transformation", "objective-1045-raene-s-cleansing" },
            complete = QuestState(1045, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.5557, 0.7580, "Continue toward Raene's Cleansing",
                    "Continue toward Raene's Cleansing."),
                Point(MAP.ASHENVALE, 0.5469, 0.7477, "Continue toward Raene's Cleansing",
                    "Continue toward Raene's Cleansing."),
                Point(MAP.ASHENVALE, 0.5088, 0.7504, "Krolg",
                    "Travel to Krolg."),
            },
        },
        {
            id = "accept-1046-raene-s-cleansing",
            kind = "accept",
            priority = 720,
            text = "Accept Raene's Cleansing from Krolg in Mystral Lake.",
            complete = QuestState(1046, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.5088, 0.7504, "Krolg",
                    "Travel to Krolg."),
            },
        },
        {
            id = "turnin-1046-raene-s-cleansing",
            kind = "turnin",
            priority = 740,
            text = "Turn in Raene's Cleansing to Raene Wolfrunner in Astranaar.",
            dependsOn = { "objective-1046-dartol-s-rod-of-transformation" },
            complete = QuestState(1046, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.3661, 0.4958, "Raene Wolfrunner",
                    "Travel to Raene Wolfrunner."),
            },
        },
        {
            id = "turnin-1022-the-howling-vale",
            kind = "turnin",
            priority = 760,
            text = "Turn in The Howling Vale to Sentinel Melyria Frostshadow in The Shrine of Aessina.",
            dependsOn = { "objective-1022-the-howling-vale" },
            complete = QuestState(1022, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.2226, 0.5298, "Sentinel Melyria Frostshadow",
                    "Travel to Sentinel Melyria Frostshadow."),
            },
        },
        {
            id = "accept-1037-velinde-starsong",
            kind = "accept",
            priority = 770,
            text = "Accept Velinde Starsong from Sentinel Melyria Frostshadow in The Shrine of Aessina.",
            complete = QuestState(1037, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.2220, 0.5280, "Sentinel Melyria Frostshadow",
                    "Travel to Sentinel Melyria Frostshadow."),
            },
        },
        {
            id = "turnin-1031-the-branch-of-cenarius",
            kind = "turnin",
            priority = 780,
            text = "Turn in The Branch of Cenarius to Illiyana in The Shrine of Aessina.",
            dependsOn = { "objective-1031-the-branch-of-cenarius" },
            complete = QuestState(1031, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.2160, 0.5320, "Illiyana",
                    "Travel to Illiyana."),
            },
        },
        {
            id = "turnin-1037-velinde-starsong",
            kind = "turnin",
            priority = 800,
            text = "Turn in Velinde Starsong to Thyn'tel Bladeweaver in Darnassus.",
            dependsOn = { "accept-1037-velinde-starsong" },
            complete = QuestState(1037, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.6171, 0.3912, "Thyn'tel Bladeweaver",
                    "Travel to Thyn'tel Bladeweaver."),
            },
        },
        {
            id = "accept-1038-velinde-s-effects",
            kind = "accept",
            priority = 810,
            text = "Accept Velinde's Effects from Thyn'tel Bladeweaver in Darnassus.",
            complete = QuestState(1038, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.6171, 0.3912, "Thyn'tel Bladeweaver",
                    "Travel to Thyn'tel Bladeweaver."),
            },
        },
        {
            id = "accept-2925-klockmort-s-essentials",
            kind = "accept",
            priority = 820,
            text = "Accept Klockmort's Essentials from Mathiel in Darnassus.",
            complete = QuestState(2925, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.5907, 0.4511, "Mathiel",
                    "Travel to Mathiel."),
            },
        },
        {
            id = "objective-1038-1-velinde-s-journal",
            kind = "objective",
            priority = 830,
            text = "Collect Velinde's Journal from Velinde's Locker in Tradesmen's Terrace.",
            dependsOn = { "accept-1038-velinde-s-effects" },
            complete = QuestObjective(1038, 1),
            route = {
                Point(MAP.DARNASSUS, 0.5601, 0.7941, "Continue toward Velinde's Journal",
                    "Continue toward Velinde's Journal."),
                Point(MAP.DARNASSUS, 0.5730, 0.7660, "Continue toward Velinde's Journal",
                    "Continue toward Velinde's Journal."),
                Point(MAP.DARNASSUS, 0.6237, 0.8325, "Tradesmen's Terrace",
                    "Travel to Tradesmen's Terrace."),
            },
        },
        {
            id = "turnin-1038-velinde-s-effects",
            kind = "turnin",
            priority = 840,
            text = "Turn in Velinde's Effects to Thyn'tel Bladeweaver in Darnassus.",
            dependsOn = { "objective-1038-1-velinde-s-journal" },
            complete = QuestState(1038, "completed"),
            route = {
                Point(MAP.DARNASSUS, 0.6183, 0.3911, "Thyn'tel Bladeweaver",
                    "Travel to Thyn'tel Bladeweaver."),
            },
        },
        {
            id = "accept-1039-the-barrens-port",
            kind = "accept",
            priority = 850,
            text = "Accept The Barrens Port from Thyn'tel Bladeweaver in Darnassus.",
            complete = QuestState(1039, "activeOrCompleted"),
            route = {
                Point(MAP.DARNASSUS, 0.6183, 0.3911, "Thyn'tel Bladeweaver",
                    "Travel to Thyn'tel Bladeweaver."),
            },
        },
    },
})
