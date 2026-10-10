local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Stonetalon Mountains",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-stonetalon-mountains",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 25 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-1087-cenarius-legacy",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1087,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.6042, mapID = 1442, label = "Braelyn Firehand", offMapText = "Travel to Braelyn Firehand in Stonetalon Mountains.", x = 0.4594 },
            },
            text = "Accept Cenarius' Legacy from Braelyn Firehand.",
            id = "accept-1087-cenarius-legacy",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1087, state = "activeOrCompleted" },
            },
            sourceStep = 1,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 30,
            route = {
                { y = 0.5838, mapID = 1442, label = "Tammra Windfield", offMapText = "Travel to Tammra Windfield in Stonetalon Mountains.", x = 0.4746 },
            },
            text = "Accept Cycle of Rebirth from Tammra Windfield.",
            id = "accept-6301-cycle-of-rebirth",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 17 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6301, state = "activeOrCompleted" },
            },
            sourceStep = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-5881-calling-in-the-reserves",
            kind = "note",
            text = "Reach level 23 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 23 },
            },
            requiredLevel = 23,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5881,
            priority = 40,
        },
        {
            priority = 50,
            route = {
                { y = 0.6115, mapID = 1442, label = "Maggran Earthbinder", offMapText = "Travel to Maggran Earthbinder in Stonetalon Mountains.", x = 0.472 },
            },
            text = "Accept Calling in the Reserves from Maggran Earthbinder.",
            id = "accept-5881-calling-in-the-reserves",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 23 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5881, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 60,
            route = {
                { y = 0.6115, mapID = 1442, label = "Maggran Earthbinder", offMapText = "Travel to Maggran Earthbinder in Stonetalon Mountains.", x = 0.472 },
            },
            text = "Accept Harpies Threaten from Maggran Earthbinder.",
            id = "accept-6282-harpies-threaten",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6282, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 70,
            route = {
                { mapID = 1442, x = 0.47369999999999995, y = 0.6429, label = "Tsunaman", offMapText = "Travel to Tsunaman in Stonetalon Mountains." },
            },
            text = "Accept Elemental War from Tsunaman.",
            id = "accept-6393-elemental-war",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6393, state = "activeOrCompleted" },
            },
            sourceStep = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1096-gerenzo-wrenchwhistle",
            kind = "note",
            text = "Reach level 16 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 16 },
            },
            requiredLevel = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1096,
            priority = 80,
        },
        {
            priority = 90,
            route = {
                { y = 0.626, mapID = 1442, label = "Ziz Fizziks", offMapText = "Travel to Ziz Fizziks in Stonetalon Mountains.", x = 0.5899 },
            },
            text = "Accept Gerenzo Wrenchwhistle from Ziz Fizziks.",
            id = "accept-1096-gerenzo-wrenchwhistle",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                },
            },
            complete = {
                quest = { id = 1096, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1095 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 100,
            route = {
                { y = 0.4548, mapID = 1442, label = "Toxic Fogger", offMapText = "Travel to Toxic Fogger.", x = 0.6652 },
            },
            text = "Use Toxic Fogger.",
            id = "objective-1086-1-toxic-fogger",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1086, text = "Toxic Fogger", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1067 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 110,
            text = "For Gerenzo Wrenchwhistle: Bring Gerenzo Wrenchwhistle's Mechanical Arm to Ziz Fizziks in the Stonetalon Mountains.",
            id = "objective-1096-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                },
            },
            complete = {
                quest = { id = 1096, state = "complete" },
            },
            sourceStep = 8,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1095 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-1096-gerenzo-wrenchwhistle" },
        },
        {
            priority = 120,
            text = "Turn in Gerenzo Wrenchwhistle to Ziz Fizziks.",
            route = {
                { y = 0.626, mapID = 1442, label = "Ziz Fizziks", offMapText = "Travel to Ziz Fizziks in Stonetalon Mountains.", x = 0.5899 },
            },
            dependsOn = { "accept-1096-gerenzo-wrenchwhistle", "objective-1096-quest-work" },
            id = "turnin-1096-gerenzo-wrenchwhistle",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                },
            },
            complete = {
                quest = { id = 1096, state = "completed" },
            },
            sourceStep = 8,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1095 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 130,
            text = "Collect 10 Incendrites.",
            route = {
                { mapID = 1442, x = 0.44799999999999995, y = 0.434, label = "Incendrites", offMapText = "Travel to Incendrites." },
            },
            dependsOn = { "accept-6393-elemental-war" },
            id = "objective-6393-1-burning-ravager",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6393, text = "Burning Ravager", index = 1, count = 10 },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 140,
            route = {
                { y = 0.382, mapID = 1442, label = "Antlered Courser", offMapText = "Travel to Antlered Courser.", x = 0.464 },
            },
            text = "Collect 30 Courser Eye.",
            id = "objective-1058-3-antlered-courser",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1058, text = "Antlered Courser", index = 3, count = 30 },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-1058-4-fey-dragon-scale",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 1 Fey Dragon Scale.",
            complete = {
                questObjective = { id = 1058, index = 4, text = "Fey Dragon Scale", count = 1 },
            },
            route = {
                { mapID = 1442, x = 0.41, y = 0.122, label = "Fey Dragon Scale", offMapText = "Travel to Fey Dragon Scale." },
            },
            sourceStep = 11,
            priority = 150,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 160,
            text = "Kill Burning Ravager.",
            route = {
                { y = 0.434, mapID = 1442, label = "Burning Ravager", offMapText = "Travel to Burning Ravager.", x = 0.448 },
            },
            dependsOn = { "accept-6393-elemental-war" },
            id = "objective-6393-1-burning-ravager-2",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6393, text = "Burning Ravager", index = 1 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-1058-1-stonetalon-sap",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 5 Stonetalon Sap.",
            complete = {
                questObjective = { id = 1058, index = 1, text = "Stonetalon Sap", count = 5 },
            },
            route = {
                { mapID = 1442, x = 0.354, y = 0.17800000000000002, label = "Stonetalon Sap", offMapText = "Travel to Stonetalon Sap." },
            },
            sourceStep = 12,
            priority = 170,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-1058-2-twilight-whisker",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 5 Twilight Whisker.",
            complete = {
                questObjective = { id = 1058, index = 2, text = "Twilight Whisker", count = 5 },
            },
            route = {
                { mapID = 1442, x = 0.314, y = 0.13, label = "Twilight Whisker", offMapText = "Travel to Twilight Whisker." },
            },
            sourceStep = 13,
            priority = 180,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-1087-1-son-of-cenarius",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 4 Son of Cenarius.",
            complete = {
                questObjective = { id = 1087, index = 1, text = "Son of Cenarius", count = 4 },
            },
            route = {
                { mapID = 1442, x = 0.35200000000000004, y = 0.136, label = "Son of Cenarius", offMapText = "Travel to Son of Cenarius." },
            },
            sourceStep = 14,
            priority = 190,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1087-cenarius-legacy" },
        },
        {
            id = "objective-1087-2-daughter-of-cenarius",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 4 Daughter of Cenarius.",
            complete = {
                questObjective = { id = 1087, index = 2, text = "Daughter of Cenarius", count = 4 },
            },
            route = {
                { mapID = 1442, x = 0.35200000000000004, y = 0.136, label = "Daughter of Cenarius", offMapText = "Travel to Daughter of Cenarius." },
            },
            sourceStep = 14,
            priority = 200,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1087-cenarius-legacy" },
        },
        {
            id = "objective-1087-3-cenarion-botanist",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 4 Cenarion Botanist.",
            complete = {
                questObjective = { id = 1087, index = 3, text = "Cenarion Botanist", count = 4 },
            },
            route = {
                { mapID = 1442, x = 0.35200000000000004, y = 0.136, label = "Cenarion Botanist", offMapText = "Travel to Cenarion Botanist." },
            },
            sourceStep = 14,
            priority = 210,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1087-cenarius-legacy" },
        },
        {
            id = "objective-6301-1-gaea-seed",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 17 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 10 Gaea Seed.",
            complete = {
                questObjective = { id = 6301, index = 1, text = "Gaea Seed", count = 10 },
            },
            route = {
                { mapID = 1442, x = 0.467, y = 0.374, label = "Gaea Seed", offMapText = "Travel to Gaea Seed." },
            },
            sourceStep = 15,
            priority = 220,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-6301-cycle-of-rebirth" },
        },
        {
            id = "objective-6282-1-bloodfury-harpy",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 7 Bloodfury Harpy.",
            complete = {
                questObjective = { id = 6282, index = 1, text = "Bloodfury Harpy", count = 7 },
            },
            route = {
                { mapID = 1442, x = 0.326, y = 0.616, label = "Bloodfury Harpy", offMapText = "Travel to Bloodfury Harpy." },
            },
            sourceStep = 17,
            priority = 230,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-6282-harpies-threaten" },
        },
        {
            id = "objective-6282-2-bloodfury-ambusher",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 7 Bloodfury Ambusher.",
            complete = {
                questObjective = { id = 6282, index = 2, text = "Bloodfury Ambusher", count = 7 },
            },
            route = {
                { mapID = 1442, x = 0.322, y = 0.638, label = "Bloodfury Ambusher", offMapText = "Travel to Bloodfury Ambusher." },
            },
            sourceStep = 18,
            priority = 240,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-6282-harpies-threaten" },
        },
        {
            id = "objective-6282-3-bloodfury-slayer",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 7 Bloodfury Slayer.",
            complete = {
                questObjective = { id = 6282, index = 3, text = "Bloodfury Slayer", count = 7 },
            },
            route = {
                { mapID = 1442, x = 0.344, y = 0.674, label = "Bloodfury Slayer", offMapText = "Travel to Bloodfury Slayer." },
            },
            sourceStep = 19,
            priority = 250,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-6282-harpies-threaten" },
        },
        {
            id = "objective-6282-4-bloodfury-roguefeather",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 7 Bloodfury Roguefeather.",
            complete = {
                questObjective = { id = 6282, index = 4, text = "Bloodfury Roguefeather", count = 7 },
            },
            route = {
                { mapID = 1442, x = 0.344, y = 0.674, label = "Bloodfury Roguefeather", offMapText = "Travel to Bloodfury Roguefeather." },
            },
            sourceStep = 20,
            priority = 260,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-6282-harpies-threaten" },
        },
        {
            priority = 270,
            text = "Turn in Elemental War to Tsunaman.",
            route = {
                { mapID = 1442, x = 0.47369999999999995, y = 0.6429, label = "Tsunaman", offMapText = "Travel to Tsunaman in Stonetalon Mountains." },
            },
            dependsOn = { "accept-6393-elemental-war", "objective-6393-1-burning-ravager", "objective-6393-1-burning-ravager-2" },
            id = "turnin-6393-elemental-war",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 19 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6393, state = "completed" },
            },
            sourceStep = 22,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 280,
            text = "Turn in Harpies Threaten to Maggran Earthbinder.",
            route = {
                { y = 0.6114, mapID = 1442, label = "Maggran Earthbinder", offMapText = "Travel to Maggran Earthbinder in Stonetalon Mountains.", x = 0.4719 },
            },
            dependsOn = {
                "accept-6282-harpies-threaten",
                "objective-6282-1-bloodfury-harpy",
                "objective-6282-2-bloodfury-ambusher",
                "objective-6282-3-bloodfury-slayer",
                "objective-6282-4-bloodfury-roguefeather",
            },
            id = "turnin-6282-harpies-threaten",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6282, state = "completed" },
            },
            sourceStep = 23,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 290,
            text = "Turn in Cycle of Rebirth to Tammra Windfield.",
            route = {
                { y = 0.5838, mapID = 1442, label = "Tammra Windfield", offMapText = "Travel to Tammra Windfield in Stonetalon Mountains.", x = 0.4746 },
            },
            dependsOn = { "accept-6301-cycle-of-rebirth", "objective-6301-1-gaea-seed" },
            id = "turnin-6301-cycle-of-rebirth",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 17 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6301, state = "completed" },
            },
            sourceStep = 24,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 300,
            route = {
                { y = 0.5838, mapID = 1442, label = "Tammra Windfield", offMapText = "Travel to Tammra Windfield in Stonetalon Mountains.", x = 0.4746 },
            },
            text = "Accept New Life from Tammra Windfield.",
            id = "accept-6381-new-life",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 17 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6381, state = "activeOrCompleted" },
            },
            sourceStep = 24,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6301 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 310,
            text = "Turn in Cenarius' Legacy to Braelyn Firehand.",
            route = {
                { y = 0.6042, mapID = 1442, label = "Braelyn Firehand", offMapText = "Travel to Braelyn Firehand in Stonetalon Mountains.", x = 0.4594 },
            },
            dependsOn = {
                "accept-1087-cenarius-legacy",
                "objective-1087-1-son-of-cenarius",
                "objective-1087-2-daughter-of-cenarius",
                "objective-1087-3-cenarion-botanist",
            },
            id = "turnin-1087-cenarius-legacy",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1087, state = "completed" },
            },
            sourceStep = 25,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 320,
            text = "Follow the path into the Charred Vale. Plant Gaea Seeds in 10 Gaea Dirt Mounds scattered around the vale.",
            id = "objective-6381-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 17 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6381, index = 1, count = 10 },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6301 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-6381-new-life" },
            route = {
                { mapID = 1442, x = 0.3225, y = 0.6816, label = "New Life", offMapText = "Travel to New Life." },
            },
        },
        {
            priority = 330,
            text = "Turn in New Life to Tammra Windfield.",
            route = {
                { mapID = 1442, x = 0.4746, y = 0.5838, label = "Tammra Windfield", offMapText = "Travel to Tammra Windfield in Stonetalon Mountains." },
            },
            dependsOn = { "accept-6381-new-life", "objective-6381-quest-work" },
            id = "turnin-6381-new-life",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 17 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 6381, state = "completed" },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6301 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 340,
            text = "Turn in Jin'Zil's Forest Magic to Witch Doctor Jin'Zil.",
            route = {
                { y = 0.9794, mapID = 1442, label = "Witch Doctor Jin'Zil", offMapText = "Travel to Witch Doctor Jin'Zil in Stonetalon Mountains.", x = 0.7454 },
            },
            dependsOn = {
                "objective-1058-3-antlered-courser",
                "objective-1058-4-fey-dragon-scale",
                "objective-1058-1-stonetalon-sap",
                "objective-1058-2-twilight-whisker",
            },
            id = "turnin-1058-jin-zil-s-forest-magic",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1058, state = "completed" },
            },
            sourceStep = 28,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 350,
            route = {
                { mapID = 1442, x = 0.7066, y = 0.5611999999999999, label = "XT-9", offMapText = "Travel to XT-9." },
            },
            text = "Kill the shredder XT:9 near the southern side of Windshear Crag.",
            id = "objective-1068-2-authored-XT-9",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1068, index = 2, count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1062 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 360,
            route = {
                { mapID = 1442, x = 0.6731999999999999, y = 0.4658, label = "XT-4", offMapText = "Travel to XT-4." },
            },
            text = "Kill the shredder XT:4 near the northern side of Windshear Crag.",
            id = "objective-1068-1-authored-XT-4",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1068, index = 1, count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1062 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 370,
            route = {
                { mapID = 1413, x = 0.35259999999999997, y = 0.2788, label = "Seereth Stonebreak", offMapText = "Travel to Seereth Stonebreak in The Barrens." },
            },
            text = "Turn in Shredding Machines to Seereth Stonebreak.",
            id = "turnin-1068-shredding-machines",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1068, state = "completed" },
            },
            sourceStep = 29,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1062 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-1068-2-authored-XT-9", "objective-1068-1-authored-XT-4" },
        },
        {
            id = "level-before-woven-objective-97538-pigments-for-paints",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 20 },
            },
            requiredLevel = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 97538,
            priority = 380,
        },
        {
            text = "Collect 30 Mirkweed Pods in Mirkfallon Lake. No saved spot for the pods, so the guide follows the pin in your quest log.",
            priority = 390,
            route = {
                { y = 0.41, mapID = 1442, label = "Mirkfallon Lake", offMapText = "Travel to Mirkfallon Lake.", x = 0.48 },
            },
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            id = "woven-objective-97538-pigments-for-paints",
            kind = "objective",
            useClientPin = false,
            complete = {
                quest = { id = 97538, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
            dependsOn = {},
        },
        {
            priority = 400,
            route = {
                { y = 0.474, mapID = 1456, label = "Tah Winterhoof", offMapText = "Travel to Tah Winterhoof.", x = 0.54 },
            },
            text = "Turn in Pigments for Paints to Tah Winterhoof in Thunder Bluff.",
            id = "woven-turnin-97538-pigments-for-paints",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 97538, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-objective-97538-pigments-for-paints" },
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
