local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Swamp of Sorrows",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-swamp-of-sorrows",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 45 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-2784-fall-from-grace",
            kind = "note",
            text = "Reach level 45 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 45 },
            },
            requiredLevel = 45,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 2784,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.6613, mapID = 1435, label = "Fallen Hero of the Horde", offMapText = "Travel to Fallen Hero of the Horde in Swamp of Sorrows.", x = 0.3429 },
            },
            text = "Accept Fall From Grace from Fallen Hero of the Horde.",
            id = "accept-2784-fall-from-grace",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2784, state = "activeOrCompleted" },
            },
            sourceStep = 1,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 30,
            text = "For Fall From Grace: Listen to the Fallen Hero of the Horde tell his story.",
            id = "objective-2784-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2784, state = "complete" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-2784-fall-from-grace" },
        },
        {
            priority = 40,
            text = "Turn in Fall From Grace to Fallen Hero of the Horde.",
            route = {
                { y = 0.6613, mapID = 1435, label = "Fallen Hero of the Horde", offMapText = "Travel to Fallen Hero of the Horde in Swamp of Sorrows.", x = 0.3429 },
            },
            dependsOn = { "accept-2784-fall-from-grace", "objective-2784-quest-work" },
            id = "turnin-2784-fall-from-grace",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2784, state = "completed" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 50,
            route = {
                { y = 0.6613, mapID = 1435, label = "Fallen Hero of the Horde", offMapText = "Travel to Fallen Hero of the Horde in Swamp of Sorrows.", x = 0.3429 },
            },
            text = "Accept The Disgraced One from Fallen Hero of the Horde.",
            id = "accept-2621-the-disgraced-one",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2621, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2784 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 60,
            text = "Turn in The Disgraced One to Dispatch Commander Ruag.",
            route = {
                { y = 0.5495, mapID = 1435, label = "Dispatch Commander Ruag", offMapText = "Travel to Dispatch Commander Ruag in Swamp of Sorrows.", x = 0.4779 },
            },
            dependsOn = { "accept-2621-the-disgraced-one" },
            id = "turnin-2621-the-disgraced-one",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2621, state = "completed" },
            },
            sourceStep = 4,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2784 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 70,
            route = {
                { y = 0.5495, mapID = 1435, label = "Dispatch Commander Ruag", offMapText = "Travel to Dispatch Commander Ruag in Swamp of Sorrows.", x = 0.4779 },
            },
            text = "Accept The Missing Orders from Dispatch Commander Ruag.",
            id = "accept-2622-the-missing-orders",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2622, state = "activeOrCompleted" },
            },
            sourceStep = 4,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2621 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 80,
            route = {
                { y = 0.5479, mapID = 1435, label = "Fel'zerul", offMapText = "Travel to Fel'zerul in Swamp of Sorrows.", x = 0.4793 },
            },
            text = "Accept The Atal'ai Exile from Fel'zerul.",
            id = "accept-1429-the-atal-ai-exile",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1429, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1424 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 90,
            text = "Turn in The Missing Orders to Bengor.",
            route = {
                { y = 0.5734, mapID = 1435, label = "Bengor", offMapText = "Travel to Bengor in Swamp of Sorrows.", x = 0.4498 },
            },
            dependsOn = { "accept-2622-the-missing-orders" },
            id = "turnin-2622-the-missing-orders",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 45 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2622, state = "completed" },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2621 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 100,
            route = {
                { y = 0.8097, mapID = 1435, label = "Tok'Kar", offMapText = "Travel to Tok'Kar in Swamp of Sorrows.", x = 0.8132 },
            },
            text = "Accept Lack of Surplus from Tok'Kar.",
            id = "accept-699-lack-of-surplus",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 699, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 698 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 110,
            text = "Collect 6 Sawtooth Snapper Claw.",
            route = {
                { y = 0.73, mapID = 1435, label = "Sawtooth Snapper", offMapText = "Travel to Sawtooth Snapper.", x = 0.82 },
            },
            dependsOn = { "accept-699-lack-of-surplus" },
            id = "objective-699-1-sawtooth-snapper",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 699, text = "Sawtooth Snapper", index = 1, count = 6 },
            },
            sourceStep = 8,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 698 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 120,
            text = "Turn in Lack of Surplus to Tok'Kar.",
            route = {
                { y = 0.8097, mapID = 1435, label = "Tok'Kar", offMapText = "Travel to Tok'Kar in Swamp of Sorrows.", x = 0.8132 },
            },
            dependsOn = { "accept-699-lack-of-surplus", "objective-699-1-sawtooth-snapper" },
            id = "turnin-699-lack-of-surplus",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 699, state = "completed" },
            },
            sourceStep = 9,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 698 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 130,
            route = {
                { y = 0.8097, mapID = 1435, label = "Tok'Kar", offMapText = "Travel to Tok'Kar in Swamp of Sorrows.", x = 0.8132 },
            },
            text = "Accept Threat From the Sea from Tok'Kar.",
            id = "accept-1422-threat-from-the-sea",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1422, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 699 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 140,
            text = "Turn in Threat From the Sea to Katar.",
            route = {
                { y = 0.8042, mapID = 1435, label = "Katar", offMapText = "Travel to Katar in Swamp of Sorrows.", x = 0.8375 },
            },
            dependsOn = { "accept-1422-threat-from-the-sea" },
            id = "turnin-1422-threat-from-the-sea",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1422, state = "completed" },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 699 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 150,
            route = {
                { y = 0.8042, mapID = 1435, label = "Katar", offMapText = "Travel to Katar in Swamp of Sorrows.", x = 0.8375 },
            },
            text = "Accept Threat From the Sea from Katar.",
            id = "accept-1426-threat-from-the-sea",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1426, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1422 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 160,
            text = "Kill 10 Marsh Murloc.",
            route = {
                { y = 0.822, mapID = 1435, label = "Marsh Murloc", offMapText = "Travel to Marsh Murloc.", x = 0.852 },
            },
            dependsOn = { "accept-1426-threat-from-the-sea" },
            id = "objective-1426-1-marsh-murloc",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1426, text = "Marsh Murloc", index = 1, count = 10 },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1422 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-1426-3-marsh-flesheater",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 10 Marsh Flesheater.",
            complete = {
                questObjective = { id = 1426, index = 3, text = "Marsh Flesheater", count = 10 },
            },
            route = {
                { mapID = 1435, x = 0.86, y = 0.802, label = "Marsh Flesheater", offMapText = "Travel to Marsh Flesheater." },
            },
            sourceStep = 12,
            priority = 170,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1422 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1426-threat-from-the-sea" },
        },
        {
            id = "objective-1426-2-marsh-inkspewer",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 10 Marsh Inkspewer.",
            complete = {
                questObjective = { id = 1426, index = 2, text = "Marsh Inkspewer", count = 10 },
            },
            route = {
                { mapID = 1435, x = 0.8640000000000001, y = 0.83, label = "Marsh Inkspewer", offMapText = "Travel to Marsh Inkspewer." },
            },
            sourceStep = 13,
            priority = 180,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1422 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1426-threat-from-the-sea" },
        },
        {
            priority = 190,
            text = "Turn in Threat From the Sea to Katar.",
            route = {
                { y = 0.8043, mapID = 1435, label = "Katar", offMapText = "Travel to Katar in Swamp of Sorrows.", x = 0.8376 },
            },
            dependsOn = {
                "accept-1426-threat-from-the-sea",
                "objective-1426-1-marsh-murloc",
                "objective-1426-3-marsh-flesheater",
                "objective-1426-2-marsh-inkspewer",
            },
            id = "turnin-1426-threat-from-the-sea",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1426, state = "completed" },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1422 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 200,
            route = {
                { y = 0.8043, mapID = 1435, label = "Katar", offMapText = "Travel to Katar in Swamp of Sorrows.", x = 0.8376 },
            },
            text = "Accept Threat From the Sea from Katar.",
            id = "accept-1427-threat-from-the-sea",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1427, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1426 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 210,
            text = "Turn in Threat From the Sea to Tok'Kar.",
            route = {
                { y = 0.8097, mapID = 1435, label = "Tok'Kar", offMapText = "Travel to Tok'Kar in Swamp of Sorrows.", x = 0.8131 },
            },
            dependsOn = { "accept-1427-threat-from-the-sea" },
            id = "turnin-1427-threat-from-the-sea",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1427, state = "completed" },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1426 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 220,
            route = {
                { y = 0.8041, mapID = 1435, label = "Katar", offMapText = "Travel to Katar in Swamp of Sorrows.", x = 0.8376 },
            },
            text = "Accept Continued Threat from Katar.",
            id = "accept-1428-continued-threat",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1428, state = "activeOrCompleted" },
            },
            sourceStep = 17,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1427 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 230,
            text = "Kill 10 Marsh Inkspewer.",
            route = {
                { y = 0.7654, mapID = 1435, label = "Marsh Inkspewer", offMapText = "Travel to Marsh Inkspewer.", x = 0.6637 },
            },
            dependsOn = { "accept-1428-continued-threat" },
            id = "objective-1428-1-marsh-inkspewer",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1428, text = "Marsh Inkspewer", index = 1, count = 10 },
            },
            sourceStep = 18,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1427 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 240,
            text = "Kill 10 Marsh Flesheater.",
            route = {
                { y = 0.7654, mapID = 1435, label = "Marsh Flesheater", offMapText = "Travel to Marsh Flesheater.", x = 0.6637 },
            },
            dependsOn = { "accept-1428-continued-threat" },
            id = "objective-1428-2-marsh-flesheater",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1428, text = "Marsh Flesheater", index = 2, count = 10 },
            },
            sourceStep = 18,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1427 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 250,
            text = "Kill 10 Marsh Oracle.",
            route = {
                { y = 0.7654, mapID = 1435, label = "Marsh Oracle", offMapText = "Travel to Marsh Oracle.", x = 0.6637 },
            },
            dependsOn = { "accept-1428-continued-threat" },
            id = "objective-1428-3-marsh-oracle",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1428, text = "Marsh Oracle", index = 3, count = 10 },
            },
            sourceStep = 18,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1427 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 260,
            text = "Turn in Continued Threat to Katar.",
            route = {
                { mapID = 1435, x = 0.8375, y = 0.8042, label = "Katar", offMapText = "Travel to Katar in Swamp of Sorrows." },
            },
            dependsOn = {
                "accept-1428-continued-threat",
                "objective-1428-1-marsh-inkspewer",
                "objective-1428-2-marsh-flesheater",
                "objective-1428-3-marsh-oracle",
            },
            id = "turnin-1428-continued-threat",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1428, state = "completed" },
            },
            sourceStep = 19,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1427 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-1119-zanzil-s-mixture-and-a-fool-s-stout",
            kind = "note",
            text = "Reach level 35 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 35 },
            },
            requiredLevel = 35,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1119,
            priority = 270,
        },
        {
            priority = 280,
            route = {
                { y = 0.7721, mapID = 1434, label = "Crank Fizzlebub", offMapText = "Travel to Crank Fizzlebub in Stranglethorn Vale.", x = 0.2712 },
            },
            text = "Accept Zanzil's Mixture and a Fool's Stout from Crank Fizzlebub.",
            id = "accept-1119-zanzil-s-mixture-and-a-fool-s-stout",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 1119, state = "activeOrCompleted" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 621, 1118 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 290,
            route = {
                { y = 0.4336, mapID = 1444, label = "Witch Doctor Uzer'i", offMapText = "Travel to Witch Doctor Uzer'i in Feralas.", x = 0.7442 },
            },
            text = "Turn in Return to Witch Doctor Uzer'i to Witch Doctor Uzer'i.",
            id = "turnin-3122-return-to-witch-doctor-uzer-i",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3122, state = "completed" },
            },
            sourceStep = 37,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3121 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 300,
            route = {
                { y = 0.4336, mapID = 1444, label = "Witch Doctor Uzer'i", offMapText = "Travel to Witch Doctor Uzer'i in Feralas.", x = 0.7442 },
            },
            text = "Accept Testing the Vessel from Witch Doctor Uzer'i.",
            id = "accept-3123-testing-the-vessel",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3123, state = "activeOrCompleted" },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 3122 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-3380-the-sunken-temple",
            kind = "note",
            text = "Reach level 46 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 46 },
            },
            requiredLevel = 46,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 3380,
            priority = 310,
        },
        {
            priority = 320,
            route = {
                { y = 0.4336, mapID = 1444, label = "Witch Doctor Uzer'i", offMapText = "Travel to Witch Doctor Uzer'i in Feralas.", x = 0.7442 },
            },
            text = "Accept The Sunken Temple from Witch Doctor Uzer'i.",
            id = "accept-3380-the-sunken-temple",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 46 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3380, state = "activeOrCompleted" },
            },
            sourceStep = 38,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
