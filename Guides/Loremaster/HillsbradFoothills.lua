local _, ns = ...

-- Source decisions: docs/loremaster/hillsbrad-foothills.json.
-- Coordinates require a Forever client walkthrough.
ns:RegisterGuide({
    id = "loremaster-hillsbrad-foothills",
    title = "Hillsbrad Foothills",
    category = "Loremaster Guides",
    revision = 1,
    routeMode = "ordered",
    loremasterExpanded = true,
    goals = {
        {
            id = "visit-entry-leveling-era-alliance-wetlands",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-wetlands",
            text = "Reach level 24 before the Wetlands visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 24 } },
            requiredLevel = 24,
        },
        {
            checkpointQuest = 279,
            complete = { level = { min = 20 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-wetlands-level-before-accept-279-claws-from-the-deep",
            kind = "note",
            requiredLevel = 20,
            requiredQuests = {},
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "level-before-accept-279-claws-from-the-deep",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 279, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-accept-279-claws-from-the-deep",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Karl Boran", mapID = 1437, offMapText = "Travel to Karl Boran in Wetlands.", x = 0.0831, y = 0.5853 },
            },
            sourceStep = 2,
            text = "Accept Claws from the Deep from Karl Boran.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "accept-279-claws-from-the-deep",
        },
        {
            complete = { questObjective = { count = 1, id = 279, index = 2, text = "Gobbler" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-accept-279-claws-from-the-deep" },
            id = "alliance-leveling-era-alliance-wetlands-objective-279-2-gobbler",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Gobbler", mapID = 1437, offMapText = "Travel to Gobbler.", x = 0.1799, y = 0.4038 } },
            sourceStep = 18,
            text = "Collect 1 Gobbler's Head.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "objective-279-2-gobbler",
        },
        {
            complete = { questObjective = { count = 12, id = 279, index = 1 } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-accept-279-claws-from-the-deep" },
            id = "alliance-leveling-era-alliance-wetlands-objective-279-reviewed-1",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Bluegill Murlocs", mapID = 1437, offMapText = "Travel to Bluegill Murlocs.", x = 0.17, y = 0.394 } },
            sourceStep = 19,
            text = "Kill 12 Bluegill Murlocs west of Menethil Harbor.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "objective-279-reviewed-1",
        },
        {
            complete = { quest = { id = 279, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-wetlands-accept-279-claws-from-the-deep",
                "alliance-leveling-era-alliance-wetlands-objective-279-2-gobbler",
                "alliance-leveling-era-alliance-wetlands-objective-279-reviewed-1",
            },
            id = "alliance-leveling-era-alliance-wetlands-turnin-279-claws-from-the-deep",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Karl Boran", mapID = 1437, offMapText = "Travel to Karl Boran in Wetlands.", x = 0.0831, y = 0.5853 },
            },
            sourceActionID = "turnin-279-claws-from-the-deep",
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceStep = 38,
            text = "Turn in Claws from the Deep to Karl Boran.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            id = "visit-entry-leveling-era-alliance-wetlands-part-2",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-wetlands-part-2",
            text = "Reach level 27 before the Wetlands visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 27 } },
            requiredLevel = 27,
        },
        {
            checkpointQuest = 281,
            complete = { level = { min = 20 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-wetlands-part-2-level-before-accept-281-reclaiming-goods",
            kind = "note",
            requiredLevel = 20,
            requiredQuests = {},
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "level-before-accept-281-reclaiming-goods",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 281, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 281, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 279, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 281, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-part-2-accept-281-reclaiming-goods",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 279 } } },
            route = {
                { label = "Karl Boran", mapID = 1437, offMapText = "Travel to Karl Boran in Wetlands.", x = 0.0831, y = 0.5853 },
            },
            sourceStep = 1,
            text = "Accept Reclaiming Goods from Karl Boran.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "accept-281-reclaiming-goods",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 281, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 281, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 279, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 281, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-part-2-accept-281-reclaiming-goods" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 281, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 281, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 279, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-wetlands-part-2-turnin-281-reclaiming-goods",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 279 } } },
            route = {
                { label = "Reclaiming Goods", mapID = 1437, offMapText = "Travel to Reclaiming Goods.", x = 0.1351, y = 0.4138 },
            },
            sourceActionID = "turnin-281-reclaiming-goods",
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceStep = 8,
            text = "Turn in Reclaiming Goods.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 284, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-part-2-accept-284-the-search-continues",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 281 } } },
            route = {
                { label = "The Search Continues", mapID = 1437, offMapText = "Travel to The Search Continues.", x = 0.1351, y = 0.4138 },
            },
            sourceStep = 8,
            text = "Accept The Search Continues.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "accept-284-the-search-continues",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 284, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 284, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 281, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 279, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 284, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-part-2-accept-284-the-search-continues" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 284, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 284, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 281, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 279, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-wetlands-part-2-turnin-284-the-search-continues",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 281 } } },
            route = {
                { label = "The Search Continues", mapID = 1437, offMapText = "Travel to The Search Continues.", x = 0.1361, y = 0.3821 },
            },
            sourceActionID = "turnin-284-the-search-continues",
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceStep = 9,
            text = "Turn in The Search Continues.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 285, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-part-2-accept-285-search-more-hovels",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 284 } } },
            route = {
                { label = "Search More Hovels", mapID = 1437, offMapText = "Travel to Search More Hovels.", x = 0.1361, y = 0.3821 },
            },
            sourceStep = 9,
            text = "Accept Search More Hovels.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "accept-285-search-more-hovels",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 285, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 285, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 284, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 281, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 279, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 285, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-part-2-accept-285-search-more-hovels" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 285, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 285, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 284, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 281, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 279, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-wetlands-part-2-turnin-285-search-more-hovels",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 284 } } },
            route = {
                { label = "Search More Hovels", mapID = 1437, offMapText = "Travel to Search More Hovels.", x = 0.1395, y = 0.3481 },
            },
            sourceActionID = "turnin-285-search-more-hovels",
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceStep = 10,
            text = "Turn in Search More Hovels.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 286, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-part-2-accept-286-return-the-statuette",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 285 } } },
            route = {
                { label = "Return the Statuette", mapID = 1437, offMapText = "Travel to Return the Statuette.", x = 0.1395, y = 0.3481 },
            },
            sourceStep = 10,
            text = "Accept Return the Statuette.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "accept-286-return-the-statuette",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 286, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 286, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 285, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 284, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 281, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                { any = { { any = { { quest = { id = 279, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 286, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-part-2-accept-286-return-the-statuette" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 286, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 286, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 285, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 284, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 281, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                { any = { { any = { { quest = { id = 279, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-wetlands-part-2-turnin-286-return-the-statuette",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 285 } } },
            route = {
                { label = "Karl Boran", mapID = 1437, offMapText = "Travel to Karl Boran in Wetlands.", x = 0.0831, y = 0.5854 },
            },
            sourceActionID = "turnin-286-return-the-statuette",
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceStep = 39,
            text = "Turn in Return the Statuette to Karl Boran.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { item = { minCount = 10, name = "Turtle Meat" } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-part-2-collect-before-pickup-objective-555-1-snapjaw",
            kind = "note",
            referenceQuest = 555,
            requiredQuests = {},
            route = { { label = "Snapjaw", mapID = 1424, offMapText = "Travel to Snapjaw.", x = 0.552, y = 0.57 } },
            text = "Kill Snapjaw. Keep 10 Turtle Meat for the later quest pickup.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands-part-2",
            sourceActionID = "collect-before-pickup-objective-555-1-snapjaw",
        },
        {
            id = "visit-entry-leveling-era-alliance-duskwood-and-stranglethorn-vale",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            text = "Reach level 30 before the Duskwood & Stranglethorn Vale visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 30 } },
            requiredLevel = 30,
        },
        {
            complete = { quest = { id = 337, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { item = { minCount = 1, name = "An Old History Book" } },
                        { quest = { id = 337, state = "activeOrCompleted" } },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-337-an-old-history-book",
            kind = "accept",
            requiredQuests = {},
            sourceStep = 4,
            text = "Use the An Old History Book to accept An Old History Book.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "accept-337-an-old-history-book",
        },
        {
            complete = { quest = { id = 337, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-337-an-old-history-book" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { item = { minCount = 1, name = "An Old History Book" } },
                        { quest = { id = 337, state = "activeOrCompleted" } },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-turnin-337-an-old-history-book",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Milton Sheaf",
                    mapID = 1453,
                    offMapText = "Travel to Milton Sheaf in Stormwind City.",
                    x = 0.7417,
                    y = 0.0749,
                },
            },
            sourceActionID = "turnin-337-an-old-history-book",
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceStep = 6,
            text = "Turn in An Old History Book to Milton Sheaf.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 538, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = { { quest = { id = 337, state = "completed" } }, { quest = { id = 538, state = "activeOrCompleted" } } },
                        },
                    },
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 538, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 538, state = "completed" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { any = { { any = { { quest = { id = 337, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-538-southshore",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 337 } } },
            route = {
                { label = "Milton Sheaf", mapID = 1453, offMapText = "Travel to Milton Sheaf in Stormwind City.", x = 0.771, y = 0.302 },
            },
            sourceStep = 6,
            text = "Accept Southshore from Milton Sheaf.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "accept-538-southshore",
        },
        {
            complete = { quest = { id = 337, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { item = { minCount = 1, name = "An Old History Book" } },
                        { quest = { id = 337, state = "activeOrCompleted" } },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-337-an-old-history-book-late",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Nightbane Dark Runner", mapID = 1431, offMapText = "Travel to Nightbane Dark Runner.", x = 0.67, y = 0.432 },
            },
            text = "Use An Old History Book to accept An Old History Book if it dropped from Nightbane Dark Runners during this outing. This drop is optional.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "accept-337-an-old-history-book-late",
        },
        {
            complete = { item = { minCount = 10, name = "Turtle Meat" } },
            conditions = { all = { { class = 8 }, { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-collect-before-pickup-objective-555-1-turtle-meat",
            kind = "note",
            referenceQuest = 555,
            requiredQuests = {},
            route = { { label = "Turtle Meat", mapID = 1453, offMapText = "Travel to Turtle Meat.", x = 0.5766, y = 0.7278 } },
            text = "Collect 10 Turtle Meat. Keep 10 Turtle Meat for the later quest pickup.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "collect-before-pickup-objective-555-1-turtle-meat",
        },
        {
            complete = { quest = { id = 337, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-337-an-old-history-book",
                "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-337-an-old-history-book-late",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { item = { minCount = 1, name = "An Old History Book" } },
                        { quest = { id = 337, state = "activeOrCompleted" } },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-turnin-337-an-old-history-book-2",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "An Old History Book", mapID = 1453, offMapText = "Travel to An Old History Book.", x = 0.7417, y = 0.0749 },
            },
            sourceActionID = "turnin-337-an-old-history-book-2",
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            text = "Turn in An Old History Book.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 538, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = { { quest = { id = 337, state = "completed" } }, { quest = { id = 538, state = "activeOrCompleted" } } },
                        },
                    },
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 538, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 538, state = "completed" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { any = { { any = { { quest = { id = 337, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-538-southshore-late",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 337 } } },
            route = {
                { label = "Milton Sheaf", mapID = 1453, offMapText = "Travel to Milton Sheaf in Stormwind City.", x = 0.771, y = 0.302 },
            },
            sourceStep = 6,
            text = "Accept Southshore from Milton Sheaf.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "accept-538-southshore-late",
        },
        {
            id = "visit-entry-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            text = "Reach level 32 before the Hillsbrad Foothills & Arathi Highlands visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 32 } },
            requiredLevel = 32,
        },
        {
            checkpointQuest = 565,
            complete = { level = { min = 29 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-level-before-accept-565-bartolo-s-yeti-fur-cloak",
            kind = "note",
            requiredLevel = 29,
            requiredQuests = {},
            text = "Reach level 29 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "level-before-accept-565-bartolo-s-yeti-fur-cloak",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 565, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-565-bartolo-s-yeti-fur-cloak",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Bartolo Ginsetti",
                    mapID = 1424,
                    offMapText = "Travel to Bartolo Ginsetti in Hillsbrad Foothills.",
                    x = 0.4943,
                    y = 0.5553,
                },
            },
            sourceStep = 1,
            text = "Accept Bartolo's Yeti Fur Cloak from Bartolo Ginsetti.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "accept-565-bartolo-s-yeti-fur-cloak",
        },
        {
            checkpointQuest = 564,
            complete = { level = { min = 30 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-level-before-accept-564-costly-menace",
            kind = "note",
            requiredLevel = 30,
            requiredQuests = {},
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "level-before-accept-564-costly-menace",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 564, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-564-costly-menace",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Darren Malvew",
                    mapID = 1424,
                    offMapText = "Travel to Darren Malvew in Hillsbrad Foothills.",
                    x = 0.5242,
                    y = 0.5596,
                },
            },
            sourceStep = 3,
            text = "Accept Costly Menace from Darren Malvew.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "accept-564-costly-menace",
        },
        {
            complete = { quest = { id = 538, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            excludeWhen = {
                any = {
                    { ["not"] = { quest = { id = 538, state = "activeOrCompleted" } } },
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 538, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 538, state = "completed" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { any = { { any = { { quest = { id = 337, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-turnin-538-southshore",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 337 } } },
            route = {
                {
                    label = "Loremaster Dibbs",
                    mapID = 1424,
                    offMapText = "Travel to Loremaster Dibbs in Hillsbrad Foothills.",
                    x = 0.5057,
                    y = 0.5709,
                },
            },
            sourceActionID = "turnin-538-southshore",
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceStep = 4,
            text = "Turn in Southshore to Loremaster Dibbs.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 536, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-536-down-the-coast",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Lieutenant Farren Orinelle",
                    mapID = 1424,
                    offMapText = "Travel to Lieutenant Farren Orinelle in Hillsbrad Foothills.",
                    x = 0.5146,
                    y = 0.5838,
                },
            },
            sourceStep = 6,
            text = "Accept Down the Coast from Lieutenant Farren Orinelle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "accept-536-down-the-coast",
        },
        {
            complete = { quest = { id = 555, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-555-soothing-turtle-bisque",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Chef Jessen",
                    mapID = 1424,
                    offMapText = "Travel to Chef Jessen in Hillsbrad Foothills.",
                    x = 0.5189,
                    y = 0.5868,
                },
            },
            sourceStep = 7,
            text = "Accept Soothing Turtle Bisque from Chef Jessen.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "accept-555-soothing-turtle-bisque",
        },
        {
            complete = { item = { minCount = 10, name = "Turtle Meat" } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-collect-before-pickup-objective-555-quest-work",
            kind = "note",
            referenceQuest = 555,
            requiredQuests = {},
            sourceStep = 8,
            text = "For Soothing Turtle Bisque: Bring 10 pieces of Turtle Meat and some Soothing Spices to Chef Jessen in Southshore. Keep 10 Turtle Meat for the later quest pickup.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "collect-before-pickup-objective-555-quest-work",
        },
        {
            checkpointQuest = 555,
            complete = {
                any = {
                    {
                        all = { { item = { minCount = 10, name = "Turtle Meat" } }, { item = { minCount = 1, name = "Soothing Spices" } } },
                    },
                    { quest = { id = 555, state = "complete" } },
                },
            },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-prepare-555-all-required-materials",
            instructionOnly = true,
            kind = "note",
            rememberPreparation = 555,
            requiredQuests = {},
            route = { { label = "Micha Yance", mapID = 1424, offMapText = "Travel to Micha Yance.", x = 0.4894, y = 0.5503 } },
            text = "Collect 10 Turtle Meat from turtles near Southshore. Buy Soothing Spices from Micha Yance in Southshore. Keep both for Chef Jessen.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "prepare-555-all-required-materials",
        },
        {
            complete = { quest = { id = 555, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-555-soothing-turtle-bisque" },
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-turnin-555-soothing-turtle-bisque",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Chef Jessen",
                    mapID = 1424,
                    offMapText = "Travel to Chef Jessen in Hillsbrad Foothills.",
                    x = 0.5189,
                    y = 0.5868,
                },
            },
            sourceActionID = "turnin-555-soothing-turtle-bisque",
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceStep = 8,
            text = "Turn in Soothing Turtle Bisque to Chef Jessen.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 10, id = 536, index = 1, text = "Torn Fin Tidehunter" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-536-down-the-coast" },
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-objective-536-1-torn-fin-tidehunter",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Torn Fin Tidehunter", mapID = 1424, offMapText = "Travel to Torn Fin Tidehunter.", x = 0.476, y = 0.646 },
            },
            sourceStep = 9,
            text = "Kill 10 Torn Fin Tidehunter.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "objective-536-1-torn-fin-tidehunter",
        },
        {
            complete = { questObjective = { count = 10, id = 536, index = 2, text = "Torn Fin Oracle" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-536-down-the-coast" },
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-objective-536-2-torn-fin-oracle",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Torn Fin Oracle", mapID = 1424, offMapText = "Travel to Torn Fin Oracle.", x = 0.476, y = 0.646 } },
            sourceStep = 9,
            text = "Kill 10 Torn Fin Oracle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "objective-536-2-torn-fin-oracle",
        },
        {
            complete = { quest = { id = 536, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-536-down-the-coast",
                "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-objective-536-1-torn-fin-tidehunter",
                "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-objective-536-2-torn-fin-oracle",
            },
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-turnin-536-down-the-coast",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Lieutenant Farren Orinelle",
                    mapID = 1424,
                    offMapText = "Travel to Lieutenant Farren Orinelle in Hillsbrad Foothills.",
                    x = 0.5146,
                    y = 0.5838,
                },
            },
            sourceActionID = "turnin-536-down-the-coast",
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceStep = 10,
            text = "Turn in Down the Coast to Lieutenant Farren Orinelle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 559, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-559-farren-s-proof",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 536 } } },
            route = {
                {
                    label = "Lieutenant Farren Orinelle",
                    mapID = 1424,
                    offMapText = "Travel to Lieutenant Farren Orinelle in Hillsbrad Foothills.",
                    x = 0.5146,
                    y = 0.5838,
                },
            },
            sourceStep = 10,
            text = "Accept Farren's Proof from Lieutenant Farren Orinelle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "accept-559-farren-s-proof",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 559, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 559, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 536, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 559, index = 1, text = "Torn Fin Tidehunter" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-559-farren-s-proof" },
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-objective-559-1-torn-fin-tidehunter",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 536 } } },
            route = {
                { label = "Torn Fin Tidehunter", mapID = 1424, offMapText = "Travel to Torn Fin Tidehunter.", x = 0.476, y = 0.646 },
            },
            sourceStep = 11,
            text = "Collect 10 Murloc Head.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "objective-559-1-torn-fin-tidehunter",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 559, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 559, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 536, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 559, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-559-farren-s-proof",
                "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-objective-559-1-torn-fin-tidehunter",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 559, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 559, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 536, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-turnin-559-farren-s-proof",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 536 } } },
            route = {
                {
                    label = "Lieutenant Farren Orinelle",
                    mapID = 1424,
                    offMapText = "Travel to Lieutenant Farren Orinelle in Hillsbrad Foothills.",
                    x = 0.5146,
                    y = 0.5838,
                },
            },
            sourceActionID = "turnin-559-farren-s-proof",
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceStep = 12,
            text = "Turn in Farren's Proof to Lieutenant Farren Orinelle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 560, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-560-farren-s-proof",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 559 } } },
            route = {
                {
                    label = "Lieutenant Farren Orinelle",
                    mapID = 1424,
                    offMapText = "Travel to Lieutenant Farren Orinelle in Hillsbrad Foothills.",
                    x = 0.5146,
                    y = 0.5838,
                },
            },
            sourceStep = 12,
            text = "Accept Farren's Proof from Lieutenant Farren Orinelle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "accept-560-farren-s-proof",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 560, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 560, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 559, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 536, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 560, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-560-farren-s-proof" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 560, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 560, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 559, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 536, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-turnin-560-farren-s-proof",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 559 } } },
            route = {
                {
                    label = "Marshal Redpath",
                    mapID = 1424,
                    offMapText = "Travel to Marshal Redpath in Hillsbrad Foothills.",
                    x = 0.4948,
                    y = 0.5873,
                },
            },
            sourceActionID = "turnin-560-farren-s-proof",
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceStep = 13,
            text = "Turn in Farren's Proof to Marshal Redpath.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 561, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-561-farren-s-proof",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 560 } } },
            route = {
                {
                    label = "Marshal Redpath",
                    mapID = 1424,
                    offMapText = "Travel to Marshal Redpath in Hillsbrad Foothills.",
                    x = 0.4948,
                    y = 0.5873,
                },
            },
            sourceStep = 13,
            text = "Accept Farren's Proof from Marshal Redpath.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "accept-561-farren-s-proof",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 561, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 561, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 560, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 559, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 536, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 561, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-561-farren-s-proof" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 561, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 561, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 560, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 559, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 536, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-turnin-561-farren-s-proof",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 560 } } },
            route = {
                {
                    label = "Lieutenant Farren Orinelle",
                    mapID = 1424,
                    offMapText = "Travel to Lieutenant Farren Orinelle in Hillsbrad Foothills.",
                    x = 0.5146,
                    y = 0.5838,
                },
            },
            sourceActionID = "turnin-561-farren-s-proof",
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceStep = 14,
            text = "Turn in Farren's Proof to Lieutenant Farren Orinelle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 562, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-562-stormwind-ho",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 561 } } },
            route = {
                {
                    label = "Lieutenant Farren Orinelle",
                    mapID = 1424,
                    offMapText = "Travel to Lieutenant Farren Orinelle in Hillsbrad Foothills.",
                    x = 0.5146,
                    y = 0.5838,
                },
            },
            sourceStep = 14,
            text = "Accept Stormwind Ho! from Lieutenant Farren Orinelle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "accept-562-stormwind-ho",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 562, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 562, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 561, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 560, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 559, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                { any = { { any = { { quest = { id = 536, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 10, id = 562, index = 1, text = "Daggerspine Shorehunter" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-562-stormwind-ho" },
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-objective-562-1-daggerspine-shorehunter",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 561 } } },
            route = {
                {
                    label = "Daggerspine Shorehunter",
                    mapID = 1424,
                    offMapText = "Travel to Daggerspine Shorehunter.",
                    x = 0.55,
                    y = 0.644,
                },
            },
            sourceStep = 15,
            text = "Kill 10 Daggerspine Shorehunter.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "objective-562-1-daggerspine-shorehunter",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 562, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 562, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 561, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 560, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 559, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                { any = { { any = { { quest = { id = 536, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 10, id = 562, index = 2, text = "Daggerspine Siren" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-562-stormwind-ho" },
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-objective-562-2-daggerspine-siren",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 561 } } },
            route = {
                { label = "Daggerspine Siren", mapID = 1424, offMapText = "Travel to Daggerspine Siren.", x = 0.55, y = 0.644 },
            },
            sourceStep = 15,
            text = "Kill 10 Daggerspine Siren.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "objective-562-2-daggerspine-siren",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 562, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 562, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 561, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 560, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 559, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                { any = { { any = { { quest = { id = 536, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 562, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-562-stormwind-ho",
                "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-objective-562-1-daggerspine-shorehunter",
                "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-objective-562-2-daggerspine-siren",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 562, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 562, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 561, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 560, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 559, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                { any = { { any = { { quest = { id = 536, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-turnin-562-stormwind-ho",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 561 } } },
            route = {
                {
                    label = "Lieutenant Farren Orinelle",
                    mapID = 1424,
                    offMapText = "Travel to Lieutenant Farren Orinelle in Hillsbrad Foothills.",
                    x = 0.5146,
                    y = 0.5838,
                },
            },
            sourceActionID = "turnin-562-stormwind-ho",
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceStep = 16,
            text = "Turn in Stormwind Ho! to Lieutenant Farren Orinelle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 659, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-659-hints-of-a-new-plague",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Phin Odelic",
                    mapID = 1424,
                    offMapText = "Travel to Phin Odelic in Hillsbrad Foothills.",
                    x = 0.5034,
                    y = 0.5905,
                },
            },
            sourceStep = 17,
            text = "Accept Hints of a New Plague? from Phin Odelic.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "accept-659-hints-of-a-new-plague",
        },
        {
            complete = { questObjective = { count = 10, id = 565, index = 4, text = "Yeti Fur" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-565-bartolo-s-yeti-fur-cloak" },
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-objective-565-4-yeti-fur",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Yeti Fur", mapID = 1424, offMapText = "Travel to Yeti Fur.", x = 0.4618, y = 0.3183 } },
            sourceStep = 20,
            text = "Collect 10 Yeti Fur.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "objective-565-4-yeti-fur",
        },
        {
            complete = { questObjective = { count = 8, id = 564, index = 1, text = "Mountain Lion" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-564-costly-menace" },
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-objective-564-1-mountain-lion",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Mountain Lion", mapID = 1416, offMapText = "Travel to Mountain Lion.", x = 0.446, y = 0.79 } },
            sourceStep = 24,
            text = "Kill 8 Mountain Lion.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "objective-564-1-mountain-lion",
        },
        {
            complete = { questObjective = { count = 10, id = 564, index = 2, text = "Hulking Mountain Lion" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-564-costly-menace" },
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-objective-564-2-hulking-mountain-lion",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Hulking Mountain Lion", mapID = 1416, offMapText = "Travel to Hulking Mountain Lion.", x = 0.446, y = 0.79 },
            },
            sourceStep = 24,
            text = "Kill 10 Hulking Mountain Lion.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "objective-564-2-hulking-mountain-lion",
        },
        {
            complete = { quest = { id = 563, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-563-reassignment",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 562 } } },
            route = {
                {
                    label = "Lieutenant Farren Orinelle",
                    mapID = 1424,
                    offMapText = "Travel to Lieutenant Farren Orinelle in Hillsbrad Foothills.",
                    x = 0.5146,
                    y = 0.5838,
                },
            },
            sourceStep = 25,
            text = "Accept Reassignment from Lieutenant Farren Orinelle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "accept-563-reassignment",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 563, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 563, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 562, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 561, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 560, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 559, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        { any = { { any = { { quest = { id = 536, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 564, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-564-costly-menace",
                "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-objective-564-1-mountain-lion",
                "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-objective-564-2-hulking-mountain-lion",
            },
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-turnin-564-costly-menace",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Darren Malvew",
                    mapID = 1424,
                    offMapText = "Travel to Darren Malvew in Hillsbrad Foothills.",
                    x = 0.5242,
                    y = 0.5596,
                },
            },
            sourceActionID = "turnin-564-costly-menace",
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceStep = 28,
            text = "Turn in Costly Menace to Darren Malvew.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 1, id = 565, index = 1 } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-565-bartolo-s-yeti-fur-cloak" },
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-objective-565-reviewed-1",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Auctioneer Jaxon", mapID = 1453, offMapText = "Travel to Auctioneer Jaxon.", x = 0.5361, y = 0.5976 },
            },
            text = "Buy 1 Bolt of Woolen Cloth at the Stormwind Auction House if available. Keep it for Bartolo Ginsetti in Southshore.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "objective-565-reviewed-1",
        },
        {
            complete = { questObjective = { count = 1, id = 565, index = 2 } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-565-bartolo-s-yeti-fur-cloak" },
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-objective-565-reviewed-2",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Micha Yance", mapID = 1424, offMapText = "Travel to Micha Yance.", x = 0.4894, y = 0.5503 } },
            sourceStep = 29,
            text = "Buy 1 Fine Thread from Micha Yance in Southshore.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "objective-565-reviewed-2",
        },
        {
            complete = { questObjective = { count = 1, id = 565, index = 3 } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-565-bartolo-s-yeti-fur-cloak" },
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-objective-565-reviewed-3",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Auctioneer Jaxon", mapID = 1453, offMapText = "Travel to Auctioneer Jaxon.", x = 0.5361, y = 0.5976 },
            },
            text = "Buy 1 Hillman's Cloak at the Stormwind Auction House if available. Keep it for Bartolo Ginsetti in Southshore.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "objective-565-reviewed-3",
        },
        {
            complete = { quest = { id = 565, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-565-bartolo-s-yeti-fur-cloak",
                "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-objective-565-4-yeti-fur",
                "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-objective-565-reviewed-1",
                "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-objective-565-reviewed-2",
                "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-objective-565-reviewed-3",
            },
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-turnin-565-bartolo-s-yeti-fur-cloak",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Bartolo Ginsetti",
                    mapID = 1424,
                    offMapText = "Travel to Bartolo Ginsetti in Hillsbrad Foothills.",
                    x = 0.4943,
                    y = 0.5553,
                },
            },
            sourceActionID = "turnin-565-bartolo-s-yeti-fur-cloak",
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceStep = 30,
            text = "Turn in Bartolo's Yeti Fur Cloak to Bartolo Ginsetti.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 659, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-659-hints-of-a-new-plague" },
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-turnin-659-hints-of-a-new-plague",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Quae", mapID = 1417, offMapText = "Travel to Quae in Arathi Highlands.", x = 0.6019, y = 0.5385 } },
            sourceActionID = "turnin-659-hints-of-a-new-plague",
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceStep = 32,
            text = "Turn in Hints of a New Plague? to Quae.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 658, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-658-hints-of-a-new-plague",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 659 } } },
            route = { { label = "Quae", mapID = 1417, offMapText = "Travel to Quae in Arathi Highlands.", x = 0.6019, y = 0.5385 } },
            sourceStep = 32,
            text = "Accept Hints of a New Plague? from Quae.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "accept-658-hints-of-a-new-plague",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 658, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 658, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 659, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-alliance-stranglethorn-vale",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-stranglethorn-vale",
            text = "Reach level 34 before the Stranglethorn Vale visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 34 } },
            requiredLevel = 34,
        },
        {
            complete = { quest = { id = 563, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 563, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 563, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 562, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 561, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 560, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 559, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        { any = { { any = { { quest = { id = 536, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-stranglethorn-vale-turnin-563-reassignment",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 562 } } },
            route = {
                {
                    label = "Major Samuelson",
                    mapID = 1453,
                    offMapText = "Travel to Major Samuelson in Stormwind City.",
                    x = 0.726,
                    y = 0.1587,
                },
            },
            sourceActionID = "turnin-563-reassignment",
            sourceGuide = "leveling-era-alliance-stranglethorn-vale",
            sourceStep = 67,
            text = "Turn in Reassignment to Major Samuelson.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            id = "visit-entry-leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            text = "Reach level 39 before the Arathi Highlands & Alterac Mountains visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 39 } },
            requiredLevel = 39,
        },
        {
            checkpointQuest = 658,
            complete = { level = { min = 30 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-level-before-objective-658-1-forsaken-courier",
            kind = "note",
            requiredLevel = 30,
            requiredQuests = {},
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "level-before-objective-658-1-forsaken-courier",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 658, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 658, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 659, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 658, index = 1, text = "Forsaken Courier" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-658-1-forsaken-courier",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 659 } } },
            sourceStep = 1,
            text = "Collect 1 Sealed Folder.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "objective-658-1-forsaken-courier",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 658, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 658, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 659, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 658, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-658-1-forsaken-courier" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 658, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 658, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 659, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-turnin-658-hints-of-a-new-plague",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 659 } } },
            route = { { label = "Quae", mapID = 1417, offMapText = "Travel to Quae in Arathi Highlands.", x = 0.6019, y = 0.5385 } },
            sourceActionID = "turnin-658-hints-of-a-new-plague",
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceStep = 11,
            text = "Turn in Hints of a New Plague? to Quae.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 657, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-657-hints-of-a-new-plague",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 658 } } },
            route = { { label = "Quae", mapID = 1417, offMapText = "Travel to Quae in Arathi Highlands.", x = 0.6019, y = 0.5385 } },
            sourceStep = 11,
            text = "Accept Hints of a New Plague? from Quae.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "accept-657-hints-of-a-new-plague",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 657, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 657, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 658, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 659, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 657, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-657-hints-of-a-new-plague" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 657, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 657, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 658, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 659, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-turnin-657-hints-of-a-new-plague",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 658 } } },
            route = {
                { label = "Kinelory", mapID = 1417, offMapText = "Travel to Kinelory in Arathi Highlands.", x = 0.6024, y = 0.5392 },
            },
            sourceActionID = "turnin-657-hints-of-a-new-plague",
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceStep = 12,
            text = "Turn in Hints of a New Plague? to Kinelory.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 660, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-660-hints-of-a-new-plague",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 657 } } },
            route = {
                { label = "Kinelory", mapID = 1417, offMapText = "Travel to Kinelory in Arathi Highlands.", x = 0.6024, y = 0.5392 },
            },
            sourceStep = 12,
            text = "Accept Hints of a New Plague? from Kinelory.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "accept-660-hints-of-a-new-plague",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 660, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 660, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 657, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 658, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 659, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 660, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-660-hints-of-a-new-plague" },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-660-reviewed-escort",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 657 } } },
            route = {
                { label = "Escort destination", mapID = 1417, offMapText = "Travel to Escort destination.", x = 0.6024, y = 0.5392 },
            },
            sourceStep = 13,
            text = "Follow Kinelory and protect her while she investigates the farm. Keep her alive until the quest reports completion.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "objective-660-reviewed-escort",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 660, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 660, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 657, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 658, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 659, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 660, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-660-hints-of-a-new-plague",
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-660-reviewed-escort",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 660, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 660, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 657, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 658, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 659, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-turnin-660-hints-of-a-new-plague",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 657 } } },
            route = { { label = "Quae", mapID = 1417, offMapText = "Travel to Quae in Arathi Highlands.", x = 0.6019, y = 0.5385 } },
            sourceActionID = "turnin-660-hints-of-a-new-plague",
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceStep = 14,
            text = "Turn in Hints of a New Plague? to Quae.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 661, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-661-hints-of-a-new-plague",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 660 } } },
            route = { { label = "Quae", mapID = 1417, offMapText = "Travel to Quae in Arathi Highlands.", x = 0.6019, y = 0.5385 } },
            sourceStep = 14,
            text = "Accept Hints of a New Plague? from Quae.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "accept-661-hints-of-a-new-plague",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 661, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 661, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 660, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 657, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 658, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                { any = { { any = { { quest = { id = 659, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 661, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-661-hints-of-a-new-plague" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 661, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 661, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 660, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 657, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 658, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                { any = { { any = { { quest = { id = 659, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-turnin-661-hints-of-a-new-plague",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 660 } } },
            route = {
                {
                    label = "Phin Odelic",
                    mapID = 1424,
                    offMapText = "Travel to Phin Odelic in Hillsbrad Foothills.",
                    x = 0.5034,
                    y = 0.5904,
                },
            },
            sourceActionID = "turnin-661-hints-of-a-new-plague",
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceStep = 18,
            text = "Turn in Hints of a New Plague? to Phin Odelic.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            id = "visit-entry-leveling-era-horde-the-barrens-and-stonetalon-mountain",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            text = "Reach level 15 before the The Barrens & Stonetalon Mountain visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 15 } },
            requiredLevel = 15,
        },
        {
            checkpointQuest = 1061,
            complete = { level = { min = 13 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-level-before-accept-1061-the-spirits-of-stonetalon",
            kind = "note",
            requiredLevel = 13,
            requiredQuests = {},
            text = "Reach level 13 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "level-before-accept-1061-the-spirits-of-stonetalon",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 1061, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 13 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-1061-the-spirits-of-stonetalon",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Zor Lonetree", mapID = 1454, offMapText = "Travel to Zor Lonetree in Orgrimmar.", x = 0.3899, y = 0.3827 },
            },
            sourceStep = 75,
            text = "Accept The Spirits of Stonetalon from Zor Lonetree.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "accept-1061-the-spirits-of-stonetalon",
        },
        {
            complete = { quest = { id = 1061, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 13 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-1061-the-spirits-of-stonetalon" },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-turnin-1061-the-spirits-of-stonetalon",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Seereth Stonebreak",
                    mapID = 1413,
                    offMapText = "Travel to Seereth Stonebreak in The Barrens.",
                    x = 0.3529,
                    y = 0.2787,
                },
            },
            sourceActionID = "turnin-1061-the-spirits-of-stonetalon",
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceStep = 136,
            text = "Turn in The Spirits of Stonetalon to Seereth Stonebreak.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1062, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 13 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-turnin-1061-the-spirits-of-stonetalon" },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-1062-goblin-invaders",
            kind = "accept",
            requiredQuests = { { conditions = { faction = "Horde" }, mode = "all", quests = { 1061 } } },
            route = {
                {
                    label = "Seereth Stonebreak",
                    mapID = 1413,
                    offMapText = "Travel to Seereth Stonebreak in The Barrens.",
                    x = 0.3526,
                    y = 0.2788,
                },
            },
            sourceStep = 136,
            text = "Accept Goblin Invaders from Seereth Stonebreak.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "accept-1062-goblin-invaders",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1062, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1062, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                { ["not"] = { faction = "Horde" } },
                                                { all = { { any = { { quest = { id = 1061, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                            },
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
            complete = { questObjective = { count = 15, id = 1062, index = 1, text = "Venture Co. Logger" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 13 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-1062-goblin-invaders" },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-1062-1-venture-co-logger",
            kind = "objective",
            requiredQuests = { { conditions = { faction = "Horde" }, mode = "all", quests = { 1061 } } },
            route = {
                { label = "Venture Co. Logger", mapID = 1442, offMapText = "Travel to Venture Co. Logger.", x = 0.666, y = 0.55 },
            },
            sourceStep = 151,
            text = "Kill 15 Venture Co. Logger.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "objective-1062-1-venture-co-logger",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1062, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1062, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                { ["not"] = { faction = "Horde" } },
                                                { all = { { any = { { quest = { id = 1061, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                            },
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
            complete = { quest = { id = 1062, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 13 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-1062-goblin-invaders",
                "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-1062-1-venture-co-logger",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1062, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1062, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                { ["not"] = { faction = "Horde" } },
                                                { all = { { any = { { quest = { id = 1061, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-turnin-1062-goblin-invaders",
            kind = "turnin",
            requiredQuests = { { conditions = { faction = "Horde" }, mode = "all", quests = { 1061 } } },
            route = {
                {
                    label = "Seereth Stonebreak",
                    mapID = 1413,
                    offMapText = "Travel to Seereth Stonebreak in The Barrens.",
                    x = 0.3526,
                    y = 0.2788,
                },
            },
            sourceActionID = "turnin-1062-goblin-invaders",
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceStep = 249,
            text = "Turn in Goblin Invaders to Seereth Stonebreak.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1063, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 13 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-1063-the-elder-crone",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1062 } } },
            route = {
                {
                    label = "Seereth Stonebreak",
                    mapID = 1413,
                    offMapText = "Travel to Seereth Stonebreak in The Barrens.",
                    x = 0.3526,
                    y = 0.2788,
                },
            },
            sourceStep = 250,
            text = "Accept The Elder Crone from Seereth Stonebreak.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "accept-1063-the-elder-crone",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1063, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1063, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1062, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        { ["not"] = { faction = "Horde" } },
                                                                        { all = { { any = { { quest = { id = 1061, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            id = "visit-entry-leveling-era-horde-ashenvale",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-ashenvale",
            text = "Reach level 21 before the Ashenvale visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 21 } },
            requiredLevel = 21,
        },
        {
            complete = { quest = { id = 1063, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 13 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1063, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1063, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1062, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        { ["not"] = { faction = "Horde" } },
                                                                        { all = { { any = { { quest = { id = 1061, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-ashenvale-turnin-1063-the-elder-crone",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1062 } } },
            route = {
                {
                    label = "Magatha Grimtotem",
                    mapID = 1456,
                    offMapText = "Travel to Magatha Grimtotem in Thunder Bluff.",
                    x = 0.6985,
                    y = 0.3091,
                },
            },
            sourceActionID = "turnin-1063-the-elder-crone",
            sourceGuide = "leveling-era-horde-ashenvale",
            sourceStep = 14,
            text = "Turn in The Elder Crone to Magatha Grimtotem.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1064, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 13 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-ashenvale-accept-1064-forsaken-aid",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1063 } } },
            route = {
                {
                    label = "Magatha Grimtotem",
                    mapID = 1456,
                    offMapText = "Travel to Magatha Grimtotem in Thunder Bluff.",
                    x = 0.6985,
                    y = 0.3091,
                },
            },
            sourceStep = 15,
            text = "Accept Forsaken Aid from Magatha Grimtotem.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ashenvale",
            sourceActionID = "accept-1064-forsaken-aid",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1064, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1064, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1063, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1062, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                { all = { { any = { { quest = { id = 1061, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 1064, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 13 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-ashenvale-accept-1064-forsaken-aid" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1064, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1064, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1063, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1062, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                { all = { { any = { { quest = { id = 1061, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-ashenvale-turnin-1064-forsaken-aid",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1063 } } },
            route = {
                {
                    label = "Apothecary Zamah",
                    mapID = 1456,
                    offMapText = "Travel to Apothecary Zamah in Thunder Bluff.",
                    x = 0.2281,
                    y = 0.209,
                },
            },
            sourceActionID = "turnin-1064-forsaken-aid",
            sourceGuide = "leveling-era-horde-ashenvale",
            sourceStep = 16,
            text = "Turn in Forsaken Aid to Apothecary Zamah.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1065, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 13 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-ashenvale-accept-1065-journey-to-tarren-mill",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1064 } } },
            route = {
                {
                    label = "Apothecary Zamah",
                    mapID = 1456,
                    offMapText = "Travel to Apothecary Zamah in Thunder Bluff.",
                    x = 0.2281,
                    y = 0.209,
                },
            },
            sourceStep = 16,
            text = "Accept Journey to Tarren Mill from Apothecary Zamah.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ashenvale",
            sourceActionID = "accept-1065-journey-to-tarren-mill",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1065, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1065, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1064, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1063, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1062, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        { ["not"] = { faction = "Horde" } },
                                                                                                                        { all = { { any = { { quest = { id = 1061, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            id = "visit-entry-leveling-era-horde-hillsbrad-foothills",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-hillsbrad-foothills",
            text = "Reach level 22 before the Hillsbrad Foothills visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 22 } },
            requiredLevel = 22,
        },
        {
            complete = { quest = { id = 494, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-hillsbrad-foothills-accept-494-time-to-strike",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Deathstalker Lesh",
                    mapID = 1424,
                    offMapText = "Travel to Deathstalker Lesh in Hillsbrad Foothills.",
                    x = 0.2078,
                    y = 0.474,
                },
            },
            sourceStep = 8,
            text = "Accept Time To Strike from Deathstalker Lesh.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "accept-494-time-to-strike",
        },
        {
            complete = { quest = { id = 1065, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 13 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1065, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1065, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1064, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1063, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1062, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        { ["not"] = { faction = "Horde" } },
                                                                                                                        { all = { { any = { { quest = { id = 1061, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-hillsbrad-foothills-turnin-1065-journey-to-tarren-mill",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1064 } } },
            route = {
                {
                    label = "Apothecary Lydon",
                    mapID = 1424,
                    offMapText = "Travel to Apothecary Lydon in Hillsbrad Foothills.",
                    x = 0.6144,
                    y = 0.1906,
                },
            },
            sourceActionID = "turnin-1065-journey-to-tarren-mill",
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceStep = 10,
            text = "Turn in Journey to Tarren Mill to Apothecary Lydon.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1066, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 13 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-hillsbrad-foothills-accept-1066-blood-of-innocents",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1065 } } },
            route = {
                {
                    label = "Apothecary Lydon",
                    mapID = 1424,
                    offMapText = "Travel to Apothecary Lydon in Hillsbrad Foothills.",
                    x = 0.6144,
                    y = 0.1906,
                },
            },
            sourceStep = 10,
            text = "Accept Blood of Innocents from Apothecary Lydon.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "accept-1066-blood-of-innocents",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1066, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1066, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1065, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1064, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1063, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1062, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                                                                { all = { { any = { { quest = { id = 1061, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 496, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-hillsbrad-foothills-accept-496-elixir-of-suffering",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Apothecary Lydon",
                    mapID = 1424,
                    offMapText = "Travel to Apothecary Lydon in Hillsbrad Foothills.",
                    x = 0.6144,
                    y = 0.1906,
                },
            },
            sourceStep = 10,
            text = "Accept Elixir of Suffering from Apothecary Lydon.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "accept-496-elixir-of-suffering",
        },
        {
            complete = { quest = { id = 496, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-accept-496-elixir-of-suffering" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-objective-496-elixir-of-suffering",
            kind = "objective",
            requiredQuests = {},
            text = "Collect 10 Gray Bear Tongues and Creeper Ichor from spiders around Tarren Mill. Follow the quest log pin; the Ichor can take many kills to drop.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "objective-496-elixir-of-suffering",
        },
        {
            complete = { quest = { id = 494, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-accept-494-time-to-strike" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-turnin-494-time-to-strike",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "High Executor Darthalia",
                    mapID = 1424,
                    offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.",
                    x = 0.6233,
                    y = 0.2046,
                },
            },
            sourceActionID = "turnin-494-time-to-strike",
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceStep = 15,
            text = "Turn in Time To Strike to High Executor Darthalia.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 527, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-hillsbrad-foothills-accept-527-battle-of-hillsbrad",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "High Executor Darthalia",
                    mapID = 1424,
                    offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.",
                    x = 0.6233,
                    y = 0.2046,
                },
            },
            sourceStep = 15,
            text = "Accept Battle of Hillsbrad from High Executor Darthalia.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "accept-527-battle-of-hillsbrad",
        },
        {
            complete = { quest = { id = 567, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-hillsbrad-foothills-accept-567-dangerous",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Dangerous!", mapID = 1424, offMapText = "Travel to Dangerous!.", x = 0.6255, y = 0.1969 } },
            sourceStep = 17,
            text = "Accept Dangerous!.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "accept-567-dangerous",
        },
        {
            complete = { quest = { id = 549, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 17 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-hillsbrad-foothills-accept-549-wanted-syndicate-personnel",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "WANTED: Syndicate Personnel",
                    mapID = 1424,
                    offMapText = "Travel to WANTED: Syndicate Personnel.",
                    x = 0.6262,
                    y = 0.2074,
                },
            },
            sourceStep = 18,
            text = "Accept WANTED: Syndicate Personnel.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "accept-549-wanted-syndicate-personnel",
        },
        {
            complete = { quest = { id = 498, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 17 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-hillsbrad-foothills-accept-498-the-rescue",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Krusk", mapID = 1424, offMapText = "Travel to Krusk in Hillsbrad Foothills.", x = 0.6323, y = 0.2066 },
            },
            sourceStep = 19,
            text = "Accept The Rescue from Krusk.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "accept-498-the-rescue",
        },
        {
            checkpointQuest = 498,
            complete = {
                any = {
                    { all = { { item = { minCount = 1, name = "Burnished Gold Key" } } } },
                    { quest = { id = 498, state = "complete" } },
                },
            },
            conditions = { all = { { faction = "Horde" }, { level = { min = 17 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-accept-498-the-rescue" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-objective-498-1-jailor-marlgen",
            instructionOnly = true,
            kind = "note",
            rememberPreparation = 498,
            requiredQuests = {},
            route = { { label = "Jailor Marlgen", mapID = 1424, offMapText = "Travel to Jailor Marlgen.", x = 0.788, y = 0.42 } },
            text = "Kill Jailor Marlgen as he patrols Durnholde Keep and loot the Burnished Gold Key.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "objective-498-1-jailor-marlgen",
        },
        {
            complete = { questObjective = { count = 1, id = 498, index = 2 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 17 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-accept-498-the-rescue" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-objective-498-2-locked-ball-and-chain",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Tog'thar", mapID = 1424, offMapText = "Travel to Tog'thar.", x = 0.7979, y = 0.3966 } },
            text = "Use the Burnished Gold Key on Tog'thar's locked ball and chain to free him.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "objective-498-2-locked-ball-and-chain",
        },
        {
            complete = { questObjective = { count = 5, id = 1066, index = 1, text = "Vial of Innocent Blood" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 13 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-accept-1066-blood-of-innocents" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-objective-1066-1-vial-of-innocent-blood",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1065 } } },
            route = {
                {
                    label = "Vial of Innocent Blood",
                    mapID = 1424,
                    offMapText = "Travel to Vial of Innocent Blood.",
                    x = 0.784,
                    y = 0.434,
                },
            },
            sourceStep = 28,
            text = "Collect 5 Vial of Innocent Blood.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "objective-1066-1-vial-of-innocent-blood",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1066, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1066, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1065, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1064, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1063, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1062, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                                                                { all = { { any = { { quest = { id = 1061, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            checkpointQuest = 498,
            complete = {
                any = { { all = { { item = { minCount = 1, name = "Dull Iron Key" } } } }, { quest = { id = 498, state = "complete" } } },
            },
            conditions = { all = { { faction = "Horde" }, { level = { min = 17 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-accept-498-the-rescue" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-objective-498-1-jailor-eston",
            instructionOnly = true,
            kind = "note",
            rememberPreparation = 498,
            requiredQuests = {},
            route = { { label = "Jailor Eston", mapID = 1424, offMapText = "Travel to Jailor Eston.", x = 0.796, y = 0.4183 } },
            text = "Kill Jailor Eston as he patrols Durnholde Keep and loot the Dull Iron Key.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "objective-498-1-jailor-eston",
        },
        {
            complete = { questObjective = { count = 10, id = 549, index = 1, text = "Syndicate Rogue" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 17 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-accept-549-wanted-syndicate-personnel" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-objective-549-1-syndicate-rogue",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Syndicate Rogue", mapID = 1424, offMapText = "Travel to Syndicate Rogue.", x = 0.768, y = 0.43 } },
            sourceStep = 29,
            text = "Kill 10 Syndicate Rogue.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "objective-549-1-syndicate-rogue",
        },
        {
            complete = { questObjective = { count = 1, id = 498, index = 1 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 17 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-accept-498-the-rescue" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-objective-498-1-locked-ball-and-chain",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Drull", mapID = 1424, offMapText = "Travel to Drull.", x = 0.7533, y = 0.415 } },
            text = "Enter the building and use the Dull Iron Key on Drull's locked ball and chain to free him.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "objective-498-1-locked-ball-and-chain",
        },
        {
            complete = { questObjective = { count = 10, id = 549, index = 2, text = "Syndicate Watchman" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 17 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-accept-549-wanted-syndicate-personnel" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-objective-549-2-syndicate-watchman",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Syndicate Watchman", mapID = 1424, offMapText = "Travel to Syndicate Watchman.", x = 0.768, y = 0.43 },
            },
            sourceStep = 29,
            text = "Kill 10 Syndicate Watchman.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "objective-549-2-syndicate-watchman",
        },
        {
            complete = { questObjective = { count = 1, id = 496, index = 2, text = "Creeper Ichor" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-accept-496-elixir-of-suffering" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-objective-496-2-creeper-ichor",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Creeper Ichor", mapID = 1424, offMapText = "Travel to Creeper Ichor.", x = 0.628, y = 0.342 } },
            sourceStep = 31,
            text = "Collect 1 Creeper Ichor.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "objective-496-2-creeper-ichor",
        },
        {
            complete = { questObjective = { count = 10, id = 496, index = 1, text = "Gray Bear Tongue" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-accept-496-elixir-of-suffering" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-objective-496-1-gray-bear-tongue",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Gray Bear Tongue", mapID = 1424, offMapText = "Travel to Gray Bear Tongue.", x = 0.628, y = 0.342 },
            },
            sourceStep = 32,
            text = "Collect 10 Gray Bear Tongue.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "objective-496-1-gray-bear-tongue",
        },
        {
            complete = { quest = { id = 1066, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 13 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-hillsbrad-foothills-accept-1066-blood-of-innocents",
                "horde-leveling-era-horde-hillsbrad-foothills-objective-1066-1-vial-of-innocent-blood",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1066, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1066, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1065, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1064, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1063, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1062, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                                                                { all = { { any = { { quest = { id = 1061, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-hillsbrad-foothills-turnin-1066-blood-of-innocents",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1065 } } },
            route = {
                {
                    label = "Apothecary Lydon",
                    mapID = 1424,
                    offMapText = "Travel to Apothecary Lydon in Hillsbrad Foothills.",
                    x = 0.6144,
                    y = 0.1906,
                },
            },
            sourceActionID = "turnin-1066-blood-of-innocents",
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceStep = 34,
            text = "Turn in Blood of Innocents to Apothecary Lydon.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 496, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-hillsbrad-foothills-accept-496-elixir-of-suffering",
                "horde-leveling-era-horde-hillsbrad-foothills-objective-496-elixir-of-suffering",
                "horde-leveling-era-horde-hillsbrad-foothills-objective-496-2-creeper-ichor",
                "horde-leveling-era-horde-hillsbrad-foothills-objective-496-1-gray-bear-tongue",
            },
            id = "horde-leveling-era-horde-hillsbrad-foothills-turnin-496-elixir-of-suffering",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Apothecary Lydon",
                    mapID = 1424,
                    offMapText = "Travel to Apothecary Lydon in Hillsbrad Foothills.",
                    x = 0.6144,
                    y = 0.1906,
                },
            },
            sourceActionID = "turnin-496-elixir-of-suffering",
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceStep = 34,
            text = "Turn in Elixir of Suffering to Apothecary Lydon.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 499, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-turnin-496-elixir-of-suffering" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-accept-499-elixir-of-suffering",
            kind = "accept",
            requiredQuests = { { conditions = { faction = "Horde" }, mode = "all", quests = { 496 } } },
            route = {
                {
                    label = "Apothecary Lydon",
                    mapID = 1424,
                    offMapText = "Travel to Apothecary Lydon in Hillsbrad Foothills.",
                    x = 0.6144,
                    y = 0.1906,
                },
            },
            sourceStep = 34,
            text = "Accept Elixir of Suffering from Apothecary Lydon.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "accept-499-elixir-of-suffering",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 499, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 499, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                { ["not"] = { faction = "Horde" } },
                                                { all = { { any = { { quest = { id = 496, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                            },
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
            complete = { quest = { id = 499, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-accept-499-elixir-of-suffering" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 499, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 499, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                { ["not"] = { faction = "Horde" } },
                                                { all = { { any = { { quest = { id = 496, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-hillsbrad-foothills-turnin-499-elixir-of-suffering",
            kind = "turnin",
            requiredQuests = { { conditions = { faction = "Horde" }, mode = "all", quests = { 496 } } },
            route = {
                { label = "Umpi", mapID = 1424, offMapText = "Travel to Umpi in Hillsbrad Foothills.", x = 0.6152, y = 0.192 },
            },
            sourceActionID = "turnin-499-elixir-of-suffering",
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceStep = 35,
            text = "Turn in Elixir of Suffering to Umpi.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 501,
            complete = { level = { min = 21 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-hillsbrad-foothills-level-before-accept-501-elixir-of-pain",
            kind = "note",
            requiredLevel = 21,
            requiredQuests = {},
            text = "Reach level 21 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "level-before-accept-501-elixir-of-pain",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 501, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 501, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        { quest = { id = 499, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        { ["not"] = { faction = "Horde" } },
                                                                        { all = { { any = { { quest = { id = 496, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 501, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 21 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-hillsbrad-foothills-accept-501-elixir-of-pain",
            kind = "accept",
            requiredQuests = { { mode = "all", quests = { 499 } } },
            route = {
                {
                    label = "Apothecary Lydon",
                    mapID = 1424,
                    offMapText = "Travel to Apothecary Lydon in Hillsbrad Foothills.",
                    x = 0.6144,
                    y = 0.1906,
                },
            },
            sourceStep = 10,
            text = "Accept Elixir of Pain from Apothecary Lydon.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "accept-501-elixir-of-pain",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 501, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 501, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        { quest = { id = 499, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        { ["not"] = { faction = "Horde" } },
                                                                        { all = { { any = { { quest = { id = 496, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 549, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 17 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-hillsbrad-foothills-accept-549-wanted-syndicate-personnel",
                "horde-leveling-era-horde-hillsbrad-foothills-objective-549-1-syndicate-rogue",
                "horde-leveling-era-horde-hillsbrad-foothills-objective-549-2-syndicate-watchman",
            },
            id = "horde-leveling-era-horde-hillsbrad-foothills-turnin-549-wanted-syndicate-personnel",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "High Executor Darthalia",
                    mapID = 1424,
                    offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.",
                    x = 0.6233,
                    y = 0.2046,
                },
            },
            sourceActionID = "turnin-549-wanted-syndicate-personnel",
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceStep = 36,
            text = "Turn in WANTED: Syndicate Personnel to High Executor Darthalia.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 498, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 17 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-hillsbrad-foothills-accept-498-the-rescue",
                "horde-leveling-era-horde-hillsbrad-foothills-objective-498-1-jailor-marlgen",
                "horde-leveling-era-horde-hillsbrad-foothills-objective-498-2-locked-ball-and-chain",
                "horde-leveling-era-horde-hillsbrad-foothills-objective-498-1-jailor-eston",
                "horde-leveling-era-horde-hillsbrad-foothills-objective-498-1-locked-ball-and-chain",
            },
            id = "horde-leveling-era-horde-hillsbrad-foothills-turnin-498-the-rescue",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Krusk", mapID = 1424, offMapText = "Travel to Krusk in Hillsbrad Foothills.", x = 0.6323, y = 0.206 },
            },
            sourceActionID = "turnin-498-the-rescue",
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceStep = 37,
            text = "Turn in The Rescue to Krusk.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { id = 527, index = 4, text = "Farmer Getz" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-accept-527-battle-of-hillsbrad" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-objective-527-4-farmer-getz",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Farmer Getz", mapID = 1424, offMapText = "Travel to Farmer Getz.", x = 0.3674, y = 0.3944 } },
            sourceStep = 38,
            text = "Kill Farmer Getz.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "objective-527-4-farmer-getz",
        },
        {
            complete = { questObjective = { id = 527, index = 3, text = "Farmer Ray" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-accept-527-battle-of-hillsbrad" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-objective-527-3-farmer-ray",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Farmer Ray", mapID = 1424, offMapText = "Travel to Farmer Ray.", x = 0.3368, y = 0.3542 } },
            sourceStep = 39,
            text = "Kill Farmer Ray.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "objective-527-3-farmer-ray",
        },
        {
            complete = { questObjective = { count = 6, id = 527, index = 1, text = "Hillsbrad Farmer" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-accept-527-battle-of-hillsbrad" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-objective-527-1-hillsbrad-farmer",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Hillsbrad Farmer", mapID = 1424, offMapText = "Travel to Hillsbrad Farmer.", x = 0.334, y = 0.408 },
            },
            sourceStep = 40,
            text = "Kill 6 Hillsbrad Farmer.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "objective-527-1-hillsbrad-farmer",
        },
        {
            complete = { questObjective = { count = 6, id = 527, index = 2, text = "Hillsbrad Farmhand" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-accept-527-battle-of-hillsbrad" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-objective-527-2-hillsbrad-farmhand",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Hillsbrad Farmhand", mapID = 1424, offMapText = "Travel to Hillsbrad Farmhand.", x = 0.334, y = 0.408 },
            },
            sourceStep = 40,
            text = "Kill 6 Hillsbrad Farmhand.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "objective-527-2-hillsbrad-farmhand",
        },
        {
            complete = { questObjective = { count = 10, id = 501, index = 1, text = "Mountain Lion Blood" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 21 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-accept-501-elixir-of-pain" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-objective-501-1-mountain-lion-blood",
            kind = "objective",
            requiredQuests = { { mode = "all", quests = { 499 } } },
            route = {
                { label = "Mountain Lion Blood", mapID = 1424, offMapText = "Travel to Mountain Lion Blood.", x = 0.418, y = 0.376 },
            },
            sourceStep = 41,
            text = "Collect 10 Mountain Lion Blood.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "objective-501-1-mountain-lion-blood",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 501, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 501, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        { quest = { id = 499, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        { ["not"] = { faction = "Horde" } },
                                                                        { all = { { any = { { quest = { id = 496, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 501, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 21 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-hillsbrad-foothills-accept-501-elixir-of-pain",
                "horde-leveling-era-horde-hillsbrad-foothills-objective-501-1-mountain-lion-blood",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 501, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 501, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        { quest = { id = 499, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        { ["not"] = { faction = "Horde" } },
                                                                        { all = { { any = { { quest = { id = 496, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-hillsbrad-foothills-turnin-501-elixir-of-pain",
            kind = "turnin",
            requiredQuests = { { mode = "all", quests = { 499 } } },
            route = {
                {
                    label = "Apothecary Lydon",
                    mapID = 1424,
                    offMapText = "Travel to Apothecary Lydon in Hillsbrad Foothills.",
                    x = 0.6144,
                    y = 0.1906,
                },
            },
            sourceActionID = "turnin-501-elixir-of-pain",
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceStep = 42,
            text = "Turn in Elixir of Pain to Apothecary Lydon.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 502, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 21 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-hillsbrad-foothills-accept-502-elixir-of-pain",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 501 } } },
            route = {
                {
                    label = "Apothecary Lydon",
                    mapID = 1424,
                    offMapText = "Travel to Apothecary Lydon in Hillsbrad Foothills.",
                    x = 0.6144,
                    y = 0.1906,
                },
            },
            sourceStep = 42,
            text = "Accept Elixir of Pain from Apothecary Lydon.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "accept-502-elixir-of-pain",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 502, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 502, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 501, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    all = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 499, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                { all = { { any = { { quest = { id = 496, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 527, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-hillsbrad-foothills-accept-527-battle-of-hillsbrad",
                "horde-leveling-era-horde-hillsbrad-foothills-objective-527-4-farmer-getz",
                "horde-leveling-era-horde-hillsbrad-foothills-objective-527-3-farmer-ray",
                "horde-leveling-era-horde-hillsbrad-foothills-objective-527-1-hillsbrad-farmer",
                "horde-leveling-era-horde-hillsbrad-foothills-objective-527-2-hillsbrad-farmhand",
            },
            id = "horde-leveling-era-horde-hillsbrad-foothills-turnin-527-battle-of-hillsbrad",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "High Executor Darthalia",
                    mapID = 1424,
                    offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.",
                    x = 0.6233,
                    y = 0.2045,
                },
            },
            sourceActionID = "turnin-527-battle-of-hillsbrad",
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceStep = 43,
            text = "Turn in Battle of Hillsbrad to High Executor Darthalia.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 528, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-hillsbrad-foothills-accept-528-battle-of-hillsbrad",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 527 } } },
            route = {
                {
                    label = "High Executor Darthalia",
                    mapID = 1424,
                    offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.",
                    x = 0.6233,
                    y = 0.2045,
                },
            },
            sourceStep = 43,
            text = "Accept Battle of Hillsbrad from High Executor Darthalia.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "accept-528-battle-of-hillsbrad",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 528, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 528, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 527, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 546, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-hillsbrad-foothills-accept-546-souvenirs-of-death",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 527 } } },
            route = {
                {
                    label = "Deathguard Samsa",
                    mapID = 1424,
                    offMapText = "Travel to Deathguard Samsa in Hillsbrad Foothills.",
                    x = 0.6213,
                    y = 0.1968,
                },
            },
            sourceStep = 44,
            text = "Accept Souvenirs of Death from Deathguard Samsa.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "accept-546-souvenirs-of-death",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 546, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 546, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 527, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 502, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 21 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-accept-502-elixir-of-pain" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 502, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 502, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 501, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    all = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 499, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                { all = { { any = { { quest = { id = 496, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-hillsbrad-foothills-turnin-502-elixir-of-pain",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 501 } } },
            route = {
                { label = "Stanley", mapID = 1424, offMapText = "Travel to Stanley in Hillsbrad Foothills.", x = 0.3266, y = 0.3532 },
            },
            sourceActionID = "turnin-502-elixir-of-pain",
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceStep = 45,
            text = "Turn in Elixir of Pain to Stanley.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { id = 567, index = 4, text = "Farmer Kalaba" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-accept-567-dangerous" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-objective-567-4-farmer-kalaba",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Farmer Kalaba", mapID = 1424, offMapText = "Travel to Farmer Kalaba.", x = 0.344, y = 0.458 } },
            sourceStep = 46,
            text = "Kill Farmer Kalaba.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "objective-567-4-farmer-kalaba",
        },
        {
            complete = { questObjective = { id = 567, index = 2, text = "Citizen Wilkes" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-accept-567-dangerous" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-objective-567-2-citizen-wilkes",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 47,
            text = "Kill Citizen Wilkes.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "objective-567-2-citizen-wilkes",
        },
        {
            complete = { questObjective = { count = 15, id = 528, index = 1, text = "Hillsbrad Peasant" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-accept-528-battle-of-hillsbrad" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-objective-528-1-hillsbrad-peasant",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 527 } } },
            route = {
                { label = "Hillsbrad Peasant", mapID = 1424, offMapText = "Travel to Hillsbrad Peasant.", x = 0.338, y = 0.468 },
            },
            sourceStep = 48,
            text = "Kill 15 Hillsbrad Peasant.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "objective-528-1-hillsbrad-peasant",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 528, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 528, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 527, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 528, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-hillsbrad-foothills-accept-528-battle-of-hillsbrad",
                "horde-leveling-era-horde-hillsbrad-foothills-objective-528-1-hillsbrad-peasant",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 528, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 528, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 527, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-hillsbrad-foothills-turnin-528-battle-of-hillsbrad",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 527 } } },
            route = {
                {
                    label = "High Executor Darthalia",
                    mapID = 1424,
                    offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.",
                    x = 0.6233,
                    y = 0.2045,
                },
            },
            sourceActionID = "turnin-528-battle-of-hillsbrad",
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceStep = 51,
            text = "Turn in Battle of Hillsbrad to High Executor Darthalia.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 529, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-hillsbrad-foothills-accept-529-battle-of-hillsbrad",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 528 } } },
            route = {
                {
                    label = "High Executor Darthalia",
                    mapID = 1424,
                    offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.",
                    x = 0.6233,
                    y = 0.2045,
                },
            },
            sourceStep = 51,
            text = "Accept Battle of Hillsbrad from High Executor Darthalia.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "accept-529-battle-of-hillsbrad",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 529, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 529, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 528, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                { any = { { any = { { quest = { id = 527, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 1, id = 529, index = 3, text = "Shipment of Iron" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-accept-529-battle-of-hillsbrad" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-objective-529-3-shipment-of-iron",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 528 } } },
            route = {
                { label = "Shipment of Iron", mapID = 1424, offMapText = "Travel to Shipment of Iron.", x = 0.3201, y = 0.4545 },
            },
            sourceStep = 52,
            text = "Collect 1 Shipment of Iron.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "objective-529-3-shipment-of-iron",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 529, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 529, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 528, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                { any = { { any = { { quest = { id = 527, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { id = 529, index = 1, text = "Blacksmith Verringtan" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-accept-529-battle-of-hillsbrad" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-objective-529-1-blacksmith-verringtan",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 528 } } },
            route = {
                {
                    label = "Blacksmith Verringtan",
                    mapID = 1424,
                    offMapText = "Travel to Blacksmith Verringtan.",
                    x = 0.3241,
                    y = 0.4481,
                },
            },
            sourceStep = 53,
            text = "Kill Blacksmith Verringtan.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "objective-529-1-blacksmith-verringtan",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 529, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 529, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 528, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                { any = { { any = { { quest = { id = 527, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 4, id = 529, index = 2, text = "Hillsbrad Apprentice Blacksmith" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-accept-529-battle-of-hillsbrad" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-objective-529-2-hillsbrad-apprentice-blacksmith",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 528 } } },
            route = {
                {
                    label = "Hillsbrad Apprentice Blacksmith",
                    mapID = 1424,
                    offMapText = "Travel to Hillsbrad Apprentice Blacksmith.",
                    x = 0.3241,
                    y = 0.4481,
                },
            },
            sourceStep = 54,
            text = "Kill 4 Hillsbrad Apprentice Blacksmith.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "objective-529-2-hillsbrad-apprentice-blacksmith",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 529, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 529, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 528, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                { any = { { any = { { quest = { id = 527, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 30, id = 546, index = 1, text = "Hillsbrad Human Skull" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-accept-546-souvenirs-of-death" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-objective-546-1-hillsbrad-human-skull",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 527 } } },
            sourceStep = 69,
            text = "Collect 30 Hillsbrad Human Skull.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills",
            sourceActionID = "objective-546-1-hillsbrad-human-skull",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 546, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 546, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 527, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-horde-hillsbrad-foothills-part-2",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            text = "Reach level 30 before the Hillsbrad Foothills visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 30 } },
            requiredLevel = 30,
        },
        {
            complete = { quest = { id = 509, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 24 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-509-elixir-of-agony",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Apothecary Lydon",
                    mapID = 1424,
                    offMapText = "Travel to Apothecary Lydon in Hillsbrad Foothills.",
                    x = 0.6144,
                    y = 0.1906,
                },
            },
            sourceStep = 9,
            text = "Accept Elixir of Agony from Apothecary Lydon.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "accept-509-elixir-of-agony",
        },
        {
            complete = { quest = { id = 529, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-529-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 528 } } },
            route = {
                { label = "Shipment of Iron", mapID = 1424, offMapText = "Travel to Shipment of Iron.", x = 0.3201, y = 0.4545 },
            },
            sourceStep = 10,
            text = "For Battle of Hillsbrad: Kill Blacksmith Verringtan and 4 Hillsbrad Apprentice Blacksmiths. Retrieve a shipment of iron and report back to Darthalia in Tarren Mill.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "objective-529-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 529, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 529, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 528, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                { any = { { any = { { quest = { id = 527, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 529, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-529-quest-work",
                "horde-leveling-era-horde-hillsbrad-foothills-objective-529-3-shipment-of-iron",
                "horde-leveling-era-horde-hillsbrad-foothills-objective-529-1-blacksmith-verringtan",
                "horde-leveling-era-horde-hillsbrad-foothills-objective-529-2-hillsbrad-apprentice-blacksmith",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 529, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 529, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 528, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                { any = { { any = { { quest = { id = 527, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-turnin-529-battle-of-hillsbrad",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 528 } } },
            route = {
                {
                    label = "High Executor Darthalia",
                    mapID = 1424,
                    offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.",
                    x = 0.6233,
                    y = 0.2045,
                },
            },
            sourceActionID = "turnin-529-battle-of-hillsbrad",
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceStep = 10,
            text = "Turn in Battle of Hillsbrad to High Executor Darthalia.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 532, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-532-battle-of-hillsbrad",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 529 } } },
            route = {
                {
                    label = "High Executor Darthalia",
                    mapID = 1424,
                    offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.",
                    x = 0.6233,
                    y = 0.2045,
                },
            },
            sourceStep = 10,
            text = "Accept Battle of Hillsbrad from High Executor Darthalia.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "accept-532-battle-of-hillsbrad",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 532, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 532, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 529, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 528, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        { any = { { any = { { quest = { id = 527, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            checkpointQuest = 533,
            complete = { level = { min = 29 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-level-before-accept-533-infiltration",
            kind = "note",
            requiredLevel = 29,
            requiredQuests = {},
            text = "Reach level 29 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "level-before-accept-533-infiltration",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 533, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 533, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 498, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 533, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-533-infiltration",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 498 } } },
            route = {
                { label = "Krusk", mapID = 1424, offMapText = "Travel to Krusk in Hillsbrad Foothills.", x = 0.6324, y = 0.2065 },
            },
            sourceStep = 12,
            text = "Accept Infiltration from Krusk.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "accept-533-infiltration",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 533, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 533, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 498, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 552, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-552-helcular-s-revenge",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Novice Thaivand",
                    mapID = 1424,
                    offMapText = "Travel to Novice Thaivand in Hillsbrad Foothills.",
                    x = 0.6388,
                    y = 0.1966,
                },
            },
            sourceStep = 13,
            text = "Accept Helcular's Revenge from Novice Thaivand.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "accept-552-helcular-s-revenge",
        },
        {
            checkpointQuest = 544,
            complete = { level = { min = 30 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-level-before-accept-544-prison-break-in",
            kind = "note",
            requiredLevel = 30,
            requiredQuests = {},
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "level-before-accept-544-prison-break-in",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 544, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-544-prison-break-in",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Magus Wordeen Voidglare",
                    mapID = 1424,
                    offMapText = "Travel to Magus Wordeen Voidglare in Hillsbrad Foothills.",
                    x = 0.616,
                    y = 0.2084,
                },
            },
            sourceStep = 18,
            text = "Accept Prison Break In from Magus Wordeen Voidglare.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "accept-544-prison-break-in",
        },
        {
            complete = { quest = { id = 556, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-556-stone-tokens",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Keeper Bel'varil",
                    mapID = 1424,
                    offMapText = "Travel to Keeper Bel'varil in Hillsbrad Foothills.",
                    x = 0.615,
                    y = 0.2093,
                },
            },
            sourceStep = 19,
            text = "Accept Stone Tokens from Keeper Bel'varil.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "accept-556-stone-tokens",
        },
        {
            complete = { questObjective = { count = 1, id = 552, index = 1, text = "Cave Yeti" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-552-helcular-s-revenge" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-552-1-cave-yeti",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Cave Yeti", mapID = 1424, offMapText = "Travel to Cave Yeti.", x = 0.4618, y = 0.3183 } },
            sourceStep = 20,
            text = "Collect 1 Helcular's Rod.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "objective-552-1-cave-yeti",
        },
        {
            complete = { questObjective = { id = 567, index = 1, text = "Clerk Horrace Whitesteed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-567-1-clerk-horrace-whitesteed",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Clerk Horrace Whitesteed",
                    mapID = 1424,
                    offMapText = "Travel to Clerk Horrace Whitesteed.",
                    x = 0.2981,
                    y = 0.4242,
                },
            },
            sourceStep = 22,
            text = "Kill Clerk Horrace Whitesteed.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "objective-567-1-clerk-horrace-whitesteed",
        },
        {
            complete = { questObjective = { id = 532, index = 1, text = "Magistrate Burnside" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-532-battle-of-hillsbrad" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-532-1-magistrate-burnside",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 529 } } },
            route = {
                { label = "Magistrate Burnside", mapID = 1424, offMapText = "Travel to Magistrate Burnside.", x = 0.2967, y = 0.4164 },
            },
            sourceStep = 23,
            text = "Kill Magistrate Burnside.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "objective-532-1-magistrate-burnside",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 532, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 532, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 529, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 528, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        { any = { { any = { { quest = { id = 527, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 1, id = 532, index = 4, text = "Hillsbrad Town Registry" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-532-battle-of-hillsbrad" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-532-4-hillsbrad-town-registry",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 529 } } },
            route = {
                {
                    label = "Hillsbrad Town Registry",
                    mapID = 1424,
                    offMapText = "Travel to Hillsbrad Town Registry.",
                    x = 0.2952,
                    y = 0.4153,
                },
            },
            sourceStep = 25,
            text = "Collect 1 Hillsbrad Town Registry.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "objective-532-4-hillsbrad-town-registry",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 532, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 532, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 529, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 528, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        { any = { { any = { { quest = { id = 527, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 4, id = 532, index = 2, text = "Hillsbrad Councilman" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-532-battle-of-hillsbrad" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-532-2-hillsbrad-councilman",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 529 } } },
            route = {
                { label = "Hillsbrad Councilman", mapID = 1424, offMapText = "Travel to Hillsbrad Councilman.", x = 0.302, y = 0.422 },
            },
            sourceStep = 26,
            text = "Kill 4 Hillsbrad Councilman.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "objective-532-2-hillsbrad-councilman",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 532, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 532, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 529, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 528, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        { any = { { any = { { quest = { id = 527, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 532, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-532-battle-of-hillsbrad",
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-532-1-magistrate-burnside",
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-532-4-hillsbrad-town-registry",
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-532-2-hillsbrad-councilman",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 532, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 532, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 529, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 528, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        { any = { { any = { { quest = { id = 527, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-turnin-532-battle-of-hillsbrad",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 529 } } },
            route = {
                {
                    label = "High Executor Darthalia",
                    mapID = 1424,
                    offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.",
                    x = 0.6233,
                    y = 0.2045,
                },
            },
            sourceActionID = "turnin-532-battle-of-hillsbrad",
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceStep = 27,
            text = "Turn in Battle of Hillsbrad to High Executor Darthalia.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 539, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-539-battle-of-hillsbrad",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 532 } } },
            route = {
                {
                    label = "High Executor Darthalia",
                    mapID = 1424,
                    offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.",
                    x = 0.6233,
                    y = 0.2045,
                },
            },
            sourceStep = 27,
            text = "Accept Battle of Hillsbrad from High Executor Darthalia.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "accept-539-battle-of-hillsbrad",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 539, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 539, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 532, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 529, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 528, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                { any = { { any = { { quest = { id = 527, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 552, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-552-helcular-s-revenge",
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-552-1-cave-yeti",
            },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-turnin-552-helcular-s-revenge",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Novice Thaivand",
                    mapID = 1424,
                    offMapText = "Travel to Novice Thaivand in Hillsbrad Foothills.",
                    x = 0.6388,
                    y = 0.1966,
                },
            },
            sourceActionID = "turnin-552-helcular-s-revenge",
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceStep = 28,
            text = "Turn in Helcular's Revenge to Novice Thaivand.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 553, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-553-helcular-s-revenge",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 552 } } },
            route = {
                {
                    label = "Novice Thaivand",
                    mapID = 1424,
                    offMapText = "Travel to Novice Thaivand in Hillsbrad Foothills.",
                    x = 0.6388,
                    y = 0.1966,
                },
            },
            sourceStep = 28,
            text = "Accept Helcular's Revenge from Novice Thaivand.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "accept-553-helcular-s-revenge",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 553, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 553, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 552, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { id = 539, index = 1, text = "Foreman Bonds" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-539-battle-of-hillsbrad" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-539-1-foreman-bonds",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 532 } } },
            route = { { label = "Foreman Bonds", mapID = 1424, offMapText = "Travel to Foreman Bonds.", x = 0.3121, y = 0.5601 } },
            sourceStep = 31,
            text = "Kill Foreman Bonds.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "objective-539-1-foreman-bonds",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 539, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 539, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 532, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 529, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 528, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                { any = { { any = { { quest = { id = 527, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { id = 567, index = 3, text = "Miner Hackett" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-567-3-miner-hackett",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Miner Hackett", mapID = 1424, offMapText = "Travel to Miner Hackett.", x = 0.3112, y = 0.5862 } },
            sourceStep = 32,
            text = "Kill Miner Hackett.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "objective-567-3-miner-hackett",
        },
        {
            complete = { questObjective = { count = 10, id = 539, index = 2, text = "Hillsbrad Miner" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-539-battle-of-hillsbrad" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-539-2-hillsbrad-miner",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 532 } } },
            route = { { label = "Hillsbrad Miner", mapID = 1424, offMapText = "Travel to Hillsbrad Miner.", x = 0.298, y = 0.546 } },
            sourceStep = 33,
            text = "Kill 10 Hillsbrad Miner.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "objective-539-2-hillsbrad-miner",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 539, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 539, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 532, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 529, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 528, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                { any = { { any = { { quest = { id = 527, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 30, id = 546, index = 1, text = "Hillsbrad Human Skull" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-546-1-hillsbrad-human-skull",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 527 } } },
            route = {
                { label = "Hillsbrad Human Skull", mapID = 1424, offMapText = "Travel to Hillsbrad Human Skull.", x = 0.298, y = 0.546 },
            },
            sourceStep = 34,
            text = "Collect 30 Hillsbrad Human Skull.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "objective-546-1-hillsbrad-human-skull",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 546, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 546, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 527, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 544, index = 2, text = "Ricter" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-544-prison-break-in" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-544-2-ricter",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Ricter", mapID = 1416, offMapText = "Travel to Ricter.", x = 0.202, y = 0.8408 } },
            sourceStep = 36,
            text = "Collect 1 Bloodstone Marble.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "objective-544-2-ricter",
        },
        {
            complete = { questObjective = { count = 1, id = 544, index = 3, text = "Alina" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-544-prison-break-in" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-544-3-alina",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Alina", mapID = 1416, offMapText = "Travel to Alina.", x = 0.2035, y = 0.8635 } },
            sourceStep = 37,
            text = "Collect 1 Bloodstone Shard.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "objective-544-3-alina",
        },
        {
            complete = { questObjective = { count = 1, id = 544, index = 1, text = "Dermot" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-544-prison-break-in" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-544-1-dermot",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Dermot", mapID = 1416, offMapText = "Travel to Dermot.", x = 0.2001, y = 0.8613 } },
            sourceStep = 38,
            text = "Collect 1 Bloodstone Wedge.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "objective-544-1-dermot",
        },
        {
            complete = { questObjective = { count = 1, id = 544, index = 4, text = "Kegan Darkmar" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-544-prison-break-in" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-544-4-kegan-darkmar",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Kegan Darkmar", mapID = 1416, offMapText = "Travel to Kegan Darkmar.", x = 0.1778, y = 0.832 } },
            sourceStep = 39,
            text = "Collect 1 Bloodstone Oval.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "objective-544-4-kegan-darkmar",
        },
        {
            complete = { questObjective = { count = 10, id = 556, index = 1, text = "Worn Stone Token" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-556-stone-tokens" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-556-1-worn-stone-token",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Worn Stone Token", mapID = 1416, offMapText = "Travel to Worn Stone Token.", x = 0.202, y = 0.824 },
            },
            sourceStep = 40,
            text = "Collect 10 Worn Stone Token.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "objective-556-1-worn-stone-token",
        },
        {
            complete = { questObjective = { count = 1, id = 533, index = 1, text = "Syndicate Footpad" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-533-infiltration" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-533-1-syndicate-footpad",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 498 } } },
            route = {
                { label = "Syndicate Footpad", mapID = 1416, offMapText = "Travel to Syndicate Footpad.", x = 0.476, y = 0.828 },
            },
            sourceStep = 43,
            text = "Collect 1 Syndicate Missive.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "objective-533-1-syndicate-footpad",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 533, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 533, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 498, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 544, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-544-prison-break-in",
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-544-2-ricter",
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-544-3-alina",
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-544-1-dermot",
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-544-4-kegan-darkmar",
            },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-turnin-544-prison-break-in",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Magus Wordeen Voidglare",
                    mapID = 1424,
                    offMapText = "Travel to Magus Wordeen Voidglare in Hillsbrad Foothills.",
                    x = 0.616,
                    y = 0.2084,
                },
            },
            sourceActionID = "turnin-544-prison-break-in",
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceStep = 45,
            text = "Turn in Prison Break In to Magus Wordeen Voidglare.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 556, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-556-stone-tokens",
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-556-1-worn-stone-token",
            },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-turnin-556-stone-tokens",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Keeper Bel'varil",
                    mapID = 1424,
                    offMapText = "Travel to Keeper Bel'varil in Hillsbrad Foothills.",
                    x = 0.615,
                    y = 0.2094,
                },
            },
            sourceActionID = "turnin-556-stone-tokens",
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceStep = 46,
            text = "Turn in Stone Tokens to Keeper Bel'varil.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 546, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-546-1-hillsbrad-human-skull",
                "horde-leveling-era-horde-hillsbrad-foothills-objective-546-1-hillsbrad-human-skull",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 546, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 546, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 527, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-turnin-546-souvenirs-of-death",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 527 } } },
            route = {
                {
                    label = "Deathguard Samsa",
                    mapID = 1424,
                    offMapText = "Travel to Deathguard Samsa in Hillsbrad Foothills.",
                    x = 0.6211,
                    y = 0.197,
                },
            },
            sourceActionID = "turnin-546-souvenirs-of-death",
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceStep = 48,
            text = "Turn in Souvenirs of Death to Deathguard Samsa.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 539, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-539-battle-of-hillsbrad",
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-539-1-foreman-bonds",
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-539-2-hillsbrad-miner",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 539, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 539, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 532, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 529, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 528, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                { any = { { any = { { quest = { id = 527, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-turnin-539-battle-of-hillsbrad",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 532 } } },
            route = {
                {
                    label = "High Executor Darthalia",
                    mapID = 1424,
                    offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.",
                    x = 0.6233,
                    y = 0.2046,
                },
            },
            sourceActionID = "turnin-539-battle-of-hillsbrad",
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceStep = 49,
            text = "Turn in Battle of Hillsbrad to High Executor Darthalia.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 541,
            complete = { level = { min = 19 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-level-before-accept-541-battle-of-hillsbrad",
            kind = "note",
            requiredLevel = 19,
            requiredQuests = {},
            text = "Reach level 19 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "level-before-accept-541-battle-of-hillsbrad",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 541, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 541, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 539, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 532, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 529, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 528, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        { any = { { any = { { quest = { id = 527, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 541, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-541-battle-of-hillsbrad",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 539 } } },
            route = {
                {
                    label = "High Executor Darthalia",
                    mapID = 1424,
                    offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.",
                    x = 0.6233,
                    y = 0.2046,
                },
            },
            text = "Accept Battle of Hillsbrad from High Executor Darthalia in Tarren Mill.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "accept-541-battle-of-hillsbrad",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 541, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 541, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 539, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 532, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 529, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 528, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        { any = { { any = { { quest = { id = 527, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 541, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-541-battle-of-hillsbrad" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-541-battle-of-hillsbrad",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 539 } } },
            text = "Travel to Dun Garok in southeastern Hillsbrad Foothills with a group. Kill 8 Mountaineers, 4 Riflemen, 2 Priests and Captain Ironhill.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "objective-541-battle-of-hillsbrad",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 541, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 541, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 539, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 532, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 529, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 528, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        { any = { { any = { { quest = { id = 527, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 541, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-541-battle-of-hillsbrad",
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-541-battle-of-hillsbrad",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 541, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 541, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 539, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 532, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 529, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 528, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        { any = { { any = { { quest = { id = 527, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-turnin-541-battle-of-hillsbrad",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 539 } } },
            route = {
                {
                    label = "High Executor Darthalia",
                    mapID = 1424,
                    offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.",
                    x = 0.6233,
                    y = 0.2046,
                },
            },
            sourceActionID = "turnin-541-battle-of-hillsbrad",
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            text = "Turn in Battle of Hillsbrad to High Executor Darthalia in Tarren Mill.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 550, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-550-battle-of-hillsbrad",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 541 } } },
            route = {
                {
                    label = "High Executor Darthalia",
                    mapID = 1424,
                    offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.",
                    x = 0.6233,
                    y = 0.2046,
                },
            },
            text = "Accept Battle of Hillsbrad from High Executor Darthalia in Tarren Mill. Report to Varimathras in the Undercity.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "accept-550-battle-of-hillsbrad",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 550, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 550, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 541, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 539, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 532, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 529, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 528, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                { any = { { any = { { quest = { id = 527, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 567, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-567-1-clerk-horrace-whitesteed",
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-567-3-miner-hackett",
                "horde-leveling-era-horde-hillsbrad-foothills-objective-567-4-farmer-kalaba",
                "horde-leveling-era-horde-hillsbrad-foothills-objective-567-2-citizen-wilkes",
            },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-turnin-567-dangerous",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "High Executor Darthalia",
                    mapID = 1424,
                    offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.",
                    x = 0.6233,
                    y = 0.2046,
                },
            },
            sourceActionID = "turnin-567-dangerous",
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceStep = 49,
            text = "Turn in Dangerous! to High Executor Darthalia.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 533, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-533-infiltration",
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-533-1-syndicate-footpad",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 533, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 533, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 498, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-turnin-533-infiltration",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 498 } } },
            route = {
                { label = "Krusk", mapID = 1424, offMapText = "Travel to Krusk in Hillsbrad Foothills.", x = 0.6324, y = 0.2065 },
            },
            sourceActionID = "turnin-533-infiltration",
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceStep = 50,
            text = "Turn in Infiltration to Krusk.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 1, id = 553, index = 2 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-553-helcular-s-revenge" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-553-2-authored-Flame-of-Veraz",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 552 } } },
            route = { { label = "Flame-of-Veraz", mapID = 1424, offMapText = "Travel to Flame-of-Veraz.", x = 0.4404, y = 0.2656 } },
            text = "Charge Helcular's Rod at the Flame of Veraz inside the yeti cave.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "objective-553-2-authored-Flame-of-Veraz",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 553, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 553, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 552, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 553, index = 1 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-553-helcular-s-revenge" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-553-1-authored-Flame-of-Azel",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 552 } } },
            route = { { label = "Flame-of-Azel", mapID = 1424, offMapText = "Travel to Flame-of-Azel.", x = 0.439, y = 0.2805 } },
            text = "Charge Helcular's Rod at the Flame of Azel inside the yeti cave.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "objective-553-1-authored-Flame-of-Azel",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 553, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 553, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 552, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 553, index = 3 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-553-helcular-s-revenge" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-553-3-authored-Flame-of-Uzel",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 552 } } },
            route = { { label = "Flame-of-Uzel", mapID = 1416, offMapText = "Travel to Flame-of-Uzel.", x = 0.3754, y = 0.6626 } },
            text = "Charge Helcular's Rod at the Flame of Uzel inside Frostmaw's cave. Then take the charged rod to Helcular's grave in Southshore.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "objective-553-3-authored-Flame-of-Uzel",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 553, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 553, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 552, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 553, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-553-helcular-s-revenge",
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-553-2-authored-Flame-of-Veraz",
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-553-1-authored-Flame-of-Azel",
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-553-3-authored-Flame-of-Uzel",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 553, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 553, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 552, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-turnin-553-helcular-s-revenge",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 552 } } },
            route = {
                { label = "Helcular's Revenge", mapID = 1424, offMapText = "Travel to Helcular's Revenge.", x = 0.5278, y = 0.5338 },
            },
            sourceActionID = "turnin-553-helcular-s-revenge",
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceStep = 51,
            text = "Turn in Helcular's Revenge.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 6, id = 509, index = 1, text = "Mudsnout Blossoms" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 24 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-hillsbrad-foothills-part-2-accept-509-elixir-of-agony" },
            id = "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-509-1-mudsnout-blossoms",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Mudsnout Blossoms", mapID = 1424, offMapText = "Travel to Mudsnout Blossoms.", x = 0.64, y = 0.599 },
            },
            sourceStep = 52,
            text = "Collect 6 Mudsnout Blossoms.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-hillsbrad-foothills-part-2",
            sourceActionID = "objective-509-1-mudsnout-blossoms",
        },
        {
            id = "visit-entry-leveling-era-horde-arathi-highlands",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-arathi-highlands",
            text = "Reach level 32 before the Arathi Highlands visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 32 } },
            requiredLevel = 32,
        },
        {
            complete = { quest = { id = 509, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 24 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-arathi-highlands-objective-509-quest-work",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Mudsnout Blossoms", mapID = 1424, offMapText = "Travel to Mudsnout Blossoms.", x = 0.64, y = 0.599 },
            },
            sourceStep = 19,
            text = "For Elixir of Agony: Bring 6 Mudsnout Blossoms to Apothecary Lydon in Tarren Mill.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-arathi-highlands",
            sourceActionID = "objective-509-quest-work",
        },
        {
            complete = { quest = { id = 509, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 24 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-arathi-highlands-objective-509-quest-work",
                "horde-leveling-era-horde-hillsbrad-foothills-part-2-objective-509-1-mudsnout-blossoms",
            },
            id = "horde-leveling-era-horde-arathi-highlands-turnin-509-elixir-of-agony",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Apothecary Lydon",
                    mapID = 1424,
                    offMapText = "Travel to Apothecary Lydon in Hillsbrad Foothills.",
                    x = 0.6144,
                    y = 0.1906,
                },
            },
            sourceActionID = "turnin-509-elixir-of-agony",
            sourceGuide = "leveling-era-horde-arathi-highlands",
            sourceStep = 19,
            text = "Turn in Elixir of Agony to Apothecary Lydon.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 513, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 24 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-arathi-highlands-accept-513-elixir-of-agony",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 509 } } },
            route = {
                {
                    label = "Apothecary Lydon",
                    mapID = 1424,
                    offMapText = "Travel to Apothecary Lydon in Hillsbrad Foothills.",
                    x = 0.6144,
                    y = 0.1906,
                },
            },
            sourceStep = 19,
            text = "Accept Elixir of Agony from Apothecary Lydon.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-arathi-highlands",
            sourceActionID = "accept-513-elixir-of-agony",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 513, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 513, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 509, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 513, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 24 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-arathi-highlands-accept-513-elixir-of-agony" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 513, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 513, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 509, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-arathi-highlands-turnin-513-elixir-of-agony",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 509 } } },
            route = {
                {
                    label = "Master Apothecary Faranell",
                    mapID = 1458,
                    offMapText = "Travel to Master Apothecary Faranell in Undercity.",
                    x = 0.4882,
                    y = 0.6928,
                },
            },
            sourceActionID = "turnin-513-elixir-of-agony",
            sourceGuide = "leveling-era-horde-arathi-highlands",
            sourceStep = 23,
            text = "Turn in Elixir of Agony to Master Apothecary Faranell.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 550, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 550, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 550, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 541, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 539, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 532, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 529, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 528, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                { any = { { any = { { quest = { id = 527, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-arathi-highlands-turnin-550-battle-of-hillsbrad",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 541 } } },
            route = {
                { label = "Varimathras", mapID = 1458, offMapText = "Travel to Varimathras in Undercity.", x = 0.5624, y = 0.9222 },
            },
            sourceActionID = "turnin-550-battle-of-hillsbrad",
            sourceGuide = "leveling-era-horde-arathi-highlands",
            sourceStep = 24,
            text = "Turn in Battle of Hillsbrad to Varimathras.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            id = "visit-entry-leveling-era-horde-alterac-mountains-and-arathi-highlands",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            text = "Reach level 38 before the Alterac Mountains & Arathi Highlands visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 38 } },
            requiredLevel = 38,
        },
        {
            complete = { quest = { id = 557, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-557-bracers-of-binding",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 556 } } },
            route = {
                {
                    label = "Keeper Bel'varil",
                    mapID = 1424,
                    offMapText = "Travel to Keeper Bel'varil in Hillsbrad Foothills.",
                    x = 0.615,
                    y = 0.2094,
                },
            },
            sourceStep = 3,
            text = "Accept Bracers of Binding from Keeper Bel'varil.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "accept-557-bracers-of-binding",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 557, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 557, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 556, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 566,
            complete = { level = { min = 35 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-level-before-accept-566-wanted-baron-vardus",
            kind = "note",
            requiredLevel = 35,
            requiredQuests = {},
            text = "Reach level 35 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "level-before-accept-566-wanted-baron-vardus",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 566, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 566, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 549, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 566, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-566-wanted-baron-vardus",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 549 } } },
            route = {
                { label = "WANTED: Baron Vardus", mapID = 1424, offMapText = "Travel to WANTED: Baron Vardus.", x = 0.6262, y = 0.2074 },
            },
            sourceStep = 4,
            text = "Accept WANTED: Baron Vardus.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "accept-566-wanted-baron-vardus",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 566, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 566, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 549, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 503, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-503-gol-dir",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 533 } } },
            route = {
                { label = "Krusk", mapID = 1424, offMapText = "Travel to Krusk in Hillsbrad Foothills.", x = 0.6324, y = 0.2066 },
            },
            sourceStep = 5,
            text = "Accept Gol'dir from Krusk.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "accept-503-gol-dir",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 503, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 503, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 533, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                { any = { { any = { { quest = { id = 498, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 1, id = 503, index = 1, text = "Jailor Borhuin" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-503-gol-dir" },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-503-1-jailor-borhuin",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 533 } } },
            route = { { label = "Jailor Borhuin", mapID = 1416, offMapText = "Travel to Jailor Borhuin.", x = 0.6313, y = 0.4347 } },
            sourceStep = 13,
            text = "Collect 1 Rusted Iron Key.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "objective-503-1-jailor-borhuin",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 503, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 503, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 533, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                { any = { { any = { { quest = { id = 498, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 503, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-503-gol-dir",
                "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-503-1-jailor-borhuin",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 503, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 503, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 533, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                { any = { { any = { { quest = { id = 498, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-turnin-503-gol-dir",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 533 } } },
            route = {
                { label = "Gol'dir", mapID = 1416, offMapText = "Travel to Gol'dir in Alterac Mountains.", x = 0.5996, y = 0.4374 },
            },
            sourceActionID = "turnin-503-gol-dir",
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceStep = 15,
            text = "Turn in Gol'dir to Gol'dir.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 506, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-506-blackmoore-s-legacy",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 503 } } },
            route = {
                { label = "Gol'dir", mapID = 1416, offMapText = "Travel to Gol'dir in Alterac Mountains.", x = 0.5996, y = 0.4374 },
            },
            sourceStep = 15,
            text = "Accept Blackmoore's Legacy from Gol'dir.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "accept-506-blackmoore-s-legacy",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 506, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 506, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 503, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 533, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        { any = { { any = { { quest = { id = 498, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 1, id = 566, index = 1, text = "Baron Vardus" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-566-wanted-baron-vardus" },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-566-1-baron-vardus",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 549 } } },
            route = { { label = "Baron Vardus", mapID = 1416, offMapText = "Travel to Baron Vardus.", x = 0.603, y = 0.4321 } },
            sourceStep = 16,
            text = "Collect 1 Head of Baron Vardus.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "objective-566-1-baron-vardus",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 566, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 566, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 549, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 566, index = 1, text = "Baron Vardus" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-566-wanted-baron-vardus" },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-566-1-baron-vardus-2",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 549 } } },
            route = { { label = "Baron Vardus", mapID = 1416, offMapText = "Travel to Baron Vardus.", x = 0.474, y = 0.17 } },
            sourceStep = 23,
            text = "Collect 1 Head of Baron Vardus.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "objective-566-1-baron-vardus-2",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 566, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 566, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 549, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 506, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-506-blackmoore-s-legacy" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 506, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 506, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 503, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 533, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        { any = { { any = { { quest = { id = 498, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-turnin-506-blackmoore-s-legacy",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 503 } } },
            route = {
                { label = "Krusk", mapID = 1424, offMapText = "Travel to Krusk in Hillsbrad Foothills.", x = 0.6324, y = 0.2066 },
            },
            sourceActionID = "turnin-506-blackmoore-s-legacy",
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceStep = 17,
            text = "Turn in Blackmoore's Legacy to Krusk.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 507, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-507-lord-aliden-perenolde",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 506 } } },
            route = {
                { label = "Krusk", mapID = 1424, offMapText = "Travel to Krusk in Hillsbrad Foothills.", x = 0.6324, y = 0.2066 },
            },
            sourceStep = 17,
            text = "Accept Lord Aliden Perenolde from Krusk.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "accept-507-lord-aliden-perenolde",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 507, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 507, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 506, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 503, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 533, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                { any = { { any = { { quest = { id = 498, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 566, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-566-wanted-baron-vardus",
                "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-566-1-baron-vardus",
                "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-566-1-baron-vardus-2",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 566, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 566, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 549, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-turnin-566-wanted-baron-vardus",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 549 } } },
            route = {
                {
                    label = "High Executor Darthalia",
                    mapID = 1424,
                    offMapText = "Travel to High Executor Darthalia in Hillsbrad Foothills.",
                    x = 0.6233,
                    y = 0.2045,
                },
            },
            sourceActionID = "turnin-566-wanted-baron-vardus",
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceStep = 18,
            text = "Turn in WANTED: Baron Vardus to High Executor Darthalia.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 4, id = 557, index = 1, text = "Elemental Slave" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-557-bracers-of-binding" },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-557-1-elemental-slave",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 556 } } },
            route = {
                {
                    label = "Bracers of Earth Binding",
                    mapID = 1416,
                    offMapText = "Travel to Bracers of Earth Binding.",
                    x = 0.206,
                    y = 0.764,
                },
            },
            sourceStep = 19,
            text = "Collect 4 Bracers of Earth Binding.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "objective-557-1-elemental-slave",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 557, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 557, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 556, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { id = 507, index = 1, text = "Lord Aliden Perenolde" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-507-lord-aliden-perenolde" },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-507-1-lord-aliden-perenolde",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 506 } } },
            route = {
                {
                    label = "Lord Aliden Perenolde",
                    mapID = 1416,
                    offMapText = "Travel to Lord Aliden Perenolde.",
                    x = 0.3932,
                    y = 0.1458,
                },
            },
            sourceStep = 21,
            text = "Kill Lord Aliden Perenolde.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "objective-507-1-lord-aliden-perenolde",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 507, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 507, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 506, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 503, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 533, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                { any = { { any = { { quest = { id = 498, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 507, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-507-lord-aliden-perenolde",
                "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-507-1-lord-aliden-perenolde",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 507, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 507, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 506, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 503, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 533, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                { any = { { any = { { quest = { id = 498, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-turnin-507-lord-aliden-perenolde",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 506 } } },
            route = {
                { label = "Elysa", mapID = 1416, offMapText = "Travel to Elysa in Alterac Mountains.", x = 0.393, y = 0.1431 },
            },
            sourceActionID = "turnin-507-lord-aliden-perenolde",
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceStep = 22,
            text = "Turn in Lord Aliden Perenolde to Elysa.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 508, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-508-taretha-s-gift",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 507 } } },
            route = {
                { label = "Elysa", mapID = 1416, offMapText = "Travel to Elysa in Alterac Mountains.", x = 0.393, y = 0.1431 },
            },
            sourceStep = 22,
            text = "Accept Taretha's Gift from Elysa.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "accept-508-taretha-s-gift",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 508, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 508, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 507, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 506, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 503, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 533, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        { any = { { any = { { quest = { id = 498, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 557, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-557-bracers-of-binding",
                "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-557-1-elemental-slave",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 557, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 557, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 556, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-turnin-557-bracers-of-binding",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 556 } } },
            route = {
                {
                    label = "Keeper Bel'varil",
                    mapID = 1424,
                    offMapText = "Travel to Keeper Bel'varil in Hillsbrad Foothills.",
                    x = 0.615,
                    y = 0.2094,
                },
            },
            sourceActionID = "turnin-557-bracers-of-binding",
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceStep = 25,
            text = "Turn in Bracers of Binding to Keeper Bel'varil.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 508, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-508-taretha-s-gift" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 508, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 508, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 507, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 506, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 503, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 533, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        { any = { { any = { { quest = { id = 498, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-turnin-508-taretha-s-gift",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 507 } } },
            route = {
                { label = "Krusk", mapID = 1424, offMapText = "Travel to Krusk in Hillsbrad Foothills.", x = 0.6324, y = 0.2066 },
            },
            sourceActionID = "turnin-508-taretha-s-gift",
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceStep = 27,
            text = "Turn in Taretha's Gift to Krusk.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            id = "horde-extra-495-level",
            kind = "note",
            checkpointQuest = 495,
            text = "Reach level 39 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 39 } },
            requiredLevel = 39,
            alternativeQuests = { 518 },
        },
        {
            id = "horde-extra-495-accept",
            kind = "accept",
            text = "Accept The Crown of Will from Sharlindra.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 34 } } } },
            route = {
                {
                    mapID = 1458,
                    x = 0.574,
                    y = 0.9359999999999999,
                    label = "Sharlindra",
                    offMapText = "Travel to Sharlindra in Undercity.",
                },
            },
            complete = { quest = { id = 495, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            alternativeQuests = { 518 },
            dependsOn = { "horde-extra-495-level" },
        },
        {
            id = "horde-extra-495-objective",
            kind = "objective",
            text = "Report to Melisara at Tarren Mill in the Hillsbrad Foothills. Follow the quest log for the destination.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 34 } } } },
            route = {},
            complete = { quest = { id = 495, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            alternativeQuests = { 518 },
            dependsOn = { "horde-extra-495-accept" },
            useClientPin = true,
        },
        {
            alternativeQuests = { 518 },
            complete = { quest = { id = 495, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 34 } } } },
            dependsOn = { "horde-extra-495-objective" },
            id = "horde-extra-495-turnin",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Melisara", mapID = 1424, offMapText = "Travel to Melisara in Hillsbrad Foothills.", x = 0.626, y = 0.206 },
            },
            text = "Turn in The Crown of Will to Melisara.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            id = "horde-extra-518-level",
            kind = "note",
            checkpointQuest = 518,
            text = "Reach level 39 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 39 } },
            requiredLevel = 39,
        },
        {
            id = "horde-extra-518-accept",
            kind = "accept",
            text = "Accept The Crown of Will from Melisara.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 34 } } } },
            route = {
                {
                    mapID = 1424,
                    x = 0.626,
                    y = 0.20600000000000002,
                    label = "Melisara",
                    offMapText = "Travel to Melisara in Hillsbrad Foothills.",
                },
            },
            complete = { quest = { id = 518, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-518-level" },
        },
        {
            id = "horde-extra-518-objective",
            kind = "objective",
            text = "Kill 10 Crushridge Maulers for Melisara in Tarren Mill. This is an elite. Bring a group.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 34 } } } },
            route = {
                {
                    mapID = 1416,
                    x = 0.44,
                    y = 0.466,
                    label = "Crushridge Mauler",
                    offMapText = "Travel to Crushridge Mauler in Alterac Mountains.",
                },
            },
            complete = { quest = { id = 518, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-518-accept" },
        },
        {
            complete = { quest = { id = 518, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 34 } } } },
            dependsOn = { "horde-extra-518-objective" },
            id = "horde-extra-518-turnin",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Melisara", mapID = 1424, offMapText = "Travel to Melisara in Hillsbrad Foothills.", x = 0.626, y = 0.206 },
            },
            text = "Turn in The Crown of Will to Melisara.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            id = "horde-extra-547-level",
            kind = "note",
            checkpointQuest = 547,
            text = "Reach level 30 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 30 } },
            requiredLevel = 30,
        },
        {
            id = "horde-extra-547-accept",
            kind = "accept",
            text = "Accept Humbert's Sword from Deathguard Humbert.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 26 } } } },
            route = {
                {
                    mapID = 1424,
                    x = 0.626,
                    y = 0.20199999999999999,
                    label = "Deathguard Humbert",
                    offMapText = "Travel to Deathguard Humbert in Hillsbrad Foothills.",
                },
            },
            complete = { quest = { id = 547, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-547-level" },
        },
        {
            id = "horde-extra-547-objective",
            kind = "objective",
            text = "Defeat Dun Garok Mountaineers and loot Humbert's Sword. This is an elite. Bring a group.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 26 } } } },
            route = {
                {
                    mapID = 1424,
                    x = 0.706,
                    y = 0.7979999999999999,
                    label = "Dun Garok Mountaineer",
                    offMapText = "Travel to Dun Garok Mountaineer in Hillsbrad Foothills.",
                },
            },
            complete = { quest = { id = 547, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-547-accept" },
        },
        {
            complete = { quest = { id = 547, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 26 } } } },
            dependsOn = { "horde-extra-547-objective" },
            id = "horde-extra-547-turnin",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Deathguard Humbert",
                    mapID = 1424,
                    offMapText = "Travel to Deathguard Humbert in Hillsbrad Foothills.",
                    x = 0.626,
                    y = 0.202,
                },
            },
            text = "Turn in Humbert's Sword to Deathguard Humbert.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
    },
})
