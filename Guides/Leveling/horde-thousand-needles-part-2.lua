local _, ns = ...

ns:RegisterGuide({
    revision = 3,
    title = "Thousand Needles",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-thousand-needles-part-2",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 33 },
            },
        },
    },
    goals = {
        {
            id = "level-before-turnin-1531-call-of-air",
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
            priority = 10,
        },
        {
            priority = 20,
            route = {
                { mapID = 1441, x = 0.5354, y = 0.4265, label = "Prate Cloudseer", offMapText = "Travel to Prate Cloudseer in Thousand Needles." },
            },
            text = "Turn in Call of Air to Prate Cloudseer.",
            id = "turnin-1531-call-of-air",
            kind = "turnin",
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
                quest = { id = 1531, state = "completed" },
            },
            sourceStep = 2,
            requiredQuests = {},
            alternativeQuests = { 1532 },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-turnin-1146-the-swarm-grows",
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
            checkpointQuest = 1146,
            priority = 30,
        },
        {
            priority = 40,
            route = {
                { y = 0.6394, mapID = 1441, label = "Moktar Krin", offMapText = "Travel to Moktar Krin in Thousand Needles.", x = 0.6758 },
            },
            text = "Turn in The Swarm Grows to Moktar Krin.",
            id = "turnin-1146-the-swarm-grows",
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
                quest = { id = 1146, state = "completed" },
            },
            sourceStep = 3,
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
            priority = 50,
            route = {
                { y = 0.6394, mapID = 1441, label = "Moktar Krin", offMapText = "Travel to Moktar Krin in Thousand Needles.", x = 0.6758 },
            },
            text = "Accept The Swarm Grows from Moktar Krin.",
            id = "accept-1147-the-swarm-grows",
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
                quest = { id = 1147, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1146 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-turnin-1112-parts-for-kravel",
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
            checkpointQuest = 1112,
            priority = 60,
        },
        {
            priority = 70,
            route = {
                { y = 0.7727, mapID = 1441, label = "Kravel Koalbeard", offMapText = "Travel to Kravel Koalbeard in Thousand Needles.", x = 0.7779 },
            },
            text = "Turn in Parts for Kravel to Kravel Koalbeard.",
            id = "turnin-1112-parts-for-kravel",
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
                quest = { id = 1112, state = "completed" },
            },
            sourceStep = 4,
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
            priority = 80,
            route = {
                { y = 0.7727, mapID = 1441, label = "Kravel Koalbeard", offMapText = "Travel to Kravel Koalbeard in Thousand Needles.", x = 0.7779 },
            },
            text = "Accept Rocket Car Parts from Kravel Koalbeard.",
            id = "accept-1110-rocket-car-parts",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 1110, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 90,
            route = {
                { y = 0.7727, mapID = 1441, label = "Kravel Koalbeard", offMapText = "Travel to Kravel Koalbeard in Thousand Needles.", x = 0.7779 },
            },
            text = "Accept Delivery to the Gnomes from Kravel Koalbeard.",
            id = "accept-1114-delivery-to-the-gnomes",
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
                quest = { id = 1114, state = "activeOrCompleted" },
            },
            sourceStep = 5,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1112 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 100,
            text = "Turn in Delivery to the Gnomes to Fizzle Brassbolts.",
            route = {
                { y = 0.7713, mapID = 1441, label = "Fizzle Brassbolts", offMapText = "Travel to Fizzle Brassbolts in Thousand Needles.", x = 0.7806 },
            },
            dependsOn = { "accept-1114-delivery-to-the-gnomes" },
            id = "turnin-1114-delivery-to-the-gnomes",
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
                quest = { id = 1114, state = "completed" },
            },
            sourceStep = 6,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1112 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 110,
            route = {
                { y = 0.7713, mapID = 1441, label = "Fizzle Brassbolts", offMapText = "Travel to Fizzle Brassbolts in Thousand Needles.", x = 0.7806 },
            },
            text = "Accept Salt Flat Venom from Fizzle Brassbolts.",
            id = "accept-1104-salt-flat-venom",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 1104, state = "activeOrCompleted" },
            },
            sourceStep = 6,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 120,
            route = {
                { y = 0.7727, mapID = 1441, label = "Kravel Koalbeard", offMapText = "Travel to Kravel Koalbeard in Thousand Needles.", x = 0.7779 },
            },
            text = "Accept The Rumormonger from Kravel Koalbeard.",
            id = "accept-1115-the-rumormonger",
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
                quest = { id = 1115, state = "activeOrCompleted" },
            },
            sourceStep = 7,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1114 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 130,
            route = {
                { y = 0.7712, mapID = 1441, label = "Wizzle Brassbolts", offMapText = "Travel to Wizzle Brassbolts in Thousand Needles.", x = 0.7814 },
            },
            text = "Accept Hardened Shells from Wizzle Brassbolts.",
            id = "accept-1105-hardened-shells",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 1105, state = "activeOrCompleted" },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 140,
            route = {
                { y = 0.7589, mapID = 1441, label = "Pozzik", offMapText = "Travel to Pozzik in Thousand Needles.", x = 0.8018 },
            },
            text = "Accept Load Lightening from Pozzik.",
            id = "accept-1176-load-lightening",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1176, state = "activeOrCompleted" },
            },
            sourceStep = 9,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 150,
            route = {
                { y = 0.7795, mapID = 1441, label = "Trackmaster Zherin", offMapText = "Travel to Trackmaster Zherin in Thousand Needles.", x = 0.8164 },
            },
            text = "Accept A Bump in the Road from Trackmaster Zherin.",
            id = "accept-1175-a-bump-in-the-road",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 1175, state = "activeOrCompleted" },
            },
            sourceStep = 10,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 160,
            text = "Kill 5 Silithid Invader.",
            route = {
                { y = 0.8618, mapID = 1441, label = "Silithid Invader", offMapText = "Travel to Silithid Invader.", x = 0.6632 },
            },
            dependsOn = { "accept-1147-the-swarm-grows" },
            id = "objective-1147-3-silithid-invader",
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
                questObjective = { id = 1147, text = "Silithid Invader", index = 3, count = 5 },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1146 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-1147-1-silithid-searcher",
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
            text = "Kill 5 Silithid Searcher.",
            complete = {
                questObjective = { id = 1147, index = 1, text = "Silithid Searcher", count = 5 },
            },
            route = {
                { mapID = 1441, x = 0.7020000000000001, y = 0.826, label = "Silithid Searcher", offMapText = "Travel to Silithid Searcher." },
            },
            sourceStep = 13,
            priority = 170,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1146 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1147-the-swarm-grows" },
        },
        {
            id = "loot-starter-before-accept-1148-parts-of-the-swarm",
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
            text = "Loot Cracked Silithid Carapace from Silithid Searcher, Silithid Invader, Silithid Hive Drone. Keep it for the next pickup.",
            complete = {
                any = {
                    {
                        item = { name = "Cracked Silithid Carapace", minCount = 1 },
                    },
                    {
                        quest = { id = 1148, state = "activeOrCompleted" },
                    },
                },
            },
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
            priority = 180,
        },
        {
            priority = 190,
            text = "Use the Cracked Silithid Carapace to accept Parts of the Swarm.",
            id = "accept-1148-parts-of-the-swarm",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1148, state = "activeOrCompleted" },
            },
            sourceStep = 14,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1146 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "objective-1147-2-silithid-hive-drone",
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
            text = "Kill 5 Silithid Hive Drone.",
            complete = {
                questObjective = { id = 1147, index = 2, text = "Silithid Hive Drone", count = 5 },
            },
            route = {
                { mapID = 1441, x = 0.7, y = 0.846, label = "Silithid Hive Drone", offMapText = "Travel to Silithid Hive Drone." },
            },
            sourceStep = 15,
            priority = 200,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1146 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1147-the-swarm-grows" },
        },
        {
            id = "objective-1148-1-silithid-heart",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 1 Silithid Heart.",
            complete = {
                questObjective = { id = 1148, index = 1, text = "Silithid Heart", count = 1 },
            },
            route = {
                { mapID = 1441, x = 0.7020000000000001, y = 0.826, label = "Silithid Heart", offMapText = "Travel to Silithid Heart." },
            },
            sourceStep = 16,
            priority = 210,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1146 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1148-parts-of-the-swarm" },
        },
        {
            id = "objective-1148-3-intact-silithid-carapace",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 3 Intact Silithid Carapace.",
            complete = {
                questObjective = { id = 1148, index = 3, text = "Intact Silithid Carapace", count = 3 },
            },
            route = {
                { mapID = 1441, x = 0.7020000000000001, y = 0.826, label = "Intact Silithid Carapace", offMapText = "Travel to Intact Silithid Carapace." },
            },
            sourceStep = 16,
            priority = 220,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1146 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1148-parts-of-the-swarm" },
        },
        {
            id = "objective-1148-2-silithid-talon",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            text = "Collect 5 Silithid Talon.",
            complete = {
                questObjective = { id = 1148, index = 2, text = "Silithid Talon", count = 5 },
            },
            route = {
                { mapID = 1441, x = 0.7020000000000001, y = 0.826, label = "Silithid Talon", offMapText = "Travel to Silithid Talon." },
            },
            sourceStep = 16,
            priority = 230,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1146 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1148-parts-of-the-swarm" },
        },
        {
            priority = 240,
            text = "Kill 6 Saltstone Gazer.",
            route = {
                { mapID = 1441, x = 0.774, y = 0.88, label = "Saltstone Gazer", offMapText = "Travel to Saltstone Gazer." },
            },
            dependsOn = { "accept-1175-a-bump-in-the-road" },
            id = "objective-1175-3-saltstone-gazer",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1175, text = "Saltstone Gazer", index = 3, count = 6 },
            },
            sourceStep = 17,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 250,
            text = "Collect 10 Hollow Vulture Bone.",
            route = {
                { y = 0.66, mapID = 1441, label = "Salt Flats Scavenger", offMapText = "Travel to Salt Flats Scavenger.", x = 0.88 },
            },
            dependsOn = { "accept-1176-load-lightening" },
            id = "objective-1176-1-salt-flats-scavenger",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                questObjective = { id = 1176, text = "Salt Flats Scavenger", index = 1, count = 10 },
            },
            sourceStep = 18,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "objective-1105-1-hardened-tortoise-shell",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            text = "Collect 9 Hardened Tortoise Shell.",
            complete = {
                questObjective = { id = 1105, index = 1, text = "Hardened Tortoise Shell", count = 9 },
            },
            route = {
                { mapID = 1441, x = 0.828, y = 0.552, label = "Hardened Tortoise Shell", offMapText = "Travel to Hardened Tortoise Shell." },
            },
            sourceStep = 19,
            priority = 260,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1105-hardened-shells" },
        },
        {
            id = "objective-1104-1-salty-scorpid-venom",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            text = "Collect 6 Salty Scorpid Venom.",
            complete = {
                questObjective = { id = 1104, index = 1, text = "Salty Scorpid Venom", count = 6 },
            },
            route = {
                { mapID = 1441, x = 0.8240000000000001, y = 0.6, label = "Salty Scorpid Venom", offMapText = "Travel to Salty Scorpid Venom." },
            },
            sourceStep = 20,
            priority = 270,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1104-salt-flat-venom" },
        },
        {
            id = "objective-1175-1-saltstone-basilisk",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            text = "Kill 10 Saltstone Basilisk.",
            complete = {
                questObjective = { id = 1175, index = 1, text = "Saltstone Basilisk", count = 10 },
            },
            route = {
                { mapID = 1441, x = 0.784, y = 0.59, label = "Saltstone Basilisk", offMapText = "Travel to Saltstone Basilisk." },
            },
            sourceStep = 21,
            priority = 280,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1175-a-bump-in-the-road" },
        },
        {
            id = "objective-1175-2-saltstone-crystalhide",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            text = "Kill 10 Saltstone Crystalhide.",
            complete = {
                questObjective = { id = 1175, index = 2, text = "Saltstone Crystalhide", count = 10 },
            },
            route = {
                { mapID = 1441, x = 0.7879999999999999, y = 0.868, label = "Saltstone Crystalhide", offMapText = "Travel to Saltstone Crystalhide." },
            },
            sourceStep = 22,
            priority = 290,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1175-a-bump-in-the-road" },
        },
        {
            id = "objective-1110-1-rocket-car-parts",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            text = "Collect 30 Rocket Car Parts.",
            complete = {
                questObjective = { id = 1110, index = 1, text = "Rocket Car Parts", count = 30 },
            },
            route = {
                { mapID = 1441, x = 0.83, y = 0.6459999999999999, label = "Rocket Car Parts", offMapText = "Travel to Rocket Car Parts." },
            },
            sourceStep = 23,
            priority = 300,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = { "accept-1110-rocket-car-parts" },
        },
        {
            priority = 310,
            text = "Turn in The Swarm Grows to Moktar Krin.",
            route = {
                { y = 0.6394, mapID = 1441, label = "Moktar Krin", offMapText = "Travel to Moktar Krin in Thousand Needles.", x = 0.6758 },
            },
            dependsOn = {
                "accept-1147-the-swarm-grows",
                "objective-1147-3-silithid-invader",
                "objective-1147-1-silithid-searcher",
                "objective-1147-2-silithid-hive-drone",
            },
            id = "turnin-1147-the-swarm-grows",
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
                quest = { id = 1147, state = "completed" },
            },
            sourceStep = 24,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1146 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 320,
            text = "Turn in Rocket Car Parts to Kravel Koalbeard.",
            route = {
                { y = 0.7727, mapID = 1441, label = "Kravel Koalbeard", offMapText = "Travel to Kravel Koalbeard in Thousand Needles.", x = 0.7779 },
            },
            dependsOn = { "accept-1110-rocket-car-parts", "objective-1110-1-rocket-car-parts" },
            id = "turnin-1110-rocket-car-parts",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 1110, state = "completed" },
            },
            sourceStep = 25,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 330,
            route = {
                { y = 0.7727, mapID = 1441, label = "Kravel Koalbeard", offMapText = "Travel to Kravel Koalbeard in Thousand Needles.", x = 0.7779 },
            },
            text = "Accept Hemet Nesingwary Jr. from Kravel Koalbeard.",
            id = "accept-5762-hemet-nesingwary-jr",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 5762, state = "activeOrCompleted" },
            },
            sourceStep = 25,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 340,
            text = "Turn in Salt Flat Venom to Fizzle Brassbolts.",
            route = {
                { y = 0.7713, mapID = 1441, label = "Fizzle Brassbolts", offMapText = "Travel to Fizzle Brassbolts in Thousand Needles.", x = 0.7806 },
            },
            dependsOn = { "accept-1104-salt-flat-venom", "objective-1104-1-salty-scorpid-venom" },
            id = "turnin-1104-salt-flat-venom",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 1104, state = "completed" },
            },
            sourceStep = 26,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 350,
            text = "Turn in Hardened Shells to Wizzle Brassbolts.",
            route = {
                { y = 0.7712, mapID = 1441, label = "Wizzle Brassbolts", offMapText = "Travel to Wizzle Brassbolts in Thousand Needles.", x = 0.7814 },
            },
            dependsOn = { "accept-1105-hardened-shells", "objective-1105-1-hardened-tortoise-shell" },
            id = "turnin-1105-hardened-shells",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 1105, state = "completed" },
            },
            sourceStep = 27,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 360,
            route = {
                { y = 0.7712, mapID = 1441, label = "Fizzle Brassbolts", offMapText = "Travel to Fizzle Brassbolts in Thousand Needles.", x = 0.7806 },
            },
            text = "Accept Martek the Exiled from Fizzle Brassbolts.",
            id = "accept-1106-martek-the-exiled",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 26 },
                    },
                },
            },
            complete = {
                quest = { id = 1106, state = "activeOrCompleted" },
            },
            sourceStep = 28,
            requiredQuests = {
                {
                    mode = "all",
                    quests = { 1104, 1105 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 370,
            text = "Turn in Load Lightening to Pozzik.",
            route = {
                { y = 0.7588, mapID = 1441, label = "Pozzik", offMapText = "Travel to Pozzik in Thousand Needles.", x = 0.8018 },
            },
            dependsOn = { "accept-1176-load-lightening", "objective-1176-1-salt-flats-scavenger" },
            id = "turnin-1176-load-lightening",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1176, state = "completed" },
            },
            sourceStep = 29,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 380,
            route = {
                { y = 0.7588, mapID = 1441, label = "Pozzik", offMapText = "Travel to Pozzik in Thousand Needles.", x = 0.8018 },
            },
            text = "Accept Goblin Sponsorship from Pozzik.",
            id = "accept-1178-goblin-sponsorship",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1178, state = "activeOrCompleted" },
            },
            sourceStep = 29,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1176 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 390,
            text = "Turn in A Bump in the Road to Trackmaster Zherin.",
            route = {
                { y = 0.7795, mapID = 1441, label = "Trackmaster Zherin", offMapText = "Travel to Trackmaster Zherin in Thousand Needles.", x = 0.8163 },
            },
            dependsOn = {
                "accept-1175-a-bump-in-the-road",
                "objective-1175-3-saltstone-gazer",
                "objective-1175-1-saltstone-basilisk",
                "objective-1175-2-saltstone-crystalhide",
            },
            id = "turnin-1175-a-bump-in-the-road",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 1175, state = "completed" },
            },
            sourceStep = 30,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            id = "level-before-accept-5361-family-tree",
            kind = "note",
            text = "Reach level 32 before continuing. Choose how to gain XP, then return to this route.",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                level = { min = 32 },
            },
            requiredLevel = 32,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 5361,
            priority = 400,
        },
        {
            priority = 410,
            route = {
                { y = 0.508, mapID = 1441, label = "Cliffwatcher Longhorn", offMapText = "Travel to Cliffwatcher Longhorn in Thousand Needles.", x = 0.4565 },
            },
            text = "Accept Family Tree from Cliffwatcher Longhorn.",
            id = "accept-5361-family-tree",
            kind = "accept",
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
                quest = { id = 5361, state = "activeOrCompleted" },
            },
            sourceStep = 33,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 420,
            text = "Turn in Parts of the Swarm to Korran.",
            route = {
                { y = 0.2963, mapID = 1413, label = "Korran", offMapText = "Travel to Korran in The Barrens.", x = 0.5107 },
            },
            dependsOn = {
                "accept-1148-parts-of-the-swarm",
                "objective-1148-1-silithid-heart",
                "objective-1148-3-intact-silithid-carapace",
                "objective-1148-2-silithid-talon",
            },
            id = "turnin-1148-parts-of-the-swarm",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1148, state = "completed" },
            },
            sourceStep = 34,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1146 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 430,
            route = {
                { y = 0.2963, mapID = 1413, label = "Korran", offMapText = "Travel to Korran in The Barrens.", x = 0.5107 },
            },
            text = "Accept Parts of the Swarm from Korran.",
            id = "accept-1184-parts-of-the-swarm",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1184, state = "activeOrCompleted" },
            },
            sourceStep = 34,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1148 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 440,
            text = "Turn in Goblin Sponsorship to Gazlowe.",
            route = {
                { y = 0.3623, mapID = 1413, label = "Gazlowe", offMapText = "Travel to Gazlowe in The Barrens.", x = 0.6268 },
            },
            dependsOn = { "accept-1178-goblin-sponsorship" },
            id = "turnin-1178-goblin-sponsorship",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1178, state = "completed" },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1176 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 450,
            route = {
                { y = 0.3623, mapID = 1413, label = "Gazlowe", offMapText = "Travel to Gazlowe in The Barrens.", x = 0.6268 },
            },
            text = "Accept Goblin Sponsorship from Gazlowe.",
            id = "accept-1180-goblin-sponsorship",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1180, state = "activeOrCompleted" },
            },
            sourceStep = 36,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1178 },
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
                { y = 0.4378, mapID = 1413, label = "Islen Waterseer", offMapText = "Travel to Islen Waterseer in The Barrens.", x = 0.6583 },
            },
            text = "Turn in Call of Water to Islen Waterseer.",
            id = "turnin-96-call-of-water",
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
                quest = { id = 96, state = "completed" },
            },
            sourceStep = 37,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 100 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 470,
            text = "Turn in Goblin Sponsorship to Wharfmaster Lozgil.",
            route = {
                { y = 0.7356, mapID = 1434, label = "Wharfmaster Lozgil", offMapText = "Travel to Wharfmaster Lozgil in Stranglethorn Vale.", x = 0.2634 },
            },
            dependsOn = { "accept-1180-goblin-sponsorship" },
            id = "turnin-1180-goblin-sponsorship",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1180, state = "completed" },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1178 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 480,
            route = {
                { y = 0.7356, mapID = 1434, label = "Wharfmaster Lozgil", offMapText = "Travel to Wharfmaster Lozgil in Stranglethorn Vale.", x = 0.2634 },
            },
            text = "Accept Goblin Sponsorship from Wharfmaster Lozgil.",
            id = "accept-1181-goblin-sponsorship",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1181, state = "activeOrCompleted" },
            },
            sourceStep = 38,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1180 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 490,
            route = {
                { y = 0.7759, mapID = 1434, label = "Drizzlik", offMapText = "Travel to Drizzlik in Stranglethorn Vale.", x = 0.2829 },
            },
            text = "Accept Supply and Demand from Drizzlik.",
            id = "accept-575-supply-and-demand",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 26 },
                    },
                },
            },
            complete = {
                quest = { id = 575, state = "activeOrCompleted" },
            },
            sourceStep = 39,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 500,
            route = {
                { y = 0.7721, mapID = 1434, label = "Crank Fizzlebub", offMapText = "Travel to Crank Fizzlebub in Stranglethorn Vale.", x = 0.2712 },
            },
            text = "Accept Singing Blue Shards from Crank Fizzlebub.",
            id = "accept-605-singing-blue-shards",
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
                quest = { id = 605, state = "activeOrCompleted" },
            },
            sourceStep = 40,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 510,
            text = "Turn in The Rumormonger to Krazek.",
            route = {
                { y = 0.7721, mapID = 1434, label = "Krazek", offMapText = "Travel to Krazek in Stranglethorn Vale.", x = 0.2694 },
            },
            dependsOn = { "accept-1115-the-rumormonger" },
            id = "turnin-1115-the-rumormonger",
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
                quest = { id = 1115, state = "completed" },
            },
            sourceStep = 41,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1114 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 520,
            route = {
                { y = 0.7721, mapID = 1434, label = "Krazek", offMapText = "Travel to Krazek in Stranglethorn Vale.", x = 0.2694 },
            },
            text = "Accept Investigate the Camp from Krazek.",
            id = "accept-201-investigate-the-camp",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                },
            },
            complete = {
                quest = { id = 201, state = "activeOrCompleted" },
            },
            sourceStep = 41,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 530,
            route = {
                { y = 0.7712, mapID = 1434, label = "Kebok", offMapText = "Travel to Kebok in Stranglethorn Vale.", x = 0.27 },
            },
            text = "Accept Bloodscalp Ears from Kebok.",
            id = "accept-189-bloodscalp-ears",
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
                quest = { id = 189, state = "activeOrCompleted" },
            },
            sourceStep = 42,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-213-hostile-takeover",
            kind = "note",
            text = "Reach level 31 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 31 },
            },
            requiredLevel = 31,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 213,
            priority = 540,
        },
        {
            priority = 550,
            route = {
                { y = 0.7712, mapID = 1434, label = "Kebok", offMapText = "Travel to Kebok in Stranglethorn Vale.", x = 0.27 },
            },
            text = "Accept Hostile Takeover from Kebok.",
            id = "accept-213-hostile-takeover",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 31 },
                    },
                },
            },
            complete = {
                quest = { id = 213, state = "activeOrCompleted" },
            },
            sourceStep = 42,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 560,
            text = "Turn in Goblin Sponsorship to Baron Revilgaz.",
            route = {
                { y = 0.7687, mapID = 1434, label = "Baron Revilgaz", offMapText = "Travel to Baron Revilgaz in Stranglethorn Vale.", x = 0.2723 },
            },
            dependsOn = { "accept-1181-goblin-sponsorship" },
            id = "turnin-1181-goblin-sponsorship",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1181, state = "completed" },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1180 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            priority = 570,
            route = {
                { y = 0.7687, mapID = 1434, label = "Baron Revilgaz", offMapText = "Travel to Baron Revilgaz in Stranglethorn Vale.", x = 0.2723 },
            },
            text = "Accept Goblin Sponsorship from Baron Revilgaz.",
            id = "accept-1182-goblin-sponsorship",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 29 },
                    },
                },
            },
            complete = {
                quest = { id = 1182, state = "activeOrCompleted" },
            },
            sourceStep = 43,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1181 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            priority = 580,
            text = "Turn in Parts of the Swarm to Belgrom Rockmaul.",
            route = {
                { y = 0.3424, mapID = 1454, label = "Belgrom Rockmaul", offMapText = "Travel to Belgrom Rockmaul in Orgrimmar.", x = 0.7523 },
            },
            dependsOn = { "accept-1184-parts-of-the-swarm" },
            id = "turnin-1184-parts-of-the-swarm",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 28 },
                    },
                    {
                        race = { 2, 5, 6, 8, 96 },
                    },
                },
            },
            complete = {
                quest = { id = 1184, state = "completed" },
            },
            sourceStep = 51,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1148 },
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
