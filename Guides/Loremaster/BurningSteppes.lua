local _, ns = ...

-- Source decisions: docs/loremaster/burning-steppes.json.
-- Coordinates require a Forever client walkthrough.
ns:RegisterGuide({
    id = "loremaster-burning-steppes",
    title = "Burning Steppes",
    category = "Loremaster Guides",
    revision = 1,
    routeMode = "ordered",
    loremasterExpanded = true,
    goals = {
        {
            id = "visit-entry-leveling-era-alliance-searing-gorge",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-searing-gorge",
            text = "Reach level 50 before the Searing Gorge visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 50 } },
            requiredLevel = 50,
        },
        {
            complete = { quest = { id = 3441, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-searing-gorge-accept-3441-divine-retribution",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceStep = 4,
            text = "Accept Divine Retribution from Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "accept-3441-divine-retribution",
        },
        {
            complete = { quest = { id = 3441, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-3441-divine-retribution" },
            id = "alliance-leveling-era-alliance-searing-gorge-objective-3441-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 6,
            text = "Speak with Kalaran Windblade and ask what drives his vengeance. Follow his story until the quest is ready to turn in.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "objective-3441-quest-work",
        },
        {
            complete = { quest = { id = 3441, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-searing-gorge-accept-3441-divine-retribution",
                "alliance-leveling-era-alliance-searing-gorge-objective-3441-quest-work",
            },
            id = "alliance-leveling-era-alliance-searing-gorge-turnin-3441-divine-retribution",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceStep = 6,
            text = "Turn in Divine Retribution to Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "turnin-3441-divine-retribution",
        },
        {
            complete = { quest = { id = 3442, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-searing-gorge-accept-3442-the-flawless-flame",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3441 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceStep = 6,
            text = "Accept The Flawless Flame from Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "accept-3442-the-flawless-flame",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3442, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3442, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 4, id = 3442, index = 1, text = "Heart of Flame" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-3442-the-flawless-flame" },
            id = "alliance-leveling-era-alliance-searing-gorge-objective-3442-1-heart-of-flame",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3441 } } },
            route = { { label = "Heart of Flame", mapID = 1427, offMapText = "Travel to Heart of Flame.", x = 0.4258, y = 0.3858 } },
            sourceStep = 8,
            text = "Collect 4 Heart of Flame.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "objective-3442-1-heart-of-flame",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3442, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3442, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 4, id = 3442, index = 2, text = "Golem Oil" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-3442-the-flawless-flame" },
            id = "alliance-leveling-era-alliance-searing-gorge-objective-3442-2-golem-oil",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3441 } } },
            route = { { label = "Golem Oil", mapID = 1427, offMapText = "Travel to Golem Oil.", x = 0.392, y = 0.434 } },
            sourceStep = 9,
            text = "Collect 4 Golem Oil.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "objective-3442-2-golem-oil",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3442, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3442, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3442, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-searing-gorge-accept-3442-the-flawless-flame",
                "alliance-leveling-era-alliance-searing-gorge-objective-3442-1-heart-of-flame",
                "alliance-leveling-era-alliance-searing-gorge-objective-3442-2-golem-oil",
            },
            id = "alliance-leveling-era-alliance-searing-gorge-turnin-3442-the-flawless-flame",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3441 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceStep = 10,
            text = "Turn in The Flawless Flame to Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "turnin-3442-the-flawless-flame",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3442, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3442, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3443, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-searing-gorge-accept-3443-forging-the-shaft",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3442 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceStep = 10,
            text = "Accept Forging the Shaft from Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "accept-3443-forging-the-shaft",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3443, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3443, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3442, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 8, id = 3443, index = 1, text = "Thorium Plated Dagger" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-3443-forging-the-shaft" },
            id = "alliance-leveling-era-alliance-searing-gorge-objective-3443-1-thorium-plated-dagger",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3442 } } },
            route = {
                { label = "Thorium Plated Dagger", mapID = 1427, offMapText = "Travel to Thorium Plated Dagger.", x = 0.446, y = 0.374 },
            },
            sourceStep = 16,
            text = "Collect 8 Thorium Plated Dagger.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "objective-3443-1-thorium-plated-dagger",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3443, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3443, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3442, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3443, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-searing-gorge-accept-3443-forging-the-shaft",
                "alliance-leveling-era-alliance-searing-gorge-objective-3443-1-thorium-plated-dagger",
            },
            id = "alliance-leveling-era-alliance-searing-gorge-turnin-3443-forging-the-shaft",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3442 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3906,
                    y = 0.3899,
                },
            },
            sourceStep = 18,
            text = "Turn in Forging the Shaft to Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "turnin-3443-forging-the-shaft",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3443, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3443, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3442, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3452, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-searing-gorge-accept-3452-the-flame-s-casing",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3443 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3906,
                    y = 0.3899,
                },
            },
            sourceStep = 18,
            text = "Accept The Flame's Casing from Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "accept-3452-the-flame-s-casing",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3452, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3452, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3443, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 1, id = 3452, index = 1, text = "Twilight Dark Shaman" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-3452-the-flame-s-casing" },
            id = "alliance-leveling-era-alliance-searing-gorge-objective-3452-1-twilight-dark-shaman",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3443 } } },
            route = {
                { label = "Twilight Dark Shaman", mapID = 1427, offMapText = "Travel to Twilight Dark Shaman.", x = 0.25, y = 0.364 },
            },
            sourceStep = 19,
            text = "Collect 1 Symbol of Ragnaros.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "objective-3452-1-twilight-dark-shaman",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3452, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3452, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3443, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3452, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-searing-gorge-accept-3452-the-flame-s-casing",
                "alliance-leveling-era-alliance-searing-gorge-objective-3452-1-twilight-dark-shaman",
            },
            id = "alliance-leveling-era-alliance-searing-gorge-turnin-3452-the-flame-s-casing",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3443 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceStep = 20,
            text = "Turn in The Flame's Casing to Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "turnin-3452-the-flame-s-casing",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3452, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3452, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3443, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3453, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-searing-gorge-accept-3453-the-torch-of-retribution",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3452 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceStep = 20,
            text = "Accept The Torch of Retribution from Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "accept-3453-the-torch-of-retribution",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3453, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3453, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3452, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3443, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3442, state = "completed" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3453, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-3453-the-torch-of-retribution" },
            id = "alliance-leveling-era-alliance-searing-gorge-objective-3453-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3452 } } },
            sourceStep = 22,
            text = "For The Torch of Retribution: Wait for Kalaran Windblade to complete the Torch of Retribution.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "objective-3453-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3453, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3453, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3452, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3443, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3442, state = "completed" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3453, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-searing-gorge-accept-3453-the-torch-of-retribution",
                "alliance-leveling-era-alliance-searing-gorge-objective-3453-quest-work",
            },
            id = "alliance-leveling-era-alliance-searing-gorge-turnin-3453-the-torch-of-retribution",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3452 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceStep = 22,
            text = "Turn in The Torch of Retribution to Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "turnin-3453-the-torch-of-retribution",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3453, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3453, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3452, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3443, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3442, state = "completed" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3454, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-searing-gorge-accept-3454-the-torch-of-retribution",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3453 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceStep = 22,
            text = "Accept The Torch of Retribution from Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "accept-3454-the-torch-of-retribution",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3454, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3454, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3453, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3454, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-3454-the-torch-of-retribution" },
            id = "alliance-leveling-era-alliance-searing-gorge-turnin-3454-the-torch-of-retribution",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3453 } } },
            route = {
                {
                    label = "The Torch of Retribution",
                    mapID = 1427,
                    offMapText = "Travel to The Torch of Retribution.",
                    x = 0.3906,
                    y = 0.3906,
                },
            },
            sourceStep = 23,
            text = "Turn in The Torch of Retribution.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "turnin-3454-the-torch-of-retribution",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3454, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3454, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3453, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3462, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-searing-gorge-accept-3462-squire-maltrake",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3454 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.39,
                },
            },
            sourceStep = 24,
            text = "Accept Squire Maltrake from Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "accept-3462-squire-maltrake",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3462, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3462, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3454, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3453, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3452, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3443, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3442, state = "completed" } },
                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3462, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-3462-squire-maltrake" },
            id = "alliance-leveling-era-alliance-searing-gorge-turnin-3462-squire-maltrake",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3454 } } },
            route = {
                {
                    label = "Squire Maltrake",
                    mapID = 1427,
                    offMapText = "Travel to Squire Maltrake in Searing Gorge.",
                    x = 0.3916,
                    y = 0.3899,
                },
            },
            sourceStep = 25,
            text = "Turn in Squire Maltrake to Squire Maltrake.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "turnin-3462-squire-maltrake",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3462, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3462, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3454, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3453, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3452, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3443, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3442, state = "completed" } },
                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3463, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-searing-gorge-accept-3463-set-them-ablaze",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3462 } } },
            route = {
                {
                    label = "Squire Maltrake",
                    mapID = 1427,
                    offMapText = "Travel to Squire Maltrake in Searing Gorge.",
                    x = 0.3916,
                    y = 0.3899,
                },
            },
            sourceStep = 25,
            text = "Accept Set Them Ablaze! from Squire Maltrake.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "accept-3463-set-them-ablaze",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3463, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3463, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3462, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 1, id = 3463, index = 4 } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-3463-set-them-ablaze" },
            id = "alliance-leveling-era-alliance-searing-gorge-objective-3463-4-authored-Northern-Tower",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3462 } } },
            route = { { label = "Northern-Tower", mapID = 1427, offMapText = "Travel to Northern-Tower.", x = 0.3331, y = 0.5449 } },
            text = "Climb the northern sentry tower. Equip the Torch of Retribution and light its Sentry Brazier. Reequip your normal weapon afterward.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "objective-3463-4-authored-Northern-Tower",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3463, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3463, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3462, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 1, id = 3463, index = 1 } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-3463-set-them-ablaze" },
            id = "alliance-leveling-era-alliance-searing-gorge-objective-3463-1-authored-Western-Tower",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3462 } } },
            route = { { label = "Western-Tower", mapID = 1427, offMapText = "Travel to Western-Tower.", x = 0.3567, y = 0.6068 } },
            text = "Climb the western sentry tower. Equip the Torch of Retribution and light its Sentry Brazier. Reequip your normal weapon afterward.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "objective-3463-1-authored-Western-Tower",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3463, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3463, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3462, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 1, id = 3463, index = 2 } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-3463-set-them-ablaze" },
            id = "alliance-leveling-era-alliance-searing-gorge-objective-3463-2-authored-Southern-Tower",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3462 } } },
            route = { { label = "Southern-Tower", mapID = 1427, offMapText = "Travel to Southern-Tower.", x = 0.4403, y = 0.6091 } },
            text = "Climb the southern sentry tower. Equip the Torch of Retribution and light its Sentry Brazier. Reequip your normal weapon afterward.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "objective-3463-2-authored-Southern-Tower",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3463, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3463, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3462, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 1, id = 3463, index = 3 } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-3463-set-them-ablaze" },
            id = "alliance-leveling-era-alliance-searing-gorge-objective-3463-3-authored-Eastern-Tower",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3462 } } },
            route = { { label = "Eastern-Tower", mapID = 1427, offMapText = "Travel to Eastern-Tower.", x = 0.5006, y = 0.5474 } },
            text = "Cross the hanging bridge at Searing Gorge 52.48,57.95 and climb the eastern sentry tower. Equip the Torch of Retribution and light its Sentry Brazier. Reequip your normal weapon afterward.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "objective-3463-3-authored-Eastern-Tower",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3463, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3463, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3462, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3463, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-searing-gorge-accept-3463-set-them-ablaze",
                "alliance-leveling-era-alliance-searing-gorge-objective-3463-4-authored-Northern-Tower",
                "alliance-leveling-era-alliance-searing-gorge-objective-3463-1-authored-Western-Tower",
                "alliance-leveling-era-alliance-searing-gorge-objective-3463-2-authored-Southern-Tower",
                "alliance-leveling-era-alliance-searing-gorge-objective-3463-3-authored-Eastern-Tower",
            },
            id = "alliance-leveling-era-alliance-searing-gorge-turnin-3463-set-them-ablaze",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3462 } } },
            route = {
                {
                    label = "Squire Maltrake",
                    mapID = 1427,
                    offMapText = "Travel to Squire Maltrake in Searing Gorge.",
                    x = 0.3917,
                    y = 0.39,
                },
            },
            sourceStep = 44,
            text = "Turn in Set Them Ablaze! to Squire Maltrake.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "turnin-3463-set-them-ablaze",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3463, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3463, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3462, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3481, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-searing-gorge-accept-3481-trinkets",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3463 } } },
            route = { { label = "Trinkets..", mapID = 1427, offMapText = "Travel to Trinkets....", x = 0.3886, y = 0.3899 } },
            sourceStep = 46,
            text = "Accept Trinkets...",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "accept-3481-trinkets",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3481, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3481, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3463, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3462, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3454, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3453, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3452, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3443, state = "completed" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3481, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-3481-trinkets" },
            id = "alliance-leveling-era-alliance-searing-gorge-turnin-3481-trinkets",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3463 } } },
            route = { { label = "Trinkets..", mapID = 1427, offMapText = "Travel to Trinkets....", x = 0.3886, y = 0.3899 } },
            sourceStep = 47,
            text = "Turn in Trinkets...",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "turnin-3481-trinkets",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3481, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3481, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3463, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3462, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3454, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3453, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3452, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3443, state = "completed" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            alternativeQuests = { 4023 },
            complete = { item = { minCount = 1, name = "Black Dragonflight Molt" } },
            conditions = { faction = "Alliance" },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-searing-gorge-open-objective-4022-1-hoard-of-the-black-dragonflight",
            kind = "note",
            referenceQuest = 4022,
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3481 } } },
            text = "Open the Hoard of the Black Dragonflight from Kalaran Windblade to obtain the Black Dragonflight Molt. Keep it for Cyrus Therepentous.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "open-objective-4022-1-hoard-of-the-black-dragonflight",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4022, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4022, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3481, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3463, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3462, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            id = "visit-entry-leveling-era-alliance-blasted-lands-and-burning-steppes",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            text = "Reach level 51 before the Blasted Lands & Burning Steppes visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 51 } },
            requiredLevel = 51,
        },
        {
            complete = { quest = { id = 3823, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-3823-extinguish-the-firegut",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Oralius", mapID = 1428, offMapText = "Travel to Oralius in Burning Steppes.", x = 0.8456, y = 0.6868 },
            },
            sourceStep = 19,
            text = "Accept Extinguish the Firegut from Oralius.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "accept-3823-extinguish-the-firegut",
        },
        {
            complete = { questObjective = { count = 7, id = 3823, index = 2, text = "Firegut Ogre" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-3823-extinguish-the-firegut" },
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-objective-3823-2-firegut-ogre",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Firegut Ogre", mapID = 1428, offMapText = "Travel to Firegut Ogre.", x = 0.756, y = 0.5 } },
            sourceStep = 20,
            text = "Kill 7 Firegut Ogre.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "objective-3823-2-firegut-ogre",
        },
        {
            complete = { questObjective = { count = 7, id = 3823, index = 3, text = "Firegut Brute" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-3823-extinguish-the-firegut" },
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-objective-3823-3-firegut-brute",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Firegut Brute", mapID = 1428, offMapText = "Travel to Firegut Brute.", x = 0.756, y = 0.5 } },
            sourceStep = 20,
            text = "Kill 7 Firegut Brute.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "objective-3823-3-firegut-brute",
        },
        {
            complete = { questObjective = { count = 15, id = 3823, index = 1, text = "Firegut Ogre Mage" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-3823-extinguish-the-firegut" },
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-objective-3823-1-firegut-ogre-mage",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Firegut Ogre Mage", mapID = 1428, offMapText = "Travel to Firegut Ogre Mage.", x = 0.756, y = 0.5 },
            },
            sourceStep = 20,
            text = "Kill 15 Firegut Ogre Mage.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "objective-3823-1-firegut-ogre-mage",
        },
        {
            complete = { quest = { id = 3823, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-3823-extinguish-the-firegut",
                "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-objective-3823-2-firegut-ogre",
                "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-objective-3823-3-firegut-brute",
                "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-objective-3823-1-firegut-ogre-mage",
            },
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-turnin-3823-extinguish-the-firegut",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Oralius", mapID = 1428, offMapText = "Travel to Oralius in Burning Steppes.", x = 0.8456, y = 0.6868 },
            },
            sourceStep = 21,
            text = "Turn in Extinguish the Firegut to Oralius.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "turnin-3823-extinguish-the-firegut",
        },
        {
            id = "visit-entry-leveling-era-alliance-burning-steppes",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-burning-steppes",
            text = "Reach level 56 before the Burning Steppes visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 56 } },
            requiredLevel = 56,
        },
        {
            checkpointQuest = 3702,
            complete = { level = { min = 50 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-burning-steppes-level-before-accept-3702-the-smoldering-ruins-of-thaurissan",
            kind = "note",
            requiredLevel = 50,
            requiredQuests = {},
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "level-before-accept-3702-the-smoldering-ruins-of-thaurissan",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 3702, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-burning-steppes-accept-3702-the-smoldering-ruins-of-thaurissan",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Royal Historian Archesonus",
                    mapID = 1455,
                    offMapText = "Travel to Royal Historian Archesonus in Ironforge.",
                    x = 0.3837,
                    y = 0.5531,
                },
            },
            sourceStep = 1,
            text = "Accept The Smoldering Ruins of Thaurissan from Royal Historian Archesonus.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "accept-3702-the-smoldering-ruins-of-thaurissan",
        },
        {
            complete = { quest = { id = 3702, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-burning-steppes-accept-3702-the-smoldering-ruins-of-thaurissan" },
            id = "alliance-leveling-era-alliance-burning-steppes-objective-3702-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 3,
            text = "Speak with Royal Historian Archesonus and tell her you are ready. Follow her account of Thaurissan until the quest is ready to turn in.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "objective-3702-quest-work",
        },
        {
            complete = { quest = { id = 3702, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-burning-steppes-accept-3702-the-smoldering-ruins-of-thaurissan",
                "alliance-leveling-era-alliance-burning-steppes-objective-3702-quest-work",
            },
            id = "alliance-leveling-era-alliance-burning-steppes-turnin-3702-the-smoldering-ruins-of-thaurissan",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Royal Historian Archesonus",
                    mapID = 1455,
                    offMapText = "Travel to Royal Historian Archesonus in Ironforge.",
                    x = 0.3837,
                    y = 0.5531,
                },
            },
            sourceStep = 3,
            text = "Turn in The Smoldering Ruins of Thaurissan to Royal Historian Archesonus.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "turnin-3702-the-smoldering-ruins-of-thaurissan",
        },
        {
            complete = { quest = { id = 3701, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-burning-steppes-accept-3701-the-smoldering-ruins-of-thaurissan",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3702 } } },
            route = {
                {
                    label = "Royal Historian Archesonus",
                    mapID = 1455,
                    offMapText = "Travel to Royal Historian Archesonus in Ironforge.",
                    x = 0.3837,
                    y = 0.5531,
                },
            },
            sourceStep = 3,
            text = "Accept The Smoldering Ruins of Thaurissan from Royal Historian Archesonus.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "accept-3701-the-smoldering-ruins-of-thaurissan",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3701, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3701, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 3702, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
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
            complete = { quest = { id = 3824, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-burning-steppes-accept-3824-gor-tesh-the-brute-lord",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3823 } } },
            route = {
                { label = "Oralius", mapID = 1428, offMapText = "Travel to Oralius in Burning Steppes.", x = 0.8456, y = 0.6868 },
            },
            sourceStep = 12,
            text = "Accept Gor'tesh the Brute Lord from Oralius.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "accept-3824-gor-tesh-the-brute-lord",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3824, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3824, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 3823, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
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
            complete = { quest = { id = 4283, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-burning-steppes-accept-4283-fifty-yep",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Oralius", mapID = 1428, offMapText = "Travel to Oralius in Burning Steppes.", x = 0.8456, y = 0.6868 },
            },
            sourceStep = 12,
            text = "Accept FIFTY! YEP! from Oralius.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "accept-4283-fifty-yep",
        },
        {
            complete = { quest = { id = 4182, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-burning-steppes-accept-4182-dragonkin-menace",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Helendis Riverhorn",
                    mapID = 1428,
                    offMapText = "Travel to Helendis Riverhorn in Burning Steppes.",
                    x = 0.8582,
                    y = 0.6894,
                },
            },
            sourceStep = 13,
            text = "Accept Dragonkin Menace from Helendis Riverhorn.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "accept-4182-dragonkin-menace",
        },
        {
            checkpointQuest = 4726,
            complete = { level = { min = 50 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-burning-steppes-level-before-accept-4726-broodling-essence",
            kind = "note",
            requiredLevel = 50,
            requiredQuests = {},
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "level-before-accept-4726-broodling-essence",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 4726, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-burning-steppes-accept-4726-broodling-essence",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Tinkee Steamboil",
                    mapID = 1428,
                    offMapText = "Travel to Tinkee Steamboil in Burning Steppes.",
                    x = 0.6524,
                    y = 0.24,
                },
            },
            sourceStep = 14,
            text = "Accept Broodling Essence from Tinkee Steamboil.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "accept-4726-broodling-essence",
        },
        {
            complete = { quest = { id = 4296, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-burning-steppes-accept-4296-tablet-of-the-seven",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Maxwort Uberglint",
                    mapID = 1428,
                    offMapText = "Travel to Maxwort Uberglint in Burning Steppes.",
                    x = 0.6516,
                    y = 0.2392,
                },
            },
            sourceStep = 15,
            text = "Accept Tablet of the Seven from Maxwort Uberglint.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "accept-4296-tablet-of-the-seven",
        },
        {
            alternativeQuests = { 4023 },
            checkpointQuest = 4022,
            complete = { level = { min = 52 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-burning-steppes-level-before-accept-4022-a-taste-of-flame",
            kind = "note",
            requiredLevel = 52,
            requiredQuests = {},
            text = "Reach level 52 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "level-before-accept-4022-a-taste-of-flame",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4022, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4022, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3481, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3463, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3462, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            alternativeQuests = { 4023 },
            complete = { quest = { id = 4022, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 52 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-burning-steppes-accept-4022-a-taste-of-flame",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3481 } } },
            route = {
                {
                    label = "Cyrus Therepentous",
                    mapID = 1428,
                    offMapText = "Travel to Cyrus Therepentous in Burning Steppes.",
                    x = 0.9506,
                    y = 0.3157,
                },
            },
            sourceStep = 17,
            text = "Accept A Taste of Flame from Cyrus Therepentous.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "accept-4022-a-taste-of-flame",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4022, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4022, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3481, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3463, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3462, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            alternativeQuests = { 4023 },
            complete = { questObjective = { count = 1, id = 4022, index = 1, text = "Frenzied Black Drake" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 52 } } } },
            dependsOn = { "alliance-leveling-era-alliance-burning-steppes-accept-4022-a-taste-of-flame" },
            id = "alliance-leveling-era-alliance-burning-steppes-objective-4022-1-frenzied-black-drake",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3481 } } },
            route = {
                { label = "Frenzied Black Drake", mapID = 1428, offMapText = "Travel to Frenzied Black Drake.", x = 0.9506, y = 0.3157 },
            },
            sourceStep = 18,
            text = "Collect 1 Black Dragonflight Molt.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "objective-4022-1-frenzied-black-drake",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4022, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4022, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3481, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3463, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3462, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            alternativeQuests = { 4023 },
            complete = { quest = { id = 4022, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 52 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-burning-steppes-accept-4022-a-taste-of-flame",
                "alliance-leveling-era-alliance-burning-steppes-objective-4022-1-frenzied-black-drake",
            },
            id = "alliance-leveling-era-alliance-burning-steppes-turnin-4022-a-taste-of-flame",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3481 } } },
            route = {
                {
                    label = "Cyrus Therepentous",
                    mapID = 1428,
                    offMapText = "Travel to Cyrus Therepentous in Burning Steppes.",
                    x = 0.9506,
                    y = 0.3157,
                },
            },
            sourceStep = 20,
            text = "Turn in A Taste of Flame to Cyrus Therepentous.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "turnin-4022-a-taste-of-flame",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4022, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4022, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3481, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3463, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3462, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 8, id = 4726, index = 1, text = "Broodling Essence" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = { "alliance-leveling-era-alliance-burning-steppes-accept-4726-broodling-essence" },
            id = "alliance-leveling-era-alliance-burning-steppes-objective-4726-1-broodling-essence",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Broodling Essence", mapID = 1428, offMapText = "Travel to Broodling Essence.", x = 0.886, y = 0.294 },
            },
            sourceStep = 21,
            text = "Use the Draco-Incarcinatrix 900 on a Black Broodling before killing it. Open the red crystal on its corpse to collect a Broodling Essence. Collect 8 essences.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "objective-4726-1-broodling-essence",
        },
        {
            complete = { questObjective = { id = 4182, index = 3, text = "Black Drake" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-burning-steppes-accept-4182-dragonkin-menace" },
            id = "alliance-leveling-era-alliance-burning-steppes-objective-4182-3-black-drake",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Black Drake", mapID = 1428, offMapText = "Travel to Black Drake.", x = 0.884, y = 0.326 } },
            sourceStep = 22,
            text = "Kill Black Drake.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "objective-4182-3-black-drake",
        },
        {
            complete = { questObjective = { count = 4, id = 4182, index = 4, text = "Black Wyrmkin" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-burning-steppes-accept-4182-dragonkin-menace" },
            id = "alliance-leveling-era-alliance-burning-steppes-objective-4182-4-black-wyrmkin",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Black Wyrmkin", mapID = 1428, offMapText = "Travel to Black Wyrmkin.", x = 0.916, y = 0.474 } },
            sourceStep = 23,
            text = "Kill 4 Black Wyrmkin.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "objective-4182-4-black-wyrmkin",
        },
        {
            complete = { questObjective = { count = 10, id = 4182, index = 2, text = "Black Dragonspawn" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-burning-steppes-accept-4182-dragonkin-menace" },
            id = "alliance-leveling-era-alliance-burning-steppes-objective-4182-2-black-dragonspawn",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Black Dragonspawn", mapID = 1428, offMapText = "Travel to Black Dragonspawn.", x = 0.916, y = 0.474 },
            },
            sourceStep = 23,
            text = "Kill 10 Black Dragonspawn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "objective-4182-2-black-dragonspawn",
        },
        {
            complete = { questObjective = { count = 15, id = 4182, index = 1, text = "Black Broodling" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-burning-steppes-accept-4182-dragonkin-menace" },
            id = "alliance-leveling-era-alliance-burning-steppes-objective-4182-1-black-broodling",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Black Broodling", mapID = 1428, offMapText = "Travel to Black Broodling.", x = 0.904, y = 0.504 } },
            sourceStep = 24,
            text = "Kill 15 Black Broodling.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "objective-4182-1-black-broodling",
        },
        {
            complete = { questObjective = { count = 1, id = 4296, index = 1, text = "Tablet Transcript" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = { "alliance-leveling-era-alliance-burning-steppes-accept-4296-tablet-of-the-seven" },
            id = "alliance-leveling-era-alliance-burning-steppes-objective-4296-1-tablet-transcript",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Tablet Transcript", mapID = 1428, offMapText = "Travel to Tablet Transcript.", x = 0.5409, y = 0.4073 },
            },
            sourceStep = 25,
            text = "Collect 1 Tablet Transcript.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "objective-4296-1-tablet-transcript",
        },
        {
            complete = { questObjective = { count = 1, id = 3824, index = 1, text = "Gor'tesh" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-burning-steppes-accept-3824-gor-tesh-the-brute-lord" },
            id = "alliance-leveling-era-alliance-burning-steppes-objective-3824-1-gor-tesh",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3823 } } },
            route = { { label = "Gor'tesh", mapID = 1428, offMapText = "Travel to Gor'tesh.", x = 0.3926, y = 0.5536 } },
            sourceStep = 27,
            text = "Collect 1 Gor'tesh's Lopped Off Head.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "objective-3824-1-gor-tesh",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3824, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3824, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 3823, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
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
            complete = { questObjective = { count = 50, id = 4283, index = 1, text = "Blackrock Medallion" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-burning-steppes-accept-4283-fifty-yep" },
            id = "alliance-leveling-era-alliance-burning-steppes-objective-4283-1-blackrock-medallion",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Blackrock Medallion", mapID = 1428, offMapText = "Travel to Blackrock Medallion.", x = 0.412, y = 0.566 },
            },
            sourceStep = 28,
            text = "Collect 50 Blackrock Medallion.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "objective-4283-1-blackrock-medallion",
        },
        {
            complete = { quest = { id = 3824, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-burning-steppes-accept-3824-gor-tesh-the-brute-lord",
                "alliance-leveling-era-alliance-burning-steppes-objective-3824-1-gor-tesh",
            },
            id = "alliance-leveling-era-alliance-burning-steppes-turnin-3824-gor-tesh-the-brute-lord",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3823 } } },
            route = {
                { label = "Oralius", mapID = 1428, offMapText = "Travel to Oralius in Burning Steppes.", x = 0.8456, y = 0.6867 },
            },
            sourceStep = 29,
            text = "Turn in Gor'tesh the Brute Lord to Oralius.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "turnin-3824-gor-tesh-the-brute-lord",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3824, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3824, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 3823, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
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
            complete = { quest = { id = 3825, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-burning-steppes-accept-3825-ogre-head-on-a-stick-party",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3824 } } },
            route = {
                { label = "Oralius", mapID = 1428, offMapText = "Travel to Oralius in Burning Steppes.", x = 0.8456, y = 0.6867 },
            },
            sourceStep = 29,
            text = "Accept Ogre Head On A Stick = Party from Oralius.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "accept-3825-ogre-head-on-a-stick-party",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3825, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3825, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3824, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 3823, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 4283, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-burning-steppes-accept-4283-fifty-yep",
                "alliance-leveling-era-alliance-burning-steppes-objective-4283-1-blackrock-medallion",
            },
            id = "alliance-leveling-era-alliance-burning-steppes-turnin-4283-fifty-yep",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Oralius", mapID = 1428, offMapText = "Travel to Oralius in Burning Steppes.", x = 0.8456, y = 0.6867 },
            },
            sourceStep = 29,
            text = "Turn in FIFTY! YEP! to Oralius.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "turnin-4283-fifty-yep",
        },
        {
            complete = { quest = { id = 4182, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-burning-steppes-accept-4182-dragonkin-menace",
                "alliance-leveling-era-alliance-burning-steppes-objective-4182-3-black-drake",
                "alliance-leveling-era-alliance-burning-steppes-objective-4182-4-black-wyrmkin",
                "alliance-leveling-era-alliance-burning-steppes-objective-4182-2-black-dragonspawn",
                "alliance-leveling-era-alliance-burning-steppes-objective-4182-1-black-broodling",
            },
            id = "alliance-leveling-era-alliance-burning-steppes-turnin-4182-dragonkin-menace",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Helendis Riverhorn",
                    mapID = 1428,
                    offMapText = "Travel to Helendis Riverhorn in Burning Steppes.",
                    x = 0.8582,
                    y = 0.6895,
                },
            },
            sourceStep = 31,
            text = "Turn in Dragonkin Menace to Helendis Riverhorn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "turnin-4182-dragonkin-menace",
        },
        {
            complete = { quest = { id = 4183, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-burning-steppes-accept-4183-the-true-masters",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4182 } } },
            route = {
                {
                    label = "Helendis Riverhorn",
                    mapID = 1428,
                    offMapText = "Travel to Helendis Riverhorn in Burning Steppes.",
                    x = 0.8582,
                    y = 0.6895,
                },
            },
            sourceStep = 31,
            text = "Accept The True Masters from Helendis Riverhorn.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "accept-4183-the-true-masters",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4183, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4183, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 4182, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
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
            complete = { quest = { id = 4183, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-burning-steppes-accept-4183-the-true-masters" },
            id = "alliance-leveling-era-alliance-burning-steppes-turnin-4183-the-true-masters",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4182 } } },
            route = {
                {
                    label = "Magistrate Solomon",
                    mapID = 1433,
                    offMapText = "Travel to Magistrate Solomon in Redridge Mountains.",
                    x = 0.2999,
                    y = 0.4445,
                },
            },
            sourceStep = 32,
            text = "Turn in The True Masters to Magistrate Solomon.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "turnin-4183-the-true-masters",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4183, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4183, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 4182, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
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
            complete = { quest = { id = 4184, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-burning-steppes-accept-4184-the-true-masters",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4183 } } },
            route = {
                {
                    label = "Magistrate Solomon",
                    mapID = 1433,
                    offMapText = "Travel to Magistrate Solomon in Redridge Mountains.",
                    x = 0.249,
                    y = 0.444,
                },
            },
            sourceStep = 32,
            text = "Accept The True Masters from Magistrate Solomon.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "accept-4184-the-true-masters",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4184, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4184, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4183, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 4182, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 4184, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-burning-steppes-accept-4184-the-true-masters" },
            id = "alliance-leveling-era-alliance-burning-steppes-turnin-4184-the-true-masters",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4183 } } },
            route = {
                {
                    label = "Highlord Bolvar Fordragon",
                    mapID = 1453,
                    offMapText = "Travel to Highlord Bolvar Fordragon in Stormwind City.",
                    x = 0.7822,
                    y = 0.1799,
                },
            },
            sourceStep = 33,
            text = "Turn in The True Masters to Highlord Bolvar Fordragon.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "turnin-4184-the-true-masters",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4184, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4184, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4183, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 4182, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 4185, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-burning-steppes-accept-4185-the-true-masters",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4184 } } },
            route = {
                {
                    label = "Highlord Bolvar Fordragon",
                    mapID = 1453,
                    offMapText = "Travel to Highlord Bolvar Fordragon in Stormwind City.",
                    x = 0.7822,
                    y = 0.1799,
                },
            },
            sourceStep = 33,
            text = "Accept The True Masters from Highlord Bolvar Fordragon.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "accept-4185-the-true-masters",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4185, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4185, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4184, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4183, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 4182, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 4185, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-burning-steppes-accept-4185-the-true-masters" },
            id = "alliance-leveling-era-alliance-burning-steppes-objective-4185-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4184 } } },
            sourceStep = 35,
            text = "Speak with Lady Katrana Prestor in Stormwind Keep. Tell her Highlord Bolvar suggested asking her advice, then follow the conversation. Return to Bolvar after receiving quest credit.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "objective-4185-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4185, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4185, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4184, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4183, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 4182, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 4185, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-burning-steppes-accept-4185-the-true-masters",
                "alliance-leveling-era-alliance-burning-steppes-objective-4185-quest-work",
            },
            id = "alliance-leveling-era-alliance-burning-steppes-turnin-4185-the-true-masters",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4184 } } },
            route = {
                {
                    label = "Highlord Bolvar Fordragon",
                    mapID = 1453,
                    offMapText = "Travel to Highlord Bolvar Fordragon in Stormwind City.",
                    x = 0.7822,
                    y = 0.1799,
                },
            },
            sourceStep = 35,
            text = "Turn in The True Masters to Highlord Bolvar Fordragon.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "turnin-4185-the-true-masters",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4185, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4185, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4184, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4183, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 4182, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 4186, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-burning-steppes-accept-4186-the-true-masters",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4185 } } },
            route = {
                {
                    label = "Highlord Bolvar Fordragon",
                    mapID = 1453,
                    offMapText = "Travel to Highlord Bolvar Fordragon in Stormwind City.",
                    x = 0.7822,
                    y = 0.1799,
                },
            },
            sourceStep = 35,
            text = "Accept The True Masters from Highlord Bolvar Fordragon.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "accept-4186-the-true-masters",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4186, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4186, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4185, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4184, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 4183, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 4182, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 4186, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-burning-steppes-accept-4186-the-true-masters" },
            id = "alliance-leveling-era-alliance-burning-steppes-turnin-4186-the-true-masters",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4185 } } },
            route = {
                {
                    label = "Magistrate Solomon",
                    mapID = 1433,
                    offMapText = "Travel to Magistrate Solomon in Redridge Mountains.",
                    x = 0.2999,
                    y = 0.4445,
                },
            },
            sourceStep = 41,
            text = "Turn in The True Masters to Magistrate Solomon.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "turnin-4186-the-true-masters",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4186, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4186, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4185, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4184, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 4183, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 4182, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 4223, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-burning-steppes-accept-4223-the-true-masters",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4186 } } },
            route = {
                {
                    label = "Magistrate Solomon",
                    mapID = 1433,
                    offMapText = "Travel to Magistrate Solomon in Redridge Mountains.",
                    x = 0.249,
                    y = 0.444,
                },
            },
            sourceStep = 41,
            text = "Accept The True Masters from Magistrate Solomon.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "accept-4223-the-true-masters",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4223, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4223, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4186, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4185, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 4184, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 4183, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 4182, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 4223, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-burning-steppes-accept-4223-the-true-masters" },
            id = "alliance-leveling-era-alliance-burning-steppes-turnin-4223-the-true-masters",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4186 } } },
            route = {
                {
                    label = "Marshal Maxwell",
                    mapID = 1428,
                    offMapText = "Travel to Marshal Maxwell in Burning Steppes.",
                    x = 0.8475,
                    y = 0.6902,
                },
            },
            sourceStep = 42,
            text = "Turn in The True Masters to Marshal Maxwell.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "turnin-4223-the-true-masters",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4223, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4223, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4186, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4185, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 4184, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 4183, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 4182, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 4224, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-burning-steppes-accept-4224-the-true-masters",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4223 } } },
            route = {
                {
                    label = "Marshal Maxwell",
                    mapID = 1428,
                    offMapText = "Travel to Marshal Maxwell in Burning Steppes.",
                    x = 0.8475,
                    y = 0.6902,
                },
            },
            sourceStep = 42,
            text = "Accept The True Masters from Marshal Maxwell.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "accept-4224-the-true-masters",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4224, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4224, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4223, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4186, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 4185, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 4184, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 4183, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 4182, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 4726, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-burning-steppes-accept-4726-broodling-essence",
                "alliance-leveling-era-alliance-burning-steppes-objective-4726-1-broodling-essence",
            },
            id = "alliance-leveling-era-alliance-burning-steppes-turnin-4726-broodling-essence",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Tinkee Steamboil",
                    mapID = 1428,
                    offMapText = "Travel to Tinkee Steamboil in Burning Steppes.",
                    x = 0.6523,
                    y = 0.2399,
                },
            },
            sourceStep = 43,
            text = "Turn in Broodling Essence to Tinkee Steamboil.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "turnin-4726-broodling-essence",
        },
        {
            complete = { quest = { id = 4808, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-burning-steppes-accept-4808-felnok-steelspring",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4726 } } },
            route = {
                {
                    label = "Tinkee Steamboil",
                    mapID = 1428,
                    offMapText = "Travel to Tinkee Steamboil in Burning Steppes.",
                    x = 0.6523,
                    y = 0.2399,
                },
            },
            sourceStep = 43,
            text = "Accept Felnok Steelspring from Tinkee Steamboil.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "accept-4808-felnok-steelspring",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4808, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4808, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 4726, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 4296, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-burning-steppes-accept-4296-tablet-of-the-seven",
                "alliance-leveling-era-alliance-burning-steppes-objective-4296-1-tablet-transcript",
            },
            id = "alliance-leveling-era-alliance-burning-steppes-turnin-4296-tablet-of-the-seven",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Maxwort Uberglint",
                    mapID = 1428,
                    offMapText = "Travel to Maxwort Uberglint in Burning Steppes.",
                    x = 0.6515,
                    y = 0.2391,
                },
            },
            sourceStep = 44,
            text = "Turn in Tablet of the Seven to Maxwort Uberglint.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "turnin-4296-tablet-of-the-seven",
        },
        {
            complete = { quest = { id = 3825, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-burning-steppes-accept-3825-ogre-head-on-a-stick-party" },
            id = "alliance-leveling-era-alliance-burning-steppes-objective-3825-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3824 } } },
            sourceStep = 47,
            text = "For Ogre Head On A Stick = Party: Take Gor'tesh's Lopped Off Head and place it at the top of Dreadmaul Rock. Look for a soft dirt mound to plant the pike.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "objective-3825-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3825, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3825, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3824, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 3823, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3825, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-burning-steppes-accept-3825-ogre-head-on-a-stick-party",
                "alliance-leveling-era-alliance-burning-steppes-objective-3825-quest-work",
            },
            id = "alliance-leveling-era-alliance-burning-steppes-turnin-3825-ogre-head-on-a-stick-party",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3824 } } },
            route = {
                { label = "Oralius", mapID = 1428, offMapText = "Travel to Oralius in Burning Steppes.", x = 0.8456, y = 0.6867 },
            },
            sourceStep = 47,
            text = "Turn in Ogre Head On A Stick = Party to Oralius.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "turnin-3825-ogre-head-on-a-stick-party",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3825, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3825, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3824, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 3823, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 4224, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-burning-steppes-accept-4224-the-true-masters" },
            id = "alliance-leveling-era-alliance-burning-steppes-objective-4224-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4223 } } },
            sourceStep = 48,
            text = "Speak with Ragged John in the cave north of Morgan's Vigil. Ask him about Marshal Windsor and follow his full account until the quest is ready to turn in.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "objective-4224-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4224, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4224, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4223, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4186, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 4185, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 4184, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 4183, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 4182, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 4224, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-burning-steppes-accept-4224-the-true-masters",
                "alliance-leveling-era-alliance-burning-steppes-objective-4224-quest-work",
            },
            id = "alliance-leveling-era-alliance-burning-steppes-turnin-4224-the-true-masters",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4223 } } },
            route = {
                {
                    label = "Marshal Maxwell",
                    mapID = 1428,
                    offMapText = "Travel to Marshal Maxwell in Burning Steppes.",
                    x = 0.8474,
                    y = 0.6901,
                },
            },
            sourceStep = 48,
            text = "Turn in The True Masters to Marshal Maxwell.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "turnin-4224-the-true-masters",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4224, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4224, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4223, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4186, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 4185, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 4184, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 4183, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 4182, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            id = "visit-entry-leveling-era-alliance-western-and-eastern-plaguelands",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            text = "Reach level 57 before the Western & Eastern Plaguelands visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 57 } },
            requiredLevel = 57,
        },
        {
            checkpointQuest = 3701,
            complete = { level = { min = 50 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-level-before-objective-3701-quest-work",
            kind = "note",
            requiredLevel = 50,
            requiredQuests = {},
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "level-before-objective-3701-quest-work",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3701, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3701, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 3702, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
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
            complete = { quest = { id = 3701, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-3701-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3702 } } },
            sourceStep = 4,
            text = "For The Smoldering Ruins of Thaurissan: Venture to the Ruins of Thaurissan in the Burning Steppes and recover information from the Thaurissan Relics.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-3701-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3701, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3701, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 3702, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
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
            complete = { quest = { id = 3701, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-3701-quest-work" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-3701-the-smoldering-ruins-of-thaurissan",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3702 } } },
            route = {
                {
                    label = "Royal Historian Archesonus",
                    mapID = 1455,
                    offMapText = "Travel to Royal Historian Archesonus in Ironforge.",
                    x = 0.3837,
                    y = 0.5531,
                },
            },
            sourceStep = 4,
            text = "Turn in The Smoldering Ruins of Thaurissan to Royal Historian Archesonus.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "turnin-3701-the-smoldering-ruins-of-thaurissan",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3701, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3701, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 3702, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
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
            id = "visit-entry-leveling-era-alliance-winterspring",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-winterspring",
            text = "Reach level 58 before the Winterspring visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 58 } },
            requiredLevel = 58,
        },
        {
            checkpointQuest = 4808,
            complete = { level = { min = 50 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-winterspring-level-before-turnin-4808-felnok-steelspring",
            kind = "note",
            requiredLevel = 50,
            requiredQuests = {},
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-winterspring",
            sourceActionID = "level-before-turnin-4808-felnok-steelspring",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4808, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4808, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 4726, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 4808, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-winterspring-turnin-4808-felnok-steelspring",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4726 } } },
            route = {
                {
                    label = "Felnok Steelspring",
                    mapID = 1452,
                    offMapText = "Travel to Felnok Steelspring in Winterspring.",
                    x = 0.6163,
                    y = 0.3861,
                },
            },
            sourceStep = 7,
            text = "Turn in Felnok Steelspring to Felnok Steelspring.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-winterspring",
            sourceActionID = "turnin-4808-felnok-steelspring",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4808, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4808, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 4726, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-horde-searing-gorge",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-searing-gorge",
            text = "Reach level 51 before the Searing Gorge visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 51 } },
            requiredLevel = 51,
        },
        {
            checkpointQuest = 3821,
            complete = { level = { min = 48 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-searing-gorge-level-before-accept-3821-dreadmaul-rock",
            kind = "note",
            requiredLevel = 48,
            requiredQuests = {},
            text = "Reach level 48 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "level-before-accept-3821-dreadmaul-rock",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 3821, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-searing-gorge-accept-3821-dreadmaul-rock",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Thal'trak Proudtusk",
                    mapID = 1418,
                    offMapText = "Travel to Thal'trak Proudtusk in Badlands.",
                    x = 0.0336,
                    y = 0.4807,
                },
            },
            sourceStep = 1,
            text = "Accept Dreadmaul Rock from Thal'trak Proudtusk.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "accept-3821-dreadmaul-rock",
        },
        {
            complete = { quest = { id = 3441, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-searing-gorge-accept-3441-divine-retribution",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceStep = 6,
            text = "Accept Divine Retribution from Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "accept-3441-divine-retribution",
        },
        {
            complete = { quest = { id = 3441, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-3441-divine-retribution" },
            id = "horde-leveling-era-horde-searing-gorge-objective-3441-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 8,
            text = "For Divine Retribution: Listen as Kalaran Windblade tells his story.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "objective-3441-quest-work",
        },
        {
            complete = { quest = { id = 3441, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {
                "horde-leveling-era-horde-searing-gorge-accept-3441-divine-retribution",
                "horde-leveling-era-horde-searing-gorge-objective-3441-quest-work",
            },
            id = "horde-leveling-era-horde-searing-gorge-turnin-3441-divine-retribution",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceStep = 8,
            text = "Turn in Divine Retribution to Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "turnin-3441-divine-retribution",
        },
        {
            complete = { quest = { id = 3442, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-searing-gorge-accept-3442-the-flawless-flame",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3441 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceStep = 8,
            text = "Accept The Flawless Flame from Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "accept-3442-the-flawless-flame",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3442, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3442, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 4, id = 3442, index = 1, text = "Heart of Flame" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-3442-the-flawless-flame" },
            id = "horde-leveling-era-horde-searing-gorge-objective-3442-1-heart-of-flame",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3441 } } },
            route = { { label = "Heart of Flame", mapID = 1427, offMapText = "Travel to Heart of Flame.", x = 0.4258, y = 0.3858 } },
            sourceStep = 13,
            text = "Collect 4 Heart of Flame.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "objective-3442-1-heart-of-flame",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3442, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3442, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 4, id = 3442, index = 2, text = "Golem Oil" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-3442-the-flawless-flame" },
            id = "horde-leveling-era-horde-searing-gorge-objective-3442-2-golem-oil",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3441 } } },
            route = { { label = "Golem Oil", mapID = 1427, offMapText = "Travel to Golem Oil.", x = 0.392, y = 0.434 } },
            sourceStep = 14,
            text = "Collect 4 Golem Oil.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "objective-3442-2-golem-oil",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3442, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3442, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3442, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {
                "horde-leveling-era-horde-searing-gorge-accept-3442-the-flawless-flame",
                "horde-leveling-era-horde-searing-gorge-objective-3442-1-heart-of-flame",
                "horde-leveling-era-horde-searing-gorge-objective-3442-2-golem-oil",
            },
            id = "horde-leveling-era-horde-searing-gorge-turnin-3442-the-flawless-flame",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3441 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceStep = 15,
            text = "Turn in The Flawless Flame to Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "turnin-3442-the-flawless-flame",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3442, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3442, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3443, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-searing-gorge-accept-3443-forging-the-shaft",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3442 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceStep = 15,
            text = "Accept Forging the Shaft from Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "accept-3443-forging-the-shaft",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3443, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3443, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3442, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 8, id = 3443, index = 1, text = "Thorium Plated Dagger" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-3443-forging-the-shaft" },
            id = "horde-leveling-era-horde-searing-gorge-objective-3443-1-thorium-plated-dagger",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3442 } } },
            route = {
                { label = "Thorium Plated Dagger", mapID = 1427, offMapText = "Travel to Thorium Plated Dagger.", x = 0.446, y = 0.374 },
            },
            sourceStep = 21,
            text = "Collect 8 Thorium Plated Dagger.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "objective-3443-1-thorium-plated-dagger",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3443, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3443, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3442, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3443, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {
                "horde-leveling-era-horde-searing-gorge-accept-3443-forging-the-shaft",
                "horde-leveling-era-horde-searing-gorge-objective-3443-1-thorium-plated-dagger",
            },
            id = "horde-leveling-era-horde-searing-gorge-turnin-3443-forging-the-shaft",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3442 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3906,
                    y = 0.3899,
                },
            },
            sourceStep = 23,
            text = "Turn in Forging the Shaft to Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "turnin-3443-forging-the-shaft",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3443, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3443, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3442, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3452, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-searing-gorge-accept-3452-the-flame-s-casing",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3443 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3906,
                    y = 0.3899,
                },
            },
            sourceStep = 23,
            text = "Accept The Flame's Casing from Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "accept-3452-the-flame-s-casing",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3452, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3452, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3443, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 1, id = 3452, index = 1, text = "Twilight Dark Shaman" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-3452-the-flame-s-casing" },
            id = "horde-leveling-era-horde-searing-gorge-objective-3452-1-twilight-dark-shaman",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3443 } } },
            route = {
                { label = "Twilight Dark Shaman", mapID = 1427, offMapText = "Travel to Twilight Dark Shaman.", x = 0.25, y = 0.364 },
            },
            sourceStep = 24,
            text = "Collect 1 Symbol of Ragnaros.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "objective-3452-1-twilight-dark-shaman",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3452, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3452, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3443, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3452, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {
                "horde-leveling-era-horde-searing-gorge-accept-3452-the-flame-s-casing",
                "horde-leveling-era-horde-searing-gorge-objective-3452-1-twilight-dark-shaman",
            },
            id = "horde-leveling-era-horde-searing-gorge-turnin-3452-the-flame-s-casing",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3443 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceStep = 25,
            text = "Turn in The Flame's Casing to Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "turnin-3452-the-flame-s-casing",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3452, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3452, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3443, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3453, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-searing-gorge-accept-3453-the-torch-of-retribution",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3452 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceStep = 25,
            text = "Accept The Torch of Retribution from Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "accept-3453-the-torch-of-retribution",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3453, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3453, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3452, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3443, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3442, state = "completed" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3453, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-3453-the-torch-of-retribution" },
            id = "horde-leveling-era-horde-searing-gorge-objective-3453-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3452 } } },
            sourceStep = 27,
            text = "For The Torch of Retribution: Wait for Kalaran Windblade to complete the Torch of Retribution.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "objective-3453-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3453, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3453, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3452, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3443, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3442, state = "completed" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3453, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {
                "horde-leveling-era-horde-searing-gorge-accept-3453-the-torch-of-retribution",
                "horde-leveling-era-horde-searing-gorge-objective-3453-quest-work",
            },
            id = "horde-leveling-era-horde-searing-gorge-turnin-3453-the-torch-of-retribution",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3452 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceStep = 27,
            text = "Turn in The Torch of Retribution to Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "turnin-3453-the-torch-of-retribution",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3453, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3453, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3452, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3443, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3442, state = "completed" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3454, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-searing-gorge-accept-3454-the-torch-of-retribution",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3453 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceStep = 27,
            text = "Accept The Torch of Retribution from Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "accept-3454-the-torch-of-retribution",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3454, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3454, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3453, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3454, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-3454-the-torch-of-retribution" },
            id = "horde-leveling-era-horde-searing-gorge-turnin-3454-the-torch-of-retribution",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3453 } } },
            route = {
                {
                    label = "The Torch of Retribution",
                    mapID = 1427,
                    offMapText = "Travel to The Torch of Retribution.",
                    x = 0.3906,
                    y = 0.3906,
                },
            },
            sourceStep = 28,
            text = "Turn in The Torch of Retribution.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "turnin-3454-the-torch-of-retribution",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3454, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3454, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3453, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3462, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-searing-gorge-accept-3462-squire-maltrake",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3454 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.39,
                },
            },
            sourceStep = 29,
            text = "Accept Squire Maltrake from Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "accept-3462-squire-maltrake",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3462, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3462, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3454, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3453, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3452, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3443, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3442, state = "completed" } },
                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3462, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-3462-squire-maltrake" },
            id = "horde-leveling-era-horde-searing-gorge-turnin-3462-squire-maltrake",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3454 } } },
            route = {
                {
                    label = "Squire Maltrake",
                    mapID = 1427,
                    offMapText = "Travel to Squire Maltrake in Searing Gorge.",
                    x = 0.3916,
                    y = 0.3899,
                },
            },
            sourceStep = 30,
            text = "Turn in Squire Maltrake to Squire Maltrake.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "turnin-3462-squire-maltrake",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3462, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3462, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3454, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3453, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3452, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3443, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3442, state = "completed" } },
                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3463, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-searing-gorge-accept-3463-set-them-ablaze",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3462 } } },
            route = {
                {
                    label = "Squire Maltrake",
                    mapID = 1427,
                    offMapText = "Travel to Squire Maltrake in Searing Gorge.",
                    x = 0.3916,
                    y = 0.3899,
                },
            },
            sourceStep = 30,
            text = "Accept Set Them Ablaze! from Squire Maltrake.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "accept-3463-set-them-ablaze",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3463, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3463, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3462, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 1, id = 3463, index = 4 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-3463-set-them-ablaze" },
            id = "horde-leveling-era-horde-searing-gorge-objective-3463-4-authored-Northern-Tower",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3462 } } },
            route = { { label = "Northern-Tower", mapID = 1427, offMapText = "Travel to Northern-Tower.", x = 0.3331, y = 0.5449 } },
            text = "Climb the northern sentry tower. Equip the Torch of Retribution and light its Sentry Brazier. Reequip your normal weapon afterward.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "objective-3463-4-authored-Northern-Tower",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3463, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3463, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3462, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 1, id = 3463, index = 1 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-3463-set-them-ablaze" },
            id = "horde-leveling-era-horde-searing-gorge-objective-3463-1-authored-Western-Tower",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3462 } } },
            route = { { label = "Western-Tower", mapID = 1427, offMapText = "Travel to Western-Tower.", x = 0.3567, y = 0.6068 } },
            text = "Climb the western sentry tower. Equip the Torch of Retribution and light its Sentry Brazier. Reequip your normal weapon afterward.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "objective-3463-1-authored-Western-Tower",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3463, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3463, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3462, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 1, id = 3463, index = 2 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-3463-set-them-ablaze" },
            id = "horde-leveling-era-horde-searing-gorge-objective-3463-2-authored-Southern-Tower",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3462 } } },
            route = { { label = "Southern-Tower", mapID = 1427, offMapText = "Travel to Southern-Tower.", x = 0.4403, y = 0.6091 } },
            text = "Climb the southern sentry tower. Equip the Torch of Retribution and light its Sentry Brazier. Reequip your normal weapon afterward.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "objective-3463-2-authored-Southern-Tower",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3463, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3463, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3462, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 1, id = 3463, index = 3 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-3463-set-them-ablaze" },
            id = "horde-leveling-era-horde-searing-gorge-objective-3463-3-authored-Eastern-Tower",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3462 } } },
            route = { { label = "Eastern-Tower", mapID = 1427, offMapText = "Travel to Eastern-Tower.", x = 0.5006, y = 0.5474 } },
            text = "Cross the hanging bridge at Searing Gorge 52.48,57.95 and climb the eastern sentry tower. Equip the Torch of Retribution and light its Sentry Brazier. Reequip your normal weapon afterward.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "objective-3463-3-authored-Eastern-Tower",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3463, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3463, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3462, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3463, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {
                "horde-leveling-era-horde-searing-gorge-accept-3463-set-them-ablaze",
                "horde-leveling-era-horde-searing-gorge-objective-3463-4-authored-Northern-Tower",
                "horde-leveling-era-horde-searing-gorge-objective-3463-1-authored-Western-Tower",
                "horde-leveling-era-horde-searing-gorge-objective-3463-2-authored-Southern-Tower",
                "horde-leveling-era-horde-searing-gorge-objective-3463-3-authored-Eastern-Tower",
            },
            id = "horde-leveling-era-horde-searing-gorge-turnin-3463-set-them-ablaze",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3462 } } },
            route = {
                {
                    label = "Squire Maltrake",
                    mapID = 1427,
                    offMapText = "Travel to Squire Maltrake in Searing Gorge.",
                    x = 0.3917,
                    y = 0.39,
                },
            },
            sourceStep = 40,
            text = "Turn in Set Them Ablaze! to Squire Maltrake.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "turnin-3463-set-them-ablaze",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3463, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3463, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3462, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3481, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-searing-gorge-accept-3481-trinkets",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3463 } } },
            route = { { label = "Trinkets..", mapID = 1427, offMapText = "Travel to Trinkets....", x = 0.3886, y = 0.3899 } },
            sourceStep = 42,
            text = "Accept Trinkets...",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "accept-3481-trinkets",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3481, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3481, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3463, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3462, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3454, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3453, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3452, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3443, state = "completed" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3481, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-3481-trinkets" },
            id = "horde-leveling-era-horde-searing-gorge-turnin-3481-trinkets",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3463 } } },
            route = { { label = "Trinkets..", mapID = 1427, offMapText = "Travel to Trinkets....", x = 0.3886, y = 0.3899 } },
            sourceStep = 43,
            text = "Turn in Trinkets...",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "turnin-3481-trinkets",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3481, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3481, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3463, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3462, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3454, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3453, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3452, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3443, state = "completed" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            alternativeQuests = { 4023 },
            complete = { item = { minCount = 1, name = "Black Dragonflight Molt" } },
            conditions = { faction = "Horde" },
            dependsOn = {},
            id = "horde-leveling-era-horde-searing-gorge-open-objective-4022-1-hoard-of-the-black-dragonflight",
            kind = "note",
            referenceQuest = 4022,
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3481 } } },
            text = "Open the Hoard of the Black Dragonflight from Kalaran Windblade to obtain the Black Dragonflight Molt. Keep it for Cyrus Therepentous.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "open-objective-4022-1-hoard-of-the-black-dragonflight",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4022, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4022, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3481, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3463, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3462, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            id = "visit-entry-leveling-era-horde-burning-steppes-and-azshara",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            text = "Reach level 51 before the Burning Steppes & Azshara visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 51 } },
            requiredLevel = 51,
        },
        {
            checkpointQuest = 4726,
            complete = { level = { min = 50 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-level-before-accept-4726-broodling-essence",
            kind = "note",
            requiredLevel = 50,
            requiredQuests = {},
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "level-before-accept-4726-broodling-essence",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 4726, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-accept-4726-broodling-essence",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Tinkee Steamboil",
                    mapID = 1428,
                    offMapText = "Travel to Tinkee Steamboil in Burning Steppes.",
                    x = 0.6524,
                    y = 0.24,
                },
            },
            sourceStep = 4,
            text = "Accept Broodling Essence from Tinkee Steamboil.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "accept-4726-broodling-essence",
        },
        {
            complete = { quest = { id = 4296, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-accept-4296-tablet-of-the-seven",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Maxwort Uberglint",
                    mapID = 1428,
                    offMapText = "Travel to Maxwort Uberglint in Burning Steppes.",
                    x = 0.6516,
                    y = 0.2392,
                },
            },
            sourceStep = 5,
            text = "Accept Tablet of the Seven from Maxwort Uberglint.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "accept-4296-tablet-of-the-seven",
        },
        {
            complete = { questObjective = { count = 1, id = 4296, index = 1, text = "Tablet Transcript" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = { "horde-leveling-era-horde-burning-steppes-and-azshara-accept-4296-tablet-of-the-seven" },
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-objective-4296-1-tablet-transcript",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Tablet Transcript", mapID = 1428, offMapText = "Travel to Tablet Transcript.", x = 0.5409, y = 0.4073 },
            },
            sourceStep = 7,
            text = "Collect 1 Tablet Transcript.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "objective-4296-1-tablet-transcript",
        },
        {
            checkpointQuest = 3821,
            complete = { level = { min = 48 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-level-before-turnin-3821-dreadmaul-rock",
            kind = "note",
            requiredLevel = 48,
            requiredQuests = {},
            text = "Reach level 48 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "level-before-turnin-3821-dreadmaul-rock",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 3821, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-turnin-3821-dreadmaul-rock",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Sha'ni Proudtusk",
                    mapID = 1428,
                    offMapText = "Travel to Sha'ni Proudtusk in Burning Steppes.",
                    x = 0.7979,
                    y = 0.4552,
                },
            },
            sourceStep = 8,
            text = "Turn in Dreadmaul Rock to Sha'ni Proudtusk.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "turnin-3821-dreadmaul-rock",
        },
        {
            alternativeQuests = { 4023 },
            checkpointQuest = 4022,
            complete = { level = { min = 52 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-level-before-accept-4022-a-taste-of-flame",
            kind = "note",
            requiredLevel = 52,
            requiredQuests = {},
            text = "Reach level 52 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "level-before-accept-4022-a-taste-of-flame",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4022, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4022, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3481, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3463, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3462, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            alternativeQuests = { 4023 },
            complete = { quest = { id = 4022, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 52 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-accept-4022-a-taste-of-flame",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3481 } } },
            route = {
                {
                    label = "Cyrus Therepentous",
                    mapID = 1428,
                    offMapText = "Travel to Cyrus Therepentous in Burning Steppes.",
                    x = 0.9506,
                    y = 0.3157,
                },
            },
            sourceStep = 10,
            text = "Accept A Taste of Flame from Cyrus Therepentous.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "accept-4022-a-taste-of-flame",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4022, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4022, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3481, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3463, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3462, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            alternativeQuests = { 4023 },
            complete = { quest = { id = 4022, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 52 } } } },
            dependsOn = { "horde-leveling-era-horde-burning-steppes-and-azshara-accept-4022-a-taste-of-flame" },
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-objective-4022-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3481 } } },
            route = {
                {
                    label = "Black Dragonflight Molt",
                    mapID = 1428,
                    offMapText = "Travel to Black Dragonflight Molt.",
                    x = 0.9506,
                    y = 0.3157,
                },
            },
            sourceStep = 12,
            text = "For A Taste of Flame: Show Cyrus Therepentous the Black Dragonflight Molt you received from Kalaran Windblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "objective-4022-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4022, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4022, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3481, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3463, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3462, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            alternativeQuests = { 4023 },
            complete = { quest = { id = 4022, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 52 } } } },
            dependsOn = {
                "horde-leveling-era-horde-burning-steppes-and-azshara-accept-4022-a-taste-of-flame",
                "horde-leveling-era-horde-burning-steppes-and-azshara-objective-4022-quest-work",
            },
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-turnin-4022-a-taste-of-flame",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3481 } } },
            route = {
                {
                    label = "Cyrus Therepentous",
                    mapID = 1428,
                    offMapText = "Travel to Cyrus Therepentous in Burning Steppes.",
                    x = 0.9506,
                    y = 0.3157,
                },
            },
            sourceStep = 12,
            text = "Turn in A Taste of Flame to Cyrus Therepentous.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "turnin-4022-a-taste-of-flame",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4022, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4022, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3481, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3463, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3462, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 8, id = 4726, index = 1, text = "Broodling Essence" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = { "horde-leveling-era-horde-burning-steppes-and-azshara-accept-4726-broodling-essence" },
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-objective-4726-1-broodling-essence",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Broodling Essence", mapID = 1428, offMapText = "Travel to Broodling Essence.", x = 0.914, y = 0.314 },
            },
            sourceStep = 13,
            text = "Use the Draco-Incarcinatrix 900 on a Black Broodling before killing it. Open the red crystal on its corpse to collect a Broodling Essence. Collect 8 essences.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "objective-4726-1-broodling-essence",
        },
        {
            complete = { quest = { id = 4726, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {
                "horde-leveling-era-horde-burning-steppes-and-azshara-accept-4726-broodling-essence",
                "horde-leveling-era-horde-burning-steppes-and-azshara-objective-4726-1-broodling-essence",
            },
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-turnin-4726-broodling-essence",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Tinkee Steamboil",
                    mapID = 1428,
                    offMapText = "Travel to Tinkee Steamboil in Burning Steppes.",
                    x = 0.6523,
                    y = 0.2399,
                },
            },
            sourceStep = 14,
            text = "Turn in Broodling Essence to Tinkee Steamboil.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "turnin-4726-broodling-essence",
        },
        {
            complete = { quest = { id = 4808, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-accept-4808-felnok-steelspring",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4726 } } },
            route = {
                {
                    label = "Tinkee Steamboil",
                    mapID = 1428,
                    offMapText = "Travel to Tinkee Steamboil in Burning Steppes.",
                    x = 0.6523,
                    y = 0.2399,
                },
            },
            sourceStep = 14,
            text = "Accept Felnok Steelspring from Tinkee Steamboil.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "accept-4808-felnok-steelspring",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4808, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4808, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 4726, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 4296, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {
                "horde-leveling-era-horde-burning-steppes-and-azshara-accept-4296-tablet-of-the-seven",
                "horde-leveling-era-horde-burning-steppes-and-azshara-objective-4296-1-tablet-transcript",
            },
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-turnin-4296-tablet-of-the-seven",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Maxwort Uberglint",
                    mapID = 1428,
                    offMapText = "Travel to Maxwort Uberglint in Burning Steppes.",
                    x = 0.6515,
                    y = 0.2391,
                },
            },
            sourceStep = 15,
            text = "Turn in Tablet of the Seven to Maxwort Uberglint.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "turnin-4296-tablet-of-the-seven",
        },
        {
            id = "visit-entry-leveling-era-horde-felwood-and-winterspring",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-felwood-and-winterspring",
            text = "Reach level 52 before the Felwood & Winterspring visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 52 } },
            requiredLevel = 52,
        },
        {
            complete = { quest = { id = 4808, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-felwood-and-winterspring-turnin-4808-felnok-steelspring",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4726 } } },
            route = {
                {
                    label = "Felnok Steelspring",
                    mapID = 1452,
                    offMapText = "Travel to Felnok Steelspring in Winterspring.",
                    x = 0.6163,
                    y = 0.3861,
                },
            },
            sourceStep = 31,
            text = "Turn in Felnok Steelspring to Felnok Steelspring.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "turnin-4808-felnok-steelspring",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4808, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4808, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 4726, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-3822-level",
            kind = "note",
            checkpointQuest = 3822,
            text = "Reach level 53 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 53 } },
            requiredLevel = 53,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3822, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3822, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 3821, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-3822-accept",
            kind = "accept",
            text = "Accept Krom'Grul from Sha'ni Proudtusk.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } } } },
            route = {
                {
                    mapID = 1428,
                    x = 0.7979999999999999,
                    y = 0.45399999999999996,
                    label = "Sha'ni Proudtusk",
                    offMapText = "Travel to Sha'ni Proudtusk in Burning Steppes.",
                },
            },
            complete = { quest = { id = 3822, state = "activeOrCompleted" } },
            requiredQuests = { { mode = "any", quests = { 3821 } } },
            useClientText = false,
            dependsOn = { "horde-extra-3822-level" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3822, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3822, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 3821, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-3822-objective",
            kind = "objective",
            text = "Search the caves and mines in Dreadmaul Rock. Defeat Krom'Grul and loot Sha'ni's Nose-Ring.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } } } },
            route = {
                { mapID = 1428, x = 0.782, y = 0.414, label = "Krom'Grul", offMapText = "Travel to Krom'Grul in Burning Steppes." },
            },
            complete = { quest = { id = 3822, state = "complete" } },
            requiredQuests = { { mode = "any", quests = { 3821 } } },
            useClientText = false,
            dependsOn = { "horde-extra-3822-accept" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3822, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3822, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 3821, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-3822-turnin",
            kind = "turnin",
            text = "Turn in Krom'Grul to Thal'trak Proudtusk.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } } } },
            route = {
                {
                    mapID = 1418,
                    x = 0.034,
                    y = 0.48,
                    label = "Thal'trak Proudtusk",
                    offMapText = "Travel to Thal'trak Proudtusk in Badlands.",
                },
            },
            complete = { quest = { id = 3822, state = "completed" } },
            requiredQuests = { { mode = "any", quests = { 3821 } } },
            useClientText = false,
            dependsOn = { "horde-extra-3822-objective" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3822, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3822, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 3821, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
    },
})
