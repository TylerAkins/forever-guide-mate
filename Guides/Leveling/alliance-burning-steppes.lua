local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Burning Steppes",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-burning-steppes",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 56 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-3702-the-smoldering-ruins-of-thaurissan",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 50 },
            },
            requiredLevel = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 3702,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { mapID = 1455, x = 0.3837, y = 0.5531, label = "Royal Historian Archesonus", offMapText = "Travel to Royal Historian Archesonus in Ironforge." },
            },
            text = "Accept The Smoldering Ruins of Thaurissan from Royal Historian Archesonus.",
            id = "accept-3702-the-smoldering-ruins-of-thaurissan",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3702, state = "activeOrCompleted" },
            },
            sourceStep = 1,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 30,
            text = "Speak with Royal Historian Archesonus and tell her you are ready. Follow her account of Thaurissan until the quest is ready to turn in.",
            id = "objective-3702-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3702, state = "complete" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-3702-the-smoldering-ruins-of-thaurissan" },
        },
        {
            priority = 40,
            text = "Turn in The Smoldering Ruins of Thaurissan to Royal Historian Archesonus.",
            route = {
                { y = 0.5531, mapID = 1455, label = "Royal Historian Archesonus", offMapText = "Travel to Royal Historian Archesonus in Ironforge.", x = 0.3837 },
            },
            dependsOn = { "accept-3702-the-smoldering-ruins-of-thaurissan", "objective-3702-quest-work" },
            id = "turnin-3702-the-smoldering-ruins-of-thaurissan",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3702, state = "completed" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 50,
            route = {
                { y = 0.5531, mapID = 1455, label = "Royal Historian Archesonus", offMapText = "Travel to Royal Historian Archesonus in Ironforge.", x = 0.3837 },
            },
            text = "Accept The Smoldering Ruins of Thaurissan from Royal Historian Archesonus.",
            id = "accept-3701-the-smoldering-ruins-of-thaurissan",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3701, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3702 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 60,
            route = {
                { y = 0.0482, mapID = 1455, label = "Tymor", offMapText = "Travel to Tymor in Ironforge.", x = 0.3097 },
            },
            text = "Turn in Return to Tymor to Tymor.",
            id = "turnin-3461-return-to-tymor",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3461, state = "completed" },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3449 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 70,
            route = {
                { mapID = 1448, x = 0.41600000000000004, y = 0.716, label = "Filled Cursed Ooze Jar", offMapText = "Travel to Filled Cursed Ooze Jar." },
            },
            text = "For A Little Slime Goes a Long Way: Bring 6 Filled Cursed Ooze Jars and 6 Filled Tainted Ooze Jars to Laris Geardawdle in Ironforge.",
            id = "objective-4512-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4512, state = "complete" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 80,
            route = {
                { y = 0.2337, mapID = 1455, label = "Laris Geardawdle", offMapText = "Travel to Laris Geardawdle in Ironforge.", x = 0.7577 },
            },
            text = "Turn in A Little Slime Goes a Long Way to Laris Geardawdle.",
            id = "turnin-4512-a-little-slime-goes-a-long-way",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4512, state = "completed" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-4512-quest-work" },
        },
        {
            priority = 90,
            route = {
                { y = 0.6868, mapID = 1428, label = "Oralius", offMapText = "Travel to Oralius in Burning Steppes.", x = 0.8456 },
            },
            text = "Accept Gor'tesh the Brute Lord from Oralius.",
            id = "accept-3824-gor-tesh-the-brute-lord",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3824, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3823 },
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
                { y = 0.6868, mapID = 1428, label = "Oralius", offMapText = "Travel to Oralius in Burning Steppes.", x = 0.8456 },
            },
            text = "Accept FIFTY! YEP! from Oralius.",
            id = "accept-4283-fifty-yep",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4283, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 110,
            route = {
                { y = 0.6894, mapID = 1428, label = "Helendis Riverhorn", offMapText = "Travel to Helendis Riverhorn in Burning Steppes.", x = 0.8582 },
            },
            text = "Accept Dragonkin Menace from Helendis Riverhorn.",
            id = "accept-4182-dragonkin-menace",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4182, state = "activeOrCompleted" },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-4726-broodling-essence",
            kind = "note",
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 50 },
            },
            requiredLevel = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 4726,
            priority = 120,
        },
        {
            priority = 130,
            route = {
                { y = 0.24, mapID = 1428, label = "Tinkee Steamboil", offMapText = "Travel to Tinkee Steamboil in Burning Steppes.", x = 0.6524 },
            },
            text = "Accept Broodling Essence from Tinkee Steamboil.",
            id = "accept-4726-broodling-essence",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 4726, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 140,
            route = {
                { y = 0.2392, mapID = 1428, label = "Maxwort Uberglint", offMapText = "Travel to Maxwort Uberglint in Burning Steppes.", x = 0.6516 },
            },
            text = "Accept Tablet of the Seven from Maxwort Uberglint.",
            id = "accept-4296-tablet-of-the-seven",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 4296, state = "activeOrCompleted" },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-4022-a-taste-of-flame",
            kind = "note",
            text = "Reach level 52 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 52 },
            },
            requiredLevel = 52,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 4022,
            alternativeQuests = { 4023 },
            priority = 150,
        },
        {
            priority = 160,
            route = {
                { y = 0.3157, mapID = 1428, label = "Cyrus Therepentous", offMapText = "Travel to Cyrus Therepentous in Burning Steppes.", x = 0.9506 },
            },
            text = "Accept A Taste of Flame from Cyrus Therepentous.",
            id = "accept-4022-a-taste-of-flame",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 4022, state = "activeOrCompleted" },
            },
            sourceStep = 17,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3481 },
                    conditions = {},
                },
            },
            alternativeQuests = { 4023 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 170,
            text = "Collect 1 Black Dragonflight Molt.",
            route = {
                { y = 0.3157, mapID = 1428, label = "Frenzied Black Drake", offMapText = "Travel to Frenzied Black Drake.", x = 0.9506 },
            },
            dependsOn = { "accept-4022-a-taste-of-flame" },
            id = "objective-4022-1-frenzied-black-drake",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                questObjective = { id = 4022, text = "Frenzied Black Drake", index = 1, count = 1 },
            },
            sourceStep = 18,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3481 },
                    conditions = {},
                },
            },
            alternativeQuests = { 4023 },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 180,
            text = "Turn in A Taste of Flame to Cyrus Therepentous.",
            route = {
                { y = 0.3157, mapID = 1428, label = "Cyrus Therepentous", offMapText = "Travel to Cyrus Therepentous in Burning Steppes.", x = 0.9506 },
            },
            dependsOn = { "accept-4022-a-taste-of-flame", "objective-4022-1-frenzied-black-drake" },
            id = "turnin-4022-a-taste-of-flame",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 52 },
                    },
                },
            },
            complete = {
                quest = { id = 4022, state = "completed" },
            },
            sourceStep = 20,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3481 },
                    conditions = {},
                },
            },
            alternativeQuests = { 4023 },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-4726-1-broodling-essence",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            text = "Use the Draco-Incarcinatrix 900 on a Black Broodling before killing it. Open the red crystal on its corpse to collect a Broodling Essence. Collect 8 essences.",
            complete = {
                questObjective = { id = 4726, index = 1, text = "Broodling Essence", count = 8 },
            },
            route = {
                { mapID = 1428, x = 0.8859999999999999, y = 0.294, label = "Broodling Essence", offMapText = "Travel to Broodling Essence." },
            },
            sourceStep = 21,
            priority = 190,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4726-broodling-essence" },
        },
        {
            id = "objective-4182-3-black-drake",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill Black Drake.",
            complete = {
                questObjective = { id = 4182, index = 3, text = "Black Drake" },
            },
            route = {
                { mapID = 1428, x = 0.884, y = 0.326, label = "Black Drake", offMapText = "Travel to Black Drake." },
            },
            sourceStep = 22,
            priority = 200,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4182-dragonkin-menace" },
        },
        {
            id = "objective-4182-4-black-wyrmkin",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 4 Black Wyrmkin.",
            complete = {
                questObjective = { id = 4182, index = 4, text = "Black Wyrmkin", count = 4 },
            },
            route = {
                { mapID = 1428, x = 0.9159999999999999, y = 0.474, label = "Black Wyrmkin", offMapText = "Travel to Black Wyrmkin." },
            },
            sourceStep = 23,
            priority = 210,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4182-dragonkin-menace" },
        },
        {
            id = "objective-4182-2-black-dragonspawn",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 10 Black Dragonspawn.",
            complete = {
                questObjective = { id = 4182, index = 2, text = "Black Dragonspawn", count = 10 },
            },
            route = {
                { mapID = 1428, x = 0.9159999999999999, y = 0.474, label = "Black Dragonspawn", offMapText = "Travel to Black Dragonspawn." },
            },
            sourceStep = 23,
            priority = 220,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4182-dragonkin-menace" },
        },
        {
            id = "objective-4182-1-black-broodling",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 15 Black Broodling.",
            complete = {
                questObjective = { id = 4182, index = 1, text = "Black Broodling", count = 15 },
            },
            route = {
                { mapID = 1428, x = 0.904, y = 0.504, label = "Black Broodling", offMapText = "Travel to Black Broodling." },
            },
            sourceStep = 24,
            priority = 230,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4182-dragonkin-menace" },
        },
        {
            id = "objective-4296-1-tablet-transcript",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            text = "Collect 1 Tablet Transcript.",
            complete = {
                questObjective = { id = 4296, index = 1, text = "Tablet Transcript", count = 1 },
            },
            route = {
                { mapID = 1428, x = 0.5409, y = 0.4073, label = "Tablet Transcript", offMapText = "Travel to Tablet Transcript." },
            },
            sourceStep = 25,
            priority = 240,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4296-tablet-of-the-seven" },
        },
        {
            priority = 250,
            text = "Collect 1 Gor'tesh's Lopped Off Head.",
            route = {
                { y = 0.5536, mapID = 1428, label = "Gor'tesh", offMapText = "Travel to Gor'tesh.", x = 0.3926 },
            },
            dependsOn = { "accept-3824-gor-tesh-the-brute-lord" },
            id = "objective-3824-1-gor-tesh",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 3824, text = "Gor'tesh", index = 1, count = 1 },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3823 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-4283-1-blackrock-medallion",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Collect 50 Blackrock Medallion.",
            complete = {
                questObjective = { id = 4283, index = 1, text = "Blackrock Medallion", count = 50 },
            },
            route = {
                { mapID = 1428, x = 0.41200000000000003, y = 0.5660000000000001, label = "Blackrock Medallion", offMapText = "Travel to Blackrock Medallion." },
            },
            sourceStep = 28,
            priority = 260,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4283-fifty-yep" },
        },
        {
            priority = 270,
            text = "Turn in Gor'tesh the Brute Lord to Oralius.",
            route = {
                { mapID = 1428, x = 0.8456, y = 0.6867, label = "Oralius", offMapText = "Travel to Oralius in Burning Steppes." },
            },
            dependsOn = { "accept-3824-gor-tesh-the-brute-lord", "objective-3824-1-gor-tesh" },
            id = "turnin-3824-gor-tesh-the-brute-lord",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3824, state = "completed" },
            },
            sourceStep = 29,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3823 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 280,
            route = {
                { mapID = 1428, x = 0.8456, y = 0.6867, label = "Oralius", offMapText = "Travel to Oralius in Burning Steppes." },
            },
            text = "Accept Ogre Head On A Stick = Party from Oralius.",
            id = "accept-3825-ogre-head-on-a-stick-party",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3825, state = "activeOrCompleted" },
            },
            sourceStep = 29,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3824 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 290,
            text = "Turn in FIFTY! YEP! to Oralius.",
            route = {
                { mapID = 1428, x = 0.8456, y = 0.6867, label = "Oralius", offMapText = "Travel to Oralius in Burning Steppes." },
            },
            dependsOn = { "accept-4283-fifty-yep", "objective-4283-1-blackrock-medallion" },
            id = "turnin-4283-fifty-yep",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4283, state = "completed" },
            },
            sourceStep = 29,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 300,
            text = "Turn in Dragonkin Menace to Helendis Riverhorn.",
            route = {
                { y = 0.6895, mapID = 1428, label = "Helendis Riverhorn", offMapText = "Travel to Helendis Riverhorn in Burning Steppes.", x = 0.8582 },
            },
            dependsOn = {
                "accept-4182-dragonkin-menace",
                "objective-4182-3-black-drake",
                "objective-4182-4-black-wyrmkin",
                "objective-4182-2-black-dragonspawn",
                "objective-4182-1-black-broodling",
            },
            id = "turnin-4182-dragonkin-menace",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4182, state = "completed" },
            },
            sourceStep = 31,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 310,
            route = {
                { y = 0.6895, mapID = 1428, label = "Helendis Riverhorn", offMapText = "Travel to Helendis Riverhorn in Burning Steppes.", x = 0.8582 },
            },
            text = "Accept The True Masters from Helendis Riverhorn.",
            id = "accept-4183-the-true-masters",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4183, state = "activeOrCompleted" },
            },
            sourceStep = 31,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4182 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 320,
            text = "Turn in The True Masters to Magistrate Solomon.",
            route = {
                { y = 0.4445, mapID = 1433, label = "Magistrate Solomon", offMapText = "Travel to Magistrate Solomon in Redridge Mountains.", x = 0.2999 },
            },
            dependsOn = { "accept-4183-the-true-masters" },
            id = "turnin-4183-the-true-masters",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4183, state = "completed" },
            },
            sourceStep = 32,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4182 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 330,
            route = {
                { y = 0.4445, mapID = 1433, label = "Magistrate Solomon", offMapText = "Travel to Magistrate Solomon in Redridge Mountains.", x = 0.2999 },
            },
            text = "Accept The True Masters from Magistrate Solomon.",
            id = "accept-4184-the-true-masters",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4184, state = "activeOrCompleted" },
            },
            sourceStep = 32,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4183 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 340,
            text = "Turn in The True Masters to Highlord Bolvar Fordragon.",
            route = {
                { mapID = 1453, x = 0.7822, y = 0.17989999999999998, label = "Highlord Bolvar Fordragon", offMapText = "Travel to Highlord Bolvar Fordragon in Stormwind City." },
            },
            dependsOn = { "accept-4184-the-true-masters" },
            id = "turnin-4184-the-true-masters",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4184, state = "completed" },
            },
            sourceStep = 33,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4183 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 350,
            route = {
                { mapID = 1453, x = 0.7822, y = 0.17989999999999998, label = "Highlord Bolvar Fordragon", offMapText = "Travel to Highlord Bolvar Fordragon in Stormwind City." },
            },
            text = "Accept The True Masters from Highlord Bolvar Fordragon.",
            id = "accept-4185-the-true-masters",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4185, state = "activeOrCompleted" },
            },
            sourceStep = 33,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4184 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-6182-the-first-and-the-last",
            kind = "note",
            text = "Reach level 56 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 56 },
            },
            requiredLevel = 56,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 6182,
            priority = 360,
        },
        {
            priority = 370,
            route = {
                { mapID = 1453, x = 0.7822, y = 0.17989999999999998, label = "Highlord Bolvar Fordragon", offMapText = "Travel to Highlord Bolvar Fordragon in Stormwind City." },
            },
            text = "Accept The First and the Last from Highlord Bolvar Fordragon.",
            id = "accept-6182-the-first-and-the-last",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 56 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 6182, state = "activeOrCompleted" },
            },
            sourceStep = 33,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 380,
            text = "Speak with Lady Katrana Prestor in Stormwind Keep. Tell her Highlord Bolvar suggested asking her advice, then follow the conversation. Return to Bolvar after receiving quest credit.",
            id = "objective-4185-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4185, state = "complete" },
            },
            sourceStep = 35,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4184 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-4185-the-true-masters" },
        },
        {
            priority = 390,
            text = "Turn in The True Masters to Highlord Bolvar Fordragon.",
            route = {
                { y = 0.1799, mapID = 1453, label = "Highlord Bolvar Fordragon", offMapText = "Travel to Highlord Bolvar Fordragon in Stormwind City.", x = 0.7822 },
            },
            dependsOn = { "accept-4185-the-true-masters", "objective-4185-quest-work" },
            id = "turnin-4185-the-true-masters",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4185, state = "completed" },
            },
            sourceStep = 35,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4184 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 400,
            route = {
                { y = 0.1799, mapID = 1453, label = "Highlord Bolvar Fordragon", offMapText = "Travel to Highlord Bolvar Fordragon in Stormwind City.", x = 0.7822 },
            },
            text = "Accept The True Masters from Highlord Bolvar Fordragon.",
            id = "accept-4186-the-true-masters",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4186, state = "activeOrCompleted" },
            },
            sourceStep = 35,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4185 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 410,
            text = "Turn in The First and the Last to Master Mathias Shaw.",
            route = {
                { y = 0.5985, mapID = 1453, label = "Master Mathias Shaw", offMapText = "Travel to Master Mathias Shaw in Stormwind City.", x = 0.7579 },
            },
            dependsOn = { "accept-6182-the-first-and-the-last" },
            id = "turnin-6182-the-first-and-the-last",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 56 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 6182, state = "completed" },
            },
            sourceStep = 36,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 420,
            route = {
                { y = 0.5985, mapID = 1453, label = "Master Mathias Shaw", offMapText = "Travel to Master Mathias Shaw in Stormwind City.", x = 0.7579 },
            },
            text = "Accept Honor the Dead from Master Mathias Shaw.",
            id = "accept-6183-honor-the-dead",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 56 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 6183, state = "activeOrCompleted" },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6182 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 430,
            text = "Turn in Honor the Dead to Master Mathias Shaw.",
            route = {
                { y = 0.5985, mapID = 1453, label = "Master Mathias Shaw", offMapText = "Travel to Master Mathias Shaw in Stormwind City.", x = 0.7579 },
            },
            dependsOn = { "accept-6183-honor-the-dead" },
            id = "turnin-6183-honor-the-dead",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 56 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 6183, state = "completed" },
            },
            sourceStep = 37,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6182 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 440,
            route = {
                { y = 0.5985, mapID = 1453, label = "Master Mathias Shaw", offMapText = "Travel to Master Mathias Shaw in Stormwind City.", x = 0.7579 },
            },
            text = "Accept Flint Shadowmore from Master Mathias Shaw.",
            id = "accept-6184-flint-shadowmore",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 56 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 6184, state = "activeOrCompleted" },
            },
            sourceStep = 37,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 6183 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 450,
            route = {
                { y = 0.3055, mapID = 1453, label = "Royal Factor Bathrilor", offMapText = "Travel to Royal Factor Bathrilor in Stormwind City.", x = 0.4847 },
            },
            text = "Turn in Better Late Than Never to Royal Factor Bathrilor.",
            id = "turnin-5022-better-late-than-never",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 5022, state = "completed" },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5021 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 460,
            route = {
                { y = 0.3055, mapID = 1453, label = "Royal Factor Bathrilor", offMapText = "Travel to Royal Factor Bathrilor in Stormwind City.", x = 0.4847 },
            },
            text = "Accept Good Natured Emma from Royal Factor Bathrilor.",
            id = "accept-5048-good-natured-emma",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 5048, state = "activeOrCompleted" },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5022 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            dependsOn = { "accept-5048-good-natured-emma" },
            id = "turnin-5048-good-natured-emma",
            text = "Turn in Good Natured Emma to Ol' Emma.",
            useClientPin = true,
            complete = {
                quest = { id = 5048, state = "completed" },
            },
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            priority = 470,
            sourceStep = 39,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5022 },
                    conditions = {},
                },
            },
            useClientText = false,
        },
        {
            priority = 480,
            text = "Use the Good Luck Charm to accept Good Luck Charm.",
            id = "accept-5050-good-luck-charm",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 5050, state = "activeOrCompleted" },
            },
            sourceStep = 39,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5048, 5049 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = {},
        },
        {
            priority = 490,
            text = "Turn in The True Masters to Magistrate Solomon.",
            route = {
                { y = 0.4445, mapID = 1433, label = "Magistrate Solomon", offMapText = "Travel to Magistrate Solomon in Redridge Mountains.", x = 0.2999 },
            },
            dependsOn = { "accept-4186-the-true-masters" },
            id = "turnin-4186-the-true-masters",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4186, state = "completed" },
            },
            sourceStep = 41,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4185 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 500,
            route = {
                { y = 0.4445, mapID = 1433, label = "Magistrate Solomon", offMapText = "Travel to Magistrate Solomon in Redridge Mountains.", x = 0.2999 },
            },
            text = "Accept The True Masters from Magistrate Solomon.",
            id = "accept-4223-the-true-masters",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4223, state = "activeOrCompleted" },
            },
            sourceStep = 41,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4186 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 510,
            text = "Turn in The True Masters to Marshal Maxwell.",
            route = {
                { y = 0.6902, mapID = 1428, label = "Marshal Maxwell", offMapText = "Travel to Marshal Maxwell in Burning Steppes.", x = 0.8475 },
            },
            dependsOn = { "accept-4223-the-true-masters" },
            id = "turnin-4223-the-true-masters",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4223, state = "completed" },
            },
            sourceStep = 42,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4186 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 520,
            route = {
                { y = 0.6902, mapID = 1428, label = "Marshal Maxwell", offMapText = "Travel to Marshal Maxwell in Burning Steppes.", x = 0.8475 },
            },
            text = "Accept The True Masters from Marshal Maxwell.",
            id = "accept-4224-the-true-masters",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4224, state = "activeOrCompleted" },
            },
            sourceStep = 42,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4223 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 530,
            text = "Turn in Broodling Essence to Tinkee Steamboil.",
            route = {
                { y = 0.2399, mapID = 1428, label = "Tinkee Steamboil", offMapText = "Travel to Tinkee Steamboil in Burning Steppes.", x = 0.6523 },
            },
            dependsOn = { "accept-4726-broodling-essence", "objective-4726-1-broodling-essence" },
            id = "turnin-4726-broodling-essence",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 4726, state = "completed" },
            },
            sourceStep = 43,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 540,
            route = {
                { y = 0.2399, mapID = 1428, label = "Tinkee Steamboil", offMapText = "Travel to Tinkee Steamboil in Burning Steppes.", x = 0.6523 },
            },
            text = "Accept Felnok Steelspring from Tinkee Steamboil.",
            id = "accept-4808-felnok-steelspring",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 4808, state = "activeOrCompleted" },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4726 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 550,
            text = "Turn in Tablet of the Seven to Maxwort Uberglint.",
            route = {
                { y = 0.2391, mapID = 1428, label = "Maxwort Uberglint", offMapText = "Travel to Maxwort Uberglint in Burning Steppes.", x = 0.6515 },
            },
            dependsOn = { "accept-4296-tablet-of-the-seven", "objective-4296-1-tablet-transcript" },
            id = "turnin-4296-tablet-of-the-seven",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 50 },
                    },
                },
            },
            complete = {
                quest = { id = 4296, state = "completed" },
            },
            sourceStep = 44,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 560,
            text = "For Ogre Head On A Stick = Party: Take Gor'tesh's Lopped Off Head and place it at the top of Dreadmaul Rock. Look for a soft dirt mound to plant the pike.",
            id = "objective-3825-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3825, state = "complete" },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3824 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-3825-ogre-head-on-a-stick-party" },
        },
        {
            priority = 570,
            text = "Turn in Ogre Head On A Stick = Party to Oralius.",
            route = {
                { mapID = 1428, x = 0.8456, y = 0.6867, label = "Oralius", offMapText = "Travel to Oralius in Burning Steppes." },
            },
            dependsOn = { "accept-3825-ogre-head-on-a-stick-party", "objective-3825-quest-work" },
            id = "turnin-3825-ogre-head-on-a-stick-party",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 3825, state = "completed" },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3824 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 580,
            text = "Speak with Ragged John in the cave north of Morgan's Vigil. Ask him about Marshal Windsor and follow his full account until the quest is ready to turn in.",
            id = "objective-4224-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4224, state = "complete" },
            },
            sourceStep = 48,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4223 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-4224-the-true-masters" },
        },
        {
            priority = 590,
            text = "Turn in The True Masters to Marshal Maxwell.",
            route = {
                { y = 0.6901, mapID = 1428, label = "Marshal Maxwell", offMapText = "Travel to Marshal Maxwell in Burning Steppes.", x = 0.8474 },
            },
            dependsOn = { "accept-4224-the-true-masters", "objective-4224-quest-work" },
            id = "turnin-4224-the-true-masters",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 48 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 4224, state = "completed" },
            },
            sourceStep = 48,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4223 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
