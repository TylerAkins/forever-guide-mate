local _, ns = ...

ns:RegisterGuide({
    revision = 5,
    title = "Desolace",
    category = "Leveling Quest Guides",
    id = "leveling-era-horde-desolace-part-2",
    conditions = {
        all = {
            { faction = "Horde" },
            {
                level = { min = 41 },
            },
        },
    },
    goals = {
        {
            id = "level-before-accept-5581-portals-of-the-legion",
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
            checkpointQuest = 5581,
        },
        {
            route = {
                { y = 0.6822, mapID = 1443, label = "Taiga Wisemane", offMapText = "Travel to Taiga Wisemane in Desolace.", x = 0.2581 },
            },
            text = "Accept Portals of the Legion from Taiga Wisemane.",
            id = "accept-5581-portals-of-the-legion",
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
                quest = { id = 5581, state = "activeOrCompleted" },
            },
            sourceStep = 1,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5381 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-objective-1373-quest-work",
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
            checkpointQuest = 1373,
        },
        {
            route = {
                { mapID = 1435, x = 0.6131, y = 0.2325, label = "Draenethyst Shard", offMapText = "Travel to Draenethyst Shard." },
            },
            text = "For Ongeku: Maintain your reputation with the Gelkis, and bring a Draenethyst Shard to Uthek the Wise in the Gelkis Village in Desolace.",
            id = "objective-1373-quest-work",
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
                quest = { id = 1373, state = "complete" },
            },
            sourceStep = 2,
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
            route = {
                { y = 0.7925, mapID = 1443, label = "Uthek the Wise", offMapText = "Travel to Uthek the Wise in Desolace.", x = 0.3622 },
            },
            text = "Turn in Ongeku to Uthek the Wise.",
            id = "turnin-1373-ongeku",
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
                quest = { id = 1373, state = "completed" },
            },
            sourceStep = 2,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1370 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = { "objective-1373-quest-work" },
        },
        {
            route = {
                { y = 0.7925, mapID = 1443, label = "Uthek the Wise", offMapText = "Travel to Uthek the Wise in Desolace.", x = 0.3622 },
            },
            text = "Accept Khan Jehn from Uthek the Wise.",
            id = "accept-1374-khan-jehn",
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
                quest = { id = 1374, state = "activeOrCompleted" },
            },
            sourceStep = 2,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1373 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            id = "level-before-accept-6134-ghost-o-plasm-round-up",
            kind = "note",
            text = "Reach level 34 before continuing. Choose how to gain XP, then return to this route.",
            conditions = { faction = "Horde" },
            complete = {
                level = { min = 34 },
            },
            requiredLevel = 34,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            checkpointQuest = 6134,
        },
        {
            route = {
                { y = 0.6182, mapID = 1443, label = "Hornizz Brimbuzzle", offMapText = "Travel to Hornizz Brimbuzzle in Desolace.", x = 0.4783 },
            },
            text = "Accept Ghost-o-plasm Round Up from Hornizz Brimbuzzle.",
            id = "accept-6134-ghost-o-plasm-round-up",
            kind = "accept",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 34 },
                    },
                },
            },
            complete = {
                quest = { id = 6134, state = "activeOrCompleted" },
            },
            sourceStep = 3,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            dependsOn = {},
        },
        {
            complete = { quest = { id = 1488, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "accept-1488-the-corrupter",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1484 } } },
            route = {
                {
                    label = "Takata Steelblade",
                    mapID = 1443,
                    offMapText = "Travel to Takata Steelblade in Desolace.",
                    x = 0.5257,
                    y = 0.5438,
                },
            },
            sourceStep = 4,
            text = "Accept The Corrupter from Takata Steelblade.",
            useClientPin = false,
            useClientText = false,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1488, state = "activeOrCompleted" } },
                        {
                            all = {
                                { faction = "Horde" },
                                {
                                    any = {
                                        {
                                            any = {
                                                { quest = { id = 1484, state = "activeOrCompleted" } },
                                                {
                                                    all = {
                                                        { faction = "Horde" },
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 1482, state = "activeOrCompleted" } },
                                                                        {
                                                                            all = {
                                                                                { faction = "Horde" },
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 1481, state = "activeOrCompleted" } },
                                                                                                {
                                                                                                    all = {
                                                                                                        { faction = "Horde" },
                                                                                                        {
                                                                                                            any = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        { quest = { id = 1480, state = "activeOrCompleted" } },
                                                                                                                        { all = { { item = { name = "Flayed Demon Skin", minCount = 1 } }, { faction = "Horde" } } },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            text = "Kill Demon Portal Guardian.",
            route = {
                { y = 0.7914, mapID = 1443, label = "Demon Portal Guardian", offMapText = "Travel to Demon Portal Guardian.", x = 0.539 },
            },
            dependsOn = { "accept-5581-portals-of-the-legion" },
            id = "objective-5581-1-demon-portal-guardian",
            kind = "objective",
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
                questObjective = { id = 5581, text = "Demon Portal Guardian", index = 1 },
            },
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5381 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            complete = { questObjective = { id = 1488, index = 2, text = "Jugkar Grim'rod" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "accept-1488-the-corrupter" },
            id = "objective-1488-2-jugkar-grim-rod",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1484 } } },
            route = {
                { label = "Jugkar Grim'rod", mapID = 1443, offMapText = "Travel to Jugkar Grim'rod.", x = 0.5591, y = 0.7776 },
            },
            sourceStep = 6,
            text = "Kill Jugkar Grim'rod.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1488, state = "activeOrCompleted" } },
                        {
                            all = {
                                { faction = "Horde" },
                                {
                                    any = {
                                        {
                                            any = {
                                                { quest = { id = 1484, state = "activeOrCompleted" } },
                                                {
                                                    all = {
                                                        { faction = "Horde" },
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 1482, state = "activeOrCompleted" } },
                                                                        {
                                                                            all = {
                                                                                { faction = "Horde" },
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 1481, state = "activeOrCompleted" } },
                                                                                                {
                                                                                                    all = {
                                                                                                        { faction = "Horde" },
                                                                                                        {
                                                                                                            any = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        { quest = { id = 1480, state = "activeOrCompleted" } },
                                                                                                                        { all = { { item = { name = "Flayed Demon Skin", minCount = 1 } }, { faction = "Horde" } } },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { id = 1488, index = 1, text = "Lord Azrethoc" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "accept-1488-the-corrupter" },
            id = "objective-1488-1-lord-azrethoc",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1484 } } },
            route = { { label = "Lord Azrethoc", mapID = 1443, offMapText = "Travel to Lord Azrethoc.", x = 0.5602, y = 0.7776 } },
            sourceStep = 7,
            text = "Kill Lord Azrethoc.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1488, state = "activeOrCompleted" } },
                        {
                            all = {
                                { faction = "Horde" },
                                {
                                    any = {
                                        {
                                            any = {
                                                { quest = { id = 1484, state = "activeOrCompleted" } },
                                                {
                                                    all = {
                                                        { faction = "Horde" },
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 1482, state = "activeOrCompleted" } },
                                                                        {
                                                                            all = {
                                                                                { faction = "Horde" },
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 1481, state = "activeOrCompleted" } },
                                                                                                {
                                                                                                    all = {
                                                                                                        { faction = "Horde" },
                                                                                                        {
                                                                                                            any = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        { quest = { id = 1480, state = "activeOrCompleted" } },
                                                                                                                        { all = { { item = { name = "Flayed Demon Skin", minCount = 1 } }, { faction = "Horde" } } },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            text = "Use the Crate of Ghost Magnets beside the large bones in southern Desolace. Kill the Magrami Spectres it attracts and collect 8 Ghost-o-plasm. Pull them away from the magnet before they become hostile.",
            route = {
                { y = 0.9127, mapID = 1443, label = "Crate of Ghost Magnets", offMapText = "Travel to Crate of Ghost Magnets.", x = 0.6381 },
            },
            dependsOn = { "accept-6134-ghost-o-plasm-round-up" },
            id = "objective-6134-1-crate-of-ghost-magnets",
            kind = "objective",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 34 },
                    },
                },
            },
            complete = {
                questObjective = { id = 6134, text = "Crate of Ghost Magnets", index = 1, count = 8 },
            },
            sourceStep = 8,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Collect 1 Khan Jehn's Head.",
            route = {
                { y = 0.8008, mapID = 1443, label = "Khan Jehn", offMapText = "Travel to Khan Jehn.", x = 0.6639 },
            },
            dependsOn = { "accept-1374-khan-jehn" },
            id = "objective-1374-1-khan-jehn",
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
                questObjective = { id = 1374, text = "Khan Jehn", index = 1, count = 1 },
            },
            sourceStep = 9,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1373 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            complete = { quest = { id = 1488, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "accept-1488-the-corrupter", "objective-1488-2-jugkar-grim-rod", "objective-1488-1-lord-azrethoc" },
            id = "turnin-1488-the-corrupter",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1484 } } },
            route = {
                {
                    label = "Takata Steelblade",
                    mapID = 1443,
                    offMapText = "Travel to Takata Steelblade in Desolace.",
                    x = 0.5257,
                    y = 0.5438,
                },
            },
            sourceStep = 10,
            text = "Turn in The Corrupter to Takata Steelblade.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1488, state = "activeOrCompleted" } },
                        {
                            all = {
                                { faction = "Horde" },
                                {
                                    any = {
                                        {
                                            any = {
                                                { quest = { id = 1484, state = "activeOrCompleted" } },
                                                {
                                                    all = {
                                                        { faction = "Horde" },
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 1482, state = "activeOrCompleted" } },
                                                                        {
                                                                            all = {
                                                                                { faction = "Horde" },
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 1481, state = "activeOrCompleted" } },
                                                                                                {
                                                                                                    all = {
                                                                                                        { faction = "Horde" },
                                                                                                        {
                                                                                                            any = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        { quest = { id = 1480, state = "activeOrCompleted" } },
                                                                                                                        { all = { { item = { name = "Flayed Demon Skin", minCount = 1 } }, { faction = "Horde" } } },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            text = "Turn in Ghost-o-plasm Round Up to Hornizz Brimbuzzle.",
            route = {
                { y = 0.6182, mapID = 1443, label = "Hornizz Brimbuzzle", offMapText = "Travel to Hornizz Brimbuzzle in Desolace.", x = 0.4783 },
            },
            dependsOn = { "accept-6134-ghost-o-plasm-round-up", "objective-6134-1-crate-of-ghost-magnets" },
            id = "turnin-6134-ghost-o-plasm-round-up",
            kind = "turnin",
            conditions = {
                all = {
                    { faction = "Horde" },
                    {
                        level = { min = 34 },
                    },
                },
            },
            complete = {
                quest = { id = 6134, state = "completed" },
            },
            sourceStep = 11,
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Khan Jehn to Uthek the Wise.",
            route = {
                { y = 0.7925, mapID = 1443, label = "Uthek the Wise", offMapText = "Travel to Uthek the Wise in Desolace.", x = 0.3622 },
            },
            dependsOn = { "accept-1374-khan-jehn", "objective-1374-1-khan-jehn" },
            id = "turnin-1374-khan-jehn",
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
                quest = { id = 1374, state = "completed" },
            },
            sourceStep = 12,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 1373 },
                    conditions = {},
                },
            },
            useClientText = false,
            useClientPin = false,
        },
        {
            text = "Turn in Portals of the Legion to Taiga Wisemane.",
            route = {
                { mapID = 1443, x = 0.2581, y = 0.6822, label = "Taiga Wisemane", offMapText = "Travel to Taiga Wisemane in Desolace." },
            },
            dependsOn = { "accept-5581-portals-of-the-legion", "objective-5581-1-demon-portal-guardian" },
            id = "turnin-5581-portals-of-the-legion",
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
                quest = { id = 5581, state = "completed" },
            },
            sourceStep = 13,
            requiredQuests = {
                {
                    mode = "any",
                    quests = { 5381 },
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
