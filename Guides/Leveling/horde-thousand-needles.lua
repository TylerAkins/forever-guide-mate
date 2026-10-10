local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Thousand Needles",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-thousand-needles",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 28 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-1153-a-new-ore-sample",
            kind = "note",
            text = "Reach level 25 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 1153,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.5768, mapID = 1413, label = "Tatternack Steelforge", offMapText = "Travel to Tatternack Steelforge in The Barrens.", x = 0.451 },
            },
            text = "Accept A New Ore Sample from Tatternack Steelforge.",
            id = "accept-1153-a-new-ore-sample",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1153, state = "activeOrCompleted" },
            },
            sourceStep = 1,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 893 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-1534-quest-work",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
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
            checkpointQuest = 1534,
            priority = 30,
        },
        {
            priority = 40,
            route = {
                { mapID = 1440, x = 0.33549999999999996, y = 0.6744, label = "Filled Blue Waterskin", offMapText = "Travel to Filled Blue Waterskin." },
            },
            id = "objective-1534-quest-work",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            sourceStep = 2,
            useClientPin = false,
            dependsOn = {},
            classAction = "objective-1534-quest-work",
        },
        {
            priority = 50,
            route = {
                { y = 0.7741, mapID = 1413, label = "Brine", offMapText = "Travel to Brine in The Barrens.", x = 0.4342 },
            },
            text = "Turn in Call of Water to Brine.",
            id = "turnin-1534-call-of-water",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
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
                quest = { id = 1534, state = "completed" },
            },
            sourceStep = 2,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1536 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-1534-quest-work" },
        },
        {
            priority = 60,
            route = {
                { y = 0.7741, mapID = 1413, label = "Brine", offMapText = "Travel to Brine in The Barrens.", x = 0.4342 },
            },
            text = "Accept Call of Water from Brine.",
            id = "accept-220-call-of-water",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
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
                quest = { id = 220, state = "activeOrCompleted" },
            },
            sourceStep = 2,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1534 },
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
                { y = 0.2166, mapID = 1441, label = "Grish Longrunner", offMapText = "Travel to Grish Longrunner in Thousand Needles.", x = 0.3186 },
            },
            text = "Turn in Calling in the Reserves to Grish Longrunner.",
            id = "turnin-5881-calling-in-the-reserves",
            kind = "turnin",
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
                quest = { id = 5881, state = "completed" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 80,
            route = {
                { y = 0.2217, mapID = 1441, label = "Brave Moonhorn", offMapText = "Travel to Brave Moonhorn in Thousand Needles.", x = 0.3224 },
            },
            text = "Accept Message to Freewind Post from Brave Moonhorn.",
            id = "accept-4542-message-to-freewind-post",
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
                quest = { id = 4542, state = "activeOrCompleted" },
            },
            sourceStep = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 90,
            route = {
                { y = 0.4893, mapID = 1441, label = "Elu", offMapText = "Travel to Elu in Thousand Needles.", x = 0.4493 },
            },
            text = "Accept Wind Rider from Elu.",
            id = "accept-4767-wind-rider",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 4767, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 100,
            route = {
                { y = 0.5029, mapID = 1441, label = "Hagar Lightninghoof", offMapText = "Travel to Hagar Lightninghoof in Thousand Needles.", x = 0.4464 },
            },
            text = "Accept Alien Egg from Hagar Lightninghoof.",
            id = "accept-4821-alien-egg",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 24 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 4821, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 110,
            text = "Turn in Message to Freewind Post to Cliffwatcher Longhorn.",
            route = {
                { y = 0.508, mapID = 1441, label = "Cliffwatcher Longhorn", offMapText = "Travel to Cliffwatcher Longhorn in Thousand Needles.", x = 0.4565 },
            },
            dependsOn = { "accept-4542-message-to-freewind-post" },
            id = "turnin-4542-message-to-freewind-post",
            kind = "turnin",
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
                quest = { id = 4542, state = "completed" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 120,
            route = {
                { y = 0.508, mapID = 1441, label = "Cliffwatcher Longhorn", offMapText = "Travel to Cliffwatcher Longhorn in Thousand Needles.", x = 0.4565 },
            },
            text = "Accept Pacify the Centaur from Cliffwatcher Longhorn.",
            id = "accept-4841-pacify-the-centaur",
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
                quest = { id = 4841, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 130,
            route = {
                { y = 0.5172, mapID = 1441, label = "Rau Cliffrunner", offMapText = "Travel to Rau Cliffrunner in Thousand Needles.", x = 0.4614 },
            },
            text = "Turn in The Sacred Flame to Rau Cliffrunner.",
            id = "turnin-1196-the-sacred-flame",
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
                quest = { id = 1196, state = "completed" },
            },
            sourceStep = 9,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1195 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 140,
            route = {
                { y = 0.5172, mapID = 1441, label = "Rau Cliffrunner", offMapText = "Travel to Rau Cliffrunner in Thousand Needles.", x = 0.4614 },
            },
            text = "Accept The Sacred Flame from Rau Cliffrunner.",
            id = "accept-1197-the-sacred-flame",
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
                quest = { id = 1197, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1196 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-1197-1-cloven-hoof",
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
            text = "Collect 1 Cloven Hoof.",
            complete = {
                questObjective = { id = 1197, index = 1, text = "Cloven Hoof", count = 1 },
            },
            route = {
                { mapID = 1441, x = 0.4201, y = 0.3151, label = "Cloven Hoof", offMapText = "Travel to Cloven Hoof." },
            },
            sourceStep = 10,
            priority = 150,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1196 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1197-the-sacred-flame" },
        },
        {
            id = "objective-4841-3-galak-windchaser",
            kind = "objective",
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
            text = "Kill 6 Galak Windchaser.",
            complete = {
                questObjective = { id = 4841, index = 3, text = "Galak Windchaser", count = 6 },
            },
            route = {
                { mapID = 1441, x = 0.444, y = 0.402, label = "Galak Windchaser", offMapText = "Travel to Galak Windchaser." },
            },
            sourceStep = 11,
            priority = 160,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4841-pacify-the-centaur" },
        },
        {
            id = "objective-4841-2-galak-wrangler",
            kind = "objective",
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
            text = "Kill 10 Galak Wrangler.",
            complete = {
                questObjective = { id = 4841, index = 2, text = "Galak Wrangler", count = 10 },
            },
            route = {
                { mapID = 1441, x = 0.444, y = 0.402, label = "Galak Wrangler", offMapText = "Travel to Galak Wrangler." },
            },
            sourceStep = 11,
            priority = 170,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4841-pacify-the-centaur" },
        },
        {
            id = "objective-4841-1-galak-scout",
            kind = "objective",
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
            text = "Kill 12 Galak Scout.",
            complete = {
                questObjective = { id = 4841, index = 1, text = "Galak Scout", count = 12 },
            },
            route = {
                { mapID = 1441, x = 0.444, y = 0.402, label = "Galak Scout", offMapText = "Travel to Galak Scout." },
            },
            sourceStep = 11,
            priority = 180,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4841-pacify-the-centaur" },
        },
        {
            priority = 190,
            route = {
                { mapID = 1441, x = 0.5394, y = 0.41479999999999995, label = "Dorn Plainstalker", offMapText = "Travel to Dorn Plainstalker in Thousand Needles." },
            },
            text = "Accept Test of Faith from Dorn Plainstalker.",
            id = "accept-1149-test-of-faith",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1149, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 200,
            text = "Turn in Test of Faith to Dorn Plainstalker.",
            route = {
                { y = 0.4148, mapID = 1441, label = "Dorn Plainstalker", offMapText = "Travel to Dorn Plainstalker in Thousand Needles.", x = 0.5394 },
            },
            dependsOn = { "accept-1149-test-of-faith" },
            id = "turnin-1149-test-of-faith",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1149, state = "completed" },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-4821-1-alien-egg",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 24 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 1 Alien Egg.",
            complete = {
                questObjective = { id = 4821, index = 1, text = "Alien Egg", count = 1 },
            },
            route = {
                { mapID = 1441, x = 0.5635, y = 0.5036, label = "Alien Egg", offMapText = "Travel to Alien Egg." },
            },
            sourceStep = 16,
            priority = 210,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-4821-alien-egg" },
        },
        {
            id = "objective-1153-1-unrefined-ore-sample",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 1 Unrefined Ore Sample.",
            complete = {
                questObjective = { id = 1153, index = 1, text = "Unrefined Ore Sample", count = 1 },
            },
            route = {
                { mapID = 1441, x = 0.512, y = 0.508, label = "Unrefined Ore Sample", offMapText = "Travel to Unrefined Ore Sample." },
            },
            sourceStep = 17,
            priority = 220,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 893 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1153-a-new-ore-sample" },
        },
        {
            priority = 230,
            text = "Turn in Alien Egg to Hagar Lightninghoof.",
            route = {
                { mapID = 1441, x = 0.4464, y = 0.5029, label = "Hagar Lightninghoof", offMapText = "Travel to Hagar Lightninghoof in Thousand Needles." },
            },
            dependsOn = { "accept-4821-alien-egg", "objective-4821-1-alien-egg" },
            id = "turnin-4821-alien-egg",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 24 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 4821, state = "completed" },
            },
            sourceStep = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 240,
            route = {
                { mapID = 1441, x = 0.4464, y = 0.5029, label = "Hagar Lightninghoof", offMapText = "Travel to Hagar Lightninghoof in Thousand Needles." },
            },
            text = "Accept Serpent Wild from Hagar Lightninghoof.",
            id = "accept-4865-serpent-wild",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 24 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 4865, state = "activeOrCompleted" },
            },
            sourceStep = 19,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4821 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 250,
            text = "Turn in Pacify the Centaur to Cliffwatcher Longhorn.",
            route = {
                { y = 0.508, mapID = 1441, label = "Cliffwatcher Longhorn", offMapText = "Travel to Cliffwatcher Longhorn in Thousand Needles.", x = 0.4565 },
            },
            dependsOn = {
                "accept-4841-pacify-the-centaur",
                "objective-4841-3-galak-windchaser",
                "objective-4841-2-galak-wrangler",
                "objective-4841-1-galak-scout",
            },
            id = "turnin-4841-pacify-the-centaur",
            kind = "turnin",
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
                quest = { id = 4841, state = "completed" },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 260,
            text = "Turn in The Sacred Flame to Rau Cliffrunner.",
            route = {
                { y = 0.5171, mapID = 1441, label = "Rau Cliffrunner", offMapText = "Travel to Rau Cliffrunner in Thousand Needles.", x = 0.4614 },
            },
            dependsOn = { "accept-1197-the-sacred-flame", "objective-1197-1-cloven-hoof" },
            id = "turnin-1197-the-sacred-flame",
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
                quest = { id = 1197, state = "completed" },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1196 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 270,
            route = {
                { mapID = 1441, x = 0.1789, y = 0.4057, label = "Pao'ka Swiftmountain", offMapText = "Travel to Pao'ka Swiftmountain in Thousand Needles." },
            },
            text = "Accept Homeward Bound from Pao'ka Swiftmountain.",
            id = "accept-4770-homeward-bound",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 4770, state = "activeOrCompleted" },
            },
            sourceStep = 23,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 280,
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
            text = "Collect 1 Steelsnap's Rib.",
            id = "objective-1131-1-steelsnap",
            kind = "objective",
            useClientPin = true,
            complete = {
                questObjective = { id = 1131, text = "Steelsnap", index = 1, count = 1 },
            },
            sourceStep = 25,
            requiredQuests = {},
            useClientText = false,
            dependsOn = {},
        },
        {
            priority = 290,
            text = "Turn in Homeward Bound to Motega Firemane.",
            route = {
                { y = 0.3235, mapID = 1441, label = "Motega Firemane", offMapText = "Travel to Motega Firemane in Thousand Needles.", x = 0.2155 },
            },
            dependsOn = { "accept-4770-homeward-bound" },
            id = "turnin-4770-homeward-bound",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 4770, state = "completed" },
            },
            sourceStep = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 300,
            text = "Turn in Serpent Wild to Motega Firemane.",
            route = {
                { y = 0.3235, mapID = 1441, label = "Motega Firemane", offMapText = "Travel to Motega Firemane in Thousand Needles.", x = 0.2155 },
            },
            dependsOn = { "accept-4865-serpent-wild" },
            id = "turnin-4865-serpent-wild",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 24 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 4865, state = "completed" },
            },
            sourceStep = 26,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4821 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 310,
            route = {
                { y = 0.3235, mapID = 1441, label = "Motega Firemane", offMapText = "Travel to Motega Firemane in Thousand Needles.", x = 0.2155 },
            },
            text = "Accept Sacred Fire from Motega Firemane.",
            id = "accept-5062-sacred-fire",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 24 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5062, state = "activeOrCompleted" },
            },
            sourceStep = 26,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4865 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-accept-4881-assassination-plot",
            kind = "note",
            instructionOnly = true,
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Loot Assassination Note from Galak Messenger. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Assassination Note", minCount = 1 },
                    },
                    {
                        quest = { id = 4881, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 320,
        },
        {
            priority = 330,
            text = "Use the Assassination Note to accept Assassination Plot.",
            id = "accept-4881-assassination-plot",
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
                quest = { id = 4881, state = "activeOrCompleted" },
            },
            sourceStep = 27,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-accept-4881-assassination-plot-2",
            kind = "note",
            instructionOnly = true,
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Loot Assassination Note from Galak Messenger. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Assassination Note", minCount = 1 },
                    },
                    {
                        quest = { id = 4881, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 340,
        },
        {
            id = "accept-4881-assassination-plot-2",
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
            text = "Use the Assassination Note to accept Assassination Plot.",
            complete = {
                quest = { id = 4881, state = "activeOrCompleted" },
            },
            sourceStep = 28,
            priority = 350,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 360,
            text = "Turn in Assassination Plot to Kanati Greycloud.",
            route = {
                { y = 0.321, mapID = 1441, label = "Kanati Greycloud", offMapText = "Travel to Kanati Greycloud in Thousand Needles.", x = 0.2121 },
            },
            dependsOn = { "accept-4881-assassination-plot-2", "accept-4881-assassination-plot" },
            id = "turnin-4881-assassination-plot",
            kind = "turnin",
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
                quest = { id = 4881, state = "completed" },
            },
            sourceStep = 29,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 370,
            route = {
                { y = 0.321, mapID = 1441, label = "Kanati Greycloud", offMapText = "Travel to Kanati Greycloud in Thousand Needles.", x = 0.2121 },
            },
            text = "Accept Protect Kanati Greycloud from Kanati Greycloud.",
            id = "accept-4966-protect-kanati-greycloud",
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
                quest = { id = 4966, state = "activeOrCompleted" },
            },
            sourceStep = 29,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4881 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 380,
            text = "For Protect Kanati Greycloud: Protect Kanati Greycloud from the centaur attack.",
            id = "objective-4966-quest-work",
            kind = "objective",
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
                quest = { id = 4966, state = "complete" },
            },
            sourceStep = 31,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4881 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-4966-protect-kanati-greycloud" },
        },
        {
            priority = 390,
            text = "Turn in Protect Kanati Greycloud to Kanati Greycloud.",
            route = {
                { y = 0.321, mapID = 1441, label = "Kanati Greycloud", offMapText = "Travel to Kanati Greycloud in Thousand Needles.", x = 0.2121 },
            },
            dependsOn = { "accept-4966-protect-kanati-greycloud", "objective-4966-quest-work" },
            id = "turnin-4966-protect-kanati-greycloud",
            kind = "turnin",
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
                quest = { id = 4966, state = "completed" },
            },
            sourceStep = 31,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4881 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 400,
            text = "Collect 10 Incendia Agave.",
            route = {
                { y = 0.341, mapID = 1441, label = "Incendia Agave", offMapText = "Travel to Incendia Agave.", x = 0.336 },
            },
            dependsOn = { "accept-5062-sacred-fire" },
            id = "objective-5062-1-incendia-agave",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 24 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5062, text = "Incendia Agave", index = 1, count = 10 },
            },
            sourceStep = 32,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4865 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 410,
            text = "Turn in Steelsnap to Melor Stonehoof.",
            route = {
                { y = 0.809, mapID = 1456, label = "Melor Stonehoof", offMapText = "Travel to Melor Stonehoof in Thunder Bluff.", x = 0.6153 },
            },
            dependsOn = { "objective-1131-1-steelsnap" },
            id = "turnin-1131-steelsnap",
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
                quest = { id = 1131, state = "completed" },
            },
            sourceStep = 33,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-1136-frostmaw",
            kind = "note",
            text = "Reach level 26 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
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
            checkpointQuest = 1136,
            priority = 420,
        },
        {
            priority = 430,
            route = {
                { y = 0.809, mapID = 1456, label = "Melor Stonehoof", offMapText = "Travel to Melor Stonehoof in Thunder Bluff.", x = 0.6153 },
            },
            text = "Accept Frostmaw from Melor Stonehoof.",
            id = "accept-1136-frostmaw",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 26 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1136, state = "activeOrCompleted" },
            },
            sourceStep = 33,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1131 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 440,
            text = "Turn in Sacred Fire to Magatha Grimtotem.",
            route = {
                { y = 0.3092, mapID = 1456, label = "Magatha Grimtotem", offMapText = "Travel to Magatha Grimtotem in Thunder Bluff.", x = 0.6986 },
            },
            dependsOn = { "accept-5062-sacred-fire", "objective-5062-1-incendia-agave" },
            id = "turnin-5062-sacred-fire",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 24 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5062, state = "completed" },
            },
            sourceStep = 34,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4865 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 450,
            route = {
                { y = 0.3092, mapID = 1456, label = "Magatha Grimtotem", offMapText = "Travel to Magatha Grimtotem in Thunder Bluff.", x = 0.6986 },
            },
            text = "Accept Arikara from Magatha Grimtotem.",
            id = "accept-5088-arikara",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 24 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5088, state = "activeOrCompleted" },
            },
            sourceStep = 34,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5062 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 460,
            text = "Turn in A New Ore Sample to Tatternack Steelforge.",
            route = {
                { y = 0.5768, mapID = 1413, label = "Tatternack Steelforge", offMapText = "Travel to Tatternack Steelforge in The Barrens.", x = 0.451 },
            },
            dependsOn = { "accept-1153-a-new-ore-sample", "objective-1153-1-unrefined-ore-sample" },
            id = "turnin-1153-a-new-ore-sample",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1153, state = "completed" },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 893 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 470,
            text = "For Wind Rider: Bring 10 Highperch Wyvern Eggs to Elu in Freewind Post.",
            id = "objective-4767-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 4767, state = "complete" },
            },
            sourceStep = 37,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-4767-wind-rider" },
        },
        {
            priority = 480,
            text = "Turn in Wind Rider to Elu.",
            route = {
                { y = 0.4893, mapID = 1441, label = "Elu", offMapText = "Travel to Elu in Thousand Needles.", x = 0.4493 },
            },
            dependsOn = { "accept-4767-wind-rider", "objective-4767-quest-work" },
            id = "turnin-4767-wind-rider",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 4767, state = "completed" },
            },
            sourceStep = 37,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 490,
            route = {
                { y = 0.508, mapID = 1441, label = "Cliffwatcher Longhorn", offMapText = "Travel to Cliffwatcher Longhorn in Thousand Needles.", x = 0.4565 },
            },
            text = "Accept Grimtotem Spying from Cliffwatcher Longhorn.",
            id = "accept-5064-grimtotem-spying",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 24 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5064, state = "activeOrCompleted" },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4841 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 500,
            route = {
                { y = 0.5084, mapID = 1441, label = "Wanted - Arnak Grimtotem", offMapText = "Travel to Wanted - Arnak Grimtotem.", x = 0.46 },
            },
            text = "Accept Wanted - Arnak Grimtotem.",
            id = "accept-5147-wanted-arnak-grimtotem",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5147, state = "activeOrCompleted" },
            },
            sourceStep = 39,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-5064-2-secret-note-2",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 24 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 1 Secret Note #2.",
            complete = {
                questObjective = { id = 5064, index = 2, text = "Secret Note #2", count = 1 },
            },
            route = {
                { mapID = 1441, x = 0.3378, y = 0.3997, label = "Secret Note #2", offMapText = "Travel to Secret Note #2." },
            },
            sourceStep = 42,
            priority = 510,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4841 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5064-grimtotem-spying" },
        },
        {
            id = "objective-5064-1-secret-note-1",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 24 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 1 Secret Note #1.",
            complete = {
                questObjective = { id = 5064, index = 1, text = "Secret Note #1", count = 1 },
            },
            route = {
                { mapID = 1441, x = 0.318, y = 0.3259, label = "Secret Note #1", offMapText = "Travel to Secret Note #1." },
            },
            sourceStep = 43,
            priority = 520,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4841 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-5064-grimtotem-spying" },
        },
        {
            priority = 530,
            text = "Collect 1 Arikara Serpent Skin.",
            route = {
                { y = 0.3554, mapID = 1441, label = "Arikara", offMapText = "Travel to Arikara.", x = 0.3829 },
            },
            dependsOn = { "accept-5088-arikara" },
            id = "objective-5088-1-arikara",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 24 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5088, text = "Arikara", index = 1, count = 1 },
            },
            sourceStep = 45,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5062 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 540,
            text = "Collect 1 Arnak's Hoof.",
            route = {
                { y = 0.2685, mapID = 1441, label = "Arnak Grimtotem", offMapText = "Travel to Arnak Grimtotem.", x = 0.3808 },
            },
            dependsOn = { "accept-5147-wanted-arnak-grimtotem" },
            id = "objective-5147-1-arnak-grimtotem",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5147, text = "Arnak Grimtotem", index = 1, count = 1 },
            },
            sourceStep = 46,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 550,
            route = {
                { y = 0.2659, mapID = 1441, label = "Lakota Windsong", offMapText = "Travel to Lakota Windsong in Thousand Needles.", x = 0.3799 },
            },
            text = "Accept Free at Last from Lakota Windsong.",
            id = "accept-4904-free-at-last",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 4904, state = "activeOrCompleted" },
            },
            sourceStep = 47,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 560,
            text = "Turn in Arikara to Motega Firemane.",
            route = {
                { y = 0.3235, mapID = 1441, label = "Motega Firemane", offMapText = "Travel to Motega Firemane in Thousand Needles.", x = 0.2155 },
            },
            dependsOn = { "accept-5088-arikara", "objective-5088-1-arikara" },
            id = "turnin-5088-arikara",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 24 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5088, state = "completed" },
            },
            sourceStep = 49,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5062 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 570,
            route = {
                { y = 0.3255, mapID = 1441, label = "Wizlo Bearingshiner", offMapText = "Travel to Wizlo Bearingshiner in Thousand Needles.", x = 0.2143 },
            },
            text = "Accept Hypercapacitor Gizmo from Wizlo Bearingshiner.",
            id = "accept-5151-hypercapacitor-gizmo",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 24 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5151, state = "activeOrCompleted" },
            },
            sourceStep = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 580,
            text = "Collect 1 Hypercapacitor Gizmo.",
            route = {
                { y = 0.2454, mapID = 1441, label = "Enraged Panther", offMapText = "Travel to Enraged Panther.", x = 0.2279 },
            },
            dependsOn = { "accept-5151-hypercapacitor-gizmo" },
            id = "objective-5151-1-enraged-panther",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 24 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 5151, text = "Enraged Panther", index = 1, count = 1 },
            },
            sourceStep = 51,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 590,
            text = "Turn in Hypercapacitor Gizmo to Wizlo Bearingshiner.",
            route = {
                { y = 0.3255, mapID = 1441, label = "Wizlo Bearingshiner", offMapText = "Travel to Wizlo Bearingshiner in Thousand Needles.", x = 0.2143 },
            },
            dependsOn = { "accept-5151-hypercapacitor-gizmo", "objective-5151-1-enraged-panther" },
            id = "turnin-5151-hypercapacitor-gizmo",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 24 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5151, state = "completed" },
            },
            sourceStep = 52,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 600,
            text = "Turn in Grimtotem Spying to Cliffwatcher Longhorn.",
            route = {
                { y = 0.508, mapID = 1441, label = "Cliffwatcher Longhorn", offMapText = "Travel to Cliffwatcher Longhorn in Thousand Needles.", x = 0.4565 },
            },
            dependsOn = { "accept-5064-grimtotem-spying", "objective-5064-2-secret-note-2", "objective-5064-1-secret-note-1" },
            id = "turnin-5064-grimtotem-spying",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 24 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5064, state = "completed" },
            },
            sourceStep = 55,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 4841 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 610,
            text = "Turn in Wanted - Arnak Grimtotem to Cliffwatcher Longhorn.",
            route = {
                { y = 0.508, mapID = 1441, label = "Cliffwatcher Longhorn", offMapText = "Travel to Cliffwatcher Longhorn in Thousand Needles.", x = 0.4565 },
            },
            dependsOn = { "accept-5147-wanted-arnak-grimtotem", "objective-5147-1-arnak-grimtotem" },
            id = "turnin-5147-wanted-arnak-grimtotem",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 5147, state = "completed" },
            },
            sourceStep = 55,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 620,
            text = "Turn in Free at Last to Thalia Amberhide.",
            route = {
                { y = 0.5161, mapID = 1441, label = "Thalia Amberhide", offMapText = "Travel to Thalia Amberhide in Thousand Needles.", x = 0.4597 },
            },
            dependsOn = { "accept-4904-free-at-last" },
            id = "turnin-4904-free-at-last",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 25 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 4904, state = "completed" },
            },
            sourceStep = 57,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-1111-wharfmaster-dizzywig",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 30 },
            },
            requiredLevel = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1111,
            priority = 630,
        },
        {
            priority = 640,
            route = {
                { y = 0.7727, mapID = 1441, label = "Kravel Koalbeard", offMapText = "Travel to Kravel Koalbeard in Thousand Needles.", x = 0.7779 },
            },
            text = "Accept Wharfmaster Dizzywig from Kravel Koalbeard.",
            id = "accept-1111-wharfmaster-dizzywig",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1111, state = "activeOrCompleted" },
            },
            sourceStep = 58,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1718-the-islander",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                },
            },
            complete = {
                level = { min = 30 },
            },
            requiredLevel = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1718,
            priority = 650,
        },
        {
            priority = 660,
            route = {
                { y = 0.8737, mapID = 1456, label = "Torm Ragetotem", offMapText = "Travel to Torm Ragetotem in Thunder Bluff.", x = 0.5724 },
            },
            text = "Accept The Islander from Torm Ragetotem.",
            id = "accept-1718-the-islander",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1718, state = "activeOrCompleted" },
            },
            sourceStep = 61,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1145-the-swarm-grows",
            kind = "note",
            text = "Reach level 29 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 29 },
            },
            requiredLevel = 29,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1145,
            priority = 670,
        },
        {
            priority = 680,
            route = {
                { mapID = 1413, x = 0.5107, y = 0.2963, label = "Korran", offMapText = "Travel to Korran in The Barrens." },
            },
            text = "Accept The Swarm Grows from Korran.",
            id = "accept-1145-the-swarm-grows",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1145, state = "activeOrCompleted" },
            },
            sourceStep = 64,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 690,
            text = "Turn in Wharfmaster Dizzywig to Wharfmaster Dizzywig.",
            route = {
                { y = 0.3845, mapID = 1413, label = "Wharfmaster Dizzywig", offMapText = "Travel to Wharfmaster Dizzywig in The Barrens.", x = 0.6335 },
            },
            dependsOn = { "accept-1111-wharfmaster-dizzywig" },
            id = "turnin-1111-wharfmaster-dizzywig",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1111, state = "completed" },
            },
            sourceStep = 65,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 700,
            route = {
                { y = 0.3845, mapID = 1413, label = "Wharfmaster Dizzywig", offMapText = "Travel to Wharfmaster Dizzywig in The Barrens.", x = 0.6335 },
            },
            text = "Accept Parts for Kravel from Wharfmaster Dizzywig.",
            id = "accept-1112-parts-for-kravel",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1112, state = "activeOrCompleted" },
            },
            sourceStep = 65,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1111 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 710,
            text = "Turn in Call of Water to Islen Waterseer.",
            route = {
                { y = 0.4378, mapID = 1413, label = "Islen Waterseer", offMapText = "Travel to Islen Waterseer in The Barrens.", x = 0.6583 },
            },
            dependsOn = { "accept-220-call-of-water" },
            id = "turnin-220-call-of-water",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
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
                quest = { id = 220, state = "completed" },
            },
            sourceStep = 66,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1534 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 720,
            route = {
                { y = 0.4378, mapID = 1413, label = "Islen Waterseer", offMapText = "Travel to Islen Waterseer in The Barrens.", x = 0.6583 },
            },
            text = "Accept Call of Water from Islen Waterseer.",
            id = "accept-63-call-of-water",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
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
                quest = { id = 63, state = "activeOrCompleted" },
            },
            sourceStep = 66,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 220 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 730,
            text = "Turn in The Islander to Klannoc Macleod.",
            route = {
                { y = 0.4917, mapID = 1413, label = "Klannoc Macleod", offMapText = "Travel to Klannoc Macleod in The Barrens.", x = 0.6862 },
            },
            dependsOn = { "accept-1718-the-islander" },
            id = "turnin-1718-the-islander",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1718, state = "completed" },
            },
            sourceStep = 68,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 740,
            route = {
                { y = 0.4917, mapID = 1413, label = "Klannoc Macleod", offMapText = "Travel to Klannoc Macleod in The Barrens.", x = 0.6862 },
            },
            text = "Accept The Affray from Klannoc Macleod.",
            id = "accept-1719-the-affray",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1719, state = "activeOrCompleted" },
            },
            sourceStep = 68,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1718 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 750,
            text = "Kill Big Will.",
            route = {
                { y = 0.4872, mapID = 1413, label = "Affray Challenger", offMapText = "Travel to Affray Challenger.", x = 0.6861 },
            },
            dependsOn = { "accept-1719-the-affray" },
            id = "objective-1719-1-affray-challenger",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1719, text = "Affray Challenger", index = 1 },
            },
            sourceStep = 69,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1718 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 760,
            text = "Turn in The Affray to Klannoc Macleod.",
            route = {
                { y = 0.4917, mapID = 1413, label = "Klannoc Macleod", offMapText = "Travel to Klannoc Macleod in The Barrens.", x = 0.6862 },
            },
            dependsOn = { "accept-1719-the-affray", "objective-1719-1-affray-challenger" },
            id = "turnin-1719-the-affray",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1719, state = "completed" },
            },
            sourceStep = 70,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1718 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 770,
            route = {
                { y = 0.4917, mapID = 1413, label = "Klannoc Macleod", offMapText = "Travel to Klannoc Macleod in The Barrens.", x = 0.6862 },
            },
            text = "Accept The Windwatcher from Klannoc Macleod.",
            id = "accept-1791-the-windwatcher",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1791, state = "activeOrCompleted" },
            },
            sourceStep = 70,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1719 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1431-alliance-relations",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 30 },
            },
            requiredLevel = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1431,
            priority = 780,
        },
        {
            priority = 790,
            route = {
                { y = 0.5043, mapID = 1454, label = "Craven Drok", offMapText = "Travel to Craven Drok in Orgrimmar.", x = 0.4676 },
            },
            text = "Accept Alliance Relations from Craven Drok.",
            id = "accept-1431-alliance-relations",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1431, state = "activeOrCompleted" },
            },
            sourceStep = 73,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1531-call-of-air",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 30 },
            },
            requiredLevel = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1531,
            alternativeQuests = { 1532 },
            priority = 800,
        },
        {
            priority = 810,
            route = {
                { y = 0.3773, mapID = 1454, label = "Searn Firewarder", offMapText = "Travel to Searn Firewarder in Orgrimmar.", x = 0.3796 },
            },
            text = "Accept Call of Air from Searn Firewarder.",
            id = "accept-1531-call-of-air",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 7 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1531, state = "activeOrCompleted" },
            },
            sourceStep = 76,
            requiredQuests = {},
            alternativeQuests = { 1532 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 820,
            text = "Turn in The Swarm Grows to Belgrom Rockmaul.",
            route = {
                { y = 0.3423, mapID = 1454, label = "Belgrom Rockmaul", offMapText = "Travel to Belgrom Rockmaul in Orgrimmar.", x = 0.7523 },
            },
            dependsOn = { "accept-1145-the-swarm-grows" },
            id = "turnin-1145-the-swarm-grows",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1145, state = "completed" },
            },
            sourceStep = 78,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 830,
            route = {
                { y = 0.3423, mapID = 1454, label = "Belgrom Rockmaul", offMapText = "Travel to Belgrom Rockmaul in Orgrimmar.", x = 0.7523 },
            },
            text = "Accept The Swarm Grows from Belgrom Rockmaul.",
            id = "accept-1146-the-swarm-grows",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1146, state = "activeOrCompleted" },
            },
            sourceStep = 78,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1145 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 840,
            text = "Turn in Alliance Relations to Keldran.",
            route = {
                { y = 0.5263, mapID = 1454, label = "Keldran", offMapText = "Travel to Keldran in Orgrimmar.", x = 0.2256 },
            },
            dependsOn = { "accept-1431-alliance-relations" },
            id = "turnin-1431-alliance-relations",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1431, state = "completed" },
            },
            sourceStep = 83,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 850,
            route = {
                { y = 0.5263, mapID = 1454, label = "Keldran", offMapText = "Travel to Keldran in Orgrimmar.", x = 0.2256 },
            },
            text = "Accept Alliance Relations from Keldran.",
            id = "accept-1432-alliance-relations",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1432, state = "activeOrCompleted" },
            },
            sourceStep = 83,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1431 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
