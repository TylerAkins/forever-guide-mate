local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "The Hinterlands",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-the-hinterlands",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 48 },
            },
        },
    },
    goals = {
        {
            priority = 10,
            route = {
                { y = 0.6286, mapID = 1454, label = "Red Power Crystal", offMapText = "Travel to Red Power Crystal.", x = 0.5569 },
            },
            text = "Collect 7 Red Power Crystal.",
            id = "collect-before-pickup-objective-4284-1-red-power-crystal",
            kind = "note",
            conditions = { faction = "Horde" },
            complete = {
                item = { name = "Red Power Crystal", minCount = 7 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            referenceQuest = 4284,
        },
        {
            id = "level-before-objective-7842-1-long-elegant-feather",
            kind = "note",
            text = "Reach level 44 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 44 },
            },
            requiredLevel = 44,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 7842,
            priority = 20,
        },
        {
            priority = 30,
            route = {
                { y = 0.6912, mapID = 1454, label = "Long Elegant Feather", offMapText = "Travel to Long Elegant Feather.", x = 0.4958 },
            },
            text = "Collect 10 Long Elegant Feather. Loot the starter item here, then use it to accept the quest.",
            id = "objective-7842-1-long-elegant-feather",
            kind = "note",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7842, state = "activeOrCompleted" },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7841 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 40,
            route = {
                { y = 0.3285, mapID = 1458, label = "Oran Snakewrithe", offMapText = "Travel to Oran Snakewrithe in Undercity.", x = 0.7306 },
            },
            text = "Accept Lines of Communication from Oran Snakewrithe.",
            id = "accept-2995-lines-of-communication",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2995, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 50,
            route = {
                { mapID = 1458, x = 0.5014, y = 0.6797, label = "Apothecary Zinge", offMapText = "Travel to Apothecary Zinge in Undercity." },
            },
            text = "Turn in Return to Apothecary Zinge to Apothecary Zinge.",
            id = "turnin-864-return-to-apothecary-zinge",
            kind = "turnin",
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
                quest = { id = 864, state = "completed" },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 654 },
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
                { y = 0.5772, mapID = 1425, label = "Venom Bottles", offMapText = "Travel to Venom Bottles.", x = 0.2299 },
            },
            text = "Accept Venom Bottles.",
            id = "accept-2933-venom-bottles",
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
                quest = { id = 2933, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 70,
            route = {
                { mapID = 1425, x = 0.2671, y = 0.48590000000000005, label = "Gilveradin Sunchaser", offMapText = "Travel to Gilveradin Sunchaser in The Hinterlands." },
            },
            text = "Turn in Ripple Recovery to Gilveradin Sunchaser.",
            id = "turnin-650-ripple-recovery",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 650, state = "completed" },
            },
            sourceStep = 9,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 649 },
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
                { mapID = 1425, x = 0.2671, y = 0.48590000000000005, label = "Gilveradin Sunchaser", offMapText = "Travel to Gilveradin Sunchaser in The Hinterlands." },
            },
            text = "Accept A Sticky Situation from Gilveradin Sunchaser.",
            id = "accept-77-a-sticky-situation",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 77, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 650 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-2641-1-violet-tragan",
            kind = "note",
            text = "Reach level 44 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 44 },
            },
            requiredLevel = 44,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 2641,
            priority = 90,
        },
        {
            id = "objective-2641-1-violet-tragan",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                },
            },
            text = "Collect 1 Violet Tragan.",
            complete = {
                questObjective = { id = 2641, index = 1, text = "Violet Tragan", count = 1 },
            },
            route = {
                { mapID = 1425, x = 0.4104, y = 0.5979, label = "Violet Tragan", offMapText = "Travel to Violet Tragan." },
            },
            sourceStep = 10,
            priority = 100,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2606 },
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
                { mapID = 1425, x = 0.7723, y = 0.8012, label = "Smith Slagtree", offMapText = "Travel to Smith Slagtree in The Hinterlands." },
            },
            text = "Accept Vilebranch Hooligans from Smith Slagtree.",
            id = "accept-7839-vilebranch-hooligans",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7839, state = "activeOrCompleted" },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 120,
            route = {
                { y = 0.8138, mapID = 1425, label = "Lard", offMapText = "Travel to Lard in The Hinterlands.", x = 0.7814 },
            },
            text = "Accept Lard Lost His Lunch from Lard.",
            id = "accept-7840-lard-lost-his-lunch",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7840, state = "activeOrCompleted" },
            },
            sourceStep = 12,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 130,
            route = {
                { y = 0.8153, mapID = 1425, label = "Katoom the Angler", offMapText = "Travel to Katoom the Angler in The Hinterlands.", x = 0.8033 },
            },
            text = "Accept Snapjaws, Mon! from Katoom the Angler.",
            id = "accept-7815-snapjaws-mon",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7815, state = "activeOrCompleted" },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 140,
            text = "Collect 1 Lard's Lunch.",
            route = {
                { y = 0.4122, mapID = 1425, label = "Vilebranch Kidnapper", offMapText = "Travel to Vilebranch Kidnapper.", x = 0.8447 },
            },
            dependsOn = { "accept-7840-lard-lost-his-lunch" },
            id = "objective-7840-1-vilebranch-kidnapper",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 7840, text = "Vilebranch Kidnapper", index = 1, count = 1 },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-580-1-pupellyverbos-port",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 40 },
                    },
                },
            },
            text = "Collect 12 Pupellyverbos Port.",
            complete = {
                questObjective = { id = 580, index = 1, text = "Pupellyverbos Port", count = 12 },
            },
            route = {
                { mapID = 1425, x = 0.774, y = 0.703, label = "Pupellyverbos Port", offMapText = "Travel to Pupellyverbos Port." },
            },
            sourceStep = 16,
            priority = 150,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-7815-1-saltwater-snapjaw",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 15 Saltwater Snapjaw.",
            complete = {
                questObjective = { id = 7815, index = 1, text = "Saltwater Snapjaw", count = 15 },
            },
            route = {
                { mapID = 1425, x = 0.782, y = 0.682, label = "Saltwater Snapjaw", offMapText = "Travel to Saltwater Snapjaw." },
            },
            sourceStep = 17,
            priority = 160,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-7815-snapjaws-mon" },
        },
        {
            priority = 170,
            text = "Turn in Lard Lost His Lunch to Lard.",
            route = {
                { y = 0.8138, mapID = 1425, label = "Lard", offMapText = "Travel to Lard in The Hinterlands.", x = 0.7814 },
            },
            dependsOn = { "accept-7840-lard-lost-his-lunch", "objective-7840-1-vilebranch-kidnapper" },
            id = "turnin-7840-lard-lost-his-lunch",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7840, state = "completed" },
            },
            sourceStep = 18,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 180,
            text = "Turn in Snapjaws, Mon! to Katoom the Angler.",
            route = {
                { y = 0.8153, mapID = 1425, label = "Katoom the Angler", offMapText = "Travel to Katoom the Angler in The Hinterlands.", x = 0.8033 },
            },
            dependsOn = { "accept-7815-snapjaws-mon", "objective-7815-1-saltwater-snapjaw" },
            id = "turnin-7815-snapjaws-mon",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7815, state = "completed" },
            },
            sourceStep = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 190,
            route = {
                { y = 0.7952, mapID = 1425, label = "Huntsman Markhor", offMapText = "Travel to Huntsman Markhor in The Hinterlands.", x = 0.7916 },
            },
            text = "Accept Stalking the Stalkers from Huntsman Markhor.",
            id = "accept-7828-stalking-the-stalkers",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7828, state = "activeOrCompleted" },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 200,
            route = {
                { y = 0.7952, mapID = 1425, label = "Huntsman Markhor", offMapText = "Travel to Huntsman Markhor in The Hinterlands.", x = 0.7916 },
            },
            text = "Accept Hunt the Savages from Huntsman Markhor.",
            id = "accept-7829-hunt-the-savages",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7829, state = "activeOrCompleted" },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 210,
            route = {
                { y = 0.7952, mapID = 1425, label = "Huntsman Markhor", offMapText = "Travel to Huntsman Markhor in The Hinterlands.", x = 0.7916 },
            },
            text = "Accept Avenging the Fallen from Huntsman Markhor.",
            id = "accept-7830-avenging-the-fallen",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7830, state = "activeOrCompleted" },
            },
            sourceStep = 20,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 220,
            route = {
                { y = 0.7909, mapID = 1425, label = "Otho Moji'ko", offMapText = "Travel to Otho Moji'ko in The Hinterlands.", x = 0.794 },
            },
            text = "Accept Message to the Wildhammer from Otho Moji'ko.",
            id = "accept-7841-message-to-the-wildhammer",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7841, state = "activeOrCompleted" },
            },
            sourceStep = 21,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 230,
            route = {
                { y = 0.7824, mapID = 1425, label = "Mystic Yayo'jin", offMapText = "Travel to Mystic Yayo'jin in The Hinterlands.", x = 0.788 },
            },
            text = "Accept Cannibalistic Cousins from Mystic Yayo'jin.",
            id = "accept-7844-cannibalistic-cousins",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7844, state = "activeOrCompleted" },
            },
            sourceStep = 22,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-7830-1-skylord-plume",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 1 Skylord Plume.",
            complete = {
                questObjective = { id = 7830, index = 1, text = "Skylord Plume", count = 1 },
            },
            route = {
                { mapID = 1425, x = 0.602, y = 0.506, label = "Skylord Plume", offMapText = "Travel to Skylord Plume." },
            },
            sourceStep = 24,
            priority = 240,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-7830-avenging-the-fallen" },
        },
        {
            priority = 250,
            text = "Collect 10 Hinterlands Honey Ripple.",
            route = {
                { y = 0.3888, mapID = 1425, label = "Hinterlands Honey Ripple", offMapText = "Travel to Hinterlands Honey Ripple.", x = 0.5746 },
            },
            dependsOn = { "accept-77-a-sticky-situation" },
            id = "objective-77-1-hinterlands-honey-ripple",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 77, text = "Hinterlands Honey Ripple", index = 1, count = 10 },
            },
            sourceStep = 25,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 650 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 260,
            text = "Kill 15 Silvermane Howler.",
            route = {
                { mapID = 1425, x = 0.466, y = 0.536, label = "Silvermane Howler", offMapText = "Travel to Silvermane Howler." },
            },
            dependsOn = { "accept-7828-stalking-the-stalkers" },
            id = "objective-7828-2-silvermane-howler",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 7828, text = "Silvermane Howler", index = 2, count = 15 },
            },
            sourceStep = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-7844-2-vilebranch-soothsayer",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 15 Vilebranch Soothsayer.",
            complete = {
                questObjective = { id = 7844, index = 2, text = "Vilebranch Soothsayer", count = 15 },
            },
            route = {
                { mapID = 1425, x = 0.46799999999999997, y = 0.632, label = "Vilebranch Soothsayer", offMapText = "Travel to Vilebranch Soothsayer." },
            },
            sourceStep = 27,
            priority = 270,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-7844-cannibalistic-cousins" },
        },
        {
            id = "objective-7844-1-vilebranch-scalper",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 30 Vilebranch Scalper.",
            complete = {
                questObjective = { id = 7844, index = 1, text = "Vilebranch Scalper", count = 30 },
            },
            route = {
                { mapID = 1425, x = 0.456, y = 0.634, label = "Vilebranch Scalper", offMapText = "Travel to Vilebranch Scalper." },
            },
            sourceStep = 28,
            priority = 280,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-7844-cannibalistic-cousins" },
        },
        {
            id = "objective-7828-1-silvermane-stalker",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 15 Silvermane Stalker.",
            complete = {
                questObjective = { id = 7828, index = 1, text = "Silvermane Stalker", count = 15 },
            },
            route = {
                { mapID = 1425, x = 0.518, y = 0.494, label = "Silvermane Stalker", offMapText = "Travel to Silvermane Stalker." },
            },
            sourceStep = 29,
            priority = 290,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-7828-stalking-the-stalkers" },
        },
        {
            id = "objective-3123-1-wildkin-muisek",
            kind = "objective",
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
            text = "Collect 10 Wildkin Muisek.",
            complete = {
                questObjective = { id = 3123, index = 1, text = "Wildkin Muisek", count = 10 },
            },
            route = {
                { mapID = 1425, x = 0.574, y = 0.504, label = "Wildkin Muisek", offMapText = "Travel to Wildkin Muisek." },
            },
            sourceStep = 30,
            priority = 300,
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
            id = "objective-7829-1-savage-owlbeast",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 20 Savage Owlbeast.",
            complete = {
                questObjective = { id = 7829, index = 1, text = "Savage Owlbeast", count = 20 },
            },
            route = {
                { mapID = 1425, x = 0.574, y = 0.504, label = "Savage Owlbeast", offMapText = "Travel to Savage Owlbeast." },
            },
            sourceStep = 31,
            priority = 310,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-7829-hunt-the-savages" },
        },
        {
            priority = 320,
            route = {
                { y = 0.4697, mapID = 1425, label = "Rin'ji", offMapText = "Travel to Rin'ji in The Hinterlands.", x = 0.3073 },
            },
            text = "Accept Rin'ji is Trapped! from Rin'ji.",
            id = "accept-2742-rin-ji-is-trapped",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2742, state = "activeOrCompleted" },
            },
            sourceStep = 33,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-7841-4-highvale-marksman",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 15 Highvale Marksman.",
            complete = {
                questObjective = { id = 7841, index = 4, text = "Highvale Marksman", count = 15 },
            },
            route = {
                { mapID = 1425, x = 0.31739999999999996, y = 0.494, label = "Highvale Marksman", offMapText = "Travel to Highvale Marksman." },
            },
            sourceStep = 37,
            priority = 330,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-7841-message-to-the-wildhammer" },
        },
        {
            id = "objective-7841-2-highvale-outrunner",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 15 Highvale Outrunner.",
            complete = {
                questObjective = { id = 7841, index = 2, text = "Highvale Outrunner", count = 15 },
            },
            route = {
                { mapID = 1425, x = 0.322, y = 0.51, label = "Highvale Outrunner", offMapText = "Travel to Highvale Outrunner." },
            },
            sourceStep = 38,
            priority = 340,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-7841-message-to-the-wildhammer" },
        },
        {
            id = "objective-7841-3-highvale-ranger",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 15 Highvale Ranger.",
            complete = {
                questObjective = { id = 7841, index = 3, text = "Highvale Ranger", count = 15 },
            },
            route = {
                { mapID = 1425, x = 0.324, y = 0.504, label = "Highvale Ranger", offMapText = "Travel to Highvale Ranger." },
            },
            sourceStep = 39,
            priority = 350,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-7841-message-to-the-wildhammer" },
        },
        {
            id = "objective-7841-1-highvale-scout",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Kill 15 Highvale Scout.",
            complete = {
                questObjective = { id = 7841, index = 1, text = "Highvale Scout", count = 15 },
            },
            route = {
                { mapID = 1425, x = 0.322, y = 0.506, label = "Highvale Scout", offMapText = "Travel to Highvale Scout." },
            },
            sourceStep = 40,
            priority = 360,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-7841-message-to-the-wildhammer" },
        },
        {
            id = "loot-starter-before-accept-485-find-oox-09-hl",
            kind = "note",
            instructionOnly = true,
            conditions = { faction = "Horde" },
            text = "Loot OOX-09/HL Distress Beacon from Saltwater Snapjaw, Witherbark Scalper, Witherbark Hideskinner, Ebenezer Rustlocke's Corpse, Lesser Bloodstone Deposit, Green Sludge, Waterlogged Letter, Razorbeak Skylord, Witherbark Broodguard, Stone of East Binding, Highvale Scout, Highvale Marksman, Highvale Ranger, Maiden's Folly Charts, Silvermane Howler, Silvermane Stalker, Savage Owlbeast, Vilebranch Scalper, Vilebranch Soothsayer, Gammerita, Wild Leather Shoulders, Wild Leather Helmet, Quickdraw Quiver. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "OOX-09/HL Distress Beacon", minCount = 1 },
                    },
                    {
                        quest = { id = 485, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 370,
        },
        {
            priority = 380,
            text = "Use the OOX-09/HL Distress Beacon to accept Find OOX-09/HL!.",
            id = "accept-485-find-oox-09-hl",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 43 },
                    },
                },
            },
            complete = {
                quest = { id = 485, state = "activeOrCompleted" },
            },
            sourceStep = 41,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 390,
            text = "Turn in Find OOX-09/HL! to Homing Robot OOX-09/HL.",
            route = {
                { y = 0.3766, mapID = 1425, label = "Homing Robot OOX-09/HL", offMapText = "Travel to Homing Robot OOX-09/HL in The Hinterlands.", x = 0.4935 },
            },
            dependsOn = { "accept-485-find-oox-09-hl" },
            id = "turnin-485-find-oox-09-hl",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 43 },
                    },
                },
            },
            complete = {
                quest = { id = 485, state = "completed" },
            },
            sourceStep = 42,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 400,
            text = "Turn in Rin'ji is Trapped!.",
            route = {
                { y = 0.5901, mapID = 1425, label = "Rin'ji is Trapped!", offMapText = "Travel to Rin'ji is Trapped!.", x = 0.863 },
            },
            dependsOn = { "accept-2742-rin-ji-is-trapped" },
            id = "turnin-2742-rin-ji-is-trapped",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2742, state = "completed" },
            },
            sourceStep = 43,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 410,
            route = {
                { y = 0.5901, mapID = 1425, label = "Rin'ji's Secret", offMapText = "Travel to Rin'ji's Secret.", x = 0.863 },
            },
            text = "Accept Rin'ji's Secret.",
            id = "accept-2782-rin-ji-s-secret",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2782, state = "activeOrCompleted" },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2742 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 420,
            text = "For Vilebranch Hooligans: Smith Slagtree at Revantusk Village in the Hinterlands wants you to find Slagtree's Lost Tools.",
            id = "objective-7839-quest-work",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7839, state = "complete" },
            },
            sourceStep = 44,
            requiredQuests = {},
            useClientText = false,
            useClientPin = true,
            dependsOn = { "accept-7839-vilebranch-hooligans" },
        },
        {
            priority = 430,
            text = "Turn in Vilebranch Hooligans to Smith Slagtree.",
            route = {
                { y = 0.8012, mapID = 1425, label = "Smith Slagtree", offMapText = "Travel to Smith Slagtree in The Hinterlands.", x = 0.7724 },
            },
            dependsOn = { "accept-7839-vilebranch-hooligans", "objective-7839-quest-work" },
            id = "turnin-7839-vilebranch-hooligans",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7839, state = "completed" },
            },
            sourceStep = 44,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 440,
            text = "Turn in Cannibalistic Cousins to Mystic Yayo'jin.",
            route = {
                { y = 0.7825, mapID = 1425, label = "Mystic Yayo'jin", offMapText = "Travel to Mystic Yayo'jin in The Hinterlands.", x = 0.788 },
            },
            dependsOn = {
                "accept-7844-cannibalistic-cousins",
                "objective-7844-2-vilebranch-soothsayer",
                "objective-7844-1-vilebranch-scalper",
            },
            id = "turnin-7844-cannibalistic-cousins",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7844, state = "completed" },
            },
            sourceStep = 45,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 450,
            text = "Turn in Message to the Wildhammer to Otho Moji'ko.",
            route = {
                { y = 0.7908, mapID = 1425, label = "Otho Moji'ko", offMapText = "Travel to Otho Moji'ko in The Hinterlands.", x = 0.794 },
            },
            dependsOn = {
                "accept-7841-message-to-the-wildhammer",
                "objective-7841-4-highvale-marksman",
                "objective-7841-2-highvale-outrunner",
                "objective-7841-3-highvale-ranger",
                "objective-7841-1-highvale-scout",
            },
            id = "turnin-7841-message-to-the-wildhammer",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7841, state = "completed" },
            },
            sourceStep = 46,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 460,
            route = {
                { y = 0.7908, mapID = 1425, label = "Otho Moji'ko", offMapText = "Travel to Otho Moji'ko in The Hinterlands.", x = 0.794 },
            },
            text = "Accept Another Message to the Wildhammer from Otho Moji'ko.",
            id = "accept-7842-another-message-to-the-wildhammer",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7842, state = "activeOrCompleted" },
            },
            sourceStep = 46,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7841 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 470,
            text = "Turn in Another Message to the Wildhammer to Otho Moji'ko.",
            route = {
                { y = 0.7908, mapID = 1425, label = "Otho Moji'ko", offMapText = "Travel to Otho Moji'ko in The Hinterlands.", x = 0.794 },
            },
            dependsOn = { "accept-7842-another-message-to-the-wildhammer" },
            id = "turnin-7842-another-message-to-the-wildhammer",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7842, state = "completed" },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7841 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 480,
            route = {
                { y = 0.7908, mapID = 1425, label = "Otho Moji'ko", offMapText = "Travel to Otho Moji'ko in The Hinterlands.", x = 0.794 },
            },
            text = "Accept The Final Message to the Wildhammer from Otho Moji'ko.",
            id = "accept-7843-the-final-message-to-the-wildhammer",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7843, state = "activeOrCompleted" },
            },
            sourceStep = 47,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7842 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 490,
            text = "Turn in Stalking the Stalkers to Huntsman Markhor.",
            route = {
                { y = 0.7953, mapID = 1425, label = "Huntsman Markhor", offMapText = "Travel to Huntsman Markhor in The Hinterlands.", x = 0.7916 },
            },
            dependsOn = {
                "accept-7828-stalking-the-stalkers",
                "objective-7828-2-silvermane-howler",
                "objective-7828-1-silvermane-stalker",
            },
            id = "turnin-7828-stalking-the-stalkers",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7828, state = "completed" },
            },
            sourceStep = 49,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 500,
            text = "Turn in Hunt the Savages to Huntsman Markhor.",
            route = {
                { y = 0.7953, mapID = 1425, label = "Huntsman Markhor", offMapText = "Travel to Huntsman Markhor in The Hinterlands.", x = 0.7916 },
            },
            dependsOn = { "accept-7829-hunt-the-savages", "objective-7829-1-savage-owlbeast" },
            id = "turnin-7829-hunt-the-savages",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7829, state = "completed" },
            },
            sourceStep = 49,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 510,
            text = "Turn in Avenging the Fallen to Huntsman Markhor.",
            route = {
                { y = 0.7953, mapID = 1425, label = "Huntsman Markhor", offMapText = "Travel to Huntsman Markhor in The Hinterlands.", x = 0.7916 },
            },
            dependsOn = { "accept-7830-avenging-the-fallen", "objective-7830-1-skylord-plume" },
            id = "turnin-7830-avenging-the-fallen",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7830, state = "completed" },
            },
            sourceStep = 49,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 520,
            text = "Turn in Venom Bottles to Apothecary Lydon.",
            route = {
                { y = 0.1906, mapID = 1424, label = "Apothecary Lydon", offMapText = "Travel to Apothecary Lydon in Hillsbrad Foothills.", x = 0.6144 },
            },
            dependsOn = { "accept-2933-venom-bottles" },
            id = "turnin-2933-venom-bottles",
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
                quest = { id = 2933, state = "completed" },
            },
            sourceStep = 50,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 530,
            route = {
                { y = 0.1906, mapID = 1424, label = "Apothecary Lydon", offMapText = "Travel to Apothecary Lydon in Hillsbrad Foothills.", x = 0.6144 },
            },
            text = "Accept Undamaged Venom Sac from Apothecary Lydon.",
            id = "accept-2934-undamaged-venom-sac",
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
                quest = { id = 2934, state = "activeOrCompleted" },
            },
            sourceStep = 50,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2933 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 540,
            text = "Use Final Message to the Wildhammer.",
            route = {
                { y = 0.4803, mapID = 1425, label = "Final Message to the Wildhammer", offMapText = "Travel to Final Message to the Wildhammer.", x = 0.1439 },
            },
            dependsOn = { "accept-7843-the-final-message-to-the-wildhammer" },
            id = "objective-7843-1-final-message-to-the-wildhammer",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 7843, text = "Final Message to the Wildhammer", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7842 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 550,
            text = "Turn in A Sticky Situation to Gilveradin Sunchaser.",
            route = {
                { mapID = 1425, x = 0.2671, y = 0.48590000000000005, label = "Gilveradin Sunchaser", offMapText = "Travel to Gilveradin Sunchaser in The Hinterlands." },
            },
            dependsOn = { "accept-77-a-sticky-situation", "objective-77-1-hinterlands-honey-ripple" },
            id = "turnin-77-a-sticky-situation",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 77, state = "completed" },
            },
            sourceStep = 52,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 650 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 560,
            route = {
                { mapID = 1425, x = 0.2671, y = 0.48590000000000005, label = "Gilveradin Sunchaser", offMapText = "Travel to Gilveradin Sunchaser in The Hinterlands." },
            },
            text = "Accept Ripple Delivery from Gilveradin Sunchaser.",
            id = "accept-81-ripple-delivery",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 81, state = "activeOrCompleted" },
            },
            sourceStep = 52,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 77 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 570,
            route = {
                { mapID = 1425, x = 0.3375, y = 0.7521, label = "Atal'ai Exile", offMapText = "Travel to Atal'ai Exile in The Hinterlands." },
            },
            text = "Turn in The Atal'ai Exile to Atal'ai Exile.",
            id = "turnin-1429-the-atal-ai-exile",
            kind = "turnin",
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
                quest = { id = 1429, state = "completed" },
            },
            sourceStep = 54,
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
            priority = 580,
            route = {
                { mapID = 1425, x = 0.3375, y = 0.7521, label = "Atal'ai Exile", offMapText = "Travel to Atal'ai Exile in The Hinterlands." },
            },
            text = "Accept Return to Fel'Zerul from Atal'ai Exile.",
            id = "accept-1444-return-to-fel-zerul",
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
                quest = { id = 1444, state = "activeOrCompleted" },
            },
            sourceStep = 54,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1429 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-2934-1-undamaged-venom-sac",
            kind = "objective",
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
            text = "Collect 1 Undamaged Venom Sac.",
            complete = {
                questObjective = { id = 2934, index = 1, text = "Undamaged Venom Sac", count = 1 },
            },
            route = {
                { mapID = 1425, x = 0.342, y = 0.67, label = "Undamaged Venom Sac", offMapText = "Travel to Undamaged Venom Sac." },
            },
            sourceStep = 55,
            priority = 590,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2933 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-2934-undamaged-venom-sac" },
        },
        {
            priority = 600,
            text = "Turn in Find OOX-09/HL!.",
            route = {
                { y = 0.6419, mapID = 1425, label = "Find OOX-09/HL!", offMapText = "Travel to Find OOX-09/HL!.", x = 0.358 },
            },
            dependsOn = { "accept-485-find-oox-09-hl" },
            id = "turnin-485-find-oox-09-hl-2",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 43 },
                    },
                },
            },
            complete = {
                quest = { id = 485, state = "completed" },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 610,
            text = "Turn in The Final Message to the Wildhammer to Otho Moji'ko.",
            route = {
                { mapID = 1425, x = 0.7938, y = 0.7908, label = "Otho Moji'ko", offMapText = "Travel to Otho Moji'ko in The Hinterlands." },
            },
            dependsOn = { "accept-7843-the-final-message-to-the-wildhammer", "objective-7843-1-final-message-to-the-wildhammer" },
            id = "turnin-7843-the-final-message-to-the-wildhammer",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 7843, state = "completed" },
            },
            sourceStep = 59,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 7842 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 620,
            text = "Turn in Undamaged Venom Sac to Apothecary Lydon.",
            route = {
                { mapID = 1424, x = 0.6144, y = 0.1907, label = "Apothecary Lydon", offMapText = "Travel to Apothecary Lydon in Hillsbrad Foothills." },
            },
            dependsOn = { "accept-2934-undamaged-venom-sac", "objective-2934-1-undamaged-venom-sac" },
            id = "turnin-2934-undamaged-venom-sac",
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
                quest = { id = 2934, state = "completed" },
            },
            sourceStep = 60,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2933 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 630,
            text = "Open the Highvale Records and burn them.",
            id = "objective-2995-1-authored-Highvale-Records",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2995, index = 1, count = 1 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-2995-lines-of-communication" },
            route = {
                { mapID = 1425, x = 0.31980000000000003, y = 0.4683, label = "Highvale-Records", offMapText = "Travel to Highvale-Records." },
            },
        },
        {
            priority = 640,
            text = "Open the Highvale Notes and burn them.",
            id = "objective-2995-2-authored-Highvale-Notes",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2995, index = 2, count = 1 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-2995-lines-of-communication" },
            route = {
                { mapID = 1425, x = 0.2963, y = 0.4866, label = "Highvale-Notes", offMapText = "Travel to Highvale-Notes." },
            },
        },
        {
            priority = 650,
            text = "Open the Highvale Report and burn it.",
            id = "objective-2995-3-authored-Highvale-Report",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 2995, index = 3, count = 1 },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-2995-lines-of-communication" },
            route = {
                { mapID = 1425, x = 0.28559999999999997, y = 0.46049999999999996, label = "Highvale-Report", offMapText = "Travel to Highvale-Report." },
            },
        },
        {
            priority = 660,
            text = "Turn in Lines of Communication to Oran Snakewrithe.",
            route = {
                { y = 0.3285, mapID = 1458, label = "Oran Snakewrithe", offMapText = "Travel to Oran Snakewrithe in Undercity.", x = 0.7307 },
            },
            dependsOn = {
                "accept-2995-lines-of-communication",
                "objective-2995-1-authored-Highvale-Records",
                "objective-2995-2-authored-Highvale-Notes",
                "objective-2995-3-authored-Highvale-Report",
            },
            id = "turnin-2995-lines-of-communication",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2995, state = "completed" },
            },
            sourceStep = 61,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 670,
            text = "Turn in Rin'ji's Secret to Oran Snakewrithe.",
            route = {
                { y = 0.3285, mapID = 1458, label = "Oran Snakewrithe", offMapText = "Travel to Oran Snakewrithe in Undercity.", x = 0.7307 },
            },
            dependsOn = { "accept-2782-rin-ji-s-secret" },
            id = "turnin-2782-rin-ji-s-secret",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 2782, state = "completed" },
            },
            sourceStep = 61,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2742 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 680,
            route = {
                { y = 0.3285, mapID = 1458, label = "Oran Snakewrithe", offMapText = "Travel to Oran Snakewrithe in Undercity.", x = 0.7307 },
            },
            text = "Accept Ora's Gratitude from Oran Snakewrithe.",
            id = "accept-8273-ora-s-gratitude",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 42 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 8273, state = "activeOrCompleted" },
            },
            sourceStep = 61,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2782 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-3568-seeping-corruption",
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
            checkpointQuest = 3568,
            priority = 690,
        },
        {
            priority = 700,
            route = {
                { mapID = 1458, x = 0.48710000000000003, y = 0.7142000000000001, label = "Chemist Cuely", offMapText = "Travel to Chemist Cuely in Undercity." },
            },
            text = "Accept Seeping Corruption from Chemist Cuely.",
            id = "accept-3568-seeping-corruption",
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
                quest = { id = 3568, state = "activeOrCompleted" },
            },
            sourceStep = 62,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 710,
            route = {
                { y = 0.2687, mapID = 1446, label = "Sprinkle", offMapText = "Travel to Sprinkle in Tanaris.", x = 0.5106 },
            },
            text = "Turn in Sprinkle's Secret Ingredient to Sprinkle.",
            id = "turnin-2641-sprinkle-s-secret-ingredient",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                },
            },
            complete = {
                quest = { id = 2641, state = "completed" },
            },
            sourceStep = 64,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2606 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-2641-1-violet-tragan" },
        },
        {
            priority = 720,
            route = {
                { y = 0.2687, mapID = 1446, label = "Sprinkle", offMapText = "Travel to Sprinkle in Tanaris.", x = 0.5106 },
            },
            text = "Accept Delivery for Marin from Sprinkle.",
            id = "accept-2661-delivery-for-marin",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                },
            },
            complete = {
                quest = { id = 2661, state = "activeOrCompleted" },
            },
            sourceStep = 65,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2641 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 730,
            text = "Turn in Delivery for Marin to Marin Noggenfogger.",
            route = {
                { y = 0.2866, mapID = 1446, label = "Marin Noggenfogger", offMapText = "Travel to Marin Noggenfogger in Tanaris.", x = 0.5181 },
            },
            dependsOn = { "accept-2661-delivery-for-marin" },
            id = "turnin-2661-delivery-for-marin",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                },
            },
            complete = {
                quest = { id = 2661, state = "completed" },
            },
            sourceStep = 66,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2641 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 740,
            route = {
                { y = 0.2866, mapID = 1446, label = "Marin Noggenfogger", offMapText = "Travel to Marin Noggenfogger in Tanaris.", x = 0.5181 },
            },
            text = "Accept Noggenfogger Elixir from Marin Noggenfogger.",
            id = "accept-2662-noggenfogger-elixir",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                },
            },
            complete = {
                quest = { id = 2662, state = "activeOrCompleted" },
            },
            sourceStep = 66,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2661 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 750,
            text = "Turn in Noggenfogger Elixir to Marin Noggenfogger.",
            route = {
                { y = 0.2866, mapID = 1446, label = "Marin Noggenfogger", offMapText = "Travel to Marin Noggenfogger in Tanaris.", x = 0.5181 },
            },
            dependsOn = { "accept-2662-noggenfogger-elixir" },
            id = "turnin-2662-noggenfogger-elixir",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 44 },
                    },
                },
            },
            complete = {
                quest = { id = 2662, state = "completed" },
            },
            sourceStep = 67,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 2661 },
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
