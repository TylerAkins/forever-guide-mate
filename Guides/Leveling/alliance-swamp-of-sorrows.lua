local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Swamp of Sorrows",
    category = "Leveling Quest Guides",
    id = "leveling-era-alliance-swamp-of-sorrows",
    conditions = {
        all = {
            { faction = "Alliance" },
            {
                level = { min = 38 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-1260-morgan-stern",
            kind = "note",
            text = "Reach level 33 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 33 },
            },
            requiredLevel = 33,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1260,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { mapID = 1453, x = 0.415, y = 0.8939, label = "Angus Stern", offMapText = "Travel to Angus Stern in Stormwind City." },
            },
            text = "Accept Morgan Stern from Angus Stern.",
            id = "accept-1260-morgan-stern",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 33 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1260, state = "activeOrCompleted" },
            },
            sourceStep = 2,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1363-mazen-s-behest",
            kind = "note",
            text = "Reach level 37 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 37 },
            },
            requiredLevel = 37,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1363,
            priority = 30,
        },
        {
            priority = 40,
            route = {
                { y = 0.6367, mapID = 1453, label = "Mazen Mac'Nadir", offMapText = "Travel to Mazen Mac'Nadir in Stormwind City.", x = 0.4117 },
            },
            text = "Accept Mazen's Behest from Mazen Mac'Nadir.",
            id = "accept-1363-mazen-s-behest",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 37 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1363, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 50,
            text = "Turn in Mazen's Behest to Acolyte Dellis.",
            route = {
                { y = 0.6383, mapID = 1453, label = "Acolyte Dellis", offMapText = "Travel to Acolyte Dellis in Stormwind City.", x = 0.4097 },
            },
            dependsOn = { "accept-1363-mazen-s-behest", "accept-1363-mazen-s-behest-2" },
            id = "turnin-1363-mazen-s-behest",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 37 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1363, state = "completed" },
            },
            sourceStep = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 60,
            text = "Accept Mazen's Behest from Acolyte Dellis.",
            route = {
                { y = 0.6383, mapID = 1453, label = "Acolyte Dellis", offMapText = "Travel to Acolyte Dellis in Stormwind City.", x = 0.4097 },
            },
            dependsOn = { "turnin-1363-mazen-s-behest" },
            id = "accept-1364-mazen-s-behest",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 8 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 37 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1364, state = "activeOrCompleted" },
            },
            sourceStep = 4,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1363 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-1363-mazen-s-behest-2",
            kind = "note",
            text = "Reach level 37 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 37 },
            },
            requiredLevel = 37,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1363,
            priority = 70,
        },
        {
            id = "accept-1363-mazen-s-behest-2",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 37 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Accept Mazen's Behest from Mazen Mac'Nadir.",
            complete = {
                quest = { id = 1363, state = "activeOrCompleted" },
            },
            route = {
                { mapID = 1453, x = 0.4152, y = 0.6437999999999999, label = "Mazen Mac'Nadir", offMapText = "Travel to Mazen Mac'Nadir in Stormwind City." },
            },
            sourceStep = 5,
            priority = 80,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "turnin-1363-mazen-s-behest-2",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 37 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Turn in Mazen's Behest to Acolyte Dellis.",
            complete = {
                quest = { id = 1363, state = "completed" },
            },
            route = {
                { mapID = 1453, x = 0.4097, y = 0.6383, label = "Acolyte Dellis", offMapText = "Travel to Acolyte Dellis in Stormwind City." },
            },
            sourceStep = 6,
            priority = 90,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1363-mazen-s-behest-2", "accept-1363-mazen-s-behest" },
        },
        {
            id = "accept-1260-morgan-stern-2",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 33 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Accept Morgan Stern from Angus Stern.",
            complete = {
                quest = { id = 1260, state = "activeOrCompleted" },
            },
            route = {
                { mapID = 1453, x = 0.415, y = 0.8939, label = "Angus Stern", offMapText = "Travel to Angus Stern in Stormwind City." },
            },
            sourceStep = 7,
            priority = 100,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-1448-in-search-of-the-temple",
            kind = "note",
            text = "Reach level 38 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                level = { min = 38 },
            },
            requiredLevel = 38,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1448,
            priority = 110,
        },
        {
            priority = 120,
            route = {
                { y = 0.2066, mapID = 1453, label = "Brohann Caskbelly", offMapText = "Travel to Brohann Caskbelly in Stormwind City.", x = 0.6433 },
            },
            text = "Accept In Search of The Temple from Brohann Caskbelly.",
            id = "accept-1448-in-search-of-the-temple",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1448, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-1116-1-adolescent-whelp",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Alliance" },
            complete = {
                level = { min = 30 },
            },
            requiredLevel = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1116,
            priority = 130,
        },
        {
            priority = 140,
            route = {
                { y = 0.574, mapID = 1435, label = "Adolescent Whelp", offMapText = "Travel to Adolescent Whelp.", x = 0.124 },
            },
            text = "Collect 10 Speck of Dream Dust.",
            id = "objective-1116-1-adolescent-whelp",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1116, text = "Adolescent Whelp", index = 1, count = 10 },
            },
            sourceStep = 18,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1115 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 150,
            route = {
                { y = 0.5983, mapID = 1435, label = "Watcher Biggs", offMapText = "Travel to Watcher Biggs in Swamp of Sorrows.", x = 0.2674 },
            },
            text = "Accept Encroaching Wildlife from Watcher Biggs.",
            id = "accept-1396-encroaching-wildlife",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1396, state = "activeOrCompleted" },
            },
            sourceStep = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "loot-starter-before-accept-1392-noboru-the-cudgel",
            kind = "note",
            instructionOnly = true,
            conditions = { faction = "Alliance" },
            text = "Loot Noboru's Cudgel from Noboru the Cudgel. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Noboru's Cudgel", minCount = 1 },
                    },
                    {
                        quest = { id = 1392, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 160,
        },
        {
            priority = 170,
            text = "Use the Noboru's Cudgel to accept Noboru the Cudgel.",
            id = "accept-1392-noboru-the-cudgel",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1392, state = "activeOrCompleted" },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 180,
            text = "Turn in Noboru the Cudgel to Magtoor.",
            route = {
                { y = 0.314, mapID = 1435, label = "Magtoor", offMapText = "Travel to Magtoor in Swamp of Sorrows.", x = 0.2599 },
            },
            dependsOn = { "accept-1392-noboru-the-cudgel" },
            id = "turnin-1392-noboru-the-cudgel",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1392, state = "completed" },
            },
            sourceStep = 21,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 190,
            route = {
                { y = 0.314, mapID = 1435, label = "Magtoor", offMapText = "Travel to Magtoor in Swamp of Sorrows.", x = 0.2599 },
            },
            text = "Accept Draenethyst Crystals from Magtoor.",
            id = "accept-1389-draenethyst-crystals",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1389, state = "activeOrCompleted" },
            },
            sourceStep = 21,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 200,
            route = {
                { y = 0.584, mapID = 1435, label = "Adolescent Whelp", offMapText = "Travel to Adolescent Whelp.", x = 0.168 },
            },
            text = "Collect 10 Speck of Dream Dust.",
            id = "objective-1116-1-adolescent-whelp-2",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1116, text = "Adolescent Whelp", index = 1, count = 10 },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1115 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-1396-1-young-sawtooth-crocolisk",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 8 Young Sawtooth Crocolisk.",
            complete = {
                questObjective = { id = 1396, index = 1, text = "Young Sawtooth Crocolisk", count = 8 },
            },
            route = {
                { mapID = 1435, x = 0.24600000000000002, y = 0.524, label = "Young Sawtooth Crocolisk", offMapText = "Travel to Young Sawtooth Crocolisk." },
            },
            sourceStep = 23,
            priority = 210,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1396-encroaching-wildlife" },
        },
        {
            id = "objective-1396-2-sorrow-spinner",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 10 Sorrow Spinner.",
            complete = {
                questObjective = { id = 1396, index = 2, text = "Sorrow Spinner", count = 10 },
            },
            route = {
                { mapID = 1435, x = 0.254, y = 0.49200000000000005, label = "Sorrow Spinner", offMapText = "Travel to Sorrow Spinner." },
            },
            sourceStep = 24,
            priority = 220,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1396-encroaching-wildlife" },
        },
        {
            id = "objective-1396-3-swamp-jaguar",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            text = "Kill 10 Swamp Jaguar.",
            complete = {
                questObjective = { id = 1396, index = 3, text = "Swamp Jaguar", count = 10 },
            },
            route = {
                { mapID = 1435, x = 0.264, y = 0.474, label = "Swamp Jaguar", offMapText = "Travel to Swamp Jaguar." },
            },
            sourceStep = 25,
            priority = 230,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1396-encroaching-wildlife" },
        },
        {
            priority = 240,
            text = "Turn in Encroaching Wildlife to Watcher Biggs.",
            route = {
                { y = 0.5983, mapID = 1435, label = "Watcher Biggs", offMapText = "Travel to Watcher Biggs in Swamp of Sorrows.", x = 0.2674 },
            },
            dependsOn = {
                "accept-1396-encroaching-wildlife",
                "objective-1396-1-young-sawtooth-crocolisk",
                "objective-1396-2-sorrow-spinner",
                "objective-1396-3-swamp-jaguar",
            },
            id = "turnin-1396-encroaching-wildlife",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1396, state = "completed" },
            },
            sourceStep = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 250,
            route = {
                { y = 0.5983, mapID = 1435, label = "Watcher Biggs", offMapText = "Travel to Watcher Biggs in Swamp of Sorrows.", x = 0.2674 },
            },
            text = "Accept The Lost Caravan from Watcher Biggs.",
            id = "accept-1421-the-lost-caravan",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1421, state = "activeOrCompleted" },
            },
            sourceStep = 26,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1396 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 260,
            route = {
                { y = 0.2325, mapID = 1435, label = "Ongeku", offMapText = "Travel to Ongeku.", x = 0.6131 },
            },
            text = "Collect 1 Draenethyst Shard.",
            id = "objective-1373-1-ongeku",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1373, text = "Ongeku", index = 1, count = 1 },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1370 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 270,
            text = "Collect 1 Wizards' Reagents.",
            route = {
                { y = 0.1834, mapID = 1435, label = "Caravan Chest", offMapText = "Travel to Caravan Chest.", x = 0.6446 },
            },
            dependsOn = { "accept-1421-the-lost-caravan" },
            id = "objective-1421-1-caravan-chest",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1421, text = "Caravan Chest", index = 1, count = 1 },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1396 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 280,
            route = {
                { y = 0.1823, mapID = 1435, label = "Galen Goodward", offMapText = "Travel to Galen Goodward in Swamp of Sorrows.", x = 0.6541 },
            },
            text = "Accept Galen's Escape from Galen Goodward.",
            id = "accept-1393-galen-s-escape",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1393, state = "activeOrCompleted" },
            },
            sourceStep = 29,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-1393-reviewed-escort",
            kind = "objective",
            text = "Escort Galen Goodward out of the Fallow Sanctuary and protect him from attackers.",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            requiredQuests = {},
            complete = {
                quest = { id = 1393, state = "complete" },
            },
            useClientText = false,
            useClientPin = false,
            route = {
                { mapID = 1435, x = 0.5305, y = 0.2964, label = "Escort destination", offMapText = "Travel to Escort destination." },
            },
            sourceStep = 30,
            dependsOn = { "accept-1393-galen-s-escape" },
            priority = 290,
        },
        {
            id = "objective-1389-1-draenethyst-crystal",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            text = "Collect 6 Draenethyst Crystal.",
            complete = {
                questObjective = { id = 1389, index = 1, text = "Draenethyst Crystal", count = 6 },
            },
            route = {
                { mapID = 1435, x = 0.55, y = 0.302, label = "Draenethyst Crystal", offMapText = "Travel to Draenethyst Crystal." },
            },
            sourceStep = 31,
            priority = 300,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1389-draenethyst-crystals" },
        },
        {
            priority = 310,
            text = "Turn in Galen's Escape.",
            route = {
                { y = 0.3976, mapID = 1435, label = "Galen's Escape", offMapText = "Travel to Galen's Escape.", x = 0.4781 },
            },
            dependsOn = { "accept-1393-galen-s-escape", "objective-1393-reviewed-escort" },
            id = "turnin-1393-galen-s-escape",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1393, state = "completed" },
            },
            sourceStep = 33,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 320,
            text = "Turn in Draenethyst Crystals to Magtoor.",
            route = {
                { y = 0.314, mapID = 1435, label = "Magtoor", offMapText = "Travel to Magtoor in Swamp of Sorrows.", x = 0.2599 },
            },
            dependsOn = { "accept-1389-draenethyst-crystals", "objective-1389-1-draenethyst-crystal" },
            id = "turnin-1389-draenethyst-crystals",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1389, state = "completed" },
            },
            sourceStep = 34,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 330,
            text = "Turn in The Lost Caravan to Watcher Biggs.",
            route = {
                { y = 0.5983, mapID = 1435, label = "Watcher Biggs", offMapText = "Travel to Watcher Biggs in Swamp of Sorrows.", x = 0.2674 },
            },
            dependsOn = { "accept-1421-the-lost-caravan", "objective-1421-1-caravan-chest" },
            id = "turnin-1421-the-lost-caravan",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1421, state = "completed" },
            },
            sourceStep = 35,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1396 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 340,
            text = "Turn in Dream Dust in the Swamp to Krazek.",
            route = {
                { y = 0.7721, mapID = 1434, label = "Krazek", offMapText = "Travel to Krazek in Stranglethorn Vale.", x = 0.2694 },
            },
            dependsOn = { "objective-1116-1-adolescent-whelp", "objective-1116-1-adolescent-whelp-2" },
            id = "turnin-1116-dream-dust-in-the-swamp",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1116, state = "completed" },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1115 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 350,
            route = {
                { y = 0.7721, mapID = 1434, label = "Krazek", offMapText = "Travel to Krazek in Stranglethorn Vale.", x = 0.2694 },
            },
            text = "Accept Rumors for Kravel from Krazek.",
            id = "accept-1117-rumors-for-kravel",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                quest = { id = 1117, state = "activeOrCompleted" },
            },
            sourceStep = 39,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1116 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 360,
            text = "Turn in In Search of The Temple to Brohann Caskbelly.",
            route = {
                { y = 0.2066, mapID = 1453, label = "Brohann Caskbelly", offMapText = "Travel to Brohann Caskbelly in Stormwind City.", x = 0.6433 },
            },
            dependsOn = { "accept-1448-in-search-of-the-temple" },
            id = "turnin-1448-in-search-of-the-temple",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1448, state = "completed" },
            },
            sourceStep = 43,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 370,
            route = {
                { y = 0.2066, mapID = 1453, label = "Brohann Caskbelly", offMapText = "Travel to Brohann Caskbelly in Stormwind City.", x = 0.6433 },
            },
            text = "Accept To The Hinterlands from Brohann Caskbelly.",
            id = "accept-1449-to-the-hinterlands",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 38 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1449, state = "activeOrCompleted" },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1448 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 380,
            route = {
                { y = 0.1749, mapID = 1455, label = "Roetten Stonehammer", offMapText = "Travel to Roetten Stonehammer in Ironforge.", x = 0.6791 },
            },
            text = "Turn in The Karnitol Shipwreck to Roetten Stonehammer.",
            id = "turnin-1457-the-karnitol-shipwreck",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 1457, state = "completed" },
            },
            sourceStep = 46,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1456 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 390,
            route = {
                { y = 0.1174, mapID = 1455, label = "Prospector Stormpike", offMapText = "Travel to Prospector Stormpike in Ironforge.", x = 0.7464 },
            },
            text = "Accept Further Mysteries from Prospector Stormpike.",
            id = "accept-525-further-mysteries",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                    {
                        race = { 1, 3, 4, 7, 95 },
                    },
                },
            },
            complete = {
                quest = { id = 525, state = "activeOrCompleted" },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 514 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-1712-1-liferoot",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                },
            },
            complete = {
                level = { min = 30 },
            },
            requiredLevel = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 1712,
            priority = 400,
        },
        {
            priority = 410,
            route = {
                { y = 0.7467, mapID = 1455, label = "Liferoot", offMapText = "Travel to Liferoot.", x = 0.2416 },
            },
            text = "Collect 8 Liferoot.",
            id = "objective-1712-1-liferoot",
            kind = "objective",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1712, text = "Liferoot", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1791 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 420,
            route = {
                { y = 0.7467, mapID = 1455, label = "Thundering Charm", offMapText = "Travel to Thundering Charm.", x = 0.2416 },
            },
            text = "Collect 8 Thundering Charm from the matching Arathi elementals. Keep them for the later cauldron exchange.",
            id = "objective-1714-1-thundering-charm",
            kind = "note",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Alliance" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                item = { name = "Thundering Charm", minCount = 8 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            checkpointQuest = 1714,
            contextQuest = 1714,
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
