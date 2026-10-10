local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Stonetalon Mountains & Ashenvale",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 29 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-1057-reclaiming-the-charred-vale",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
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
            checkpointQuest = 1057,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.081, mapID = 1442, label = "Keeper Albagorm", offMapText = "Travel to Keeper Albagorm in Stonetalon Mountains.", x = 0.371 },
            },
            text = "Accept Reclaiming the Charred Vale from Keeper Albagorm.",
            id = "accept-1057-reclaiming-the-charred-vale",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1057, state = "activeOrCompleted" },
            },
            sourceStep = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 30,
            text = "Kill 7 Bloodfury Harpy.",
            route = {
                { y = 0.616, mapID = 1442, label = "Bloodfury Harpy", offMapText = "Travel to Bloodfury Harpy.", x = 0.326 },
            },
            dependsOn = { "accept-1057-reclaiming-the-charred-vale" },
            id = "objective-1057-1-bloodfury-harpy",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1057, text = "Bloodfury Harpy", index = 1, count = 7 },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-1057-2-bloodfury-ambusher",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 7 Bloodfury Ambusher.",
            complete = {
                questObjective = { id = 1057, index = 2, text = "Bloodfury Ambusher", count = 7 },
            },
            route = {
                { mapID = 1442, x = 0.322, y = 0.638, label = "Bloodfury Ambusher", offMapText = "Travel to Bloodfury Ambusher." },
            },
            sourceStep = 4,
            priority = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1057-reclaiming-the-charred-vale" },
        },
        {
            id = "objective-1057-3-bloodfury-slayer",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 7 Bloodfury Slayer.",
            complete = {
                questObjective = { id = 1057, index = 3, text = "Bloodfury Slayer", count = 7 },
            },
            route = {
                { mapID = 1442, x = 0.344, y = 0.674, label = "Bloodfury Slayer", offMapText = "Travel to Bloodfury Slayer." },
            },
            sourceStep = 5,
            priority = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1057-reclaiming-the-charred-vale" },
        },
        {
            id = "objective-1057-4-bloodfury-roguefeather",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 7 Bloodfury Roguefeather.",
            complete = {
                questObjective = { id = 1057, index = 4, text = "Bloodfury Roguefeather", count = 7 },
            },
            route = {
                { mapID = 1442, x = 0.344, y = 0.674, label = "Bloodfury Roguefeather", offMapText = "Travel to Bloodfury Roguefeather." },
            },
            sourceStep = 6,
            priority = 60,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1057-reclaiming-the-charred-vale" },
        },
        {
            priority = 70,
            text = "Turn in Reclaiming the Charred Vale to Keeper Albagorm.",
            route = {
                { y = 0.081, mapID = 1442, label = "Keeper Albagorm", offMapText = "Travel to Keeper Albagorm in Stonetalon Mountains.", x = 0.371 },
            },
            dependsOn = {
                "accept-1057-reclaiming-the-charred-vale",
                "objective-1057-1-bloodfury-harpy",
                "objective-1057-2-bloodfury-ambusher",
                "objective-1057-3-bloodfury-slayer",
                "objective-1057-4-bloodfury-roguefeather",
            },
            id = "turnin-1057-reclaiming-the-charred-vale",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1057, state = "completed" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 80,
            route = {
                { y = 0.081, mapID = 1442, label = "Keeper Albagorm", offMapText = "Travel to Keeper Albagorm in Stonetalon Mountains.", x = 0.371 },
            },
            text = "Accept Reclaiming the Charred Vale from Keeper Albagorm.",
            id = "accept-1059-reclaiming-the-charred-vale",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1059, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1057 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 90,
            route = {
                { y = 0.387, mapID = 1440, label = "Delgren the Purifier", offMapText = "Travel to Delgren the Purifier in Ashenvale.", x = 0.262 },
            },
            text = "Accept The Tower of Althalaxx from Delgren the Purifier.",
            id = "accept-1140-the-tower-of-althalaxx",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1140, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 973 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1022-the-howling-vale",
            kind = "note",
            text = "Reach level 25 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 25 },
            },
            requiredLevel = 25,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1022,
            priority = 100,
        },
        {
            priority = 110,
            route = {
                { y = 0.5298, mapID = 1440, label = "Sentinel Melyria Frostshadow", offMapText = "Travel to Sentinel Melyria Frostshadow in Ashenvale.", x = 0.2223 },
            },
            text = "Accept The Howling Vale from Sentinel Melyria Frostshadow.",
            id = "accept-1022-the-howling-vale",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1022, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1021-vile-satyr-dryads-in-danger",
            kind = "note",
            text = "Reach level 26 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 26 },
            },
            requiredLevel = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1021,
            priority = 120,
        },
        {
            priority = 130,
            route = {
                { y = 0.5335, mapID = 1440, label = "Illiyana", offMapText = "Travel to Illiyana in Ashenvale.", x = 0.2173 },
            },
            text = "Accept Vile Satyr! Dryads in Danger! from Illiyana.",
            id = "accept-1021-vile-satyr-dryads-in-danger",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1021, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 140,
            route = {
                { y = 0.4884, mapID = 1440, label = "Shindrell Swiftfire", offMapText = "Travel to Shindrell Swiftfire in Ashenvale.", x = 0.3467 },
            },
            text = "Accept Kayneth Stillwind from Shindrell Swiftfire.",
            id = "accept-4581-kayneth-stillwind",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 24 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4581, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 150,
            route = {
                { y = 0.4958, mapID = 1440, label = "Raene Wolfrunner", offMapText = "Travel to Raene Wolfrunner in Ashenvale.", x = 0.3662 },
            },
            text = "Accept Raene's Cleansing from Raene Wolfrunner.",
            id = "accept-1024-raene-s-cleansing",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1024, state = "activeOrCompleted" },
            },
            sourceStep = 13,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1023 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 160,
            route = {
                { y = 0.5179, mapID = 1440, label = "Pelturas Whitemoon", offMapText = "Travel to Pelturas Whitemoon in Ashenvale.", x = 0.3737 },
            },
            text = "Accept Fallen Sky Lake from Pelturas Whitemoon.",
            id = "accept-1035-fallen-sky-lake",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1035, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1034 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 170,
            text = "Turn in Raene's Cleansing to Shael'dryn.",
            route = {
                { mapID = 1440, x = 0.5354, y = 0.4629, label = "Shael'dryn", offMapText = "Travel to Shael'dryn in Ashenvale." },
            },
            dependsOn = { "accept-1024-raene-s-cleansing" },
            id = "turnin-1024-raene-s-cleansing",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1024, state = "completed" },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1023 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 180,
            route = {
                { mapID = 1440, x = 0.5354, y = 0.4629, label = "Shael'dryn", offMapText = "Travel to Shael'dryn in Ashenvale." },
            },
            text = "Accept Raene's Cleansing from Shael'dryn.",
            id = "accept-1026-raene-s-cleansing",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1026, state = "activeOrCompleted" },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1024 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 190,
            text = "Kill Withered Ancients and Crazed Ancients east of Astranaar and loot 1 Wooden Key.",
            route = {
                { mapID = 1440, x = 0.626, y = 0.46799999999999997, label = "Ancients", offMapText = "Travel to Ancients." },
            },
            dependsOn = { "accept-1026-raene-s-cleansing" },
            id = "objective-1026-1-withered-ancient",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                any = {
                    {
                        all = {
                            {
                                item = { name = "Wooden Key", minCount = 1 },
                            },
                        },
                    },
                    {
                        quest = { id = 1026, state = "complete" },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1024 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            sourceInstructionStep = 17,
            sourceInstructionIndex = 1,
            checkpointQuest = 1026,
            instructionOnly = true,
            rememberPreparation = 1026,
        },
        {
            priority = 200,
            text = "Use the Wooden Key to open the Worn Chest and collect 1 Iron Shaft.",
            route = {
                { mapID = 1440, x = 0.5440999999999999, y = 0.3539, label = "Worn Chest", offMapText = "Travel to Worn Chest." },
            },
            dependsOn = { "accept-1026-raene-s-cleansing" },
            id = "objective-1026-1-worn-chest",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1026, index = 1, count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1024 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 210,
            text = "Turn in Vile Satyr! Dryads in Danger! to Anilia.",
            route = {
                { mapID = 1440, x = 0.7831999999999999, y = 0.4482, label = "Anilia", offMapText = "Travel to Anilia in Ashenvale." },
            },
            dependsOn = { "accept-1021-vile-satyr-dryads-in-danger" },
            id = "turnin-1021-vile-satyr-dryads-in-danger",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1021, state = "completed" },
            },
            sourceStep = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 220,
            route = {
                { mapID = 1440, x = 0.7831999999999999, y = 0.4482, label = "Anilia", offMapText = "Travel to Anilia in Ashenvale." },
            },
            text = "Accept The Branch of Cenarius from Anilia.",
            id = "accept-1031-the-branch-of-cenarius",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1031, state = "activeOrCompleted" },
            },
            sourceStep = 19,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1021 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 230,
            text = "Collect 1 Branch of Cenarius.",
            route = {
                { y = 0.4242, mapID = 1440, label = "Geltharis", offMapText = "Travel to Geltharis.", x = 0.78 },
            },
            dependsOn = { "accept-1031-the-branch-of-cenarius" },
            id = "objective-1031-1-geltharis",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1031, text = "Geltharis", index = 1, count = 1 },
            },
            sourceStep = 20,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1021 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 240,
            text = "Turn in Kayneth Stillwind to Kayneth Stillwind.",
            route = {
                { y = 0.4471, mapID = 1440, label = "Kayneth Stillwind", offMapText = "Travel to Kayneth Stillwind in Ashenvale.", x = 0.8524 },
            },
            dependsOn = { "accept-4581-kayneth-stillwind" },
            id = "turnin-4581-kayneth-stillwind",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 24 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4581, state = "completed" },
            },
            sourceStep = 21,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 250,
            route = {
                { y = 0.4471, mapID = 1440, label = "Kayneth Stillwind", offMapText = "Travel to Kayneth Stillwind in Ashenvale.", x = 0.8524 },
            },
            text = "Accept Forsaken Diseases from Kayneth Stillwind.",
            id = "accept-1011-forsaken-diseases",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 24 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1011, state = "activeOrCompleted" },
            },
            sourceStep = 21,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 260,
            text = "For The Howling Vale: Go to the Howling Vale and study the Tome of Mel'Thandris.",
            id = "objective-1022-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1022, state = "complete" },
            },
            sourceStep = 22,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-1022-the-howling-vale" },
        },
        {
            priority = 270,
            text = "Turn in The Howling Vale to Sentinel Melyria Frostshadow.",
            route = {
                { y = 0.5298, mapID = 1440, label = "Sentinel Melyria Frostshadow", offMapText = "Travel to Sentinel Melyria Frostshadow in Ashenvale.", x = 0.2223 },
            },
            dependsOn = { "accept-1022-the-howling-vale", "objective-1022-quest-work" },
            id = "turnin-1022-the-howling-vale",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1022, state = "completed" },
            },
            sourceStep = 22,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 280,
            route = {
                { y = 0.5298, mapID = 1440, label = "Sentinel Melyria Frostshadow", offMapText = "Travel to Sentinel Melyria Frostshadow in Ashenvale.", x = 0.2223 },
            },
            text = "Accept Velinde Starsong from Sentinel Melyria Frostshadow.",
            id = "accept-1037-velinde-starsong",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1037, state = "activeOrCompleted" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1022 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 290,
            text = "Turn in The Branch of Cenarius to Illiyana.",
            route = {
                { y = 0.5335, mapID = 1440, label = "Illiyana", offMapText = "Travel to Illiyana in Ashenvale.", x = 0.2173 },
            },
            dependsOn = { "accept-1031-the-branch-of-cenarius", "objective-1031-1-geltharis" },
            id = "turnin-1031-the-branch-of-cenarius",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1031, state = "completed" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1021 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 300,
            route = {
                { y = 0.5335, mapID = 1440, label = "Illiyana", offMapText = "Travel to Illiyana in Ashenvale.", x = 0.2173 },
            },
            text = "Accept Satyr Slaying! from Illiyana.",
            id = "accept-1032-satyr-slaying",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1032, state = "activeOrCompleted" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1031 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 310,
            text = "Turn in Raene's Cleansing to Shael'dryn.",
            route = {
                { mapID = 1440, x = 0.5354, y = 0.4629, label = "Shael'dryn", offMapText = "Travel to Shael'dryn in Ashenvale." },
            },
            dependsOn = { "accept-1026-raene-s-cleansing", "objective-1026-1-withered-ancient", "objective-1026-1-worn-chest" },
            id = "turnin-1026-raene-s-cleansing",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1026, state = "completed" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1024 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 320,
            route = {
                { mapID = 1440, x = 0.5354, y = 0.4629, label = "Shael'dryn", offMapText = "Travel to Shael'dryn in Ashenvale." },
            },
            text = "Accept Raene's Cleansing from Shael'dryn.",
            id = "accept-1027-raene-s-cleansing",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1027, state = "activeOrCompleted" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1026 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 330,
            text = "Collect 1 Fallen Moonstone.",
            route = {
                { y = 0.8219, mapID = 1440, label = "Shadethicket Oracle", offMapText = "Travel to Shadethicket Oracle.", x = 0.6668 },
            },
            dependsOn = { "accept-1035-fallen-sky-lake" },
            id = "objective-1035-1-shadethicket-oracle",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1035, text = "Shadethicket Oracle", index = 1, count = 1 },
            },
            sourceStep = 29,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1034 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 340,
            text = "Collect 1 Iron Pommel.",
            route = {
                { y = 0.758, mapID = 1440, label = "Rotting Slime", offMapText = "Travel to Rotting Slime.", x = 0.694 },
            },
            dependsOn = { "accept-1027-raene-s-cleansing" },
            id = "objective-1027-1-rotting-slime",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1027, text = "Rotting Slime", index = 1, count = 1 },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1026 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-1011-1-bottle-of-disease",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 24 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 Bottle of Disease.",
            complete = {
                questObjective = { id = 1011, index = 1, text = "Bottle of Disease", count = 1 },
            },
            route = {
                { mapID = 1440, x = 0.7529, y = 0.7222, label = "Bottle of Disease", offMapText = "Travel to Bottle of Disease." },
            },
            sourceStep = 31,
            priority = 350,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1011-forsaken-diseases" },
        },
        {
            priority = 360,
            text = "Turn in Forsaken Diseases to Kayneth Stillwind.",
            route = {
                { y = 0.4471, mapID = 1440, label = "Kayneth Stillwind", offMapText = "Travel to Kayneth Stillwind in Ashenvale.", x = 0.8524 },
            },
            dependsOn = { "accept-1011-forsaken-diseases", "objective-1011-1-bottle-of-disease" },
            id = "turnin-1011-forsaken-diseases",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 24 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1011, state = "completed" },
            },
            sourceStep = 32,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-1140-reviewed-1",
            kind = "objective",
            text = "Touch the Circle of Imprisonment at Night Run to free the trapped Highborne soul.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 973 },
                    conditions = {},
                },
            },
            complete = {
                questObjective = { id = 1140, index = 1, count = 1 },
            },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1440, x = 0.6663, y = 0.5698, label = "Circle of Imprisonment", offMapText = "Travel to Circle of Imprisonment." },
            },
            sourceStep = 34,
            dependsOn = { "accept-1140-the-tower-of-althalaxx" },
            priority = 370,
        },
        {
            id = "objective-1032-1-satyr-horns",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 16 Satyr Horns.",
            complete = {
                questObjective = { id = 1032, index = 1, text = "Satyr Horns", count = 16 },
            },
            route = {
                { mapID = 1440, x = 0.6859999999999999, y = 0.534, label = "Satyr Horns", offMapText = "Travel to Satyr Horns." },
            },
            sourceStep = 35,
            priority = 380,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1031 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1032-satyr-slaying" },
        },
        {
            priority = 390,
            text = "Click Circle of Imprisonment.",
            route = {
                { y = 0.4858, mapID = 1440, label = "Circle of Imprisonment", offMapText = "Travel to Circle of Imprisonment.", x = 0.816 },
            },
            dependsOn = { "accept-1140-the-tower-of-althalaxx" },
            id = "objective-1140-2-circle-of-imprisonment",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1140, text = "Circle of Imprisonment", index = 2 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 973 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 400,
            text = "Turn in Raene's Cleansing to Shael'dryn.",
            route = {
                { mapID = 1440, x = 0.5354, y = 0.4621, label = "Shael'dryn", offMapText = "Travel to Shael'dryn in Ashenvale." },
            },
            dependsOn = { "accept-1027-raene-s-cleansing", "objective-1027-1-rotting-slime" },
            id = "turnin-1027-raene-s-cleansing",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1027, state = "completed" },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1026 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 410,
            route = {
                { y = 0.4621, mapID = 1440, label = "Shael'dryn", offMapText = "Travel to Shael'dryn in Ashenvale.", x = 0.5354 },
            },
            text = "Accept Raene's Cleansing from Shael'dryn.",
            id = "accept-1028-raene-s-cleansing",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1028, state = "activeOrCompleted" },
            },
            sourceStep = 37,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1027 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 420,
            text = "Turn in Raene's Cleansing.",
            route = {
                { mapID = 1440, x = 0.5638000000000001, y = 0.49229999999999996, label = "Raene's Cleansing", offMapText = "Travel to Raene's Cleansing." },
            },
            dependsOn = { "accept-1028-raene-s-cleansing" },
            id = "turnin-1028-raene-s-cleansing",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1028, state = "completed" },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1027 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 430,
            route = {
                { mapID = 1440, x = 0.5638000000000001, y = 0.49229999999999996, label = "Raene's Cleansing", offMapText = "Travel to Raene's Cleansing." },
            },
            text = "Accept Raene's Cleansing.",
            id = "accept-1055-raene-s-cleansing",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1055, state = "activeOrCompleted" },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1028 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 440,
            text = "Turn in Raene's Cleansing to Shael'dryn.",
            route = {
                { mapID = 1440, x = 0.5354, y = 0.4621, label = "Shael'dryn", offMapText = "Travel to Shael'dryn in Ashenvale." },
            },
            dependsOn = { "accept-1055-raene-s-cleansing" },
            id = "turnin-1055-raene-s-cleansing",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1055, state = "completed" },
            },
            sourceStep = 39,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1028 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 450,
            route = {
                { mapID = 1440, x = 0.5354, y = 0.4621, label = "Shael'dryn", offMapText = "Travel to Shael'dryn in Ashenvale." },
            },
            text = "Accept Raene's Cleansing from Shael'dryn.",
            id = "accept-1029-raene-s-cleansing",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1029, state = "activeOrCompleted" },
            },
            sourceStep = 39,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1055 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 460,
            text = "Turn in Fallen Sky Lake to Pelturas Whitemoon.",
            route = {
                { y = 0.5179, mapID = 1440, label = "Pelturas Whitemoon", offMapText = "Travel to Pelturas Whitemoon in Ashenvale.", x = 0.3736 },
            },
            dependsOn = { "accept-1035-fallen-sky-lake", "objective-1035-1-shadethicket-oracle" },
            id = "turnin-1035-fallen-sky-lake",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1035, state = "completed" },
            },
            sourceStep = 40,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1034 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 470,
            text = "Turn in Raene's Cleansing to Raene Wolfrunner.",
            route = {
                { y = 0.4958, mapID = 1440, label = "Raene Wolfrunner", offMapText = "Travel to Raene Wolfrunner in Ashenvale.", x = 0.3662 },
            },
            dependsOn = { "accept-1029-raene-s-cleansing" },
            id = "turnin-1029-raene-s-cleansing",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1029, state = "completed" },
            },
            sourceStep = 41,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1055 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 480,
            route = {
                { y = 0.4958, mapID = 1440, label = "Raene Wolfrunner", offMapText = "Travel to Raene Wolfrunner in Ashenvale.", x = 0.3662 },
            },
            text = "Accept Raene's Cleansing from Raene Wolfrunner.",
            id = "accept-1030-raene-s-cleansing",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1030, state = "activeOrCompleted" },
            },
            sourceStep = 41,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1029 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 490,
            text = "Use Dartol's Rod of Transformation here to enter Furbolg Form before speaking with Krolg.",
            route = {
                { mapID = 1440, x = 0.5367000000000001, y = 0.7397, label = "Furbolg transformation point", offMapText = "Travel to Furbolg transformation point." },
            },
            dependsOn = { "accept-1030-raene-s-cleansing" },
            id = "objective-1030-1-dartol-s-rod-of-transformation",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1029 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            instructionOnly = true,
            checkpointQuest = 1030,
        },
        {
            priority = 500,
            text = "Use Dartol's Rod of Transformation to enter Furbolg Form, then speak with Krolg and turn in Raene's Cleansing.",
            route = {
                { mapID = 1440, x = 0.5085000000000001, y = 0.7506999999999999, label = "Krolg", offMapText = "Travel to Krolg." },
            },
            dependsOn = { "accept-1030-raene-s-cleansing", "objective-1030-1-dartol-s-rod-of-transformation" },
            id = "turnin-1030-raene-s-cleansing",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1030, state = "completed" },
            },
            sourceStep = 46,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1029 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 510,
            route = {
                { y = 0.7507, mapID = 1440, label = "Krolg", offMapText = "Travel to Krolg in Ashenvale.", x = 0.5085 },
            },
            text = "Accept Raene's Cleansing from Krolg.",
            id = "accept-1045-raene-s-cleansing",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1045, state = "activeOrCompleted" },
            },
            sourceStep = 46,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1030 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 520,
            text = "Kill Ran Bloodtooth at Bloodtooth Camp. Loot his skull and keep it for the following quest.",
            route = {
                { mapID = 1440, x = 0.5474, y = 0.7961, label = "Ran Bloodtooth", offMapText = "Travel to Ran Bloodtooth." },
            },
            dependsOn = { "accept-1045-raene-s-cleansing" },
            id = "objective-1045-1-dartol-s-rod-of-transformation",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1045, index = 1, count = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1030 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-1045-2-bloodtooth-guard",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 4 Bloodtooth Guard.",
            complete = {
                questObjective = { id = 1045, index = 2, text = "Bloodtooth Guard", count = 4 },
            },
            route = {
                { mapID = 1440, x = 0.544, y = 0.794, label = "Bloodtooth Guard", offMapText = "Travel to Bloodtooth Guard." },
            },
            sourceStep = 48,
            priority = 530,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1030 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1045-raene-s-cleansing" },
        },
        {
            priority = 540,
            text = "Use Dartol's Rod of Transformation to enter Furbolg Form, then speak with Krolg and turn in Raene's Cleansing.",
            route = {
                { mapID = 1440, x = 0.5085000000000001, y = 0.7506999999999999, label = "Krolg", offMapText = "Travel to Krolg." },
            },
            dependsOn = {
                "accept-1045-raene-s-cleansing",
                "objective-1045-2-bloodtooth-guard",
                "objective-1045-1-dartol-s-rod-of-transformation",
            },
            id = "turnin-1045-raene-s-cleansing",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1045, state = "completed" },
            },
            sourceStep = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1030 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 550,
            route = {
                { y = 0.7507, mapID = 1440, label = "Krolg", offMapText = "Travel to Krolg in Ashenvale.", x = 0.5085 },
            },
            text = "Accept Raene's Cleansing from Krolg.",
            id = "accept-1046-raene-s-cleansing",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1046, state = "activeOrCompleted" },
            },
            sourceStep = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1045 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 560,
            text = "For Raene's Cleansing: Bring Ran Bloodtooth's Skull and Dartol's Rod of Transformation to Raene Wolfrunner in Astranaar.",
            id = "objective-1046-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1046, state = "complete" },
            },
            sourceStep = 52,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1045 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-1046-raene-s-cleansing" },
        },
        {
            priority = 570,
            text = "Turn in Raene's Cleansing to Raene Wolfrunner.",
            route = {
                { y = 0.4958, mapID = 1440, label = "Raene Wolfrunner", offMapText = "Travel to Raene Wolfrunner in Ashenvale.", x = 0.3662 },
            },
            dependsOn = { "accept-1046-raene-s-cleansing", "objective-1046-quest-work" },
            id = "turnin-1046-raene-s-cleansing",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 18 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1046, state = "completed" },
            },
            sourceStep = 52,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1045 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 580,
            text = "Turn in Satyr Slaying! to Illiyana.",
            route = {
                { y = 0.5334, mapID = 1440, label = "Illiyana", offMapText = "Travel to Illiyana in Ashenvale.", x = 0.2173 },
            },
            dependsOn = { "accept-1032-satyr-slaying", "objective-1032-1-satyr-horns" },
            id = "turnin-1032-satyr-slaying",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1032, state = "completed" },
            },
            sourceStep = 53,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1031 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 590,
            text = "Turn in The Tower of Althalaxx to Delgren the Purifier.",
            route = {
                { y = 0.387, mapID = 1440, label = "Delgren the Purifier", offMapText = "Travel to Delgren the Purifier in Ashenvale.", x = 0.2619 },
            },
            dependsOn = { "accept-1140-the-tower-of-althalaxx", "objective-1140-2-circle-of-imprisonment", "objective-1140-reviewed-1" },
            id = "turnin-1140-the-tower-of-althalaxx",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 13 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1140, state = "completed" },
            },
            sourceStep = 54,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 973 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 600,
            text = "Turn in Velinde Starsong to Thyn'tel Bladeweaver.",
            route = {
                { y = 0.3919, mapID = 1457, label = "Thyn'tel Bladeweaver", offMapText = "Travel to Thyn'tel Bladeweaver in Darnassus.", x = 0.6178 },
            },
            dependsOn = { "accept-1037-velinde-starsong" },
            id = "turnin-1037-velinde-starsong",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1037, state = "completed" },
            },
            sourceStep = 57,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1022 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 610,
            route = {
                { y = 0.3919, mapID = 1457, label = "Thyn'tel Bladeweaver", offMapText = "Travel to Thyn'tel Bladeweaver in Darnassus.", x = 0.6178 },
            },
            text = "Accept Velinde's Effects from Thyn'tel Bladeweaver.",
            id = "accept-1038-velinde-s-effects",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1038, state = "activeOrCompleted" },
            },
            sourceStep = 57,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1037 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-1038-1-velinde-s-journal",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 1 Velinde's Journal.",
            complete = {
                questObjective = { id = 1038, index = 1, text = "Velinde's Journal", count = 1 },
            },
            route = {
                { mapID = 1457, x = 0.6229, y = 0.8323999999999999, label = "Velinde's Journal", offMapText = "Travel to Velinde's Journal." },
            },
            sourceStep = 59,
            priority = 620,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1037 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1038-velinde-s-effects" },
        },
        {
            priority = 630,
            text = "Turn in Velinde's Effects to Thyn'tel Bladeweaver.",
            route = {
                { y = 0.3919, mapID = 1457, label = "Thyn'tel Bladeweaver", offMapText = "Travel to Thyn'tel Bladeweaver in Darnassus.", x = 0.6178 },
            },
            dependsOn = { "accept-1038-velinde-s-effects", "objective-1038-1-velinde-s-journal" },
            id = "turnin-1038-velinde-s-effects",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1038, state = "completed" },
            },
            sourceStep = 62,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1037 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 640,
            route = {
                { y = 0.3919, mapID = 1457, label = "Thyn'tel Bladeweaver", offMapText = "Travel to Thyn'tel Bladeweaver in Darnassus.", x = 0.6178 },
            },
            text = "Accept The Barrens Port from Thyn'tel Bladeweaver.",
            id = "accept-1039-the-barrens-port",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1039, state = "activeOrCompleted" },
            },
            sourceStep = 62,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1038 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 650,
            route = {
                { y = 0.6729, mapID = 1455, label = "Sara Balloo", offMapText = "Travel to Sara Balloo in Ironforge.", x = 0.6348 },
            },
            text = "Turn in Sully Balloo's Letter to Sara Balloo.",
            id = "turnin-637-sully-balloo-s-letter",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 637, state = "completed" },
            },
            sourceStep = 68,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 660,
            route = {
                { y = 0.6729, mapID = 1455, label = "Sara Balloo", offMapText = "Travel to Sara Balloo in Ironforge.", x = 0.6348 },
            },
            text = "Accept Sara Balloo's Plea from Sara Balloo.",
            id = "accept-683-sara-balloo-s-plea",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 683, state = "activeOrCompleted" },
            },
            sourceStep = 69,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 637 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 670,
            text = "Turn in Sara Balloo's Plea to King Magni Bronzebeard.",
            route = {
                { mapID = 1455, x = 0.3911, y = 0.5617, label = "King Magni Bronzebeard", offMapText = "Travel to King Magni Bronzebeard in Ironforge." },
            },
            dependsOn = { "accept-683-sara-balloo-s-plea" },
            id = "turnin-683-sara-balloo-s-plea",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 683, state = "completed" },
            },
            sourceStep = 70,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 637 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 680,
            route = {
                { mapID = 1455, x = 0.3911, y = 0.5617, label = "King Magni Bronzebeard", offMapText = "Travel to King Magni Bronzebeard in Ironforge." },
            },
            text = "Accept A King's Tribute from King Magni Bronzebeard.",
            id = "accept-686-a-king-s-tribute",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 686, state = "activeOrCompleted" },
            },
            sourceStep = 70,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 683 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 690,
            text = "Turn in A King's Tribute to Grand Mason Marblesten.",
            route = {
                { y = 0.8802, mapID = 1455, label = "Grand Mason Marblesten", offMapText = "Travel to Grand Mason Marblesten in Ironforge.", x = 0.3903 },
            },
            dependsOn = { "accept-686-a-king-s-tribute" },
            id = "turnin-686-a-king-s-tribute",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 686, state = "completed" },
            },
            sourceStep = 71,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 683 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 700,
            route = {
                { y = 0.8802, mapID = 1455, label = "Grand Mason Marblesten", offMapText = "Travel to Grand Mason Marblesten in Ironforge.", x = 0.3903 },
            },
            text = "Accept A King's Tribute from Grand Mason Marblesten.",
            id = "accept-689-a-king-s-tribute",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 689, state = "activeOrCompleted" },
            },
            sourceStep = 71,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 686 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1179-the-brassbolts-brothers",
            kind = "note",
            text = "Reach level 28 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 28 },
            },
            requiredLevel = 28,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1179,
            priority = 710,
        },
        {
            priority = 720,
            route = {
                { y = 0.9401, mapID = 1455, label = "Pilot Longbeard", offMapText = "Travel to Pilot Longbeard in Ironforge.", x = 0.7273 },
            },
            text = "Accept The Brassbolts Brothers from Pilot Longbeard.",
            id = "accept-1179-the-brassbolts-brothers",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 28 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1179, state = "activeOrCompleted" },
            },
            sourceStep = 72,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
