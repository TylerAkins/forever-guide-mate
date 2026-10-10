local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Arathi Highlands",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-arathi-highlands",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 32 },
            },
        },
    },
    goals = {
        {
            id = "level-before-objective-676-2-boulderfist-enforcer",
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
            checkpointQuest = 676,
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { y = 0.4414, mapID = 1417, label = "Boulderfist Enforcer", offMapText = "Travel to Boulderfist Enforcer.", x = 0.3481 },
            },
            text = "Kill 10 Boulderfist Enforcer.",
            id = "objective-676-2-boulderfist-enforcer",
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
                questObjective = { id = 676, text = "Boulderfist Enforcer", index = 2, count = 10 },
            },
            sourceStep = 1,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-676-1-boulderfist-ogre",
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
            text = "Kill 8 Boulderfist Ogre.",
            complete = {
                questObjective = { id = 676, index = 1, text = "Boulderfist Ogre", count = 8 },
            },
            route = {
                { mapID = 1417, x = 0.376, y = 0.434, label = "Boulderfist Ogre", offMapText = "Travel to Boulderfist Ogre." },
            },
            sourceStep = 2,
            priority = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 40,
            route = {
                { mapID = 1417, x = 0.5414, y = 0.38159999999999994, label = "Marcel's Head", offMapText = "Travel to Marcel's Head." },
            },
            text = "Collect 1 Marcel's Head.",
            id = "objective-1164-2-marcel-dabyrie",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 27 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1164, text = "Marcel Dabyrie", index = 2, count = 1 },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 50,
            route = {
                { y = 0.387, mapID = 1417, label = "Fardel Dabyrie", offMapText = "Travel to Fardel Dabyrie.", x = 0.5654 },
            },
            text = "Collect 1 Fardel's Head.",
            id = "objective-1164-3-fardel-dabyrie",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 27 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1164, text = "Fardel Dabyrie", index = 3, count = 1 },
            },
            sourceStep = 4,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 60,
            route = {
                { y = 0.3608, mapID = 1417, label = "Kenata Dabyrie", offMapText = "Travel to Kenata Dabyrie.", x = 0.5637 },
            },
            text = "Collect 1 Kenata's Head.",
            id = "objective-1164-1-kenata-dabyrie",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 27 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1164, text = "Kenata Dabyrie", index = 1, count = 1 },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-642-the-princess-trapped",
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
            priority = 70,
        },
        {
            priority = 80,
            route = {
                { y = 0.338, mapID = 1417, label = "The Princess Trapped", offMapText = "Travel to The Princess Trapped.", x = 0.6248 },
            },
            text = "Accept The Princess Trapped.",
            id = "accept-642-the-princess-trapped",
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
                quest = { id = 642, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 90,
            text = "Turn in The Hammer May Fall to Drum Fel.",
            route = {
                { y = 0.3391, mapID = 1417, label = "Drum Fel", offMapText = "Travel to Drum Fel in Arathi Highlands.", x = 0.7424 },
            },
            dependsOn = { "objective-676-2-boulderfist-enforcer", "objective-676-1-boulderfist-ogre" },
            id = "turnin-676-the-hammer-may-fall",
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
                quest = { id = 676, state = "completed" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 100,
            route = {
                { y = 0.3391, mapID = 1417, label = "Drum Fel", offMapText = "Travel to Drum Fel in Arathi Highlands.", x = 0.7424 },
            },
            text = "Accept Call to Arms from Drum Fel.",
            id = "accept-677-call-to-arms",
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
                quest = { id = 677, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 110,
            route = {
                { y = 0.3412, mapID = 1417, label = "Gor'mul", offMapText = "Travel to Gor'mul in Arathi Highlands.", x = 0.7267 },
            },
            text = "Accept Hammerfall from Gor'mul.",
            id = "accept-655-hammerfall",
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
                quest = { id = 655, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 120,
            text = "Turn in Hammerfall to Tor'gan.",
            route = {
                { y = 0.3629, mapID = 1417, label = "Tor'gan", offMapText = "Travel to Tor'gan in Arathi Highlands.", x = 0.7471 },
            },
            dependsOn = { "accept-655-hammerfall" },
            id = "turnin-655-hammerfall",
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
                quest = { id = 655, state = "completed" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 130,
            route = {
                { y = 0.3629, mapID = 1417, label = "Tor'gan", offMapText = "Travel to Tor'gan in Arathi Highlands.", x = 0.7471 },
            },
            text = "Accept Raising Spirits from Tor'gan.",
            id = "accept-672-raising-spirits",
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
                quest = { id = 672, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 655 },
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
                { y = 0.3629, mapID = 1417, label = "Tor'gan", offMapText = "Travel to Tor'gan in Arathi Highlands.", x = 0.7471 },
            },
            text = "Accept Foul Magics from Tor'gan.",
            id = "accept-671-foul-magics",
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
                quest = { id = 671, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 150,
            text = "Collect 10 Bloodstone Amulet.",
            route = {
                { y = 0.3, mapID = 1417, label = "Syndicate Pathstalker", offMapText = "Travel to Syndicate Pathstalker.", x = 0.334 },
            },
            dependsOn = { "accept-671-foul-magics" },
            id = "objective-671-1-syndicate-pathstalker",
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
                questObjective = { id = 671, text = "Syndicate Pathstalker", index = 1, count = 10 },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-672-1-highland-raptor-eye",
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
            text = "Collect 10 Highland Raptor Eye.",
            complete = {
                questObjective = { id = 672, index = 1, text = "Highland Raptor Eye", count = 10 },
            },
            route = {
                { mapID = 1417, x = 0.424, y = 0.40399999999999997, label = "Highland Raptor Eye", offMapText = "Travel to Highland Raptor Eye." },
            },
            sourceStep = 12,
            priority = 160,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 655 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-672-raising-spirits" },
        },
        {
            priority = 170,
            text = "Kill 8 Witherbark Witch Doctor.",
            route = {
                { y = 0.68, mapID = 1417, label = "Witherbark Witch Doctor", offMapText = "Travel to Witherbark Witch Doctor.", x = 0.658 },
            },
            dependsOn = { "accept-677-call-to-arms" },
            id = "objective-677-3-witherbark-witch-doctor",
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
                questObjective = { id = 677, text = "Witherbark Witch Doctor", index = 3, count = 8 },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 180,
            text = "Kill 10 Witherbark Headhunter.",
            route = {
                { y = 0.68, mapID = 1417, label = "Witherbark Headhunter", offMapText = "Travel to Witherbark Headhunter.", x = 0.658 },
            },
            dependsOn = { "accept-677-call-to-arms" },
            id = "objective-677-2-witherbark-headhunter",
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
                questObjective = { id = 677, text = "Witherbark Headhunter", index = 2, count = 10 },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 190,
            text = "Kill 10 Witherbark Axe Thrower.",
            route = {
                { y = 0.68, mapID = 1417, label = "Witherbark Axe Thrower", offMapText = "Travel to Witherbark Axe Thrower.", x = 0.658 },
            },
            dependsOn = { "accept-677-call-to-arms" },
            id = "objective-677-1-witherbark-axe-thrower",
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
                questObjective = { id = 677, text = "Witherbark Axe Thrower", index = 1, count = 10 },
            },
            sourceStep = 13,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 200,
            text = "Turn in Foul Magics to Tor'gan.",
            route = {
                { y = 0.3629, mapID = 1417, label = "Tor'gan", offMapText = "Travel to Tor'gan in Arathi Highlands.", x = 0.7471 },
            },
            dependsOn = { "accept-671-foul-magics", "objective-671-1-syndicate-pathstalker" },
            id = "turnin-671-foul-magics",
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
                quest = { id = 671, state = "completed" },
            },
            sourceStep = 15,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 210,
            text = "Turn in Raising Spirits to Tor'gan.",
            route = {
                { y = 0.3629, mapID = 1417, label = "Tor'gan", offMapText = "Travel to Tor'gan in Arathi Highlands.", x = 0.7471 },
            },
            dependsOn = { "accept-672-raising-spirits", "objective-672-1-highland-raptor-eye" },
            id = "turnin-672-raising-spirits",
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
                quest = { id = 672, state = "completed" },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 655 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 220,
            route = {
                { y = 0.3629, mapID = 1417, label = "Tor'gan", offMapText = "Travel to Tor'gan in Arathi Highlands.", x = 0.7471 },
            },
            text = "Accept Raising Spirits from Tor'gan.",
            id = "accept-674-raising-spirits",
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
                quest = { id = 674, state = "activeOrCompleted" },
            },
            sourceStep = 15,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 672 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 230,
            text = "Turn in Raising Spirits to Gor'mul.",
            route = {
                { y = 0.3412, mapID = 1417, label = "Gor'mul", offMapText = "Travel to Gor'mul in Arathi Highlands.", x = 0.7267 },
            },
            dependsOn = { "accept-674-raising-spirits" },
            id = "turnin-674-raising-spirits",
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
                quest = { id = 674, state = "completed" },
            },
            sourceStep = 16,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 672 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 240,
            route = {
                { y = 0.3412, mapID = 1417, label = "Gor'mul", offMapText = "Travel to Gor'mul in Arathi Highlands.", x = 0.7267 },
            },
            text = "Accept Raising Spirits from Gor'mul.",
            id = "accept-675-raising-spirits",
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
                quest = { id = 675, state = "activeOrCompleted" },
            },
            sourceStep = 16,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 674 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 250,
            text = "Turn in Raising Spirits to Tor'gan.",
            route = {
                { y = 0.3629, mapID = 1417, label = "Tor'gan", offMapText = "Travel to Tor'gan in Arathi Highlands.", x = 0.7471 },
            },
            dependsOn = { "accept-675-raising-spirits" },
            id = "turnin-675-raising-spirits",
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
                quest = { id = 675, state = "completed" },
            },
            sourceStep = 17,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 674 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 260,
            text = "Turn in Call to Arms to Drum Fel.",
            route = {
                { y = 0.3391, mapID = 1417, label = "Drum Fel", offMapText = "Travel to Drum Fel in Arathi Highlands.", x = 0.7424 },
            },
            dependsOn = {
                "accept-677-call-to-arms",
                "objective-677-3-witherbark-witch-doctor",
                "objective-677-2-witherbark-headhunter",
                "objective-677-1-witherbark-axe-thrower",
            },
            id = "turnin-677-call-to-arms",
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
                quest = { id = 677, state = "completed" },
            },
            sourceStep = 18,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 270,
            route = {
                { mapID = 1424, x = 0.64, y = 0.599, label = "Mudsnout Blossoms", offMapText = "Travel to Mudsnout Blossoms." },
            },
            text = "For Elixir of Agony: Bring 6 Mudsnout Blossoms to Apothecary Lydon in Tarren Mill.",
            id = "objective-509-quest-work",
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
                quest = { id = 509, state = "complete" },
            },
            sourceStep = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 280,
            route = {
                { y = 0.1906, mapID = 1424, label = "Apothecary Lydon", offMapText = "Travel to Apothecary Lydon in Hillsbrad Foothills.", x = 0.6144 },
            },
            text = "Turn in Elixir of Agony to Apothecary Lydon.",
            id = "turnin-509-elixir-of-agony",
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
                quest = { id = 509, state = "completed" },
            },
            sourceStep = 19,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-509-quest-work" },
        },
        {
            priority = 290,
            route = {
                { y = 0.1906, mapID = 1424, label = "Apothecary Lydon", offMapText = "Travel to Apothecary Lydon in Hillsbrad Foothills.", x = 0.6144 },
            },
            text = "Accept Elixir of Agony from Apothecary Lydon.",
            id = "accept-513-elixir-of-agony",
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
                quest = { id = 513, state = "activeOrCompleted" },
            },
            sourceStep = 19,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 509 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 300,
            text = "Turn in To Steal From Thieves to Genavie Callow.",
            route = {
                { y = 0.4945, mapID = 1458, label = "Genavie Callow", offMapText = "Travel to Genavie Callow in Undercity.", x = 0.6384 },
            },
            dependsOn = { "objective-1164-2-marcel-dabyrie", "objective-1164-3-fardel-dabyrie", "objective-1164-1-kenata-dabyrie" },
            id = "turnin-1164-to-steal-from-thieves",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 27 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1164, state = "completed" },
            },
            sourceStep = 21,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 310,
            text = "Turn in Elixir of Agony to Master Apothecary Faranell.",
            route = {
                { mapID = 1458, x = 0.4882, y = 0.6928, label = "Master Apothecary Faranell", offMapText = "Travel to Master Apothecary Faranell in Undercity." },
            },
            dependsOn = { "accept-513-elixir-of-agony" },
            id = "turnin-513-elixir-of-agony",
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
                quest = { id = 513, state = "completed" },
            },
            sourceStep = 23,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 509 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 320,
            route = {
                { mapID = 1458, x = 0.5624, y = 0.9222, label = "Varimathras", offMapText = "Travel to Varimathras in Undercity." },
            },
            text = "Turn in Battle of Hillsbrad to Varimathras.",
            id = "turnin-550-battle-of-hillsbrad",
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
                quest = { id = 550, state = "completed" },
            },
            sourceStep = 24,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 541 },
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
