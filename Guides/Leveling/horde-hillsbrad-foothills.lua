local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Hillsbrad Foothills",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-hillsbrad-foothills",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 22 },
            },
        },
    },
    goals = {
        {
            id = "level-before-turnin-5644-devouring-plague",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 5 },
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
            checkpointQuest = 5644,
            alternativeQuests = { 5646, 5679 },
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.1712, mapID = 1458, label = "Aelthalyste", offMapText = "Travel to Aelthalyste in Undercity.", x = 0.4926 },
            },
            text = "Turn in Devouring Plague to Aelthalyste.",
            id = "turnin-5644-devouring-plague",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 5 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 5644, state = "completed" },
            },
            sourceStep = 2,
            requiredQuests = {},
            alternativeQuests = { 5646, 5679 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-turnin-264-until-death-do-us-part",
            kind = "note",
            text = "Reach level 12 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 12 },
            },
            requiredLevel = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 264,
            priority = 30,
        },
        {
            priority = 40,
            route = {
                { mapID = 1421, x = 0.44179999999999997, y = 0.4267, label = "Until Death Do Us Part", offMapText = "Travel to Until Death Do Us Part." },
            },
            text = "Turn in Until Death Do Us Part.",
            id = "turnin-264-until-death-do-us-part",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 12 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 264, state = "completed" },
            },
            sourceStep = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 50,
            route = {
                { y = 0.4199, mapID = 1421, label = "Mura Runetotem", offMapText = "Travel to Mura Runetotem in Silverpine Forest.", x = 0.4291 },
            },
            text = "Turn in Mura Runetotem to Mura Runetotem.",
            id = "turnin-3301-mura-runetotem",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 10 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 3301, state = "completed" },
            },
            sourceStep = 5,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 880 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-493-journey-to-hillsbrad-foothills",
            kind = "note",
            text = "Reach level 19 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 19 },
            },
            requiredLevel = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 493,
            priority = 60,
        },
        {
            priority = 70,
            route = {
                { y = 0.4087, mapID = 1421, label = "Apothecary Renferrel", offMapText = "Travel to Apothecary Renferrel in Silverpine Forest.", x = 0.428 },
            },
            text = "Accept Journey to Hillsbrad Foothills from Apothecary Renferrel.",
            id = "accept-493-journey-to-hillsbrad-foothills",
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
                quest = { id = 493, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 80,
            route = {
                { y = 0.474, mapID = 1424, label = "Deathstalker Lesh", offMapText = "Travel to Deathstalker Lesh in Hillsbrad Foothills.", x = 0.2078 },
            },
            text = "Accept Time To Strike from Deathstalker Lesh.",
            id = "accept-494-time-to-strike",
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
                quest = { id = 494, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 90,
            text = "Turn in Journey to Hillsbrad Foothills to Apothecary Lydon.",
            route = {
                { y = 0.1906, mapID = 1424, label = "Apothecary Lydon", offMapText = "Travel to Apothecary Lydon in Hillsbrad Foothills.", x = 0.6144 },
            },
            dependsOn = { "accept-493-journey-to-hillsbrad-foothills" },
            id = "turnin-493-journey-to-hillsbrad-foothills",
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
                quest = { id = 493, state = "completed" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 100,
            route = {
                { y = 0.1906, mapID = 1424, label = "Apothecary Lydon", offMapText = "Travel to Apothecary Lydon in Hillsbrad Foothills.", x = 0.6144 },
            },
            text = "Turn in Journey to Tarren Mill to Apothecary Lydon.",
            id = "turnin-1065-journey-to-tarren-mill",
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
                quest = { id = 1065, state = "completed" },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1064 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 110,
            route = {
                { y = 0.1906, mapID = 1424, label = "Apothecary Lydon", offMapText = "Travel to Apothecary Lydon in Hillsbrad Foothills.", x = 0.6144 },
            },
            text = "Accept Blood of Innocents from Apothecary Lydon.",
            id = "accept-1066-blood-of-innocents",
            kind = "accept",
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
                quest = { id = 1066, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1065 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 120,
            route = {
                { y = 0.1906, mapID = 1424, label = "Apothecary Lydon", offMapText = "Travel to Apothecary Lydon in Hillsbrad Foothills.", x = 0.6144 },
            },
            text = "Accept Elixir of Suffering from Apothecary Lydon.",
            id = "accept-496-elixir-of-suffering",
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
                quest = { id = 496, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
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
            text = "Collect 10 Gray Bear Tongues and Creeper Ichor from spiders around Tarren Mill. Follow the quest log pin; the Ichor can take many kills to drop.",
            priority = 130,
            dependsOn = { "accept-496-elixir-of-suffering" },
            id = "objective-496-elixir-of-suffering",
            kind = "objective",
            useClientPin = true,
            complete = {
                quest = { id = 496, state = "complete" },
            },
            requiredQuests = {},
            useClientText = false,
        },
        {
            id = "level-before-accept-501-elixir-of-pain",
            kind = "note",
            text = "Reach level 21 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 21 },
            },
            requiredLevel = 21,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 501,
            priority = 140,
        },
        {
            priority = 150,
            route = {
                { y = 0.1906, mapID = 1424, label = "Apothecary Lydon", offMapText = "Travel to Apothecary Lydon in Hillsbrad Foothills.", x = 0.6144 },
            },
            text = "Accept Elixir of Pain from Apothecary Lydon.",
            id = "accept-501-elixir-of-pain",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 21 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 501, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-turnin-2479-hinott-s-assistance",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 4 },
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
            checkpointQuest = 2479,
            priority = 160,
        },
        {
            priority = 170,
            route = {
                { y = 0.1919, mapID = 1424, label = "Serge Hinott", offMapText = "Travel to Serge Hinott in Hillsbrad Foothills.", x = 0.6163 },
            },
            text = "Turn in Hinott's Assistance to Serge Hinott.",
            id = "turnin-2479-hinott-s-assistance",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 4 },
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
                quest = { id = 2479, state = "completed" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2478 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 180,
            route = {
                { y = 0.1919, mapID = 1424, label = "Serge Hinott", offMapText = "Travel to Serge Hinott in Hillsbrad Foothills.", x = 0.6163 },
            },
            text = "Accept Hinott's Assistance from Serge Hinott.",
            id = "accept-2480-hinott-s-assistance",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 4 },
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
                quest = { id = 2480, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2479 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 190,
            dependsOn = { "accept-2480-hinott-s-assistance" },
            id = "objective-2480-reviewed-mechanics",
            conditions = {
                all = {
                    {
                        class = { 4 },
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
            useClientPin = true,
            classAction = "objective-2480-reviewed-mechanics",
        },
        {
            priority = 200,
            text = "Turn in Hinott's Assistance to Serge Hinott.",
            route = {
                { y = 0.1897, mapID = 1424, label = "Serge Hinott", offMapText = "Travel to Serge Hinott in Hillsbrad Foothills.", x = 0.6158 },
            },
            dependsOn = { "accept-2480-hinott-s-assistance", "objective-2480-reviewed-mechanics" },
            id = "turnin-2480-hinott-s-assistance",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 4 },
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
                quest = { id = 2480, state = "completed" },
            },
            sourceStep = 13,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2479 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 210,
            text = "Turn in Time To Strike to High Executor Darthalia.",
            route = {
                { y = 0.2046, mapID = 1424, label = "High Executor Darthalia", offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.", x = 0.6233 },
            },
            dependsOn = { "accept-494-time-to-strike" },
            id = "turnin-494-time-to-strike",
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
                quest = { id = 494, state = "completed" },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 220,
            route = {
                { y = 0.2046, mapID = 1424, label = "High Executor Darthalia", offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.", x = 0.6233 },
            },
            text = "Accept Battle of Hillsbrad from High Executor Darthalia.",
            id = "accept-527-battle-of-hillsbrad",
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
                quest = { id = 527, state = "activeOrCompleted" },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 230,
            route = {
                { y = 0.1969, mapID = 1424, label = "Dangerous!", offMapText = "Travel to Dangerous!.", x = 0.6255 },
            },
            text = "Accept Dangerous!.",
            id = "accept-567-dangerous",
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
                quest = { id = 567, state = "activeOrCompleted" },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 240,
            route = {
                { y = 0.2074, mapID = 1424, label = "WANTED: Syndicate Personnel", offMapText = "Travel to WANTED: Syndicate Personnel.", x = 0.6262 },
            },
            text = "Accept WANTED: Syndicate Personnel.",
            id = "accept-549-wanted-syndicate-personnel",
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
                quest = { id = 549, state = "activeOrCompleted" },
            },
            sourceStep = 18,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 250,
            route = {
                { y = 0.2066, mapID = 1424, label = "Krusk", offMapText = "Travel to Krusk in Hillsbrad Foothills.", x = 0.6323 },
            },
            text = "Accept The Rescue from Krusk.",
            id = "accept-498-the-rescue",
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
                quest = { id = 498, state = "activeOrCompleted" },
            },
            sourceStep = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-1536-1-empty-red-waterskin",
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
            checkpointQuest = 1536,
            priority = 260,
        },
        {
            priority = 270,
            route = {
                { y = 0.2075, mapID = 1424, label = "Empty Red Waterskin", offMapText = "Travel to Empty Red Waterskin.", x = 0.6215 },
            },
            text = "Collect 1 Filled Red Waterskin.",
            id = "objective-1536-1-empty-red-waterskin",
            kind = "objective",
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
                questObjective = { id = 1536, text = "Empty Red Waterskin", index = 1, count = 1 },
            },
            sourceStep = 20,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1535 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 280,
            text = "Kill Jailor Marlgen as he patrols Durnholde Keep and loot the Burnished Gold Key.",
            route = {
                { mapID = 1424, x = 0.7879999999999999, y = 0.42, label = "Jailor Marlgen", offMapText = "Travel to Jailor Marlgen." },
            },
            dependsOn = { "accept-498-the-rescue" },
            id = "objective-498-1-jailor-marlgen",
            kind = "note",
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
                any = {
                    {
                        all = {
                            {
                                item = { name = "Burnished Gold Key", minCount = 1 },
                            },
                        },
                    },
                    {
                        quest = { id = 498, state = "complete" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 498,
            instructionOnly = true,
            rememberPreparation = 498,
        },
        {
            priority = 290,
            text = "Use the Burnished Gold Key on Tog'thar's locked ball and chain to free him.",
            route = {
                { mapID = 1424, x = 0.7979, y = 0.39659999999999995, label = "Tog'thar", offMapText = "Travel to Tog'thar." },
            },
            dependsOn = { "accept-498-the-rescue" },
            id = "objective-498-2-locked-ball-and-chain",
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
                questObjective = { id = 498, index = 2, count = 1 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-1066-1-vial-of-innocent-blood",
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
            text = "Collect 5 Vial of Innocent Blood.",
            complete = {
                questObjective = { id = 1066, index = 1, text = "Vial of Innocent Blood", count = 5 },
            },
            route = {
                { mapID = 1424, x = 0.784, y = 0.434, label = "Vial of Innocent Blood", offMapText = "Travel to Vial of Innocent Blood." },
            },
            sourceStep = 28,
            priority = 300,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1065 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1066-blood-of-innocents" },
        },
        {
            priority = 310,
            text = "Kill Jailor Eston as he patrols Durnholde Keep and loot the Dull Iron Key.",
            route = {
                { mapID = 1424, x = 0.7959999999999999, y = 0.4183, label = "Jailor Eston", offMapText = "Travel to Jailor Eston." },
            },
            dependsOn = { "accept-498-the-rescue" },
            id = "objective-498-1-jailor-eston",
            kind = "note",
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
                any = {
                    {
                        all = {
                            {
                                item = { name = "Dull Iron Key", minCount = 1 },
                            },
                        },
                    },
                    {
                        quest = { id = 498, state = "complete" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 498,
            instructionOnly = true,
            rememberPreparation = 498,
        },
        {
            id = "objective-549-1-syndicate-rogue",
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
            text = "Kill 10 Syndicate Rogue.",
            complete = {
                questObjective = { id = 549, index = 1, text = "Syndicate Rogue", count = 10 },
            },
            route = {
                { mapID = 1424, x = 0.768, y = 0.43, label = "Syndicate Rogue", offMapText = "Travel to Syndicate Rogue." },
            },
            sourceStep = 29,
            priority = 320,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-549-wanted-syndicate-personnel" },
        },
        {
            priority = 330,
            text = "Enter the building and use the Dull Iron Key on Drull's locked ball and chain to free him.",
            route = {
                { mapID = 1424, x = 0.7533, y = 0.415, label = "Drull", offMapText = "Travel to Drull." },
            },
            dependsOn = { "accept-498-the-rescue" },
            id = "objective-498-1-locked-ball-and-chain",
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
                questObjective = { id = 498, index = 1, count = 1 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-549-2-syndicate-watchman",
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
            text = "Kill 10 Syndicate Watchman.",
            complete = {
                questObjective = { id = 549, index = 2, text = "Syndicate Watchman", count = 10 },
            },
            route = {
                { mapID = 1424, x = 0.768, y = 0.43, label = "Syndicate Watchman", offMapText = "Travel to Syndicate Watchman." },
            },
            sourceStep = 29,
            priority = 340,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-549-wanted-syndicate-personnel" },
        },
        {
            id = "objective-496-2-creeper-ichor",
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
            text = "Collect 1 Creeper Ichor.",
            complete = {
                questObjective = { id = 496, index = 2, text = "Creeper Ichor", count = 1 },
            },
            route = {
                { mapID = 1424, x = 0.628, y = 0.342, label = "Creeper Ichor", offMapText = "Travel to Creeper Ichor." },
            },
            sourceStep = 31,
            priority = 350,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-496-elixir-of-suffering" },
        },
        {
            id = "objective-496-1-gray-bear-tongue",
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
            text = "Collect 10 Gray Bear Tongue.",
            complete = {
                questObjective = { id = 496, index = 1, text = "Gray Bear Tongue", count = 10 },
            },
            route = {
                { mapID = 1424, x = 0.628, y = 0.342, label = "Gray Bear Tongue", offMapText = "Travel to Gray Bear Tongue." },
            },
            sourceStep = 32,
            priority = 360,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-496-elixir-of-suffering" },
        },
        {
            priority = 370,
            text = "Turn in Blood of Innocents to Apothecary Lydon.",
            route = {
                { y = 0.1906, mapID = 1424, label = "Apothecary Lydon", offMapText = "Travel to Apothecary Lydon in Hillsbrad Foothills.", x = 0.6144 },
            },
            dependsOn = { "accept-1066-blood-of-innocents", "objective-1066-1-vial-of-innocent-blood" },
            id = "turnin-1066-blood-of-innocents",
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
                quest = { id = 1066, state = "completed" },
            },
            sourceStep = 34,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1065 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 380,
            text = "Turn in Elixir of Suffering to Apothecary Lydon.",
            route = {
                { y = 0.1906, mapID = 1424, label = "Apothecary Lydon", offMapText = "Travel to Apothecary Lydon in Hillsbrad Foothills.", x = 0.6144 },
            },
            dependsOn = {
                "accept-496-elixir-of-suffering",
                "objective-496-elixir-of-suffering",
                "objective-496-2-creeper-ichor",
                "objective-496-1-gray-bear-tongue",
            },
            id = "turnin-496-elixir-of-suffering",
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
                quest = { id = 496, state = "completed" },
            },
            sourceStep = 34,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Accept Elixir of Suffering from Apothecary Lydon.",
            priority = 390,
            route = {
                { y = 0.1906, mapID = 1424, label = "Apothecary Lydon", offMapText = "Travel to Apothecary Lydon in Hillsbrad Foothills.", x = 0.6144 },
            },
            dependsOn = { "turnin-496-elixir-of-suffering" },
            id = "accept-499-elixir-of-suffering",
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
                quest = { id = 499, state = "activeOrCompleted" },
            },
            sourceStep = 34,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 496 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 400,
            route = {
                { y = 0.1906, mapID = 1424, label = "Apothecary Lydon", offMapText = "Travel to Apothecary Lydon in Hillsbrad Foothills.", x = 0.6144 },
            },
            text = "Accept Return to Thunder Bluff from Apothecary Lydon.",
            id = "accept-1067-return-to-thunder-bluff",
            kind = "accept",
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
                quest = { id = 1067, state = "activeOrCompleted" },
            },
            sourceStep = 34,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1066 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 410,
            text = "Turn in Elixir of Suffering to Umpi.",
            route = {
                { y = 0.192, mapID = 1424, label = "Umpi", offMapText = "Travel to Umpi in Hillsbrad Foothills.", x = 0.6152 },
            },
            dependsOn = { "accept-499-elixir-of-suffering" },
            id = "turnin-499-elixir-of-suffering",
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
                quest = { id = 499, state = "completed" },
            },
            sourceStep = 35,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 496 },
                    conditions = { faction = "Horde" },
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 420,
            text = "Turn in WANTED: Syndicate Personnel to High Executor Darthalia.",
            route = {
                { y = 0.2046, mapID = 1424, label = "High Executor Darthalia", offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.", x = 0.6233 },
            },
            dependsOn = {
                "accept-549-wanted-syndicate-personnel",
                "objective-549-1-syndicate-rogue",
                "objective-549-2-syndicate-watchman",
            },
            id = "turnin-549-wanted-syndicate-personnel",
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
                quest = { id = 549, state = "completed" },
            },
            sourceStep = 36,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 430,
            text = "Turn in The Rescue to Krusk.",
            route = {
                { y = 0.206, mapID = 1424, label = "Krusk", offMapText = "Travel to Krusk in Hillsbrad Foothills.", x = 0.6323 },
            },
            dependsOn = {
                "accept-498-the-rescue",
                "objective-498-1-jailor-marlgen",
                "objective-498-2-locked-ball-and-chain",
                "objective-498-1-jailor-eston",
                "objective-498-1-locked-ball-and-chain",
            },
            id = "turnin-498-the-rescue",
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
                quest = { id = 498, state = "completed" },
            },
            sourceStep = 37,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 440,
            text = "Kill Farmer Getz.",
            route = {
                { y = 0.3944, mapID = 1424, label = "Farmer Getz", offMapText = "Travel to Farmer Getz.", x = 0.3674 },
            },
            dependsOn = { "accept-527-battle-of-hillsbrad" },
            id = "objective-527-4-farmer-getz",
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
                questObjective = { id = 527, text = "Farmer Getz", index = 4 },
            },
            sourceStep = 38,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 450,
            text = "Kill Farmer Ray.",
            route = {
                { y = 0.3542, mapID = 1424, label = "Farmer Ray", offMapText = "Travel to Farmer Ray.", x = 0.3368 },
            },
            dependsOn = { "accept-527-battle-of-hillsbrad" },
            id = "objective-527-3-farmer-ray",
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
                questObjective = { id = 527, text = "Farmer Ray", index = 3 },
            },
            sourceStep = 39,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-527-1-hillsbrad-farmer",
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
            text = "Kill 6 Hillsbrad Farmer.",
            complete = {
                questObjective = { id = 527, index = 1, text = "Hillsbrad Farmer", count = 6 },
            },
            route = {
                { mapID = 1424, x = 0.33399999999999996, y = 0.408, label = "Hillsbrad Farmer", offMapText = "Travel to Hillsbrad Farmer." },
            },
            sourceStep = 40,
            priority = 460,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-527-battle-of-hillsbrad" },
        },
        {
            id = "objective-527-2-hillsbrad-farmhand",
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
            text = "Kill 6 Hillsbrad Farmhand.",
            complete = {
                questObjective = { id = 527, index = 2, text = "Hillsbrad Farmhand", count = 6 },
            },
            route = {
                { mapID = 1424, x = 0.33399999999999996, y = 0.408, label = "Hillsbrad Farmhand", offMapText = "Travel to Hillsbrad Farmhand." },
            },
            sourceStep = 40,
            priority = 470,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-527-battle-of-hillsbrad" },
        },
        {
            id = "objective-501-1-mountain-lion-blood",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 21 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 10 Mountain Lion Blood.",
            complete = {
                questObjective = { id = 501, index = 1, text = "Mountain Lion Blood", count = 10 },
            },
            route = {
                { mapID = 1424, x = 0.418, y = 0.376, label = "Mountain Lion Blood", offMapText = "Travel to Mountain Lion Blood." },
            },
            sourceStep = 41,
            priority = 480,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-501-elixir-of-pain" },
        },
        {
            priority = 490,
            text = "Turn in Elixir of Pain to Apothecary Lydon.",
            route = {
                { y = 0.1906, mapID = 1424, label = "Apothecary Lydon", offMapText = "Travel to Apothecary Lydon in Hillsbrad Foothills.", x = 0.6144 },
            },
            dependsOn = { "accept-501-elixir-of-pain", "objective-501-1-mountain-lion-blood" },
            id = "turnin-501-elixir-of-pain",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 21 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 501, state = "completed" },
            },
            sourceStep = 42,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 500,
            route = {
                { y = 0.1906, mapID = 1424, label = "Apothecary Lydon", offMapText = "Travel to Apothecary Lydon in Hillsbrad Foothills.", x = 0.6144 },
            },
            text = "Accept Elixir of Pain from Apothecary Lydon.",
            id = "accept-502-elixir-of-pain",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 21 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 502, state = "activeOrCompleted" },
            },
            sourceStep = 42,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 501 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 510,
            text = "Turn in Battle of Hillsbrad to High Executor Darthalia.",
            route = {
                { y = 0.2045, mapID = 1424, label = "High Executor Darthalia", offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.", x = 0.6233 },
            },
            dependsOn = {
                "accept-527-battle-of-hillsbrad",
                "objective-527-4-farmer-getz",
                "objective-527-3-farmer-ray",
                "objective-527-1-hillsbrad-farmer",
                "objective-527-2-hillsbrad-farmhand",
            },
            id = "turnin-527-battle-of-hillsbrad",
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
                quest = { id = 527, state = "completed" },
            },
            sourceStep = 43,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 520,
            route = {
                { y = 0.2045, mapID = 1424, label = "High Executor Darthalia", offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.", x = 0.6233 },
            },
            text = "Accept Battle of Hillsbrad from High Executor Darthalia.",
            id = "accept-528-battle-of-hillsbrad",
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
                quest = { id = 528, state = "activeOrCompleted" },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 527 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 530,
            route = {
                { y = 0.1968, mapID = 1424, label = "Deathguard Samsa", offMapText = "Travel to Deathguard Samsa in Hillsbrad Foothills.", x = 0.6213 },
            },
            text = "Accept Souvenirs of Death from Deathguard Samsa.",
            id = "accept-546-souvenirs-of-death",
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
                quest = { id = 546, state = "activeOrCompleted" },
            },
            sourceStep = 44,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 527 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 540,
            text = "Turn in Elixir of Pain to Stanley.",
            route = {
                { y = 0.3532, mapID = 1424, label = "Stanley", offMapText = "Travel to Stanley in Hillsbrad Foothills.", x = 0.3266 },
            },
            dependsOn = { "accept-502-elixir-of-pain" },
            id = "turnin-502-elixir-of-pain",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 21 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 502, state = "completed" },
            },
            sourceStep = 45,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 501 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 550,
            text = "Kill Farmer Kalaba.",
            route = {
                { y = 0.458, mapID = 1424, label = "Farmer Kalaba", offMapText = "Travel to Farmer Kalaba.", x = 0.344 },
            },
            dependsOn = { "accept-567-dangerous" },
            id = "objective-567-4-farmer-kalaba",
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
                questObjective = { id = 567, text = "Farmer Kalaba", index = 4 },
            },
            sourceStep = 46,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-567-2-citizen-wilkes",
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
            text = "Kill Citizen Wilkes.",
            complete = {
                questObjective = { id = 567, index = 2, text = "Citizen Wilkes" },
            },
            sourceStep = 47,
            priority = 560,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-567-dangerous" },
        },
        {
            id = "objective-528-1-hillsbrad-peasant",
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
            text = "Kill 15 Hillsbrad Peasant.",
            complete = {
                questObjective = { id = 528, index = 1, text = "Hillsbrad Peasant", count = 15 },
            },
            route = {
                { mapID = 1424, x = 0.33799999999999997, y = 0.46799999999999997, label = "Hillsbrad Peasant", offMapText = "Travel to Hillsbrad Peasant." },
            },
            sourceStep = 48,
            priority = 570,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 527 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-528-battle-of-hillsbrad" },
        },
        {
            priority = 580,
            text = "Turn in Battle of Hillsbrad to High Executor Darthalia.",
            route = {
                { y = 0.2045, mapID = 1424, label = "High Executor Darthalia", offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.", x = 0.6233 },
            },
            dependsOn = { "accept-528-battle-of-hillsbrad", "objective-528-1-hillsbrad-peasant" },
            id = "turnin-528-battle-of-hillsbrad",
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
                quest = { id = 528, state = "completed" },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 527 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 590,
            route = {
                { y = 0.2045, mapID = 1424, label = "High Executor Darthalia", offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.", x = 0.6233 },
            },
            text = "Accept Battle of Hillsbrad from High Executor Darthalia.",
            id = "accept-529-battle-of-hillsbrad",
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
                quest = { id = 529, state = "activeOrCompleted" },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 528 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-529-3-shipment-of-iron",
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
            text = "Collect 1 Shipment of Iron.",
            complete = {
                questObjective = { id = 529, index = 3, text = "Shipment of Iron", count = 1 },
            },
            route = {
                { mapID = 1424, x = 0.3201, y = 0.4545, label = "Shipment of Iron", offMapText = "Travel to Shipment of Iron." },
            },
            sourceStep = 52,
            priority = 600,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 528 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-529-battle-of-hillsbrad" },
        },
        {
            id = "objective-529-1-blacksmith-verringtan",
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
            text = "Kill Blacksmith Verringtan.",
            complete = {
                questObjective = { id = 529, index = 1, text = "Blacksmith Verringtan" },
            },
            route = {
                { mapID = 1424, x = 0.32409999999999994, y = 0.4481, label = "Blacksmith Verringtan", offMapText = "Travel to Blacksmith Verringtan." },
            },
            sourceStep = 53,
            priority = 610,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 528 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-529-battle-of-hillsbrad" },
        },
        {
            id = "objective-529-2-hillsbrad-apprentice-blacksmith",
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
            text = "Kill 4 Hillsbrad Apprentice Blacksmith.",
            complete = {
                questObjective = { id = 529, index = 2, text = "Hillsbrad Apprentice Blacksmith", count = 4 },
            },
            route = {
                { mapID = 1424, x = 0.32409999999999994, y = 0.4481, label = "Hillsbrad Apprentice Blacksmith", offMapText = "Travel to Hillsbrad Apprentice Blacksmith." },
            },
            sourceStep = 54,
            priority = 620,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 528 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-529-battle-of-hillsbrad" },
        },
        {
            id = "level-before-objective-30-1-half-pendant-of-aquatic-agility",
            kind = "note",
            text = "Reach level 16 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                level = { min = 16 },
            },
            requiredLevel = 16,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 30,
            priority = 630,
        },
        {
            priority = 640,
            route = {
                { y = 0.4142, mapID = 1450, label = "Half Pendant of Aquatic Agility", offMapText = "Travel to Half Pendant of Aquatic Agility.", x = 0.3592 },
            },
            text = "Collect 1 Pendant of the Sea Lion.",
            id = "objective-30-1-half-pendant-of-aquatic-agility",
            kind = "objective",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                questObjective = { id = 30, text = "Half Pendant of Aquatic Agility", index = 1, count = 1 },
            },
            sourceStep = 66,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 28 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 650,
            text = "Turn in Trial of the Sea Lion to Dendrite Starblaze.",
            route = {
                { y = 0.3064, mapID = 1450, label = "Dendrite Starblaze", offMapText = "Travel to Dendrite Starblaze in Moonglade.", x = 0.5621 },
            },
            dependsOn = { "objective-30-1-half-pendant-of-aquatic-agility" },
            id = "turnin-30-trial-of-the-sea-lion",
            kind = "turnin",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 30, state = "completed" },
            },
            sourceStep = 67,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 28 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 660,
            route = {
                { y = 0.3064, mapID = 1450, label = "Dendrite Starblaze", offMapText = "Travel to Dendrite Starblaze in Moonglade.", x = 0.5621 },
            },
            text = "Accept Aquatic Form from Dendrite Starblaze.",
            id = "accept-31-aquatic-form",
            kind = "accept",
            conditions = {
                all = {
                    {
                        class = { 11 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 16 },
                    },
                    {
                        race = { 6 },
                    },
                },
            },
            complete = {
                quest = { id = 31, state = "activeOrCompleted" },
            },
            sourceStep = 67,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 30 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-546-1-hillsbrad-human-skull",
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
            text = "Collect 30 Hillsbrad Human Skull.",
            complete = {
                questObjective = { id = 546, index = 1, text = "Hillsbrad Human Skull", count = 30 },
            },
            sourceStep = 69,
            priority = 670,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 527 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-546-souvenirs-of-death" },
        },
        {
            id = "level-before-woven-accept-95111-an-underrated-talent",
            kind = "note",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    { race = 5 },
                    {
                        race = { 5 },
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
            checkpointQuest = 95111,
            priority = 680,
        },
        {
            priority = 690,
            route = {
                { y = 0.41, mapID = 1421, label = "Trevan Rol", offMapText = "Travel to Trevan Rol.", x = 0.434 },
            },
            text = "After turning in A Moon-Kissed Blade, accept An Underrated Talent from Trevan Rol in The Sepulcher. He gives you a bundle of blacksmithing materials for Ott.",
            id = "woven-accept-95111-an-underrated-talent",
            kind = "accept",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 95111, state = "activeOrCompleted" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 700,
            route = {
                { y = 0.26, mapID = 1424, label = "Ott", offMapText = "Travel to Ott.", x = 0.604 },
            },
            text = "Turn in An Underrated Talent to Ott in Tarren Mill.",
            id = "woven-turnin-95111-an-underrated-talent",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 95111, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-95111-an-underrated-talent" },
        },
        {
            priority = 710,
            route = {
                { y = 0.26, mapID = 1424, label = "Ott", offMapText = "Travel to Ott.", x = 0.604 },
            },
            text = "Accept Ott's Masterwork from Ott in Tarren Mill.",
            id = "woven-accept-95125-ott-s-masterwork",
            kind = "accept",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 95125, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 95111 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 5 },
                            { class = 2 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 720,
            id = "woven-objective-95125-ott-s-masterwork",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            useClientPin = true,
            dependsOn = { "woven-accept-95125-ott-s-masterwork" },
            classAction = "objective-95125-reviewed-mechanics",
        },
        {
            priority = 730,
            route = {
                { y = 0.26, mapID = 1424, label = "Ott", offMapText = "Travel to Ott.", x = 0.604 },
            },
            text = "Turn in Ott's Masterwork to Ott in Tarren Mill.",
            id = "woven-turnin-95125-ott-s-masterwork",
            kind = "turnin",
            conditions = {
                all = {
                    { class = 2 },
                    {
                        class = { 2 },
                    },
                    { faction = "Horde" },
                    {
                        level = { min = 20 },
                    },
                    { race = 5 },
                    {
                        race = { 5 },
                    },
                },
            },
            complete = {
                quest = { id = 95125, state = "completed" },
            },
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 95111 },
                    conditions = {
                        all = {
                            { faction = "Horde" },
                            { race = 5 },
                            { class = 2 },
                        },
                    },
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "woven-accept-95125-ott-s-masterwork", "woven-objective-95125-ott-s-masterwork" },
        },
    },
    casualSpine = true,
    routeMode = "ordered",
})
