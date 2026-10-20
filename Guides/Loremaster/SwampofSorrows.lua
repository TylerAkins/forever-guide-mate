local _, ns = ...

-- Source decisions: docs/loremaster/swamp-of-sorrows.json.
-- Coordinates require a Forever client walkthrough.
ns:RegisterGuide({
    id = "loremaster-swamp-of-sorrows",
    title = "Swamp of Sorrows",
    category = "Loremaster Guides",
    revision = 1,
    routeMode = "ordered",
    loremasterExpanded = true,
    goals = {
        {
            id = "visit-entry-leveling-era-alliance-swamp-of-sorrows",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            text = "Reach level 38 before the Swamp of Sorrows visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 38 } },
            requiredLevel = 38,
        },
        {
            complete = { quest = { id = 1396, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-accept-1396-encroaching-wildlife",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Watcher Biggs",
                    mapID = 1435,
                    offMapText = "Travel to Watcher Biggs in Swamp of Sorrows.",
                    x = 0.2674,
                    y = 0.5983,
                },
            },
            sourceStep = 19,
            text = "Accept Encroaching Wildlife from Watcher Biggs.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "accept-1396-encroaching-wildlife",
        },
        {
            complete = { quest = { id = 1392, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-accept-1392-noboru-the-cudgel",
            kind = "accept",
            requiredQuests = {},
            sourceStep = 20,
            text = "Use the Noboru's Cudgel to accept Noboru the Cudgel.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "accept-1392-noboru-the-cudgel",
        },
        {
            complete = { quest = { id = 1392, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            dependsOn = { "alliance-leveling-era-alliance-swamp-of-sorrows-accept-1392-noboru-the-cudgel" },
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-turnin-1392-noboru-the-cudgel",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Magtoor", mapID = 1435, offMapText = "Travel to Magtoor in Swamp of Sorrows.", x = 0.2599, y = 0.314 },
            },
            sourceStep = 21,
            text = "Turn in Noboru the Cudgel to Magtoor.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "turnin-1392-noboru-the-cudgel",
        },
        {
            complete = { quest = { id = 1389, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-accept-1389-draenethyst-crystals",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Magtoor", mapID = 1435, offMapText = "Travel to Magtoor in Swamp of Sorrows.", x = 0.2599, y = 0.314 },
            },
            sourceStep = 21,
            text = "Accept Draenethyst Crystals from Magtoor.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "accept-1389-draenethyst-crystals",
        },
        {
            complete = { questObjective = { count = 8, id = 1396, index = 1, text = "Young Sawtooth Crocolisk" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-swamp-of-sorrows-accept-1396-encroaching-wildlife" },
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-objective-1396-1-young-sawtooth-crocolisk",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Young Sawtooth Crocolisk",
                    mapID = 1435,
                    offMapText = "Travel to Young Sawtooth Crocolisk.",
                    x = 0.246,
                    y = 0.524,
                },
            },
            sourceStep = 23,
            text = "Kill 8 Young Sawtooth Crocolisk.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "objective-1396-1-young-sawtooth-crocolisk",
        },
        {
            complete = { questObjective = { count = 10, id = 1396, index = 2, text = "Sorrow Spinner" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-swamp-of-sorrows-accept-1396-encroaching-wildlife" },
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-objective-1396-2-sorrow-spinner",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Sorrow Spinner", mapID = 1435, offMapText = "Travel to Sorrow Spinner.", x = 0.254, y = 0.492 } },
            sourceStep = 24,
            text = "Kill 10 Sorrow Spinner.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "objective-1396-2-sorrow-spinner",
        },
        {
            complete = { questObjective = { count = 10, id = 1396, index = 3, text = "Swamp Jaguar" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-swamp-of-sorrows-accept-1396-encroaching-wildlife" },
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-objective-1396-3-swamp-jaguar",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Swamp Jaguar", mapID = 1435, offMapText = "Travel to Swamp Jaguar.", x = 0.264, y = 0.474 } },
            sourceStep = 25,
            text = "Kill 10 Swamp Jaguar.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "objective-1396-3-swamp-jaguar",
        },
        {
            complete = { quest = { id = 1396, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-swamp-of-sorrows-accept-1396-encroaching-wildlife",
                "alliance-leveling-era-alliance-swamp-of-sorrows-objective-1396-1-young-sawtooth-crocolisk",
                "alliance-leveling-era-alliance-swamp-of-sorrows-objective-1396-2-sorrow-spinner",
                "alliance-leveling-era-alliance-swamp-of-sorrows-objective-1396-3-swamp-jaguar",
            },
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-turnin-1396-encroaching-wildlife",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Watcher Biggs",
                    mapID = 1435,
                    offMapText = "Travel to Watcher Biggs in Swamp of Sorrows.",
                    x = 0.2674,
                    y = 0.5983,
                },
            },
            sourceStep = 26,
            text = "Turn in Encroaching Wildlife to Watcher Biggs.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "turnin-1396-encroaching-wildlife",
        },
        {
            complete = { quest = { id = 1421, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-accept-1421-the-lost-caravan",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1396 } } },
            route = {
                {
                    label = "Watcher Biggs",
                    mapID = 1435,
                    offMapText = "Travel to Watcher Biggs in Swamp of Sorrows.",
                    x = 0.2674,
                    y = 0.5983,
                },
            },
            sourceStep = 26,
            text = "Accept The Lost Caravan from Watcher Biggs.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "accept-1421-the-lost-caravan",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1421, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1421, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1396, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
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
            complete = { questObjective = { count = 1, id = 1421, index = 1, text = "Caravan Chest" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-swamp-of-sorrows-accept-1421-the-lost-caravan" },
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-objective-1421-1-caravan-chest",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1396 } } },
            route = { { label = "Caravan Chest", mapID = 1435, offMapText = "Travel to Caravan Chest.", x = 0.6446, y = 0.1834 } },
            sourceStep = 28,
            text = "Collect 1 Wizards' Reagents.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "objective-1421-1-caravan-chest",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1421, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1421, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1396, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
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
            complete = { quest = { id = 1393, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-accept-1393-galen-s-escape",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Galen Goodward",
                    mapID = 1435,
                    offMapText = "Travel to Galen Goodward in Swamp of Sorrows.",
                    x = 0.6541,
                    y = 0.1823,
                },
            },
            sourceStep = 29,
            text = "Accept Galen's Escape from Galen Goodward.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "accept-1393-galen-s-escape",
        },
        {
            complete = { quest = { id = 1393, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = { "alliance-leveling-era-alliance-swamp-of-sorrows-accept-1393-galen-s-escape" },
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-objective-1393-reviewed-escort",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Escort destination", mapID = 1435, offMapText = "Travel to Escort destination.", x = 0.5305, y = 0.2964 },
            },
            sourceStep = 30,
            text = "Escort Galen Goodward out of the Fallow Sanctuary and protect him from attackers.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "objective-1393-reviewed-escort",
        },
        {
            complete = { questObjective = { count = 6, id = 1389, index = 1, text = "Draenethyst Crystal" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = { "alliance-leveling-era-alliance-swamp-of-sorrows-accept-1389-draenethyst-crystals" },
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-objective-1389-1-draenethyst-crystal",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Draenethyst Crystal", mapID = 1435, offMapText = "Travel to Draenethyst Crystal.", x = 0.55, y = 0.302 },
            },
            sourceStep = 31,
            text = "Collect 6 Draenethyst Crystal.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "objective-1389-1-draenethyst-crystal",
        },
        {
            complete = { quest = { id = 1393, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-swamp-of-sorrows-accept-1393-galen-s-escape",
                "alliance-leveling-era-alliance-swamp-of-sorrows-objective-1393-reviewed-escort",
            },
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-turnin-1393-galen-s-escape",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Galen's Escape", mapID = 1435, offMapText = "Travel to Galen's Escape.", x = 0.4781, y = 0.3976 } },
            sourceStep = 33,
            text = "Turn in Galen's Escape.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "turnin-1393-galen-s-escape",
        },
        {
            complete = { quest = { id = 1389, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-swamp-of-sorrows-accept-1389-draenethyst-crystals",
                "alliance-leveling-era-alliance-swamp-of-sorrows-objective-1389-1-draenethyst-crystal",
            },
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-turnin-1389-draenethyst-crystals",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Magtoor", mapID = 1435, offMapText = "Travel to Magtoor in Swamp of Sorrows.", x = 0.2599, y = 0.314 },
            },
            sourceStep = 34,
            text = "Turn in Draenethyst Crystals to Magtoor.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "turnin-1389-draenethyst-crystals",
        },
        {
            complete = { quest = { id = 1421, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-swamp-of-sorrows-accept-1421-the-lost-caravan",
                "alliance-leveling-era-alliance-swamp-of-sorrows-objective-1421-1-caravan-chest",
            },
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-turnin-1421-the-lost-caravan",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1396 } } },
            route = {
                {
                    label = "Watcher Biggs",
                    mapID = 1435,
                    offMapText = "Travel to Watcher Biggs in Swamp of Sorrows.",
                    x = 0.2674,
                    y = 0.5983,
                },
            },
            sourceStep = 35,
            text = "Turn in The Lost Caravan to Watcher Biggs.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "turnin-1421-the-lost-caravan",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1421, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1421, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1396, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
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
            id = "visit-entry-leveling-era-alliance-swamp-of-sorrows-part-2",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-swamp-of-sorrows-part-2",
            text = "Reach level 43 before the Swamp of Sorrows visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 43 } },
            requiredLevel = 43,
        },
        {
            complete = { quest = { id = 1398, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-part-2-accept-1398-driftwood",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1421 } } },
            route = {
                {
                    label = "Watcher Biggs",
                    mapID = 1435,
                    offMapText = "Travel to Watcher Biggs in Swamp of Sorrows.",
                    x = 0.2674,
                    y = 0.5983,
                },
            },
            sourceStep = 3,
            text = "Accept Driftwood from Watcher Biggs.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows-part-2",
            sourceActionID = "accept-1398-driftwood",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1398, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1398, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1421, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1396, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
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
            complete = { questObjective = { count = 8, id = 1398, index = 1, text = "Sundried Driftwood" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-swamp-of-sorrows-part-2-accept-1398-driftwood" },
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-part-2-objective-1398-1-sundried-driftwood",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1421 } } },
            route = {
                { label = "Sundried Driftwood", mapID = 1435, offMapText = "Travel to Sundried Driftwood.", x = 0.873, y = 0.781 },
            },
            sourceStep = 4,
            text = "Collect 8 Sundried Driftwood.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows-part-2",
            sourceActionID = "objective-1398-1-sundried-driftwood",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1398, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1398, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1421, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1396, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
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
            complete = { quest = { id = 1398, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-swamp-of-sorrows-part-2-accept-1398-driftwood",
                "alliance-leveling-era-alliance-swamp-of-sorrows-part-2-objective-1398-1-sundried-driftwood",
            },
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-part-2-turnin-1398-driftwood",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1421 } } },
            route = {
                {
                    label = "Watcher Biggs",
                    mapID = 1435,
                    offMapText = "Travel to Watcher Biggs in Swamp of Sorrows.",
                    x = 0.2674,
                    y = 0.5983,
                },
            },
            sourceStep = 8,
            text = "Turn in Driftwood to Watcher Biggs.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows-part-2",
            sourceActionID = "turnin-1398-driftwood",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1398, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1398, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1421, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1396, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
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
            complete = { quest = { id = 1425, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-part-2-accept-1425-deliver-the-shipment",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1398 } } },
            route = {
                {
                    label = "Watcher Biggs",
                    mapID = 1435,
                    offMapText = "Travel to Watcher Biggs in Swamp of Sorrows.",
                    x = 0.2674,
                    y = 0.5983,
                },
            },
            sourceStep = 8,
            text = "Accept Deliver the Shipment from Watcher Biggs.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows-part-2",
            sourceActionID = "accept-1425-deliver-the-shipment",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1425, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1425, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1398, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1421, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1396, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
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
            complete = { quest = { id = 1425, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-swamp-of-sorrows-part-2-accept-1425-deliver-the-shipment" },
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-part-2-turnin-1425-deliver-the-shipment",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1398 } } },
            route = {
                {
                    label = "Quartermaster Lungertz",
                    mapID = 1419,
                    offMapText = "Travel to Quartermaster Lungertz in Blasted Lands.",
                    x = 0.6652,
                    y = 0.2138,
                },
            },
            sourceStep = 10,
            text = "Turn in Deliver the Shipment to Quartermaster Lungertz.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows-part-2",
            sourceActionID = "turnin-1425-deliver-the-shipment",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1425, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1425, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1398, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1421, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1396, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
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
            id = "alliance-extra-93429-level",
            kind = "note",
            checkpointQuest = 93429,
            text = "Reach level 35 before this visit.",
            conditions = { all = { { faction = "Alliance" } } },
            complete = { level = { min = 35 } },
            requiredLevel = 35,
        },
        {
            id = "alliance-extra-93429-accept",
            kind = "accept",
            text = "Accept Blood of My Blood from Karana.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                { mapID = 1435, x = 0.248, y = 0.324, label = "Karana", offMapText = "Travel to Karana in Swamp of Sorrows." },
            },
            complete = { quest = { id = 93429, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-93429-level" },
        },
        {
            id = "alliance-extra-93429-objective",
            kind = "objective",
            text = "Slay 10 Lost Ones in the Fallow Sanctuary.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1435,
                    x = 0.648,
                    y = 0.20800000000000002,
                    label = "Lost One Hunter",
                    offMapText = "Travel to Lost One Hunter in Swamp of Sorrows.",
                },
            },
            complete = { quest = { id = 93429, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-93429-accept" },
        },
        {
            id = "alliance-extra-93429-turnin",
            kind = "turnin",
            text = "Turn in Blood of My Blood to Karana.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                { mapID = 1435, x = 0.248, y = 0.324, label = "Karana", offMapText = "Travel to Karana in Swamp of Sorrows." },
            },
            complete = { quest = { id = 93429, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-93429-objective" },
        },
        {
            id = "visit-entry-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows",
            text = "Reach level 40 before the Stranglethorn Vale & Swamp of Sorrows visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 40 } },
            requiredLevel = 40,
        },
        {
            complete = { quest = { id = 698, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-accept-698-lack-of-surplus",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Dar", mapID = 1435, offMapText = "Travel to Dar in Swamp of Sorrows.", x = 0.447, y = 0.572 } },
            sourceStep = 34,
            text = "Accept Lack of Surplus from Dar.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows",
            sourceActionID = "accept-698-lack-of-surplus",
        },
        {
            checkpointQuest = 1424,
            complete = { level = { min = 38 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-level-before-accept-1424-pool-of-tears",
            kind = "note",
            requiredLevel = 38,
            requiredQuests = {},
            text = "Reach level 38 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows",
            sourceActionID = "level-before-accept-1424-pool-of-tears",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 1424, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-accept-1424-pool-of-tears",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Fel'zerul", mapID = 1435, offMapText = "Travel to Fel'zerul in Swamp of Sorrows.", x = 0.4793, y = 0.548 },
            },
            sourceStep = 37,
            text = "Accept Pool of Tears from Fel'zerul.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows",
            sourceActionID = "accept-1424-pool-of-tears",
        },
        {
            complete = { quest = { id = 1392, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-accept-1392-noboru-the-cudgel",
            kind = "accept",
            requiredQuests = {},
            sourceStep = 38,
            text = "Use the Noboru's Cudgel to accept Noboru the Cudgel.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows",
            sourceActionID = "accept-1392-noboru-the-cudgel",
        },
        {
            complete = { quest = { id = 1392, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            dependsOn = { "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-accept-1392-noboru-the-cudgel" },
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-turnin-1392-noboru-the-cudgel",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Magtoor", mapID = 1435, offMapText = "Travel to Magtoor in Swamp of Sorrows.", x = 0.2599, y = 0.314 },
            },
            sourceStep = 39,
            text = "Turn in Noboru the Cudgel to Magtoor.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows",
            sourceActionID = "turnin-1392-noboru-the-cudgel",
        },
        {
            complete = { quest = { id = 1389, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-accept-1389-draenethyst-crystals",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Magtoor", mapID = 1435, offMapText = "Travel to Magtoor in Swamp of Sorrows.", x = 0.2599, y = 0.314 },
            },
            sourceStep = 39,
            text = "Accept Draenethyst Crystals from Magtoor.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows",
            sourceActionID = "accept-1389-draenethyst-crystals",
        },
        {
            complete = { quest = { id = 1393, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-accept-1393-galen-s-escape",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Galen Goodward",
                    mapID = 1435,
                    offMapText = "Travel to Galen Goodward in Swamp of Sorrows.",
                    x = 0.6541,
                    y = 0.1823,
                },
            },
            sourceStep = 41,
            text = "Accept Galen's Escape from Galen Goodward.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows",
            sourceActionID = "accept-1393-galen-s-escape",
        },
        {
            complete = { questObjective = { count = 6, id = 1389, index = 1, text = "Draenethyst Crystal" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = { "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-accept-1389-draenethyst-crystals" },
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-objective-1389-1-draenethyst-crystal",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Draenethyst Crystal", mapID = 1435, offMapText = "Travel to Draenethyst Crystal.", x = 0.55, y = 0.302 },
            },
            sourceStep = 43,
            text = "Collect 6 Draenethyst Crystal.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows",
            sourceActionID = "objective-1389-1-draenethyst-crystal",
        },
        {
            complete = { quest = { id = 1393, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = { "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-accept-1393-galen-s-escape" },
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-turnin-1393-galen-s-escape",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Galen's Escape", mapID = 1435, offMapText = "Travel to Galen's Escape.", x = 0.4781, y = 0.3976 } },
            sourceStep = 44,
            text = "Turn in Galen's Escape.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows",
            sourceActionID = "turnin-1393-galen-s-escape",
        },
        {
            complete = { questObjective = { count = 8, id = 698, index = 1, text = "Unprepared Sawtooth Flank" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-accept-698-lack-of-surplus" },
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-objective-698-1-unprepared-sawtooth-flank",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Unprepared Sawtooth Flank",
                    mapID = 1435,
                    offMapText = "Travel to Unprepared Sawtooth Flank.",
                    x = 0.464,
                    y = 0.412,
                },
            },
            sourceStep = 45,
            text = "Collect 8 Unprepared Sawtooth Flank.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows",
            sourceActionID = "objective-698-1-unprepared-sawtooth-flank",
        },
        {
            complete = { questObjective = { count = 10, id = 1424, index = 1, text = "Elixir of Water Breathing" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-accept-1424-pool-of-tears" },
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-objective-1424-1-elixir-of-water-breathing",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Elixir of Water Breathing",
                    mapID = 1435,
                    offMapText = "Travel to Elixir of Water Breathing.",
                    x = 0.659,
                    y = 0.472,
                },
            },
            sourceStep = 46,
            text = "Collect 10 Atal'ai Artifact.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows",
            sourceActionID = "objective-1424-1-elixir-of-water-breathing",
        },
        {
            complete = { quest = { id = 698, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-accept-698-lack-of-surplus",
                "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-objective-698-1-unprepared-sawtooth-flank",
            },
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-turnin-698-lack-of-surplus",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Tok'Kar", mapID = 1435, offMapText = "Travel to Tok'Kar in Swamp of Sorrows.", x = 0.8132, y = 0.8097 },
            },
            sourceStep = 47,
            text = "Turn in Lack of Surplus to Tok'Kar.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows",
            sourceActionID = "turnin-698-lack-of-surplus",
        },
        {
            complete = { quest = { id = 1424, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-accept-1424-pool-of-tears",
                "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-objective-1424-1-elixir-of-water-breathing",
            },
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-turnin-1424-pool-of-tears",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Fel'zerul", mapID = 1435, offMapText = "Travel to Fel'zerul in Swamp of Sorrows.", x = 0.4793, y = 0.5479 },
            },
            sourceStep = 48,
            text = "Turn in Pool of Tears to Fel'zerul.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows",
            sourceActionID = "turnin-1424-pool-of-tears",
        },
        {
            complete = { quest = { id = 1389, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = {
                "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-accept-1389-draenethyst-crystals",
                "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-objective-1389-1-draenethyst-crystal",
            },
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-turnin-1389-draenethyst-crystals",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Magtoor", mapID = 1435, offMapText = "Travel to Magtoor in Swamp of Sorrows.", x = 0.2599, y = 0.314 },
            },
            sourceStep = 49,
            text = "Turn in Draenethyst Crystals to Magtoor.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows",
            sourceActionID = "turnin-1389-draenethyst-crystals",
        },
        {
            id = "visit-entry-leveling-era-horde-swamp-of-sorrows",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-swamp-of-sorrows",
            text = "Reach level 45 before the Swamp of Sorrows visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 45 } },
            requiredLevel = 45,
        },
        {
            checkpointQuest = 2784,
            complete = { level = { min = 45 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-swamp-of-sorrows-level-before-accept-2784-fall-from-grace",
            kind = "note",
            requiredLevel = 45,
            requiredQuests = {},
            text = "Reach level 45 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-swamp-of-sorrows",
            sourceActionID = "level-before-accept-2784-fall-from-grace",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 2784, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-swamp-of-sorrows-accept-2784-fall-from-grace",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Fallen Hero of the Horde",
                    mapID = 1435,
                    offMapText = "Travel to Fallen Hero of the Horde in Swamp of Sorrows.",
                    x = 0.3429,
                    y = 0.6613,
                },
            },
            sourceStep = 1,
            text = "Accept Fall From Grace from Fallen Hero of the Horde.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-swamp-of-sorrows",
            sourceActionID = "accept-2784-fall-from-grace",
        },
        {
            complete = { quest = { id = 2784, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-swamp-of-sorrows-accept-2784-fall-from-grace" },
            id = "horde-leveling-era-horde-swamp-of-sorrows-objective-2784-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 3,
            text = "For Fall From Grace: Listen to the Fallen Hero of the Horde tell his story.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-swamp-of-sorrows",
            sourceActionID = "objective-2784-quest-work",
        },
        {
            complete = { quest = { id = 2784, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-swamp-of-sorrows-accept-2784-fall-from-grace",
                "horde-leveling-era-horde-swamp-of-sorrows-objective-2784-quest-work",
            },
            id = "horde-leveling-era-horde-swamp-of-sorrows-turnin-2784-fall-from-grace",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Fallen Hero of the Horde",
                    mapID = 1435,
                    offMapText = "Travel to Fallen Hero of the Horde in Swamp of Sorrows.",
                    x = 0.3429,
                    y = 0.6613,
                },
            },
            sourceStep = 3,
            text = "Turn in Fall From Grace to Fallen Hero of the Horde.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-swamp-of-sorrows",
            sourceActionID = "turnin-2784-fall-from-grace",
        },
        {
            complete = { quest = { id = 2621, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-swamp-of-sorrows-accept-2621-the-disgraced-one",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2784 } } },
            route = {
                {
                    label = "Fallen Hero of the Horde",
                    mapID = 1435,
                    offMapText = "Travel to Fallen Hero of the Horde in Swamp of Sorrows.",
                    x = 0.3429,
                    y = 0.6613,
                },
            },
            sourceStep = 3,
            text = "Accept The Disgraced One from Fallen Hero of the Horde.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-swamp-of-sorrows",
            sourceActionID = "accept-2621-the-disgraced-one",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2621, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2621, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 2784, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 2621, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-swamp-of-sorrows-accept-2621-the-disgraced-one" },
            id = "horde-leveling-era-horde-swamp-of-sorrows-turnin-2621-the-disgraced-one",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2784 } } },
            route = {
                {
                    label = "Dispatch Commander Ruag",
                    mapID = 1435,
                    offMapText = "Travel to Dispatch Commander Ruag in Swamp of Sorrows.",
                    x = 0.4779,
                    y = 0.5495,
                },
            },
            sourceStep = 4,
            text = "Turn in The Disgraced One to Dispatch Commander Ruag.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-swamp-of-sorrows",
            sourceActionID = "turnin-2621-the-disgraced-one",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2621, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2621, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 2784, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 2622, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-swamp-of-sorrows-accept-2622-the-missing-orders",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2621 } } },
            route = {
                {
                    label = "Dispatch Commander Ruag",
                    mapID = 1435,
                    offMapText = "Travel to Dispatch Commander Ruag in Swamp of Sorrows.",
                    x = 0.4779,
                    y = 0.5495,
                },
            },
            sourceStep = 4,
            text = "Accept The Missing Orders from Dispatch Commander Ruag.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-swamp-of-sorrows",
            sourceActionID = "accept-2622-the-missing-orders",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2622, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2622, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2621, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                { any = { { any = { { quest = { id = 2784, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
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
            complete = { quest = { id = 1429, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-swamp-of-sorrows-accept-1429-the-atal-ai-exile",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1424 } } },
            route = {
                { label = "Fel'zerul", mapID = 1435, offMapText = "Travel to Fel'zerul in Swamp of Sorrows.", x = 0.4793, y = 0.5479 },
            },
            sourceStep = 5,
            text = "Accept The Atal'ai Exile from Fel'zerul.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-swamp-of-sorrows",
            sourceActionID = "accept-1429-the-atal-ai-exile",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1429, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1429, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 1424, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 2622, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-swamp-of-sorrows-accept-2622-the-missing-orders" },
            id = "horde-leveling-era-horde-swamp-of-sorrows-turnin-2622-the-missing-orders",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2621 } } },
            route = {
                { label = "Bengor", mapID = 1435, offMapText = "Travel to Bengor in Swamp of Sorrows.", x = 0.4498, y = 0.5734 },
            },
            sourceStep = 6,
            text = "Turn in The Missing Orders to Bengor.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-swamp-of-sorrows",
            sourceActionID = "turnin-2622-the-missing-orders",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2622, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2622, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2621, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                { any = { { any = { { quest = { id = 2784, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
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
            complete = { quest = { id = 699, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-swamp-of-sorrows-accept-699-lack-of-surplus",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 698 } } },
            route = {
                { label = "Tok'Kar", mapID = 1435, offMapText = "Travel to Tok'Kar in Swamp of Sorrows.", x = 0.8132, y = 0.8097 },
            },
            sourceStep = 7,
            text = "Accept Lack of Surplus from Tok'Kar.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-swamp-of-sorrows",
            sourceActionID = "accept-699-lack-of-surplus",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 699, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 699, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 698, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 6, id = 699, index = 1, text = "Sawtooth Snapper" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-swamp-of-sorrows-accept-699-lack-of-surplus" },
            id = "horde-leveling-era-horde-swamp-of-sorrows-objective-699-1-sawtooth-snapper",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 698 } } },
            route = { { label = "Sawtooth Snapper", mapID = 1435, offMapText = "Travel to Sawtooth Snapper.", x = 0.82, y = 0.73 } },
            sourceStep = 8,
            text = "Collect 6 Sawtooth Snapper Claw.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-swamp-of-sorrows",
            sourceActionID = "objective-699-1-sawtooth-snapper",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 699, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 699, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 698, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 699, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-swamp-of-sorrows-accept-699-lack-of-surplus",
                "horde-leveling-era-horde-swamp-of-sorrows-objective-699-1-sawtooth-snapper",
            },
            id = "horde-leveling-era-horde-swamp-of-sorrows-turnin-699-lack-of-surplus",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 698 } } },
            route = {
                { label = "Tok'Kar", mapID = 1435, offMapText = "Travel to Tok'Kar in Swamp of Sorrows.", x = 0.8132, y = 0.8097 },
            },
            sourceStep = 9,
            text = "Turn in Lack of Surplus to Tok'Kar.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-swamp-of-sorrows",
            sourceActionID = "turnin-699-lack-of-surplus",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 699, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 699, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 698, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1422, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-swamp-of-sorrows-accept-1422-threat-from-the-sea",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 699 } } },
            route = {
                { label = "Tok'Kar", mapID = 1435, offMapText = "Travel to Tok'Kar in Swamp of Sorrows.", x = 0.8132, y = 0.8097 },
            },
            sourceStep = 9,
            text = "Accept Threat From the Sea from Tok'Kar.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-swamp-of-sorrows",
            sourceActionID = "accept-1422-threat-from-the-sea",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1422, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1422, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 699, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                { any = { { any = { { quest = { id = 698, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
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
            complete = { quest = { id = 1422, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-swamp-of-sorrows-accept-1422-threat-from-the-sea" },
            id = "horde-leveling-era-horde-swamp-of-sorrows-turnin-1422-threat-from-the-sea",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 699 } } },
            route = {
                { label = "Katar", mapID = 1435, offMapText = "Travel to Katar in Swamp of Sorrows.", x = 0.8375, y = 0.8042 },
            },
            sourceStep = 10,
            text = "Turn in Threat From the Sea to Katar.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-swamp-of-sorrows",
            sourceActionID = "turnin-1422-threat-from-the-sea",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1422, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1422, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 699, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                { any = { { any = { { quest = { id = 698, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
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
            complete = { quest = { id = 1426, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-swamp-of-sorrows-accept-1426-threat-from-the-sea",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1422 } } },
            route = {
                { label = "Katar", mapID = 1435, offMapText = "Travel to Katar in Swamp of Sorrows.", x = 0.8375, y = 0.8042 },
            },
            sourceStep = 10,
            text = "Accept Threat From the Sea from Katar.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-swamp-of-sorrows",
            sourceActionID = "accept-1426-threat-from-the-sea",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1426, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1426, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1422, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 699, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        { any = { { any = { { quest = { id = 698, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
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
            complete = { questObjective = { count = 10, id = 1426, index = 1, text = "Marsh Murloc" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-swamp-of-sorrows-accept-1426-threat-from-the-sea" },
            id = "horde-leveling-era-horde-swamp-of-sorrows-objective-1426-1-marsh-murloc",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1422 } } },
            route = { { label = "Marsh Murloc", mapID = 1435, offMapText = "Travel to Marsh Murloc.", x = 0.852, y = 0.822 } },
            sourceStep = 11,
            text = "Kill 10 Marsh Murloc.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-swamp-of-sorrows",
            sourceActionID = "objective-1426-1-marsh-murloc",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1426, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1426, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1422, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 699, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        { any = { { any = { { quest = { id = 698, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
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
            complete = { questObjective = { count = 10, id = 1426, index = 3, text = "Marsh Flesheater" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-swamp-of-sorrows-accept-1426-threat-from-the-sea" },
            id = "horde-leveling-era-horde-swamp-of-sorrows-objective-1426-3-marsh-flesheater",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1422 } } },
            route = { { label = "Marsh Flesheater", mapID = 1435, offMapText = "Travel to Marsh Flesheater.", x = 0.86, y = 0.802 } },
            sourceStep = 12,
            text = "Kill 10 Marsh Flesheater.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-swamp-of-sorrows",
            sourceActionID = "objective-1426-3-marsh-flesheater",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1426, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1426, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1422, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 699, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        { any = { { any = { { quest = { id = 698, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
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
            complete = { questObjective = { count = 10, id = 1426, index = 2, text = "Marsh Inkspewer" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-swamp-of-sorrows-accept-1426-threat-from-the-sea" },
            id = "horde-leveling-era-horde-swamp-of-sorrows-objective-1426-2-marsh-inkspewer",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1422 } } },
            route = { { label = "Marsh Inkspewer", mapID = 1435, offMapText = "Travel to Marsh Inkspewer.", x = 0.864, y = 0.83 } },
            sourceStep = 13,
            text = "Kill 10 Marsh Inkspewer.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-swamp-of-sorrows",
            sourceActionID = "objective-1426-2-marsh-inkspewer",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1426, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1426, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1422, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 699, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        { any = { { any = { { quest = { id = 698, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
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
            complete = { quest = { id = 1426, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-swamp-of-sorrows-accept-1426-threat-from-the-sea",
                "horde-leveling-era-horde-swamp-of-sorrows-objective-1426-1-marsh-murloc",
                "horde-leveling-era-horde-swamp-of-sorrows-objective-1426-3-marsh-flesheater",
                "horde-leveling-era-horde-swamp-of-sorrows-objective-1426-2-marsh-inkspewer",
            },
            id = "horde-leveling-era-horde-swamp-of-sorrows-turnin-1426-threat-from-the-sea",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1422 } } },
            route = {
                { label = "Katar", mapID = 1435, offMapText = "Travel to Katar in Swamp of Sorrows.", x = 0.8376, y = 0.8043 },
            },
            sourceStep = 14,
            text = "Turn in Threat From the Sea to Katar.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-swamp-of-sorrows",
            sourceActionID = "turnin-1426-threat-from-the-sea",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1426, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1426, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1422, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 699, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        { any = { { any = { { quest = { id = 698, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
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
            complete = { quest = { id = 1427, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-swamp-of-sorrows-accept-1427-threat-from-the-sea",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1426 } } },
            route = {
                { label = "Katar", mapID = 1435, offMapText = "Travel to Katar in Swamp of Sorrows.", x = 0.8376, y = 0.8043 },
            },
            sourceStep = 14,
            text = "Accept Threat From the Sea from Katar.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-swamp-of-sorrows",
            sourceActionID = "accept-1427-threat-from-the-sea",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1427, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1427, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1426, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1422, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 699, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                { any = { { any = { { quest = { id = 698, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
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
            complete = { quest = { id = 1427, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-swamp-of-sorrows-accept-1427-threat-from-the-sea" },
            id = "horde-leveling-era-horde-swamp-of-sorrows-turnin-1427-threat-from-the-sea",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1426 } } },
            route = {
                { label = "Tok'Kar", mapID = 1435, offMapText = "Travel to Tok'Kar in Swamp of Sorrows.", x = 0.8131, y = 0.8097 },
            },
            sourceStep = 15,
            text = "Turn in Threat From the Sea to Tok'Kar.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-swamp-of-sorrows",
            sourceActionID = "turnin-1427-threat-from-the-sea",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1427, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1427, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1426, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1422, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 699, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                { any = { { any = { { quest = { id = 698, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
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
            complete = { quest = { id = 1428, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-swamp-of-sorrows-accept-1428-continued-threat",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1427 } } },
            route = {
                { label = "Katar", mapID = 1435, offMapText = "Travel to Katar in Swamp of Sorrows.", x = 0.8376, y = 0.8041 },
            },
            sourceStep = 17,
            text = "Accept Continued Threat from Katar.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-swamp-of-sorrows",
            sourceActionID = "accept-1428-continued-threat",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1428, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1428, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1427, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1426, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1422, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 699, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        { any = { { any = { { quest = { id = 698, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
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
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 1428, index = 1, text = "Marsh Inkspewer" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-swamp-of-sorrows-accept-1428-continued-threat" },
            id = "horde-leveling-era-horde-swamp-of-sorrows-objective-1428-1-marsh-inkspewer",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1427 } } },
            route = {
                { label = "Marsh Inkspewer", mapID = 1435, offMapText = "Travel to Marsh Inkspewer.", x = 0.6637, y = 0.7654 },
            },
            sourceStep = 18,
            text = "Kill 10 Marsh Inkspewer.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-swamp-of-sorrows",
            sourceActionID = "objective-1428-1-marsh-inkspewer",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1428, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1428, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1427, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1426, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1422, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 699, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        { any = { { any = { { quest = { id = 698, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
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
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 1428, index = 2, text = "Marsh Flesheater" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-swamp-of-sorrows-accept-1428-continued-threat" },
            id = "horde-leveling-era-horde-swamp-of-sorrows-objective-1428-2-marsh-flesheater",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1427 } } },
            route = {
                { label = "Marsh Flesheater", mapID = 1435, offMapText = "Travel to Marsh Flesheater.", x = 0.6637, y = 0.7654 },
            },
            sourceStep = 18,
            text = "Kill 10 Marsh Flesheater.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-swamp-of-sorrows",
            sourceActionID = "objective-1428-2-marsh-flesheater",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1428, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1428, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1427, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1426, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1422, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 699, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        { any = { { any = { { quest = { id = 698, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
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
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 1428, index = 3, text = "Marsh Oracle" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-swamp-of-sorrows-accept-1428-continued-threat" },
            id = "horde-leveling-era-horde-swamp-of-sorrows-objective-1428-3-marsh-oracle",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1427 } } },
            route = { { label = "Marsh Oracle", mapID = 1435, offMapText = "Travel to Marsh Oracle.", x = 0.6637, y = 0.7654 } },
            sourceStep = 18,
            text = "Kill 10 Marsh Oracle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-swamp-of-sorrows",
            sourceActionID = "objective-1428-3-marsh-oracle",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1428, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1428, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1427, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1426, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1422, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 699, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        { any = { { any = { { quest = { id = 698, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
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
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1428, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-swamp-of-sorrows-accept-1428-continued-threat",
                "horde-leveling-era-horde-swamp-of-sorrows-objective-1428-1-marsh-inkspewer",
                "horde-leveling-era-horde-swamp-of-sorrows-objective-1428-2-marsh-flesheater",
                "horde-leveling-era-horde-swamp-of-sorrows-objective-1428-3-marsh-oracle",
            },
            id = "horde-leveling-era-horde-swamp-of-sorrows-turnin-1428-continued-threat",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1427 } } },
            route = {
                { label = "Katar", mapID = 1435, offMapText = "Travel to Katar in Swamp of Sorrows.", x = 0.8375, y = 0.8042 },
            },
            sourceStep = 19,
            text = "Turn in Continued Threat to Katar.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-swamp-of-sorrows",
            sourceActionID = "turnin-1428-continued-threat",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1428, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1428, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1427, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1426, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1422, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 699, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        { any = { { any = { { quest = { id = 698, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
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
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-horde-the-hinterlands",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-the-hinterlands",
            text = "Reach level 48 before the The Hinterlands visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 48 } },
            requiredLevel = 48,
        },
        {
            complete = { quest = { id = 1429, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-hinterlands-turnin-1429-the-atal-ai-exile",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1424 } } },
            route = {
                {
                    label = "Atal'ai Exile",
                    mapID = 1425,
                    offMapText = "Travel to Atal'ai Exile in The Hinterlands.",
                    x = 0.3375,
                    y = 0.7521,
                },
            },
            sourceStep = 54,
            text = "Turn in The Atal'ai Exile to Atal'ai Exile.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "turnin-1429-the-atal-ai-exile",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1429, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1429, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 1424, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2",
            text = "Reach level 50 before the Stranglethorn Vale & Swamp of Sorrows visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 50 } },
            requiredLevel = 50,
        },
        {
            checkpointQuest = 2623,
            complete = { level = { min = 45 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2-level-before-accept-2623-the-swamp-talker",
            kind = "note",
            requiredLevel = 45,
            requiredQuests = {},
            text = "Reach level 45 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2",
            sourceActionID = "level-before-accept-2623-the-swamp-talker",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2623, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2623, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2622, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2621, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        { any = { { any = { { quest = { id = 2784, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
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
            complete = { quest = { id = 2623, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2-accept-2623-the-swamp-talker",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2622 } } },
            route = {
                { label = "Bengor", mapID = 1435, offMapText = "Travel to Bengor in Swamp of Sorrows.", x = 0.4498, y = 0.5734 },
            },
            sourceStep = 22,
            text = "Accept The Swamp Talker from Bengor.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2",
            sourceActionID = "accept-2623-the-swamp-talker",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2623, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2623, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2622, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2621, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        { any = { { any = { { quest = { id = 2784, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
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
            complete = { questObjective = { count = 1, id = 2623, index = 1, text = "Swamp Talker" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2-accept-2623-the-swamp-talker" },
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2-objective-2623-1-swamp-talker",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2622 } } },
            route = {
                { label = "Warchief's Orders", mapID = 1435, offMapText = "Travel to Warchief's Orders.", x = 0.626, y = 0.8808 },
            },
            sourceStep = 24,
            text = "Collect 1 Warchief's Orders.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2",
            sourceActionID = "objective-2623-1-swamp-talker",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2623, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2623, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2622, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2621, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        { any = { { any = { { quest = { id = 2784, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
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
            complete = { quest = { id = 2623, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2-accept-2623-the-swamp-talker",
                "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2-objective-2623-1-swamp-talker",
            },
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2-turnin-2623-the-swamp-talker",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2622 } } },
            route = {
                {
                    label = "Fallen Hero of the Horde",
                    mapID = 1435,
                    offMapText = "Travel to Fallen Hero of the Horde in Swamp of Sorrows.",
                    x = 0.3429,
                    y = 0.6613,
                },
            },
            sourceStep = 31,
            text = "Turn in The Swamp Talker to Fallen Hero of the Horde.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2",
            sourceActionID = "turnin-2623-the-swamp-talker",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2623, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2623, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2622, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2621, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        { any = { { any = { { quest = { id = 2784, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
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
            id = "horde-extra-1418-level",
            kind = "note",
            checkpointQuest = 1418,
            text = "Reach level 35 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 35 } },
            requiredLevel = 35,
            alternativeQuests = { 1420 },
        },
        {
            id = "horde-extra-1418-accept",
            kind = "accept",
            text = "Accept Neeka Bloodscar from Helgrum the Swift.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1435,
                    x = 0.478,
                    y = 0.552,
                    label = "Helgrum the Swift",
                    offMapText = "Travel to Helgrum the Swift in Swamp of Sorrows.",
                },
            },
            complete = { quest = { id = 1418, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            alternativeQuests = { 1420 },
            dependsOn = { "horde-extra-1418-level" },
        },
        {
            id = "horde-extra-1418-objective",
            kind = "objective",
            text = "Speak with Neeka Bloodscar. Follow the quest log for the destination.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            route = {},
            complete = { quest = { id = 1418, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            alternativeQuests = { 1420 },
            dependsOn = { "horde-extra-1418-accept" },
            useClientPin = true,
        },
        {
            id = "horde-extra-1418-turnin",
            kind = "turnin",
            text = "Turn in Neeka Bloodscar to Neeka Bloodscar.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            route = {
                { mapID = 1418, x = 0.064, y = 0.47, label = "Neeka Bloodscar", offMapText = "Travel to Neeka Bloodscar in Badlands." },
            },
            complete = { quest = { id = 1418, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            alternativeQuests = { 1420 },
            dependsOn = { "horde-extra-1418-objective" },
        },
        {
            id = "horde-extra-1430-level",
            kind = "note",
            checkpointQuest = 1430,
            text = "Reach level 44 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 44 } },
            requiredLevel = 44,
        },
        {
            id = "horde-extra-1430-accept",
            kind = "accept",
            text = "Accept Fresh Meat from Dar.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            route = {
                {
                    mapID = 1435,
                    x = 0.44799999999999995,
                    y = 0.5720000000000001,
                    label = "Dar",
                    offMapText = "Travel to Dar in Swamp of Sorrows.",
                },
            },
            complete = { quest = { id = 1430, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-1430-level" },
        },
        {
            id = "horde-extra-1430-objective",
            kind = "objective",
            text = "Defeat Monstrous Crawlers and loot 10 Monstrous Crawler Legs.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            route = {
                {
                    mapID = 1435,
                    x = 0.9259999999999999,
                    y = 0.34600000000000003,
                    label = "Monstrous Crawler",
                    offMapText = "Travel to Monstrous Crawler in Swamp of Sorrows.",
                },
            },
            complete = { quest = { id = 1430, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-1430-accept" },
        },
        {
            id = "horde-extra-1430-turnin",
            kind = "turnin",
            text = "Turn in Fresh Meat to Dar.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            route = {
                {
                    mapID = 1435,
                    x = 0.44799999999999995,
                    y = 0.5720000000000001,
                    label = "Dar",
                    offMapText = "Travel to Dar in Swamp of Sorrows.",
                },
            },
            complete = { quest = { id = 1430, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-1430-objective" },
        },
    },
})
