local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Alterac Mountains & Arathi Highlands",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 38 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-545-dalaran-patrols",
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
            checkpointQuest = 545,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.2084, mapID = 1424, label = "Magus Wordeen Voidglare", offMapText = "Travel to Magus Wordeen Voidglare in Hillsbrad Foothills.", x = 0.616 },
            },
            text = "Accept Dalaran Patrols from Magus Wordeen Voidglare.",
            id = "accept-545-dalaran-patrols",
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
                quest = { id = 545, state = "activeOrCompleted" },
            },
            sourceStep = 1,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 544 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 30,
            route = {
                { y = 0.2094, mapID = 1424, label = "Keeper Bel'varil", offMapText = "Travel to Keeper Bel'varil in Hillsbrad Foothills.", x = 0.615 },
            },
            text = "Accept Bracers of Binding from Keeper Bel'varil.",
            id = "accept-557-bracers-of-binding",
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
                quest = { id = 557, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 556 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-566-wanted-baron-vardus",
            kind = "note",
            text = "Reach level 35 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 35 },
            },
            requiredLevel = 35,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 566,
            priority = 40,
        },
        {
            priority = 50,
            route = {
                { y = 0.2074, mapID = 1424, label = "WANTED: Baron Vardus", offMapText = "Travel to WANTED: Baron Vardus.", x = 0.6262 },
            },
            text = "Accept WANTED: Baron Vardus.",
            id = "accept-566-wanted-baron-vardus",
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
                quest = { id = 566, state = "activeOrCompleted" },
            },
            sourceStep = 4,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 549 },
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
                { y = 0.2066, mapID = 1424, label = "Krusk", offMapText = "Travel to Krusk in Hillsbrad Foothills.", x = 0.6324 },
            },
            text = "Accept Gol'dir from Krusk.",
            id = "accept-503-gol-dir",
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
                quest = { id = 503, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 533 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-1712-3-essence-of-the-exile",
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
            checkpointQuest = 1712,
            priority = 70,
        },
        {
            id = "objective-1712-3-essence-of-the-exile",
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
            text = "Collect 1 Essence of the Exile.",
            complete = {
                questObjective = { id = 1712, index = 3, text = "Essence of the Exile", count = 1 },
            },
            route = {
                { mapID = 1416, x = 0.7931999999999999, y = 0.6681, label = "Essence of the Exile", offMapText = "Travel to Essence of the Exile." },
            },
            sourceStep = 6,
            priority = 80,
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
            priority = 90,
            route = {
                { y = 0.6692, mapID = 1416, label = "Bath'rah the Windwatcher", offMapText = "Travel to Bath'rah the Windwatcher in Alterac Mountains.", x = 0.805 },
            },
            text = "Turn in Cyclonian to Bath'rah the Windwatcher.",
            id = "turnin-1712-cyclonian",
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
                quest = { id = 1712, state = "completed" },
            },
            sourceStep = 7,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1791 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-1712-3-essence-of-the-exile" },
        },
        {
            priority = 100,
            route = {
                { y = 0.6692, mapID = 1416, label = "Bath'rah the Windwatcher", offMapText = "Travel to Bath'rah the Windwatcher in Alterac Mountains.", x = 0.805 },
            },
            text = "Accept The Summoning from Bath'rah the Windwatcher.",
            id = "accept-1713-the-summoning",
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
                quest = { id = 1713, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1712 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 110,
            text = "For The Summoning: Bring the Whirlwind Heart to Bath'rah Windwatcher.",
            id = "objective-1713-quest-work",
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
                quest = { id = 1713, state = "complete" },
            },
            sourceStep = 9,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1712 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-1713-the-summoning" },
        },
        {
            priority = 120,
            text = "Turn in The Summoning to Bath'rah the Windwatcher.",
            route = {
                { y = 0.6692, mapID = 1416, label = "Bath'rah the Windwatcher", offMapText = "Travel to Bath'rah the Windwatcher in Alterac Mountains.", x = 0.805 },
            },
            dependsOn = { "accept-1713-the-summoning", "objective-1713-quest-work" },
            id = "turnin-1713-the-summoning",
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
                quest = { id = 1713, state = "completed" },
            },
            sourceStep = 9,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1712 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 130,
            route = {
                { y = 0.6692, mapID = 1416, label = "Bath'rah the Windwatcher", offMapText = "Travel to Bath'rah the Windwatcher in Alterac Mountains.", x = 0.805 },
            },
            text = "Accept Whirlwind Weapon from Bath'rah the Windwatcher.",
            id = "accept-1792-whirlwind-weapon",
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
                quest = { id = 1792, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1713 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-woven-class-warrior-turnin-1792-whirlwind-weapon",
            kind = "note",
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 1 },
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
            checkpointQuest = 1792,
            priority = 140,
        },
        {
            priority = 150,
            route = {
                { y = 0.668, mapID = 1416, label = "Bath'rah the Windwatcher", x = 0.804, offMapText = "Travel to Bath'rah the Windwatcher in Alterac Mountains." },
            },
            dependsOn = { "accept-1792-whirlwind-weapon" },
            id = "woven-class-warrior-turnin-1792-whirlwind-weapon",
            conditions = {
                all = {
                    { class = 1 },
                    {
                        class = { 1 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            useClientPin = false,
            classAction = "turnin-1792-whirlwind-weapon",
        },
        {
            priority = 160,
            route = {
                { mapID = 1416, x = 0.484, y = 0.75, label = "Mountain lions", offMapText = "Travel to Mountain lions." },
            },
            text = "Kill mountain lions in southern Alterac Mountains and loot 1 Fresh Carcass.",
            id = "objective-1136-1-hulking-mountain-lion",
            kind = "note",
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
                any = {
                    {
                        all = {
                            {
                                item = { name = "Fresh Carcass", minCount = 1 },
                            },
                        },
                    },
                    {
                        quest = { id = 1136, state = "complete" },
                    },
                },
            },
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
            sourceInstructionStep = 12,
            sourceInstructionIndex = 1,
            checkpointQuest = 1136,
            instructionOnly = true,
            rememberPreparation = 1136,
        },
        {
            priority = 170,
            route = {
                { mapID = 1416, x = 0.3754, y = 0.6626000000000001, label = "Frostmaw cave", offMapText = "Travel to Frostmaw cave." },
            },
            text = "Place the Fresh Carcass in Frostmaw's cave. Kill Frostmaw when he approaches and loot his mane.",
            id = "objective-1136-1-fresh-carcass",
            kind = "objective",
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
                questObjective = { id = 1136, index = 1, count = 1 },
            },
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
            priority = 180,
            text = "Collect 1 Rusted Iron Key.",
            route = {
                { y = 0.4347, mapID = 1416, label = "Jailor Borhuin", offMapText = "Travel to Jailor Borhuin.", x = 0.6313 },
            },
            dependsOn = { "accept-503-gol-dir" },
            id = "objective-503-1-jailor-borhuin",
            kind = "objective",
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
                questObjective = { id = 503, text = "Jailor Borhuin", index = 1, count = 1 },
            },
            sourceStep = 13,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 533 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 190,
            text = "Turn in Gol'dir to Gol'dir.",
            route = {
                { y = 0.4374, mapID = 1416, label = "Gol'dir", offMapText = "Travel to Gol'dir in Alterac Mountains.", x = 0.5996 },
            },
            dependsOn = { "accept-503-gol-dir", "objective-503-1-jailor-borhuin" },
            id = "turnin-503-gol-dir",
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
                quest = { id = 503, state = "completed" },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 533 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 200,
            route = {
                { y = 0.4374, mapID = 1416, label = "Gol'dir", offMapText = "Travel to Gol'dir in Alterac Mountains.", x = 0.5996 },
            },
            text = "Accept Blackmoore's Legacy from Gol'dir.",
            id = "accept-506-blackmoore-s-legacy",
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
                quest = { id = 506, state = "activeOrCompleted" },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 503 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 210,
            text = "Collect 1 Head of Baron Vardus.",
            route = {
                { y = 0.4321, mapID = 1416, label = "Baron Vardus", offMapText = "Travel to Baron Vardus.", x = 0.603 },
            },
            dependsOn = { "accept-566-wanted-baron-vardus" },
            id = "objective-566-1-baron-vardus",
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
                questObjective = { id = 566, text = "Baron Vardus", index = 1, count = 1 },
            },
            sourceStep = 16,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 549 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 220,
            text = "Turn in Blackmoore's Legacy to Krusk.",
            route = {
                { y = 0.2066, mapID = 1424, label = "Krusk", offMapText = "Travel to Krusk in Hillsbrad Foothills.", x = 0.6324 },
            },
            dependsOn = { "accept-506-blackmoore-s-legacy" },
            id = "turnin-506-blackmoore-s-legacy",
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
                quest = { id = 506, state = "completed" },
            },
            sourceStep = 17,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 503 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 230,
            route = {
                { y = 0.2066, mapID = 1424, label = "Krusk", offMapText = "Travel to Krusk in Hillsbrad Foothills.", x = 0.6324 },
            },
            text = "Accept Lord Aliden Perenolde from Krusk.",
            id = "accept-507-lord-aliden-perenolde",
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
                quest = { id = 507, state = "activeOrCompleted" },
            },
            sourceStep = 17,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 506 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 240,
            text = "Turn in WANTED: Baron Vardus to High Executor Darthalia.",
            route = {
                { y = 0.2045, mapID = 1424, label = "High Executor Darthalia", offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.", x = 0.6233 },
            },
            dependsOn = { "accept-566-wanted-baron-vardus", "objective-566-1-baron-vardus", "objective-566-1-baron-vardus-2" },
            id = "turnin-566-wanted-baron-vardus",
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
                quest = { id = 566, state = "completed" },
            },
            sourceStep = 18,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 549 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 250,
            text = "Collect 4 Bracers of Earth Binding.",
            route = {
                { mapID = 1416, x = 0.20600000000000002, y = 0.764, label = "Bracers of Earth Binding", offMapText = "Travel to Bracers of Earth Binding." },
            },
            dependsOn = { "accept-557-bracers-of-binding" },
            id = "objective-557-1-elemental-slave",
            kind = "objective",
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
                questObjective = { id = 557, text = "Elemental Slave", index = 1, count = 4 },
            },
            sourceStep = 19,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 556 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-545-1-dalaran-summoner",
            kind = "objective",
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
            text = "Kill 6 Dalaran Summoner.",
            complete = {
                questObjective = { id = 545, index = 1, text = "Dalaran Summoner", count = 6 },
            },
            route = {
                { mapID = 1416, x = 0.20600000000000002, y = 0.764, label = "Dalaran Summoner", offMapText = "Travel to Dalaran Summoner." },
            },
            sourceStep = 20,
            priority = 260,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 544 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-545-dalaran-patrols" },
        },
        {
            id = "objective-545-2-elemental-slave",
            kind = "objective",
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
            text = "Kill 12 Elemental Slave.",
            complete = {
                questObjective = { id = 545, index = 2, text = "Elemental Slave", count = 12 },
            },
            route = {
                { mapID = 1416, x = 0.20600000000000002, y = 0.764, label = "Elemental Slave", offMapText = "Travel to Elemental Slave." },
            },
            sourceStep = 20,
            priority = 270,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 544 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-545-dalaran-patrols" },
        },
        {
            priority = 280,
            text = "Kill Lord Aliden Perenolde.",
            route = {
                { y = 0.1458, mapID = 1416, label = "Lord Aliden Perenolde", offMapText = "Travel to Lord Aliden Perenolde.", x = 0.3932 },
            },
            dependsOn = { "accept-507-lord-aliden-perenolde" },
            id = "objective-507-1-lord-aliden-perenolde",
            kind = "objective",
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
                questObjective = { id = 507, text = "Lord Aliden Perenolde", index = 1 },
            },
            sourceStep = 21,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 506 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 290,
            text = "Turn in Lord Aliden Perenolde to Elysa.",
            route = {
                { y = 0.1431, mapID = 1416, label = "Elysa", offMapText = "Travel to Elysa in Alterac Mountains.", x = 0.393 },
            },
            dependsOn = { "accept-507-lord-aliden-perenolde", "objective-507-1-lord-aliden-perenolde" },
            id = "turnin-507-lord-aliden-perenolde",
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
                quest = { id = 507, state = "completed" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 506 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 300,
            route = {
                { y = 0.1431, mapID = 1416, label = "Elysa", offMapText = "Travel to Elysa in Alterac Mountains.", x = 0.393 },
            },
            text = "Accept Taretha's Gift from Elysa.",
            id = "accept-508-taretha-s-gift",
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
                quest = { id = 508, state = "activeOrCompleted" },
            },
            sourceStep = 22,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 507 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 310,
            text = "Collect 1 Head of Baron Vardus.",
            route = {
                { y = 0.17, mapID = 1416, label = "Baron Vardus", offMapText = "Travel to Baron Vardus.", x = 0.474 },
            },
            dependsOn = { "accept-566-wanted-baron-vardus" },
            id = "objective-566-1-baron-vardus-2",
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
                questObjective = { id = 566, text = "Baron Vardus", index = 1, count = 1 },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 549 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 320,
            text = "Turn in Dalaran Patrols to Magus Wordeen Voidglare.",
            route = {
                { y = 0.2084, mapID = 1424, label = "Magus Wordeen Voidglare", offMapText = "Travel to Magus Wordeen Voidglare in Hillsbrad Foothills.", x = 0.616 },
            },
            dependsOn = { "accept-545-dalaran-patrols", "objective-545-1-dalaran-summoner", "objective-545-2-elemental-slave" },
            id = "turnin-545-dalaran-patrols",
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
                quest = { id = 545, state = "completed" },
            },
            sourceStep = 24,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 544 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 330,
            text = "Turn in Bracers of Binding to Keeper Bel'varil.",
            route = {
                { y = 0.2094, mapID = 1424, label = "Keeper Bel'varil", offMapText = "Travel to Keeper Bel'varil in Hillsbrad Foothills.", x = 0.615 },
            },
            dependsOn = { "accept-557-bracers-of-binding", "objective-557-1-elemental-slave" },
            id = "turnin-557-bracers-of-binding",
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
                quest = { id = 557, state = "completed" },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 556 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 340,
            text = "Turn in Taretha's Gift to Krusk.",
            route = {
                { y = 0.2066, mapID = 1424, label = "Krusk", offMapText = "Travel to Krusk in Hillsbrad Foothills.", x = 0.6324 },
            },
            dependsOn = { "accept-508-taretha-s-gift" },
            id = "turnin-508-taretha-s-gift",
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
                quest = { id = 508, state = "completed" },
            },
            sourceStep = 27,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 507 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 350,
            route = {
                { y = 0.3395, mapID = 1417, label = "Zengu", offMapText = "Travel to Zengu in Arathi Highlands.", x = 0.738 },
            },
            text = "Turn in Trollbane to Zengu.",
            id = "turnin-638-trollbane",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 32 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 638, state = "completed" },
            },
            sourceStep = 28,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 360,
            route = {
                { y = 0.3391, mapID = 1417, label = "Drum Fel", offMapText = "Travel to Drum Fel in Arathi Highlands.", x = 0.7424 },
            },
            text = "Accept Call to Arms from Drum Fel.",
            id = "accept-678-call-to-arms",
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
                quest = { id = 678, state = "activeOrCompleted" },
            },
            sourceStep = 29,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 677 },
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
                { y = 0.3629, mapID = 1417, label = "Tor'gan", offMapText = "Travel to Tor'gan in Arathi Highlands.", x = 0.7472 },
            },
            text = "Accept Guile of the Raptor from Tor'gan.",
            id = "accept-701-guile-of-the-raptor",
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
                quest = { id = 701, state = "activeOrCompleted" },
            },
            sourceStep = 30,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 675 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-642-1-drywhisker-kobold",
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
            checkpointQuest = 642,
            priority = 380,
        },
        {
            priority = 390,
            route = {
                { y = 0.442, mapID = 1417, label = "Drywhisker Kobold", offMapText = "Travel to Drywhisker Kobold.", x = 0.76 },
            },
            text = "Collect 12 Mote of Myzrael.",
            id = "objective-642-1-drywhisker-kobold",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            complete = {
                questObjective = { id = 642, text = "Drywhisker Kobold", index = 1, count = 12 },
            },
            sourceStep = 31,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 400,
            text = "Turn in The Princess Trapped.",
            route = {
                { mapID = 1417, x = 0.8431000000000001, y = 0.30920000000000003, label = "The Princess Trapped", offMapText = "Travel to The Princess Trapped." },
            },
            dependsOn = { "objective-642-1-drywhisker-kobold" },
            id = "turnin-642-the-princess-trapped",
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
                quest = { id = 642, state = "completed" },
            },
            sourceStep = 32,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 410,
            route = {
                { mapID = 1417, x = 0.8431000000000001, y = 0.30920000000000003, label = "Stones of Binding", offMapText = "Travel to Stones of Binding." },
            },
            text = "Accept Stones of Binding.",
            id = "accept-651-stones-of-binding",
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
                quest = { id = 651, state = "activeOrCompleted" },
            },
            sourceStep = 32,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 642 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-651-2-cresting-key",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            text = "Collect 1 Cresting Key.",
            complete = {
                questObjective = { id = 651, index = 2, text = "Cresting Key", count = 1 },
            },
            route = {
                { mapID = 1417, x = 0.6675, y = 0.2975, label = "Cresting Key", offMapText = "Travel to Cresting Key." },
            },
            sourceStep = 33,
            priority = 420,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 642 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-651-stones-of-binding" },
        },
        {
            id = "objective-651-3-thundering-key",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            text = "Collect 1 Thundering Key.",
            complete = {
                questObjective = { id = 651, index = 3, text = "Thundering Key", count = 1 },
            },
            route = {
                { mapID = 1417, x = 0.5206000000000001, y = 0.5069, label = "Thundering Key", offMapText = "Travel to Thundering Key." },
            },
            sourceStep = 34,
            priority = 430,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 642 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-651-stones-of-binding" },
        },
        {
            priority = 440,
            text = "Kill 4 Boulderfist Magus.",
            route = {
                { y = 0.724, mapID = 1417, label = "Boulderfist Magus", offMapText = "Travel to Boulderfist Magus.", x = 0.514 },
            },
            dependsOn = { "accept-678-call-to-arms" },
            id = "objective-678-2-boulderfist-magus",
            kind = "objective",
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
                questObjective = { id = 678, text = "Boulderfist Magus", index = 2, count = 4 },
            },
            sourceStep = 35,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 677 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 450,
            text = "Kill 10 Boulderfist Brute.",
            route = {
                { y = 0.724, mapID = 1417, label = "Boulderfist Brute", offMapText = "Travel to Boulderfist Brute.", x = 0.514 },
            },
            dependsOn = { "accept-678-call-to-arms" },
            id = "objective-678-1-boulderfist-brute",
            kind = "objective",
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
                questObjective = { id = 678, text = "Boulderfist Brute", index = 1, count = 10 },
            },
            sourceStep = 35,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 677 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-701-1-raptor-heart",
            kind = "objective",
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
            text = "Collect 12 Raptor Heart.",
            complete = {
                questObjective = { id = 701, index = 1, text = "Raptor Heart", count = 12 },
            },
            route = {
                { mapID = 1417, x = 0.474, y = 0.794, label = "Raptor Heart", offMapText = "Travel to Raptor Heart." },
            },
            sourceStep = 36,
            priority = 460,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 675 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-701-guile-of-the-raptor" },
        },
        {
            priority = 470,
            text = "Turn in Guile of the Raptor to Tor'gan.",
            route = {
                { y = 0.3629, mapID = 1417, label = "Tor'gan", offMapText = "Travel to Tor'gan in Arathi Highlands.", x = 0.7471 },
            },
            dependsOn = { "accept-701-guile-of-the-raptor", "objective-701-1-raptor-heart" },
            id = "turnin-701-guile-of-the-raptor",
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
                quest = { id = 701, state = "completed" },
            },
            sourceStep = 37,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 675 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 480,
            route = {
                { y = 0.3629, mapID = 1417, label = "Tor'gan", offMapText = "Travel to Tor'gan in Arathi Highlands.", x = 0.7471 },
            },
            text = "Accept Guile of the Raptor from Tor'gan.",
            id = "accept-702-guile-of-the-raptor",
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
                quest = { id = 702, state = "activeOrCompleted" },
            },
            sourceStep = 37,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 701 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 490,
            text = "Turn in Guile of the Raptor to Gor'mul.",
            route = {
                { y = 0.3401, mapID = 1417, label = "Gor'mul", offMapText = "Travel to Gor'mul in Arathi Highlands.", x = 0.7255 },
            },
            dependsOn = { "accept-702-guile-of-the-raptor" },
            id = "turnin-702-guile-of-the-raptor",
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
                quest = { id = 702, state = "completed" },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 701 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 500,
            route = {
                { y = 0.3401, mapID = 1417, label = "Gor'mul", offMapText = "Travel to Gor'mul in Arathi Highlands.", x = 0.7255 },
            },
            text = "Accept Guile of the Raptor from Gor'mul.",
            id = "accept-847-guile-of-the-raptor",
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
                quest = { id = 847, state = "activeOrCompleted" },
            },
            sourceStep = 39,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 702 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 510,
            text = "Turn in Call to Arms to Drum Fel.",
            route = {
                { y = 0.3391, mapID = 1417, label = "Drum Fel", offMapText = "Travel to Drum Fel in Arathi Highlands.", x = 0.7424 },
            },
            dependsOn = { "accept-678-call-to-arms", "objective-678-2-boulderfist-magus", "objective-678-1-boulderfist-brute" },
            id = "turnin-678-call-to-arms",
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
                quest = { id = 678, state = "completed" },
            },
            sourceStep = 40,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 677 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 520,
            text = "Turn in Guile of the Raptor to Tor'gan.",
            route = {
                { y = 0.3629, mapID = 1417, label = "Tor'gan", offMapText = "Travel to Tor'gan in Arathi Highlands.", x = 0.7471 },
            },
            dependsOn = { "accept-847-guile-of-the-raptor" },
            id = "turnin-847-guile-of-the-raptor",
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
                quest = { id = 847, state = "completed" },
            },
            sourceStep = 41,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 702 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-651-1-burning-key",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 30 },
                    },
                },
            },
            text = "Collect 1 Burning Key.",
            complete = {
                questObjective = { id = 651, index = 1, text = "Burning Key", count = 1 },
            },
            route = {
                { mapID = 1417, x = 0.2552, y = 0.3012, label = "Burning Key", offMapText = "Travel to Burning Key." },
            },
            sourceStep = 42,
            priority = 530,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 642 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-651-stones-of-binding" },
        },
        {
            priority = 540,
            text = "Turn in Stones of Binding.",
            route = {
                { y = 0.5737, mapID = 1417, label = "Stones of Binding", offMapText = "Travel to Stones of Binding.", x = 0.3619 },
            },
            dependsOn = {
                "accept-651-stones-of-binding",
                "objective-651-2-cresting-key",
                "objective-651-3-thundering-key",
                "objective-651-1-burning-key",
            },
            id = "turnin-651-stones-of-binding",
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
                quest = { id = 651, state = "completed" },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 642 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-663-land-ho",
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
            checkpointQuest = 663,
            priority = 550,
        },
        {
            priority = 560,
            route = {
                { mapID = 1417, x = 0.3178, y = 0.8270000000000001, label = "Lolo the Lookout", offMapText = "Travel to Lolo the Lookout in Arathi Highlands." },
            },
            text = "Accept Land Ho! from Lolo the Lookout.",
            id = "accept-663-land-ho",
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
                quest = { id = 663, state = "activeOrCompleted" },
            },
            sourceStep = 44,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 570,
            text = "Turn in Land Ho! to Shakes O'Breen.",
            route = {
                { y = 0.8138, mapID = 1417, label = "Shakes O'Breen", offMapText = "Travel to Shakes O'Breen in Arathi Highlands.", x = 0.3228 },
            },
            dependsOn = { "accept-663-land-ho" },
            id = "turnin-663-land-ho",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 663, state = "completed" },
            },
            sourceStep = 45,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 580,
            route = {
                { y = 0.8147, mapID = 1417, label = "First Mate Nilzlix", offMapText = "Travel to First Mate Nilzlix in Arathi Highlands.", x = 0.3277 },
            },
            text = "Accept Deep Sea Salvage from First Mate Nilzlix.",
            id = "accept-662-deep-sea-salvage",
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
                quest = { id = 662, state = "activeOrCompleted" },
            },
            sourceStep = 46,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 663 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 590,
            route = {
                { y = 0.8079, mapID = 1417, label = "Captain Steelgut", offMapText = "Travel to Captain Steelgut in Arathi Highlands.", x = 0.34 },
            },
            text = "Accept Drowned Sorrows from Captain Steelgut.",
            id = "accept-664-drowned-sorrows",
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
                quest = { id = 664, state = "activeOrCompleted" },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 663 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 600,
            route = {
                { y = 0.8055, mapID = 1417, label = "Professor Phizzlethorpe", offMapText = "Travel to Professor Phizzlethorpe in Arathi Highlands.", x = 0.3387 },
            },
            text = "Accept Sunken Treasure from Professor Phizzlethorpe.",
            id = "accept-665-sunken-treasure",
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
                quest = { id = 665, state = "activeOrCompleted" },
            },
            sourceStep = 48,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 663 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 610,
            text = "Turn in Sunken Treasure to Doctor Draxlegauge.",
            route = {
                { y = 0.8045, mapID = 1417, label = "Doctor Draxlegauge", offMapText = "Travel to Doctor Draxlegauge in Arathi Highlands.", x = 0.3386 },
            },
            dependsOn = { "accept-665-sunken-treasure" },
            id = "turnin-665-sunken-treasure",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 665, state = "completed" },
            },
            sourceStep = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 663 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 620,
            route = {
                { y = 0.8045, mapID = 1417, label = "Doctor Draxlegauge", offMapText = "Travel to Doctor Draxlegauge in Arathi Highlands.", x = 0.3386 },
            },
            text = "Accept Sunken Treasure from Doctor Draxlegauge.",
            id = "accept-666-sunken-treasure",
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
                quest = { id = 666, state = "activeOrCompleted" },
            },
            sourceStep = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 665 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 630,
            text = "Collect 1 Maiden's Folly Log.",
            route = {
                { y = 0.851, mapID = 1417, label = "Elixir of Water Breathing", offMapText = "Travel to Elixir of Water Breathing.", x = 0.2341 },
            },
            dependsOn = { "accept-662-deep-sea-salvage" },
            id = "objective-662-2-elixir-of-water-breathing",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                questObjective = { id = 662, text = "Elixir of Water Breathing", index = 2, count = 1 },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 663 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 640,
            text = "Collect 1 Maiden's Folly Charts.",
            route = {
                { y = 0.8451, mapID = 1417, label = "Elixir of Water Breathing", offMapText = "Travel to Elixir of Water Breathing.", x = 0.2304 },
            },
            dependsOn = { "accept-662-deep-sea-salvage" },
            id = "objective-662-1-elixir-of-water-breathing",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                questObjective = { id = 662, text = "Elixir of Water Breathing", index = 1, count = 1 },
            },
            sourceStep = 52,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 663 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 650,
            text = "Collect 1 Spirit of Silverpine Charts.",
            route = {
                { y = 0.856, mapID = 1417, label = "Elixir of Water Breathing", offMapText = "Travel to Elixir of Water Breathing.", x = 0.2045 },
            },
            dependsOn = { "accept-662-deep-sea-salvage" },
            id = "objective-662-3-elixir-of-water-breathing",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                questObjective = { id = 662, text = "Elixir of Water Breathing", index = 3, count = 1 },
            },
            sourceStep = 53,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 663 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 660,
            text = "Collect 1 Spirit of Silverpine Log.",
            route = {
                { y = 0.851, mapID = 1417, label = "Elixir of Water Breathing", offMapText = "Travel to Elixir of Water Breathing.", x = 0.2065 },
            },
            dependsOn = { "accept-662-deep-sea-salvage" },
            id = "objective-662-4-elixir-of-water-breathing",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                questObjective = { id = 662, text = "Elixir of Water Breathing", index = 4, count = 1 },
            },
            sourceStep = 54,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 663 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-666-1-elven-gem",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            text = "Collect 10 Elven Gem.",
            complete = {
                questObjective = { id = 666, index = 1, text = "Elven Gem", count = 10 },
            },
            route = {
                { mapID = 1417, x = 0.23600000000000002, y = 0.8740000000000001, label = "Elven Gem", offMapText = "Travel to Elven Gem." },
            },
            sourceStep = 55,
            priority = 670,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 665 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-666-sunken-treasure" },
        },
        {
            id = "objective-664-2-daggerspine-sorceress",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            text = "Kill 3 Daggerspine Sorceress.",
            complete = {
                questObjective = { id = 664, index = 2, text = "Daggerspine Sorceress", count = 3 },
            },
            route = {
                { mapID = 1417, x = 0.192, y = 0.84, label = "Daggerspine Sorceress", offMapText = "Travel to Daggerspine Sorceress." },
            },
            sourceStep = 57,
            priority = 680,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 663 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-664-drowned-sorrows" },
        },
        {
            id = "objective-664-1-daggerspine-raider",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            text = "Kill 10 Daggerspine Raider.",
            complete = {
                questObjective = { id = 664, index = 1, text = "Daggerspine Raider", count = 10 },
            },
            route = {
                { mapID = 1417, x = 0.192, y = 0.84, label = "Daggerspine Raider", offMapText = "Travel to Daggerspine Raider." },
            },
            sourceStep = 57,
            priority = 690,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 663 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-664-drowned-sorrows" },
        },
        {
            priority = 700,
            text = "Turn in Deep Sea Salvage to First Mate Nilzlix.",
            route = {
                { y = 0.8148, mapID = 1417, label = "First Mate Nilzlix", offMapText = "Travel to First Mate Nilzlix in Arathi Highlands.", x = 0.328 },
            },
            dependsOn = {
                "accept-662-deep-sea-salvage",
                "objective-662-2-elixir-of-water-breathing",
                "objective-662-1-elixir-of-water-breathing",
                "objective-662-3-elixir-of-water-breathing",
                "objective-662-4-elixir-of-water-breathing",
            },
            id = "turnin-662-deep-sea-salvage",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 662, state = "completed" },
            },
            sourceStep = 58,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 663 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 710,
            text = "Turn in Drowned Sorrows to Captain Steelgut.",
            route = {
                { y = 0.8079, mapID = 1417, label = "Captain Steelgut", offMapText = "Travel to Captain Steelgut in Arathi Highlands.", x = 0.34 },
            },
            dependsOn = { "accept-664-drowned-sorrows", "objective-664-2-daggerspine-sorceress", "objective-664-1-daggerspine-raider" },
            id = "turnin-664-drowned-sorrows",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 664, state = "completed" },
            },
            sourceStep = 59,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 663 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 720,
            text = "Turn in Sunken Treasure to Doctor Draxlegauge.",
            route = {
                { y = 0.8045, mapID = 1417, label = "Doctor Draxlegauge", offMapText = "Travel to Doctor Draxlegauge in Arathi Highlands.", x = 0.3385 },
            },
            dependsOn = { "accept-666-sunken-treasure", "objective-666-1-elven-gem" },
            id = "turnin-666-sunken-treasure",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 666, state = "completed" },
            },
            sourceStep = 60,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 665 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 730,
            route = {
                { y = 0.8045, mapID = 1417, label = "Doctor Draxlegauge", offMapText = "Travel to Doctor Draxlegauge in Arathi Highlands.", x = 0.3385 },
            },
            text = "Accept Sunken Treasure from Doctor Draxlegauge.",
            id = "accept-668-sunken-treasure",
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
                quest = { id = 668, state = "activeOrCompleted" },
            },
            sourceStep = 60,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 666 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 740,
            text = "Turn in Sunken Treasure to Shakes O'Breen.",
            route = {
                { y = 0.8138, mapID = 1417, label = "Shakes O'Breen", offMapText = "Travel to Shakes O'Breen in Arathi Highlands.", x = 0.3229 },
            },
            dependsOn = { "accept-668-sunken-treasure" },
            id = "turnin-668-sunken-treasure",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 35 },
                    },
                },
            },
            complete = {
                quest = { id = 668, state = "completed" },
            },
            sourceStep = 61,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 666 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 750,
            route = {
                { y = 0.8138, mapID = 1417, label = "Shakes O'Breen", offMapText = "Travel to Shakes O'Breen in Arathi Highlands.", x = 0.3229 },
            },
            text = "Accept Sunken Treasure from Shakes O'Breen.",
            id = "accept-669-sunken-treasure",
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
                quest = { id = 669, state = "activeOrCompleted" },
            },
            sourceStep = 61,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 668 },
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
