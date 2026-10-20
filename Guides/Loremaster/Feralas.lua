local _, ns = ...

-- Source decisions: docs/loremaster/feralas.json.
-- Coordinates require a Forever client walkthrough.
ns:RegisterGuide({
    id = "loremaster-feralas",
    title = "Feralas",
    category = "Loremaster Guides",
    revision = 1,
    routeMode = "ordered",
    loremasterExpanded = true,
    goals = {
        {
            id = "visit-entry-leveling-era-alliance-feralas-and-tanaris",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            text = "Reach level 44 before the Feralas & Tanaris visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 44 } },
            requiredLevel = 44,
        },
        {
            complete = { quest = { id = 2821, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2821-the-mark-of-quality",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Pratt McGrubben", mapID = 1444, offMapText = "Travel to Pratt McGrubben in Feralas.", x = 0.3063, y = 0.4271 },
            },
            sourceStep = 4,
            text = "Accept The Mark of Quality from Pratt McGrubben.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "accept-2821-the-mark-of-quality",
        },
        {
            complete = { quest = { id = 4124, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-accept-4124-the-missing-courier",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Latronicus Moonspear",
                    mapID = 1444,
                    offMapText = "Travel to Latronicus Moonspear in Feralas.",
                    x = 0.3038,
                    y = 0.4617,
                },
            },
            sourceStep = 6,
            text = "Accept The Missing Courier from Latronicus Moonspear.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "accept-4124-the-missing-courier",
        },
        {
            complete = { quest = { id = 2866, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2866-the-ruins-of-solarsal",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Shandris Feathermoon",
                    mapID = 1444,
                    offMapText = "Travel to Shandris Feathermoon in Feralas.",
                    x = 0.3028,
                    y = 0.4617,
                },
            },
            sourceStep = 7,
            text = "Accept The Ruins of Solarsal from Shandris Feathermoon.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "accept-2866-the-ruins-of-solarsal",
        },
        {
            complete = { quest = { id = 2939, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 42 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2939-in-search-of-knowledge",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Troyas Moonbreeze",
                    mapID = 1444,
                    offMapText = "Travel to Troyas Moonbreeze in Feralas.",
                    x = 0.3178,
                    y = 0.455,
                },
            },
            sourceStep = 8,
            text = "Accept In Search of Knowledge from Troyas Moonbreeze.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "accept-2939-in-search-of-knowledge",
        },
        {
            complete = { quest = { id = 2982, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 39 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2982-the-high-wilderness",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Angelas Moonbreeze",
                    mapID = 1444,
                    offMapText = "Travel to Angelas Moonbreeze in Feralas.",
                    x = 0.3183,
                    y = 0.4561,
                },
            },
            sourceStep = 9,
            text = "Accept The High Wilderness from Angelas Moonbreeze.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "accept-2982-the-high-wilderness",
        },
        {
            complete = { quest = { id = 4124, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-4124-the-missing-courier" },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-turnin-4124-the-missing-courier",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Ginro Hearthkindle",
                    mapID = 1444,
                    offMapText = "Travel to Ginro Hearthkindle in Feralas.",
                    x = 0.3186,
                    y = 0.4513,
                },
            },
            sourceStep = 10,
            text = "Turn in The Missing Courier to Ginro Hearthkindle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "turnin-4124-the-missing-courier",
        },
        {
            complete = { quest = { id = 4125, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-accept-4125-the-missing-courier",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4124 } } },
            route = {
                {
                    label = "Ginro Hearthkindle",
                    mapID = 1444,
                    offMapText = "Travel to Ginro Hearthkindle in Feralas.",
                    x = 0.3186,
                    y = 0.4513,
                },
            },
            sourceStep = 10,
            text = "Accept The Missing Courier from Ginro Hearthkindle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "accept-4125-the-missing-courier",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4125, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4125, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 4124, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
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
            complete = { quest = { id = 2866, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2866-the-ruins-of-solarsal" },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-turnin-2866-the-ruins-of-solarsal",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "The Ruins of Solarsal",
                    mapID = 1444,
                    offMapText = "Travel to The Ruins of Solarsal.",
                    x = 0.2632,
                    y = 0.5234,
                },
            },
            sourceStep = 11,
            text = "Turn in The Ruins of Solarsal.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "turnin-2866-the-ruins-of-solarsal",
        },
        {
            complete = { quest = { id = 2867, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2867-return-to-feathermoon-stronghold",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2866 } } },
            route = {
                {
                    label = "Return to Feathermoon Stronghold",
                    mapID = 1444,
                    offMapText = "Travel to Feathermoon Stronghold.",
                    x = 0.2632,
                    y = 0.5234,
                },
            },
            sourceStep = 11,
            text = "Accept Return to Feathermoon Stronghold.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "accept-2867-return-to-feathermoon-stronghold",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2867, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2867, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 2866, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
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
            complete = { quest = { id = 2867, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2867-return-to-feathermoon-stronghold" },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-turnin-2867-return-to-feathermoon-stronghold",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2866 } } },
            route = {
                {
                    label = "Shandris Feathermoon",
                    mapID = 1444,
                    offMapText = "Travel to Shandris Feathermoon in Feralas.",
                    x = 0.3028,
                    y = 0.4617,
                },
            },
            sourceStep = 12,
            text = "Turn in Return to Feathermoon Stronghold to Shandris Feathermoon.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "turnin-2867-return-to-feathermoon-stronghold",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2867, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2867, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 2866, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
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
            complete = { quest = { id = 3130, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-accept-3130-against-the-hatecrest",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2867 } } },
            route = {
                {
                    label = "Shandris Feathermoon",
                    mapID = 1444,
                    offMapText = "Travel to Shandris Feathermoon in Feralas.",
                    x = 0.3028,
                    y = 0.4617,
                },
            },
            sourceStep = 12,
            text = "Accept Against the Hatecrest from Shandris Feathermoon.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "accept-3130-against-the-hatecrest",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3130, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3130, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2867, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 2866, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3130, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-3130-against-the-hatecrest" },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-turnin-3130-against-the-hatecrest",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2867 } } },
            route = {
                {
                    label = "Latronicus Moonspear",
                    mapID = 1444,
                    offMapText = "Travel to Latronicus Moonspear in Feralas.",
                    x = 0.3038,
                    y = 0.4617,
                },
            },
            sourceStep = 13,
            text = "Turn in Against the Hatecrest to Latronicus Moonspear.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "turnin-3130-against-the-hatecrest",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3130, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3130, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2867, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 2866, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 2869, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2869-against-the-hatecrest",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3130 } } },
            route = {
                {
                    label = "Latronicus Moonspear",
                    mapID = 1444,
                    offMapText = "Travel to Latronicus Moonspear in Feralas.",
                    x = 0.3038,
                    y = 0.4617,
                },
            },
            sourceStep = 13,
            text = "Accept Against the Hatecrest from Latronicus Moonspear.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "accept-2869-against-the-hatecrest",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2869, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2869, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3130, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2867, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 2866, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 10, id = 2869, index = 1, text = "Hatecrest Screamer" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2869-against-the-hatecrest" },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-objective-2869-1-hatecrest-screamer",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3130 } } },
            route = {
                { label = "Hatecrest Screamer", mapID = 1444, offMapText = "Travel to Hatecrest Screamer.", x = 0.29, y = 0.536 },
            },
            sourceStep = 15,
            text = "Collect 10 Hatecrest Naga Scale.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "objective-2869-1-hatecrest-screamer",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2869, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2869, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3130, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2867, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 2866, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 2869, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2869-against-the-hatecrest",
                "alliance-leveling-era-alliance-feralas-and-tanaris-objective-2869-1-hatecrest-screamer",
            },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-turnin-2869-against-the-hatecrest",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3130 } } },
            route = {
                {
                    label = "Latronicus Moonspear",
                    mapID = 1444,
                    offMapText = "Travel to Latronicus Moonspear in Feralas.",
                    x = 0.3038,
                    y = 0.4617,
                },
            },
            sourceStep = 16,
            text = "Turn in Against the Hatecrest to Latronicus Moonspear.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "turnin-2869-against-the-hatecrest",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2869, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2869, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3130, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2867, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 2866, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 2870, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2870-against-lord-shalzaru",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2869 } } },
            route = {
                {
                    label = "Latronicus Moonspear",
                    mapID = 1444,
                    offMapText = "Travel to Latronicus Moonspear in Feralas.",
                    x = 0.3038,
                    y = 0.4617,
                },
            },
            sourceStep = 16,
            text = "Accept Against Lord Shalzaru from Latronicus Moonspear.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "accept-2870-against-lord-shalzaru",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2870, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2870, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2869, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3130, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2867, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 2866, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 1, id = 2870, index = 1, text = "Lord Shalzaru" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2870-against-lord-shalzaru" },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-objective-2870-1-lord-shalzaru",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2869 } } },
            route = {
                { label = "Mysterious Relic", mapID = 1444, offMapText = "Travel to Mysterious Relic.", x = 0.2849, y = 0.7045 },
            },
            sourceStep = 19,
            text = "Collect 1 Mysterious Relic.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "objective-2870-1-lord-shalzaru",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2870, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2870, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2869, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3130, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2867, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 2866, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = {
                any = {
                    { item = { minCount = 1, name = "OOX-22/FE Distress Beacon" } },
                    { quest = { id = 2766, state = "activeOrCompleted" } },
                },
            },
            conditions = { faction = "Alliance" },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2766, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "OOX-22/FE Distress Beacon" } } } },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-loot-starter-before-accept-2766-find-oox-22-fe",
            instructionOnly = true,
            kind = "note",
            referenceQuest = 2766,
            requiredQuests = {},
            text = "If an OOX-22/FE Distress Beacon drops while questing in Feralas, keep it for the optional rescue chain.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "loot-starter-before-accept-2766-find-oox-22-fe",
        },
        {
            checkpointQuest = 2766,
            complete = { level = { min = 40 } },
            conditions = { faction = "Alliance" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2766, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "OOX-22/FE Distress Beacon" } } } },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-level-before-accept-2766-find-oox-22-fe",
            kind = "note",
            requiredLevel = 40,
            requiredQuests = {},
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "level-before-accept-2766-find-oox-22-fe",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 2766, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2766, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "OOX-22/FE Distress Beacon" } } } },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2766-find-oox-22-fe",
            kind = "accept",
            requiredQuests = {},
            sourceStep = 20,
            text = "Use the OOX-22/FE Distress Beacon to accept Find OOX-22/FE!.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "accept-2766-find-oox-22-fe",
        },
        {
            complete = { quest = { id = 4125, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-4125-the-missing-courier" },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-turnin-4125-the-missing-courier",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4124 } } },
            route = {
                { label = "The Missing Courier", mapID = 1444, offMapText = "Travel to The Missing Courier.", x = 0.4545, y = 0.6497 },
            },
            sourceStep = 22,
            text = "Turn in The Missing Courier.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "turnin-4125-the-missing-courier",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4125, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4125, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 4124, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
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
            complete = { quest = { id = 4127, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-accept-4127-boat-wreckage",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4125 } } },
            route = { { label = "Boat Wreckage", mapID = 1444, offMapText = "Travel to Boat Wreckage.", x = 0.4545, y = 0.6497 } },
            sourceStep = 22,
            text = "Accept Boat Wreckage.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "accept-4127-boat-wreckage",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4127, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4127, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4125, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 4124, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 4127, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-4127-boat-wreckage" },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-turnin-4127-boat-wreckage",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4125 } } },
            route = {
                {
                    label = "Ginro Hearthkindle",
                    mapID = 1444,
                    offMapText = "Travel to Ginro Hearthkindle in Feralas.",
                    x = 0.3186,
                    y = 0.4513,
                },
            },
            sourceStep = 25,
            text = "Turn in Boat Wreckage to Ginro Hearthkindle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "turnin-4127-boat-wreckage",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4127, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4127, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4125, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 4124, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 4129, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-accept-4129-the-knife-revealed",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4127 } } },
            route = {
                {
                    label = "Ginro Hearthkindle",
                    mapID = 1444,
                    offMapText = "Travel to Ginro Hearthkindle in Feralas.",
                    x = 0.3186,
                    y = 0.4513,
                },
            },
            sourceStep = 25,
            text = "Accept The Knife Revealed from Ginro Hearthkindle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "accept-4129-the-knife-revealed",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4129, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4129, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4127, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4125, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 4124, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 4129, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-4129-the-knife-revealed" },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-turnin-4129-the-knife-revealed",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4127 } } },
            route = {
                {
                    label = "Quintis Jonespyre",
                    mapID = 1444,
                    offMapText = "Travel to Quintis Jonespyre in Feralas.",
                    x = 0.3245,
                    y = 0.4379,
                },
            },
            sourceStep = 26,
            text = "Turn in The Knife Revealed to Quintis Jonespyre.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "turnin-4129-the-knife-revealed",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4129, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4129, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4127, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4125, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 4124, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 4130, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-accept-4130-psychometric-reading",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4129 } } },
            route = {
                {
                    label = "Quintis Jonespyre",
                    mapID = 1444,
                    offMapText = "Travel to Quintis Jonespyre in Feralas.",
                    x = 0.3245,
                    y = 0.4379,
                },
            },
            sourceStep = 27,
            text = "Accept Psychometric Reading from Quintis Jonespyre.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "accept-4130-psychometric-reading",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4130, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4130, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4129, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4127, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 4125, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 4124, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 4130, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-4130-psychometric-reading" },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-turnin-4130-psychometric-reading",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4129 } } },
            route = {
                {
                    label = "Ginro Hearthkindle",
                    mapID = 1444,
                    offMapText = "Travel to Ginro Hearthkindle in Feralas.",
                    x = 0.3186,
                    y = 0.4513,
                },
            },
            sourceStep = 28,
            text = "Turn in Psychometric Reading to Ginro Hearthkindle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "turnin-4130-psychometric-reading",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4130, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4130, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4129, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4127, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 4125, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 4124, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 4131, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-accept-4131-the-woodpaw-gnolls",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4130 } } },
            route = {
                {
                    label = "Ginro Hearthkindle",
                    mapID = 1444,
                    offMapText = "Travel to Ginro Hearthkindle in Feralas.",
                    x = 0.3186,
                    y = 0.4513,
                },
            },
            sourceStep = 28,
            text = "Accept The Woodpaw Gnolls from Ginro Hearthkindle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "accept-4131-the-woodpaw-gnolls",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4131, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4131, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4130, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4129, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 4127, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 4125, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 4124, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 2870, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2870-against-lord-shalzaru",
                "alliance-leveling-era-alliance-feralas-and-tanaris-objective-2870-1-lord-shalzaru",
            },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-turnin-2870-against-lord-shalzaru",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2869 } } },
            route = {
                {
                    label = "Latronicus Moonspear",
                    mapID = 1444,
                    offMapText = "Travel to Latronicus Moonspear in Feralas.",
                    x = 0.3038,
                    y = 0.4617,
                },
            },
            sourceStep = 29,
            text = "Turn in Against Lord Shalzaru to Latronicus Moonspear.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "turnin-2870-against-lord-shalzaru",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2870, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2870, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2869, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3130, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2867, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 2866, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 2871, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2871-delivering-the-relic",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2870 } } },
            route = {
                {
                    label = "Latronicus Moonspear",
                    mapID = 1444,
                    offMapText = "Travel to Latronicus Moonspear in Feralas.",
                    x = 0.3038,
                    y = 0.4617,
                },
            },
            sourceStep = 29,
            text = "Accept Delivering the Relic from Latronicus Moonspear.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "accept-2871-delivering-the-relic",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2871, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2871, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2870, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2869, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3130, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2867, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 2866, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 2871, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2871-delivering-the-relic" },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-turnin-2871-delivering-the-relic",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2870 } } },
            route = {
                {
                    label = "Vestia Moonspear",
                    mapID = 1444,
                    offMapText = "Travel to Vestia Moonspear in Feralas.",
                    x = 0.3008,
                    y = 0.4506,
                },
            },
            sourceStep = 30,
            text = "Turn in Delivering the Relic to Vestia Moonspear.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "turnin-2871-delivering-the-relic",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2871, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2871, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2870, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2869, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3130, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2867, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 2866, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 2766, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2766-find-oox-22-fe" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2766, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "OOX-22/FE Distress Beacon" } } } },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-turnin-2766-find-oox-22-fe",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Homing Robot OOX-22/FE",
                    mapID = 1444,
                    offMapText = "Travel to Homing Robot OOX-22/FE in Feralas.",
                    x = 0.5335,
                    y = 0.557,
                },
            },
            sourceStep = 49,
            text = "Turn in Find OOX-22/FE! to Homing Robot OOX-22/FE.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "turnin-2766-find-oox-22-fe",
        },
        {
            id = "alliance-extra-2767-level",
            kind = "note",
            checkpointQuest = 2767,
            text = "Reach level 45 before this visit.",
            conditions = { all = { { faction = "Alliance" } } },
            complete = { level = { min = 45 } },
            requiredLevel = 45,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2767, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2767, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2766, state = "activeOrCompleted" } },
                                                        { all = { { item = { name = "OOX-22/FE Distress Beacon", minCount = 1 } } } },
                                                    },
                                                },
                                            },
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
            id = "alliance-extra-2767-accept",
            kind = "accept",
            text = "Accept Rescue OOX-22/FE! from Homing Robot OOX-22/FE.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            route = {
                {
                    mapID = 1444,
                    x = 0.534,
                    y = 0.556,
                    label = "Homing Robot OOX-22/FE",
                    offMapText = "Travel to Homing Robot OOX-22/FE in Feralas.",
                },
            },
            complete = { quest = { id = 2767, state = "activeOrCompleted" } },
            requiredQuests = { { mode = "any", quests = { 2766 } } },
            useClientText = false,
            dependsOn = { "alliance-extra-2767-level" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2767, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2767, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2766, state = "activeOrCompleted" } },
                                                        { all = { { item = { name = "OOX-22/FE Distress Beacon", minCount = 1 } } } },
                                                    },
                                                },
                                            },
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
            id = "alliance-extra-2767-objective",
            kind = "objective",
            text = "Escort OOX-22/FE to the dock along the Forgotten Coast.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            route = {},
            complete = { quest = { id = 2767, state = "complete" } },
            requiredQuests = { { mode = "any", quests = { 2766 } } },
            useClientText = false,
            dependsOn = { "alliance-extra-2767-accept" },
            useClientPin = true,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2767, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2767, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2766, state = "activeOrCompleted" } },
                                                        { all = { { item = { name = "OOX-22/FE Distress Beacon", minCount = 1 } } } },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 10, id = 2821, index = 1, text = "Thick Yeti Hide" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2821-the-mark-of-quality" },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-objective-2821-1-thick-yeti-hide",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Thick Yeti Hide", mapID = 1444, offMapText = "Travel to Thick Yeti Hide.", x = 0.554, y = 0.574 } },
            sourceStep = 50,
            text = "Collect 10 Thick Yeti Hide.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "objective-2821-1-thick-yeti-hide",
        },
        {
            complete = { questObjective = { count = 8, id = 2982, index = 2, text = "Gordunni Shaman" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 39 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2982-the-high-wilderness" },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-objective-2982-2-gordunni-shaman",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Gordunni Shaman", mapID = 1444, offMapText = "Travel to Gordunni Shaman.", x = 0.604, y = 0.68 } },
            sourceStep = 52,
            text = "Kill 8 Gordunni Shaman.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "objective-2982-2-gordunni-shaman",
        },
        {
            complete = { questObjective = { count = 8, id = 2982, index = 3, text = "Gordunni Brute" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 39 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2982-the-high-wilderness" },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-objective-2982-3-gordunni-brute",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Gordunni Brute", mapID = 1444, offMapText = "Travel to Gordunni Brute.", x = 0.604, y = 0.588 } },
            sourceStep = 53,
            text = "Kill 8 Gordunni Brute.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "objective-2982-3-gordunni-brute",
        },
        {
            complete = { questObjective = { count = 8, id = 2982, index = 1, text = "Gordunni Warlock" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 39 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2982-the-high-wilderness" },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-objective-2982-1-gordunni-warlock",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Gordunni Warlock", mapID = 1444, offMapText = "Travel to Gordunni Warlock.", x = 0.604, y = 0.57 } },
            sourceStep = 54,
            text = "Kill 8 Gordunni Warlock.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "objective-2982-1-gordunni-warlock",
        },
        {
            complete = { quest = { id = 2969, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2969-freedom-for-all-creatures",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Kindal Moonweaver",
                    mapID = 1444,
                    offMapText = "Travel to Kindal Moonweaver in Feralas.",
                    x = 0.6594,
                    y = 0.4565,
                },
            },
            sourceStep = 58,
            text = "Accept Freedom for All Creatures from Kindal Moonweaver.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "accept-2969-freedom-for-all-creatures",
        },
        {
            id = "alliance-extra-2767-turnin",
            kind = "turnin",
            text = "Turn in Rescue OOX-22/FE! to Oglethorpe Obnoticus.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            route = {
                {
                    mapID = 1434,
                    x = 0.282,
                    y = 0.762,
                    label = "Oglethorpe Obnoticus",
                    offMapText = "Travel to Oglethorpe Obnoticus in Stranglethorn Vale.",
                },
            },
            complete = { quest = { id = 2767, state = "completed" } },
            requiredQuests = { { mode = "any", quests = { 2766 } } },
            useClientText = false,
            dependsOn = { "alliance-extra-2767-objective" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2767, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2767, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2766, state = "activeOrCompleted" } },
                                                        { all = { { item = { name = "OOX-22/FE Distress Beacon", minCount = 1 } } } },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 2969, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2969-freedom-for-all-creatures" },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-objective-2969-reviewed-escort",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Escort destination", mapID = 1444, offMapText = "Travel to Escort destination.", x = 0.6667, y = 0.4675 },
            },
            sourceStep = 59,
            text = "Open the Cage Door to release the Captured Sprite Darters. Protect them so at least 6 survive. The quest is timed.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "objective-2969-reviewed-escort",
        },
        {
            complete = { quest = { id = 2969, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2969-freedom-for-all-creatures",
                "alliance-leveling-era-alliance-feralas-and-tanaris-objective-2969-reviewed-escort",
            },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-turnin-2969-freedom-for-all-creatures",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Kindal Moonweaver",
                    mapID = 1444,
                    offMapText = "Travel to Kindal Moonweaver in Feralas.",
                    x = 0.6594,
                    y = 0.4565,
                },
            },
            sourceStep = 60,
            text = "Turn in Freedom for All Creatures to Kindal Moonweaver.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "turnin-2969-freedom-for-all-creatures",
        },
        {
            complete = { quest = { id = 2970, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2970-doling-justice",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2969 } } },
            route = {
                {
                    label = "Jer'kai Moonweaver",
                    mapID = 1444,
                    offMapText = "Travel to Jer'kai Moonweaver in Feralas.",
                    x = 0.6595,
                    y = 0.4561,
                },
            },
            sourceStep = 61,
            text = "Accept Doling Justice from Jer'kai Moonweaver.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "accept-2970-doling-justice",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2970, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2970, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 2969, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
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
            complete = { questObjective = { count = 6, id = 2970, index = 3, text = "Grimtotem Shaman" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2970-doling-justice" },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-objective-2970-3-grimtotem-shaman",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2969 } } },
            route = {
                { label = "Grimtotem Shaman", mapID = 1444, offMapText = "Travel to Grimtotem Shaman.", x = 0.674, y = 0.464 },
            },
            sourceStep = 62,
            text = "Kill 6 Grimtotem Shaman.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "objective-2970-3-grimtotem-shaman",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2970, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2970, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 2969, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
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
            complete = { questObjective = { count = 10, id = 2970, index = 2, text = "Grimtotem Raider" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2970-doling-justice" },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-objective-2970-2-grimtotem-raider",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2969 } } },
            route = {
                { label = "Grimtotem Raider", mapID = 1444, offMapText = "Travel to Grimtotem Raider.", x = 0.674, y = 0.464 },
            },
            sourceStep = 62,
            text = "Kill 10 Grimtotem Raider.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "objective-2970-2-grimtotem-raider",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2970, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2970, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 2969, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
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
            complete = { questObjective = { count = 12, id = 2970, index = 1, text = "Grimtotem Naturalist" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2970-doling-justice" },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-objective-2970-1-grimtotem-naturalist",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2969 } } },
            route = {
                { label = "Grimtotem Naturalist", mapID = 1444, offMapText = "Travel to Grimtotem Naturalist.", x = 0.674, y = 0.464 },
            },
            sourceStep = 62,
            text = "Kill 12 Grimtotem Naturalist.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "objective-2970-1-grimtotem-naturalist",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2970, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2970, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 2969, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
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
            complete = { quest = { id = 2970, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2970-doling-justice",
                "alliance-leveling-era-alliance-feralas-and-tanaris-objective-2970-3-grimtotem-shaman",
                "alliance-leveling-era-alliance-feralas-and-tanaris-objective-2970-2-grimtotem-raider",
                "alliance-leveling-era-alliance-feralas-and-tanaris-objective-2970-1-grimtotem-naturalist",
            },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-turnin-2970-doling-justice",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2969 } } },
            route = {
                {
                    label = "Jer'kai Moonweaver",
                    mapID = 1444,
                    offMapText = "Travel to Jer'kai Moonweaver in Feralas.",
                    x = 0.6595,
                    y = 0.4561,
                },
            },
            sourceStep = 63,
            text = "Turn in Doling Justice to Jer'kai Moonweaver.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "turnin-2970-doling-justice",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2970, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2970, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 2969, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
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
            complete = { quest = { id = 2972, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2972-doling-justice",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2970 } } },
            route = {
                {
                    label = "Jer'kai Moonweaver",
                    mapID = 1444,
                    offMapText = "Travel to Jer'kai Moonweaver in Feralas.",
                    x = 0.6595,
                    y = 0.4561,
                },
            },
            sourceStep = 63,
            text = "Accept Doling Justice from Jer'kai Moonweaver.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "accept-2972-doling-justice",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2972, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2972, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2970, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 2969, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 4131, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-4131-the-woodpaw-gnolls" },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-turnin-4131-the-woodpaw-gnolls",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4130 } } },
            route = {
                { label = "The Woodpaw Gnolls", mapID = 1444, offMapText = "Travel to The Woodpaw Gnolls.", x = 0.7331, y = 0.5631 },
            },
            sourceStep = 64,
            text = "Turn in The Woodpaw Gnolls.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "turnin-4131-the-woodpaw-gnolls",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4131, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4131, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4130, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4129, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 4127, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 4125, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 4124, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 4135, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-accept-4135-the-writhing-deep",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4131 } } },
            route = {
                { label = "The Writhing Deep", mapID = 1444, offMapText = "Travel to The Writhing Deep.", x = 0.7331, y = 0.5631 },
            },
            sourceStep = 64,
            text = "Accept The Writhing Deep.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "accept-4135-the-writhing-deep",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4135, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4135, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4131, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4130, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 4129, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 4127, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 4125, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 4124, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = {
                any = {
                    { item = { minCount = 1, name = "Undelivered Parcel" } },
                    { quest = { id = 4281, state = "activeOrCompleted" } },
                },
            },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 4281, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { item = { minCount = 1, name = "Undelivered Parcel" } },
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4131, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4130, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 4129, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 4127, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 4125, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 4124, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
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
                        ["not"] = {
                            any = {
                                { quest = { id = 4281, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 4281, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { item = { name = "Undelivered Parcel", minCount = 1 } },
                                                { faction = "Alliance" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 4131, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 4130, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Alliance" },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 4129, state = "activeOrCompleted" } },
                                                                                                                {
                                                                                                                    all = {
                                                                                                                        { faction = "Alliance" },
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                {
                                                                                                                                    any = {
                                                                                                                                        { quest = { id = 4127, state = "activeOrCompleted" } },
                                                                                                                                        {
                                                                                                                                            all = {
                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        {
                                                                                                                                                            any = {
                                                                                                                                                                { quest = { id = 4125, state = "activeOrCompleted" } },
                                                                                                                                                                {
                                                                                                                                                                    all = {
                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                        {
                                                                                                                                                                            any = { { any = { { quest = { id = 4124, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-loot-starter-before-accept-4281-thalanaar-delivery",
            instructionOnly = true,
            kind = "note",
            referenceQuest = 4281,
            requiredQuests = {},
            text = "Loot Undelivered Parcel from Large Leather Backpacks. Keep it for the next pickup.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "loot-starter-before-accept-4281-thalanaar-delivery",
        },
        {
            complete = { quest = { id = 4281, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 4281, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { item = { minCount = 1, name = "Undelivered Parcel" } },
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4131, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4130, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 4129, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 4127, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 4125, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 4124, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
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
                        ["not"] = {
                            any = {
                                { quest = { id = 4281, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 4281, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { item = { name = "Undelivered Parcel", minCount = 1 } },
                                                { faction = "Alliance" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 4131, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 4130, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Alliance" },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 4129, state = "activeOrCompleted" } },
                                                                                                                {
                                                                                                                    all = {
                                                                                                                        { faction = "Alliance" },
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                {
                                                                                                                                    any = {
                                                                                                                                        { quest = { id = 4127, state = "activeOrCompleted" } },
                                                                                                                                        {
                                                                                                                                            all = {
                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        {
                                                                                                                                                            any = {
                                                                                                                                                                { quest = { id = 4125, state = "activeOrCompleted" } },
                                                                                                                                                                {
                                                                                                                                                                    all = {
                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                        {
                                                                                                                                                                            any = { { any = { { quest = { id = 4124, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-accept-4281-thalanaar-delivery",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4131 } } },
            sourceStep = 65,
            text = "Use the Undelivered Parcel to accept Thalanaar Delivery.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "accept-4281-thalanaar-delivery",
        },
        {
            complete = { quest = { id = 4135, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-4135-the-writhing-deep" },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-turnin-4135-the-writhing-deep",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4131 } } },
            route = {
                { label = "The Writhing Deep", mapID = 1444, offMapText = "Travel to The Writhing Deep.", x = 0.7208, y = 0.6375 },
            },
            sourceStep = 67,
            text = "Turn in The Writhing Deep.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "turnin-4135-the-writhing-deep",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4135, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4135, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4131, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4130, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 4129, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 4127, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 4125, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 4124, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 4265, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-accept-4265-freed-from-the-hive",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4135 } } },
            route = {
                { label = "Freed from the Hive", mapID = 1444, offMapText = "Travel to Freed from the Hive.", x = 0.7208, y = 0.6375 },
            },
            sourceStep = 67,
            text = "Accept Freed from the Hive.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "accept-4265-freed-from-the-hive",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4265, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4265, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4135, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4131, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 4130, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 4129, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 4127, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 4125, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = { { any = { { quest = { id = 4124, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 2821, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2821-the-mark-of-quality",
                "alliance-leveling-era-alliance-feralas-and-tanaris-objective-2821-1-thick-yeti-hide",
            },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-turnin-2821-the-mark-of-quality",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Pratt McGrubben", mapID = 1444, offMapText = "Travel to Pratt McGrubben in Feralas.", x = 0.3063, y = 0.4271 },
            },
            sourceStep = 69,
            text = "Turn in The Mark of Quality to Pratt McGrubben.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "turnin-2821-the-mark-of-quality",
        },
        {
            complete = { quest = { id = 2982, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 39 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2982-the-high-wilderness",
                "alliance-leveling-era-alliance-feralas-and-tanaris-objective-2982-2-gordunni-shaman",
                "alliance-leveling-era-alliance-feralas-and-tanaris-objective-2982-3-gordunni-brute",
                "alliance-leveling-era-alliance-feralas-and-tanaris-objective-2982-1-gordunni-warlock",
            },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-turnin-2982-the-high-wilderness",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Angelas Moonbreeze",
                    mapID = 1444,
                    offMapText = "Travel to Angelas Moonbreeze in Feralas.",
                    x = 0.3183,
                    y = 0.4561,
                },
            },
            sourceStep = 70,
            text = "Turn in The High Wilderness to Angelas Moonbreeze.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "turnin-2982-the-high-wilderness",
        },
        {
            checkpointQuest = 3445,
            complete = { level = { min = 46 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-level-before-accept-3445-the-sunken-temple",
            kind = "note",
            requiredLevel = 46,
            requiredQuests = {},
            text = "Reach level 46 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "level-before-accept-3445-the-sunken-temple",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 3445, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 46 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-accept-3445-the-sunken-temple",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Angelas Moonbreeze",
                    mapID = 1444,
                    offMapText = "Travel to Angelas Moonbreeze in Feralas.",
                    x = 0.3183,
                    y = 0.4561,
                },
            },
            sourceStep = 70,
            text = "Accept The Sunken Temple from Angelas Moonbreeze.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "accept-3445-the-sunken-temple",
        },
        {
            complete = { quest = { id = 4265, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-4265-freed-from-the-hive" },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-turnin-4265-freed-from-the-hive",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4135 } } },
            route = {
                {
                    label = "Ginro Hearthkindle",
                    mapID = 1444,
                    offMapText = "Travel to Ginro Hearthkindle in Feralas.",
                    x = 0.3186,
                    y = 0.4513,
                },
            },
            sourceStep = 71,
            text = "Turn in Freed from the Hive to Ginro Hearthkindle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "turnin-4265-freed-from-the-hive",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4265, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4265, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4135, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4131, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 4130, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 4129, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 4127, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 4125, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = { { any = { { quest = { id = 4124, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 4266, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-accept-4266-a-hero-s-welcome",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4265 } } },
            route = {
                {
                    label = "Ginro Hearthkindle",
                    mapID = 1444,
                    offMapText = "Travel to Ginro Hearthkindle in Feralas.",
                    x = 0.3186,
                    y = 0.4513,
                },
            },
            sourceStep = 71,
            text = "Accept A Hero's Welcome from Ginro Hearthkindle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "accept-4266-a-hero-s-welcome",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4266, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4266, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4265, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4135, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 4131, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 4130, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 4129, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 4127, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 4125, state = "activeOrCompleted" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = { { any = { { quest = { id = 4124, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 4266, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-4266-a-hero-s-welcome" },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-turnin-4266-a-hero-s-welcome",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4265 } } },
            route = {
                {
                    label = "Shandris Feathermoon",
                    mapID = 1444,
                    offMapText = "Travel to Shandris Feathermoon in Feralas.",
                    x = 0.3028,
                    y = 0.4617,
                },
            },
            sourceStep = 72,
            text = "Turn in A Hero's Welcome to Shandris Feathermoon.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "turnin-4266-a-hero-s-welcome",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4266, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4266, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4265, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4135, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 4131, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 4130, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 4129, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 4127, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 4125, state = "activeOrCompleted" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = { { any = { { quest = { id = 4124, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 4267, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-accept-4267-rise-of-the-silithid",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4266 } } },
            route = {
                {
                    label = "Shandris Feathermoon",
                    mapID = 1444,
                    offMapText = "Travel to Shandris Feathermoon in Feralas.",
                    x = 0.3028,
                    y = 0.4617,
                },
            },
            sourceStep = 72,
            text = "Accept Rise of the Silithid from Shandris Feathermoon.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "accept-4267-rise-of-the-silithid",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4267, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4267, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4266, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4265, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 4135, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 4131, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 4130, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 4129, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 4127, state = "activeOrCompleted" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 4125, state = "activeOrCompleted" } },
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    all = {
                                                                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                            any = { { any = { { quest = { id = 4124, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 2939, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 42 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2939-in-search-of-knowledge" },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-turnin-2939-in-search-of-knowledge",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Daryn Lightwind",
                    mapID = 1438,
                    offMapText = "Travel to Daryn Lightwind in Teldrassil.",
                    x = 0.5541,
                    y = 0.9223,
                },
            },
            sourceStep = 74,
            text = "Turn in In Search of Knowledge to Daryn Lightwind.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "turnin-2939-in-search-of-knowledge",
        },
        {
            complete = { quest = { id = 2940, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 42 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2940-feralas-a-history",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2939 } } },
            route = {
                { label = "Feralas: A History", mapID = 1438, offMapText = "Travel to Feralas: A History.", x = 0.5522, y = 0.9146 },
            },
            sourceStep = 75,
            text = "Accept Feralas: A History.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "accept-2940-feralas-a-history",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2940, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2940, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 2939, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
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
            complete = { quest = { id = 2940, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 42 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2940-feralas-a-history" },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-turnin-2940-feralas-a-history",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2939 } } },
            route = {
                {
                    label = "Daryn Lightwind",
                    mapID = 1438,
                    offMapText = "Travel to Daryn Lightwind in Teldrassil.",
                    x = 0.5541,
                    y = 0.9223,
                },
            },
            sourceStep = 76,
            text = "Turn in Feralas: A History to Daryn Lightwind.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "turnin-2940-feralas-a-history",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2940, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2940, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 2939, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
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
            complete = { quest = { id = 2941, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 42 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2941-the-borrower",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2940 } } },
            route = {
                {
                    label = "Daryn Lightwind",
                    mapID = 1438,
                    offMapText = "Travel to Daryn Lightwind in Teldrassil.",
                    x = 0.5541,
                    y = 0.9223,
                },
            },
            sourceStep = 76,
            text = "Accept The Borrower from Daryn Lightwind.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "accept-2941-the-borrower",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2941, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2941, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2940, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 2939, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 4267, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-4267-rise-of-the-silithid" },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-turnin-4267-rise-of-the-silithid",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4266 } } },
            route = {
                {
                    label = "Gracina Spiritmight",
                    mapID = 1457,
                    offMapText = "Travel to Gracina Spiritmight in Darnassus.",
                    x = 0.4185,
                    y = 0.8562,
                },
            },
            sourceStep = 84,
            text = "Turn in Rise of the Silithid to Gracina Spiritmight.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "turnin-4267-rise-of-the-silithid",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4267, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4267, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4266, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4265, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 4135, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 4131, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 4130, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 4129, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 4127, state = "activeOrCompleted" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 4125, state = "activeOrCompleted" } },
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    all = {
                                                                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                            any = { { any = { { quest = { id = 4124, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 2972, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2972-doling-justice" },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-turnin-2972-doling-justice",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2970 } } },
            route = {
                {
                    label = "Tyrande Whisperwind",
                    mapID = 1457,
                    offMapText = "Travel to Tyrande Whisperwind in Darnassus.",
                    x = 0.391,
                    y = 0.8159,
                },
            },
            sourceStep = 85,
            text = "Turn in Doling Justice to Tyrande Whisperwind.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "turnin-2972-doling-justice",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2972, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2972, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2970, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 2969, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            id = "alliance-extra-3841-level",
            kind = "note",
            checkpointQuest = 3841,
            text = "Reach level 47 before this visit.",
            conditions = { all = { { faction = "Alliance" } } },
            complete = { level = { min = 47 } },
            requiredLevel = 47,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3841, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3841, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2972, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2970, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 2969, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            id = "alliance-extra-3841-accept",
            kind = "accept",
            text = "Accept An Orphan Looking For a Home from Kindal Moonweaver.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } } } },
            route = {
                {
                    mapID = 1444,
                    x = 0.6579999999999999,
                    y = 0.456,
                    label = "Kindal Moonweaver",
                    offMapText = "Travel to Kindal Moonweaver in Feralas.",
                },
            },
            complete = { quest = { id = 3841, state = "activeOrCompleted" } },
            requiredQuests = { { mode = "any", quests = { 2972 } } },
            useClientText = false,
            dependsOn = { "alliance-extra-3841-level" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3841, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3841, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2972, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2970, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 2969, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 4281, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-4281-thalanaar-delivery" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 4281, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { item = { minCount = 1, name = "Undelivered Parcel" } },
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4131, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4130, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 4129, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 4127, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 4125, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 4124, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
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
                        ["not"] = {
                            any = {
                                { quest = { id = 4281, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 4281, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { item = { name = "Undelivered Parcel", minCount = 1 } },
                                                { faction = "Alliance" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 4131, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 4130, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Alliance" },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 4129, state = "activeOrCompleted" } },
                                                                                                                {
                                                                                                                    all = {
                                                                                                                        { faction = "Alliance" },
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                {
                                                                                                                                    any = {
                                                                                                                                        { quest = { id = 4127, state = "activeOrCompleted" } },
                                                                                                                                        {
                                                                                                                                            all = {
                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        {
                                                                                                                                                            any = {
                                                                                                                                                                { quest = { id = 4125, state = "activeOrCompleted" } },
                                                                                                                                                                {
                                                                                                                                                                    all = {
                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                        {
                                                                                                                                                                            any = { { any = { { quest = { id = 4124, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-turnin-4281-thalanaar-delivery",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4131 } } },
            route = {
                {
                    label = "Falfindel Waywarder",
                    mapID = 1444,
                    offMapText = "Travel to Falfindel Waywarder in Feralas.",
                    x = 0.8964,
                    y = 0.4657,
                },
            },
            sourceStep = 97,
            text = "Turn in Thalanaar Delivery to Falfindel Waywarder.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "turnin-4281-thalanaar-delivery",
        },
        {
            complete = { quest = { id = 2941, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 42 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2941-the-borrower" },
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-turnin-2941-the-borrower",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2940 } } },
            route = {
                {
                    label = "Curgle Cranklehop",
                    mapID = 1446,
                    offMapText = "Travel to Curgle Cranklehop in Tanaris.",
                    x = 0.5236,
                    y = 0.269,
                },
            },
            sourceStep = 100,
            text = "Turn in The Borrower to Curgle Cranklehop.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "turnin-2941-the-borrower",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2941, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2941, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2940, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 2939, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 2944, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 42 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-accept-2944-the-super-snapper-fx",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2941 } } },
            route = {
                {
                    label = "Curgle Cranklehop",
                    mapID = 1446,
                    offMapText = "Travel to Curgle Cranklehop in Tanaris.",
                    x = 0.5236,
                    y = 0.269,
                },
            },
            sourceStep = 100,
            text = "Accept The Super Snapper FX from Curgle Cranklehop.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "accept-2944-the-super-snapper-fx",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2944, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2944, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2941, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2940, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 2939, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            id = "visit-entry-leveling-era-alliance-tanaris-part-2",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-tanaris-part-2",
            text = "Reach level 49 before the Tanaris visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 49 } },
            requiredLevel = 49,
        },
        {
            checkpointQuest = 3445,
            complete = { level = { min = 46 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-tanaris-part-2-level-before-turnin-3445-the-sunken-temple",
            kind = "note",
            requiredLevel = 46,
            requiredQuests = {},
            text = "Reach level 46 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "level-before-turnin-3445-the-sunken-temple",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 3445, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 46 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-part-2-turnin-3445-the-sunken-temple",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Marvon Rivetseeker",
                    mapID = 1446,
                    offMapText = "Travel to Marvon Rivetseeker in Tanaris.",
                    x = 0.5271,
                    y = 0.4593,
                },
            },
            sourceStep = 5,
            text = "Turn in The Sunken Temple to Marvon Rivetseeker.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-tanaris-part-2",
            sourceActionID = "turnin-3445-the-sunken-temple",
        },
        {
            id = "visit-entry-leveling-era-alliance-azshara-and-felwood",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-azshara-and-felwood",
            text = "Reach level 52 before the Azshara & Felwood visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 52 } },
            requiredLevel = 52,
        },
        {
            complete = { quest = { id = 2944, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 42 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-azshara-and-felwood-objective-2944-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2941 } } },
            sourceStep = 2,
            text = "For The Super Snapper FX: Use the Super Snapper FX to take a snapshot of Gammerita.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "objective-2944-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2944, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2944, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2941, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2940, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 2939, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 2944, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 42 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-azshara-and-felwood-objective-2944-quest-work" },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-turnin-2944-the-super-snapper-fx",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2941 } } },
            route = {
                {
                    label = "Daryn Lightwind",
                    mapID = 1438,
                    offMapText = "Travel to Daryn Lightwind in Teldrassil.",
                    x = 0.5541,
                    y = 0.9223,
                },
            },
            sourceStep = 2,
            text = "Turn in The Super Snapper FX to Daryn Lightwind.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "turnin-2944-the-super-snapper-fx",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2944, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2944, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2941, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2940, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 2939, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 2943, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 42 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-azshara-and-felwood-accept-2943-return-to-troyas",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2944 } } },
            route = {
                {
                    label = "Daryn Lightwind",
                    mapID = 1438,
                    offMapText = "Travel to Daryn Lightwind in Teldrassil.",
                    x = 0.5541,
                    y = 0.9223,
                },
            },
            sourceStep = 2,
            text = "Accept Return to Troyas from Daryn Lightwind.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "accept-2943-return-to-troyas",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2943, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2943, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2944, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2941, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2940, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 2939, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3764, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 47 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-azshara-and-felwood-objective-3764-1-un-goro-soil",
            kind = "note",
            requiredQuests = {},
            route = { { label = "Un'Goro Soil", mapID = 1457, offMapText = "Travel to Un'Goro Soil.", x = 0.396, y = 0.4198 } },
            text = "Collect 20 Un'Goro Soil. Keep the required materials for the quest.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "objective-3764-1-un-goro-soil",
        },
        {
            complete = { quest = { id = 3764, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 47 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-azshara-and-felwood-accept-3764-un-goro-soil",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Arch Druid Fandral Staghelm",
                    mapID = 1457,
                    offMapText = "Travel to Arch Druid Fandral Staghelm in Darnassus.",
                    x = 0.3482,
                    y = 0.0925,
                },
            },
            sourceStep = 5,
            text = "Accept Un'Goro Soil from Arch Druid Fandral Staghelm.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "accept-3764-un-goro-soil",
        },
        {
            complete = { quest = { id = 3764, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 47 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-azshara-and-felwood-accept-3764-un-goro-soil" },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-turnin-3764-un-goro-soil",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Jenal", mapID = 1457, offMapText = "Travel to Jenal in Darnassus.", x = 0.3149, y = 0.0823 } },
            sourceStep = 6,
            text = "Turn in Un'Goro Soil to Jenal.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "turnin-3764-un-goro-soil",
        },
        {
            id = "visit-entry-leveling-era-alliance-feralas-and-azshara",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-feralas-and-azshara",
            text = "Reach level 52 before the Feralas & Azshara visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 52 } },
            requiredLevel = 52,
        },
        {
            checkpointQuest = 7733,
            complete = { level = { min = 40 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-level-before-accept-7733-improved-quality",
            kind = "note",
            requiredLevel = 40,
            requiredQuests = {},
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "level-before-accept-7733-improved-quality",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 7733, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 7733, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 2821, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
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
            complete = { quest = { id = 7733, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-azshara-accept-7733-improved-quality",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2821 } } },
            route = {
                { label = "Pratt McGrubben", mapID = 1444, offMapText = "Travel to Pratt McGrubben in Feralas.", x = 0.3063, y = 0.4271 },
            },
            sourceStep = 1,
            text = "Accept Improved Quality from Pratt McGrubben.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "accept-7733-improved-quality",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 7733, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 7733, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 2821, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
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
            checkpointQuest = 2943,
            complete = { level = { min = 42 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-level-before-turnin-2943-return-to-troyas",
            kind = "note",
            requiredLevel = 42,
            requiredQuests = {},
            text = "Reach level 42 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "level-before-turnin-2943-return-to-troyas",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2943, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2943, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2944, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2941, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2940, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 2939, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 2943, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 42 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-azshara-turnin-2943-return-to-troyas",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2944 } } },
            route = {
                {
                    label = "Troyas Moonbreeze",
                    mapID = 1444,
                    offMapText = "Travel to Troyas Moonbreeze in Feralas.",
                    x = 0.3178,
                    y = 0.455,
                },
            },
            sourceStep = 2,
            text = "Turn in Return to Troyas to Troyas Moonbreeze.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "turnin-2943-return-to-troyas",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2943, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2943, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2944, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2941, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2940, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 2939, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 2879, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 42 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-azshara-accept-2879-the-stave-of-equinex",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2943 } } },
            route = {
                {
                    label = "Troyas Moonbreeze",
                    mapID = 1444,
                    offMapText = "Travel to Troyas Moonbreeze in Feralas.",
                    x = 0.3178,
                    y = 0.455,
                },
            },
            sourceStep = 3,
            text = "Accept The Stave of Equinex from Troyas Moonbreeze.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "accept-2879-the-stave-of-equinex",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2879, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2879, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2943, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2944, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2941, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2940, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 2939, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            checkpointQuest = 7003,
            complete = { level = { min = 45 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-level-before-accept-7003-zapped-giants",
            kind = "note",
            requiredLevel = 45,
            requiredQuests = {},
            text = "Reach level 45 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "level-before-accept-7003-zapped-giants",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 7003, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-azshara-accept-7003-zapped-giants",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Zorbin Fandazzle",
                    mapID = 1444,
                    offMapText = "Travel to Zorbin Fandazzle in Feralas.",
                    x = 0.4481,
                    y = 0.4342,
                },
            },
            sourceStep = 4,
            text = "Accept Zapped Giants from Zorbin Fandazzle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "accept-7003-zapped-giants",
        },
        {
            complete = { quest = { id = 7721, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-azshara-accept-7721-fuel-for-the-zapping",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Zorbin Fandazzle",
                    mapID = 1444,
                    offMapText = "Travel to Zorbin Fandazzle in Feralas.",
                    x = 0.4481,
                    y = 0.4342,
                },
            },
            sourceStep = 4,
            text = "Accept Fuel for the Zapping from Zorbin Fandazzle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "accept-7721-fuel-for-the-zapping",
        },
        {
            complete = { questObjective = { count = 15, id = 7003, index = 1, text = "Zorbin's Ultra-Shrinker" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-azshara-accept-7003-zapped-giants" },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-objective-7003-1-zorbin-s-ultra-shrinker",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Zorbin's Ultra-Shrinker",
                    mapID = 1444,
                    offMapText = "Travel to Zorbin's Ultra-Shrinker.",
                    x = 0.444,
                    y = 0.498,
                },
            },
            sourceStep = 5,
            text = "Use the Ultra-Shrinker on giants along the coast, then kill them and collect 15 Miniaturization Residues.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "objective-7003-1-zorbin-s-ultra-shrinker",
        },
        {
            complete = { questObjective = { count = 10, id = 7721, index = 1, text = "Water Elemental Core" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-azshara-accept-7721-fuel-for-the-zapping" },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-objective-7721-1-water-elemental-core",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Water Elemental Core", mapID = 1444, offMapText = "Travel to Water Elemental Core.", x = 0.442, y = 0.506 },
            },
            sourceStep = 6,
            text = "Collect 10 Water Elemental Core.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "objective-7721-1-water-elemental-core",
        },
        {
            complete = { quest = { id = 7003, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-feralas-and-azshara-accept-7003-zapped-giants",
                "alliance-leveling-era-alliance-feralas-and-azshara-objective-7003-1-zorbin-s-ultra-shrinker",
            },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-turnin-7003-zapped-giants",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Zorbin Fandazzle",
                    mapID = 1444,
                    offMapText = "Travel to Zorbin Fandazzle in Feralas.",
                    x = 0.4481,
                    y = 0.4342,
                },
            },
            sourceStep = 7,
            text = "Turn in Zapped Giants to Zorbin Fandazzle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "turnin-7003-zapped-giants",
        },
        {
            complete = { quest = { id = 7721, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-feralas-and-azshara-accept-7721-fuel-for-the-zapping",
                "alliance-leveling-era-alliance-feralas-and-azshara-objective-7721-1-water-elemental-core",
            },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-turnin-7721-fuel-for-the-zapping",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Zorbin Fandazzle",
                    mapID = 1444,
                    offMapText = "Travel to Zorbin Fandazzle in Feralas.",
                    x = 0.4481,
                    y = 0.4342,
                },
            },
            sourceStep = 7,
            text = "Turn in Fuel for the Zapping to Zorbin Fandazzle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "turnin-7721-fuel-for-the-zapping",
        },
        {
            complete = {
                any = {
                    { item = { minCount = 1, name = "Pristine Yeti Hide" } },
                    { quest = { id = 7735, state = "activeOrCompleted" } },
                },
            },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 7735, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { item = { minCount = 1, name = "Pristine Yeti Hide" } },
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 2821, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 7735, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 7735, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { item = { name = "Pristine Yeti Hide", minCount = 1 } },
                                                { faction = "Alliance" },
                                                {
                                                    any = { { any = { { quest = { id = 2821, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-loot-starter-before-accept-7735-pristine-yeti-hide",
            instructionOnly = true,
            kind = "note",
            referenceQuest = 7735,
            requiredQuests = {},
            text = "Loot Pristine Yeti Hide from Ferocious Rage Scar. Keep it for the next pickup.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "loot-starter-before-accept-7735-pristine-yeti-hide",
        },
        {
            complete = { quest = { id = 7735, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 7735, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { item = { minCount = 1, name = "Pristine Yeti Hide" } },
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 2821, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 7735, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 7735, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { item = { name = "Pristine Yeti Hide", minCount = 1 } },
                                                { faction = "Alliance" },
                                                {
                                                    any = { { any = { { quest = { id = 2821, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-accept-7735-pristine-yeti-hide",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2821 } } },
            sourceStep = 10,
            text = "Use the Pristine Yeti Hide to accept Pristine Yeti Hide.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "accept-7735-pristine-yeti-hide",
        },
        {
            complete = { questObjective = { count = 10, id = 7733, index = 1, text = "Rage Scar Yeti Hide" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-azshara-accept-7733-improved-quality" },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-objective-7733-1-rage-scar-yeti-hide",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2821 } } },
            route = {
                { label = "Rage Scar Yeti Hide", mapID = 1444, offMapText = "Travel to Rage Scar Yeti Hide.", x = 0.514, y = 0.324 },
            },
            sourceStep = 11,
            text = "Collect 10 Rage Scar Yeti Hide.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "objective-7733-1-rage-scar-yeti-hide",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 7733, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 7733, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 2821, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
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
            checkpointQuest = 2844,
            complete = { level = { min = 44 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-level-before-accept-2844-the-giant-guardian",
            kind = "note",
            requiredLevel = 44,
            requiredQuests = {},
            text = "Reach level 44 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "level-before-accept-2844-the-giant-guardian",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 2844, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 44 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-azshara-accept-2844-the-giant-guardian",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Rockbiter", mapID = 1444, offMapText = "Travel to Rockbiter in Feralas.", x = 0.4238, y = 0.22 } },
            sourceStep = 12,
            text = "Accept The Giant Guardian from Rockbiter.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "accept-2844-the-giant-guardian",
        },
        {
            checkpointQuest = 2879,
            complete = {
                any = {
                    { all = { { item = { minCount = 1, name = "Samha Essence" } } } },
                    { quest = { id = 2879, state = "complete" } },
                },
            },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 42 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-azshara-accept-2879-the-stave-of-equinex" },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-collect-2879-samha-essence",
            instructionOnly = true,
            kind = "note",
            rememberPreparation = 2879,
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2943 } } },
            route = { { label = "Flame of Samha", mapID = 1444, offMapText = "Travel to Flame of Samha.", x = 0.4054, y = 0.1265 } },
            sourceInstructionIndex = 1,
            sourceInstructionStep = 18,
            text = "Climb the ledges on the eastern side of the ruins. Touch the Flame of Samha on the upper ledge to obtain Samha Essence.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "collect-2879-samha-essence",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2879, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2879, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2943, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2944, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2941, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2940, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 2939, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            checkpointQuest = 2879,
            complete = {
                any = {
                    { all = { { item = { minCount = 1, name = "Imbel Essence" } } } },
                    { quest = { id = 2879, state = "complete" } },
                },
            },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 42 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-azshara-accept-2879-the-stave-of-equinex" },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-objective-2879-1-flame-of-imbel",
            instructionOnly = true,
            kind = "note",
            rememberPreparation = 2879,
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2943 } } },
            route = { { label = "Flame of Imbel", mapID = 1444, offMapText = "Travel to Flame of Imbel.", x = 0.3993, y = 0.0944 } },
            sourceInstructionIndex = 1,
            sourceInstructionStep = 18,
            text = "Touch the Flame of Imbel to obtain Imbel Essence.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "objective-2879-1-flame-of-imbel",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2879, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2879, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2943, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2944, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2941, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2940, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 2939, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            checkpointQuest = 2879,
            complete = {
                any = {
                    { all = { { item = { minCount = 1, name = "Lahassa Essence" } } } },
                    { quest = { id = 2879, state = "complete" } },
                },
            },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 42 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-azshara-accept-2879-the-stave-of-equinex" },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-objective-2879-1-flame-of-lahassa",
            instructionOnly = true,
            kind = "note",
            rememberPreparation = 2879,
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2943 } } },
            route = {
                { label = "Flame of Lahassa", mapID = 1444, offMapText = "Travel to Flame of Lahassa.", x = 0.3776, y = 0.1217 },
            },
            text = "Touch the Flame of Lahassa to obtain Lahassa Essence.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "objective-2879-1-flame-of-lahassa",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2879, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2879, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2943, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2944, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2941, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2940, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 2939, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            checkpointQuest = 2879,
            complete = {
                any = {
                    { all = { { item = { minCount = 1, name = "Byltan Essence" } } } },
                    { quest = { id = 2879, state = "complete" } },
                },
            },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 42 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-azshara-accept-2879-the-stave-of-equinex" },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-objective-2879-1-flame-of-byltan",
            instructionOnly = true,
            kind = "note",
            rememberPreparation = 2879,
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2943 } } },
            route = { { label = "Flame of Byltan", mapID = 1444, offMapText = "Travel to Flame of Byltan.", x = 0.385, y = 0.158 } },
            text = "Touch the Flame of Byltan to obtain Byltan Essence.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "objective-2879-1-flame-of-byltan",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2879, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2879, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2943, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2944, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2941, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2940, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 2939, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 1, id = 2879, index = 1 } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 42 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-azshara-accept-2879-the-stave-of-equinex" },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-objective-2879-1-troyas-stave",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2943 } } },
            route = {
                { label = "Equinex Monolith", mapID = 1444, offMapText = "Travel to Equinex Monolith.", x = 0.3887, y = 0.1323 },
            },
            text = "With Samha, Imbel, Lahassa and Byltan Essence in your bags, use Troyas' Stave at the Equinex Monolith to obtain the Stave of Equinex.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "objective-2879-1-troyas-stave",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2879, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2879, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2943, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2944, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2941, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2940, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 2939, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 2879, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 42 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-feralas-and-azshara-accept-2879-the-stave-of-equinex",
                "alliance-leveling-era-alliance-feralas-and-azshara-objective-2879-1-flame-of-imbel",
                "alliance-leveling-era-alliance-feralas-and-azshara-objective-2879-1-flame-of-lahassa",
                "alliance-leveling-era-alliance-feralas-and-azshara-objective-2879-1-flame-of-byltan",
                "alliance-leveling-era-alliance-feralas-and-azshara-objective-2879-1-troyas-stave",
            },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-turnin-2879-the-stave-of-equinex",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2943 } } },
            route = {
                { label = "The Stave of Equinex", mapID = 1444, offMapText = "Travel to The Stave of Equinex.", x = 0.3887, y = 0.1323 },
            },
            sourceStep = 19,
            text = "Touch the Equinex Monolith to turn in The Stave of Equinex.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "turnin-2879-the-stave-of-equinex",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2879, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2879, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2943, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2944, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2941, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2940, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 2939, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 2942, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 42 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-azshara-accept-2942-the-morrow-stone",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2879 } } },
            route = {
                { label = "The Morrow Stone", mapID = 1444, offMapText = "Travel to The Morrow Stone.", x = 0.3887, y = 0.1323 },
            },
            sourceStep = 19,
            text = "Accept The Morrow Stone.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "accept-2942-the-morrow-stone",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2942, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2942, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2879, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2943, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2944, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2941, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 2940, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 2939, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 2844, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 44 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-azshara-accept-2844-the-giant-guardian" },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-turnin-2844-the-giant-guardian",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Shay Leafrunner", mapID = 1444, offMapText = "Travel to Shay Leafrunner in Feralas.", x = 0.3822, y = 0.103 },
            },
            sourceStep = 20,
            text = "Turn in The Giant Guardian to Shay Leafrunner.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "turnin-2844-the-giant-guardian",
        },
        {
            complete = { quest = { id = 2845, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 44 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-azshara-accept-2845-wandering-shay",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2844 } } },
            route = {
                { label = "Shay Leafrunner", mapID = 1444, offMapText = "Travel to Shay Leafrunner in Feralas.", x = 0.3822, y = 0.103 },
            },
            sourceStep = 20,
            text = "Accept Wandering Shay from Shay Leafrunner.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "accept-2845-wandering-shay",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2845, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2845, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 2844, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
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
            complete = { questObjective = { count = 1, id = 2845, index = 1, text = "Shay's Chest" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 44 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-azshara-accept-2845-wandering-shay" },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-objective-2845-1-shay-s-chest",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2844 } } },
            route = { { label = "Shay's Chest", mapID = 1444, offMapText = "Travel to Shay's Chest.", x = 0.3825, y = 0.1029 } },
            sourceStep = 21,
            text = "Collect 1 Shay's Bell.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "objective-2845-1-shay-s-chest",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2845, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2845, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 2844, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
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
            complete = { quest = { id = 2845, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 44 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-azshara-accept-2845-wandering-shay" },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-objective-2845-reviewed-escort",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2844 } } },
            route = {
                { label = "Escort destination", mapID = 1444, offMapText = "Travel to Escort destination.", x = 0.4238, y = 0.22 },
            },
            sourceStep = 22,
            text = "Escort Shay Leafrunner to Rockbiter's camp. Stay close and use Shay's Bell whenever she wanders away. The quest is timed.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "objective-2845-reviewed-escort",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2845, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2845, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 2844, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
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
            complete = { quest = { id = 2845, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 44 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-feralas-and-azshara-accept-2845-wandering-shay",
                "alliance-leveling-era-alliance-feralas-and-azshara-objective-2845-1-shay-s-chest",
                "alliance-leveling-era-alliance-feralas-and-azshara-objective-2845-reviewed-escort",
            },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-turnin-2845-wandering-shay",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2844 } } },
            route = { { label = "Rockbiter", mapID = 1444, offMapText = "Travel to Rockbiter in Feralas.", x = 0.4238, y = 0.22 } },
            sourceStep = 23,
            text = "Turn in Wandering Shay to Rockbiter.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "turnin-2845-wandering-shay",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2845, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2845, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 2844, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
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
            complete = { quest = { id = 2942, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 42 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-azshara-accept-2942-the-morrow-stone" },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-objective-2942-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2879 } } },
            sourceStep = 26,
            text = "For The Morrow Stone: Return the Sparkling Stone and the Stave of Equinex to Troyas Moonbreeze in Feathermoon Stronghold.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "objective-2942-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2942, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2942, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2879, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2943, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2944, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2941, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 2940, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 2939, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 2942, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 42 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-feralas-and-azshara-accept-2942-the-morrow-stone",
                "alliance-leveling-era-alliance-feralas-and-azshara-objective-2942-quest-work",
            },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-turnin-2942-the-morrow-stone",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2879 } } },
            route = {
                {
                    label = "Troyas Moonbreeze",
                    mapID = 1444,
                    offMapText = "Travel to Troyas Moonbreeze in Feralas.",
                    x = 0.3178,
                    y = 0.455,
                },
            },
            sourceStep = 26,
            text = "Turn in The Morrow Stone to Troyas Moonbreeze.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "turnin-2942-the-morrow-stone",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2942, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2942, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2879, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2943, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2944, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2941, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 2940, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 2939, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 7733, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-feralas-and-azshara-accept-7733-improved-quality",
                "alliance-leveling-era-alliance-feralas-and-azshara-objective-7733-1-rage-scar-yeti-hide",
            },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-turnin-7733-improved-quality",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2821 } } },
            route = {
                { label = "Pratt McGrubben", mapID = 1444, offMapText = "Travel to Pratt McGrubben in Feralas.", x = 0.3063, y = 0.4271 },
            },
            sourceStep = 27,
            text = "Turn in Improved Quality to Pratt McGrubben.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "turnin-7733-improved-quality",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 7733, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 7733, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 2821, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
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
            complete = { quest = { id = 7735, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-azshara-accept-7735-pristine-yeti-hide" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 7735, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { item = { minCount = 1, name = "Pristine Yeti Hide" } },
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 2821, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 7735, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 7735, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { item = { name = "Pristine Yeti Hide", minCount = 1 } },
                                                { faction = "Alliance" },
                                                {
                                                    any = { { any = { { quest = { id = 2821, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-turnin-7735-pristine-yeti-hide",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2821 } } },
            route = {
                { label = "Pratt McGrubben", mapID = 1444, offMapText = "Travel to Pratt McGrubben in Feralas.", x = 0.3063, y = 0.4271 },
            },
            sourceStep = 27,
            text = "Turn in Pristine Yeti Hide to Pratt McGrubben.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "turnin-7735-pristine-yeti-hide",
        },
        {
            id = "visit-entry-leveling-era-alliance-ungoro-crater-part-2",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-ungoro-crater-part-2",
            text = "Reach level 53 before the Un'Goro Crater visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 53 } },
            requiredLevel = 53,
        },
        {
            complete = { quest = { id = 3781, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 47 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ungoro-crater-part-2-accept-3781-morrowgrain-research",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3764 } } },
            route = {
                {
                    label = "Arch Druid Fandral Staghelm",
                    mapID = 1457,
                    offMapText = "Travel to Arch Druid Fandral Staghelm in Darnassus.",
                    x = 0.3482,
                    y = 0.0925,
                },
            },
            sourceStep = 79,
            text = "Accept Morrowgrain Research from Arch Druid Fandral Staghelm.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ungoro-crater-part-2",
            sourceActionID = "accept-3781-morrowgrain-research",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3781, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3781, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 3764, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
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
            complete = { quest = { id = 3781, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 47 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ungoro-crater-part-2-accept-3781-morrowgrain-research" },
            id = "alliance-leveling-era-alliance-ungoro-crater-part-2-turnin-3781-morrowgrain-research",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3764 } } },
            route = {
                {
                    label = "Mathrengyl Bearwalker",
                    mapID = 1457,
                    offMapText = "Travel to Mathrengyl Bearwalker in Darnassus.",
                    x = 0.354,
                    y = 0.0842,
                },
            },
            sourceStep = 80,
            text = "Turn in Morrowgrain Research to Mathrengyl Bearwalker.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-ungoro-crater-part-2",
            sourceActionID = "turnin-3781-morrowgrain-research",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3781, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3781, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 3764, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
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
            id = "alliance-extra-3788-level",
            kind = "note",
            checkpointQuest = 3788,
            text = "Reach level 50 before this visit.",
            conditions = { all = { { faction = "Alliance" } } },
            complete = { level = { min = 50 } },
            requiredLevel = 50,
            excludeWhen = {
                any = {
                    { any = { { quest = { id = 3787, state = "activeOrCompleted" } } } },
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 3788, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 3788, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 3781, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        {
                                                                            any = { { any = { { quest = { id = 3764, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            alternativeQuests = { 3791 },
        },
        {
            id = "alliance-extra-3788-accept",
            kind = "accept",
            text = "Accept Jonespyre's Request from Innkeeper Shyria.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 47 } } } },
            route = {
                { mapID = 1444, x = 0.31, y = 0.434, label = "Innkeeper Shyria", offMapText = "Travel to Innkeeper Shyria in Feralas." },
            },
            complete = { quest = { id = 3788, state = "activeOrCompleted" } },
            requiredQuests = { { mode = "any", quests = { 3781 } } },
            useClientText = false,
            excludeWhen = {
                any = {
                    { any = { { quest = { id = 3787, state = "activeOrCompleted" } } } },
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 3788, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 3788, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 3781, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        {
                                                                            any = { { any = { { quest = { id = 3764, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            alternativeQuests = { 3791 },
            dependsOn = { "alliance-extra-3788-level" },
        },
        {
            id = "alliance-extra-3787-level",
            kind = "note",
            checkpointQuest = 3787,
            text = "Reach level 50 before this visit.",
            conditions = { all = { { faction = "Alliance" } } },
            complete = { level = { min = 50 } },
            requiredLevel = 50,
            excludeWhen = {
                any = {
                    { any = { { quest = { id = 3788, state = "activeOrCompleted" } } } },
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 3787, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 3787, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 3781, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        {
                                                                            any = { { any = { { quest = { id = 3764, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            alternativeQuests = { 3791 },
        },
        {
            id = "alliance-extra-3787-accept",
            kind = "accept",
            text = "Accept Jonespyre's Request from Tannysa.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 47 } } } },
            route = {
                {
                    mapID = 1453,
                    x = 0.44799999999999995,
                    y = 0.77,
                    label = "Tannysa",
                    offMapText = "Travel to Tannysa in Stormwind City.",
                },
            },
            complete = { quest = { id = 3787, state = "activeOrCompleted" } },
            requiredQuests = { { mode = "any", quests = { 3781 } } },
            useClientText = false,
            excludeWhen = {
                any = {
                    { any = { { quest = { id = 3788, state = "activeOrCompleted" } } } },
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 3787, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 3787, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 3781, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        {
                                                                            any = { { any = { { quest = { id = 3764, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            alternativeQuests = { 3791 },
            dependsOn = { "alliance-extra-3787-level" },
        },
        {
            id = "alliance-extra-3787-objective",
            kind = "objective",
            text = "Speak with Quintis Jonespyre in Feathermoon Stronghold. Follow the quest log for the destination.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 47 } } } },
            route = {},
            complete = { quest = { id = 3787, state = "complete" } },
            requiredQuests = { { mode = "any", quests = { 3781 } } },
            useClientText = false,
            excludeWhen = {
                any = {
                    { any = { { quest = { id = 3788, state = "activeOrCompleted" } } } },
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 3787, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 3787, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 3781, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        {
                                                                            any = { { any = { { quest = { id = 3764, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            alternativeQuests = { 3791 },
            dependsOn = { "alliance-extra-3787-accept" },
            useClientPin = true,
        },
        {
            id = "alliance-extra-3787-turnin",
            kind = "turnin",
            text = "Turn in Jonespyre's Request to Quintis Jonespyre.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 47 } } } },
            route = {
                {
                    mapID = 1444,
                    x = 0.324,
                    y = 0.43799999999999994,
                    label = "Quintis Jonespyre",
                    offMapText = "Travel to Quintis Jonespyre in Feralas.",
                },
            },
            complete = { quest = { id = 3787, state = "completed" } },
            requiredQuests = { { mode = "any", quests = { 3781 } } },
            useClientText = false,
            excludeWhen = {
                any = {
                    { any = { { quest = { id = 3788, state = "activeOrCompleted" } } } },
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 3787, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 3787, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 3781, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        {
                                                                            any = { { any = { { quest = { id = 3764, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            alternativeQuests = { 3791 },
            dependsOn = { "alliance-extra-3787-objective" },
        },
        {
            id = "alliance-extra-3788-objective",
            kind = "objective",
            text = "Speak with Quintis Jonespyre in Feathermoon Stronghold. Follow the quest log for the destination.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 47 } } } },
            route = {},
            complete = { quest = { id = 3788, state = "complete" } },
            requiredQuests = { { mode = "any", quests = { 3781 } } },
            useClientText = false,
            excludeWhen = {
                any = {
                    { any = { { quest = { id = 3787, state = "activeOrCompleted" } } } },
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 3788, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 3788, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 3781, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        {
                                                                            any = { { any = { { quest = { id = 3764, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            alternativeQuests = { 3791 },
            dependsOn = { "alliance-extra-3788-accept" },
            useClientPin = true,
        },
        {
            id = "alliance-extra-3788-turnin",
            kind = "turnin",
            text = "Turn in Jonespyre's Request to Quintis Jonespyre.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 47 } } } },
            route = {
                {
                    mapID = 1444,
                    x = 0.324,
                    y = 0.43799999999999994,
                    label = "Quintis Jonespyre",
                    offMapText = "Travel to Quintis Jonespyre in Feralas.",
                },
            },
            complete = { quest = { id = 3788, state = "completed" } },
            requiredQuests = { { mode = "any", quests = { 3781 } } },
            useClientText = false,
            excludeWhen = {
                any = {
                    { any = { { quest = { id = 3787, state = "activeOrCompleted" } } } },
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 3788, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 3788, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 3781, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        {
                                                                            any = { { any = { { quest = { id = 3764, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            alternativeQuests = { 3791 },
            dependsOn = { "alliance-extra-3788-objective" },
        },
        {
            id = "alliance-extra-3841-objective",
            kind = "objective",
            text = "Speak to Quentin in Thousand Needles. Follow the quest log for the destination.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } } } },
            route = {},
            complete = { quest = { id = 3841, state = "complete" } },
            requiredQuests = { { mode = "any", quests = { 2972 } } },
            useClientText = false,
            dependsOn = { "alliance-extra-3841-accept" },
            useClientPin = true,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3841, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3841, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2972, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2970, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 2969, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            id = "alliance-extra-3841-turnin",
            kind = "turnin",
            text = "Turn in An Orphan Looking For a Home to Quentin.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } } } },
            route = {
                { mapID = 1441, x = 0.784, y = 0.748, label = "Quentin", offMapText = "Travel to Quentin in Thousand Needles." },
            },
            complete = { quest = { id = 3841, state = "completed" } },
            requiredQuests = { { mode = "any", quests = { 2972 } } },
            useClientText = false,
            dependsOn = { "alliance-extra-3841-objective" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3841, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3841, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2972, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2970, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 2969, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            id = "visit-entry-leveling-era-horde-dustwallow-marsh-part-2",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-dustwallow-marsh-part-2",
            text = "Reach level 42 before the Dustwallow Marsh visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 42 } },
            requiredLevel = 42,
        },
        {
            complete = { quest = { id = 2981, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-dustwallow-marsh-part-2-accept-2981-a-threat-in-feralas",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Belgrom Rockmaul",
                    mapID = 1454,
                    offMapText = "Travel to Belgrom Rockmaul in Orgrimmar.",
                    x = 0.7522,
                    y = 0.3422,
                },
            },
            sourceStep = 28,
            text = "Accept A Threat in Feralas from Belgrom Rockmaul.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-dustwallow-marsh-part-2",
            sourceActionID = "accept-2981-a-threat-in-feralas",
        },
        {
            id = "visit-entry-leveling-era-horde-feralas",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-feralas",
            text = "Reach level 43 before the Feralas visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 43 } },
            requiredLevel = 43,
        },
        {
            checkpointQuest = 2987,
            complete = { level = { min = 38 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-feralas-level-before-accept-2987-gordunni-cobalt",
            kind = "note",
            requiredLevel = 38,
            requiredQuests = {},
            text = "Reach level 38 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "level-before-accept-2987-gordunni-cobalt",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 2987, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-accept-2987-gordunni-cobalt",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Orwin Gizzmick", mapID = 1444, offMapText = "Travel to Orwin Gizzmick in Feralas.", x = 0.757, y = 0.443 },
            },
            sourceStep = 2,
            text = "Accept Gordunni Cobalt from Orwin Gizzmick.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "accept-2987-gordunni-cobalt",
        },
        {
            complete = { quest = { id = 2973, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-accept-2973-a-new-cloak-s-sheen",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Krueg Skullsplitter",
                    mapID = 1444,
                    offMapText = "Travel to Krueg Skullsplitter in Feralas.",
                    x = 0.7594,
                    y = 0.4274,
                },
            },
            sourceStep = 3,
            text = "Accept A New Cloak's Sheen from Krueg Skullsplitter.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "accept-2973-a-new-cloak-s-sheen",
        },
        {
            checkpointQuest = 2862,
            complete = { level = { min = 39 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-feralas-level-before-accept-2862-war-on-the-woodpaw",
            kind = "note",
            requiredLevel = 39,
            requiredQuests = {},
            text = "Reach level 39 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "level-before-accept-2862-war-on-the-woodpaw",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 2862, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-accept-2862-war-on-the-woodpaw",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Hadoken Swiftstrider",
                    mapID = 1444,
                    offMapText = "Travel to Hadoken Swiftstrider in Feralas.",
                    x = 0.7491,
                    y = 0.4247,
                },
            },
            sourceStep = 4,
            text = "Accept War on the Woodpaw from Hadoken Swiftstrider.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "accept-2862-war-on-the-woodpaw",
        },
        {
            checkpointQuest = 2822,
            complete = { level = { min = 40 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-feralas-level-before-accept-2822-the-mark-of-quality",
            kind = "note",
            requiredLevel = 40,
            requiredQuests = {},
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "level-before-accept-2822-the-mark-of-quality",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 2822, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-accept-2822-the-mark-of-quality",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Jangdor Swiftstrider",
                    mapID = 1444,
                    offMapText = "Travel to Jangdor Swiftstrider in Feralas.",
                    x = 0.7443,
                    y = 0.4291,
                },
            },
            sourceStep = 5,
            text = "Accept The Mark of Quality from Jangdor Swiftstrider.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "accept-2822-the-mark-of-quality",
        },
        {
            complete = { quest = { id = 2981, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-turnin-2981-a-threat-in-feralas",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Rok Orhan", mapID = 1444, offMapText = "Travel to Rok Orhan in Feralas.", x = 0.756, y = 0.436 } },
            sourceStep = 6,
            text = "Turn in A Threat in Feralas to Rok Orhan.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "turnin-2981-a-threat-in-feralas",
        },
        {
            complete = { quest = { id = 2975, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-accept-2975-the-ogres-of-feralas",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Rok Orhan", mapID = 1444, offMapText = "Travel to Rok Orhan in Feralas.", x = 0.742, y = 0.446 } },
            sourceStep = 6,
            text = "Accept The Ogres of Feralas from Rok Orhan.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "accept-2975-the-ogres-of-feralas",
        },
        {
            complete = { questObjective = { count = 10, id = 2862, index = 1, text = "Woodpaw Mongrel" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-accept-2862-war-on-the-woodpaw" },
            id = "horde-leveling-era-horde-feralas-objective-2862-1-woodpaw-mongrel",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Woodpaw Mongrel", mapID = 1444, offMapText = "Travel to Woodpaw Mongrel.", x = 0.73, y = 0.398 } },
            sourceStep = 7,
            text = "Collect 10 Woodpaw Gnoll Mane.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "objective-2862-1-woodpaw-mongrel",
        },
        {
            complete = { quest = { id = 2978, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2978, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "Gordunni Scroll" } }, { faction = "Horde" } } },
                    },
                },
            },
            id = "horde-leveling-era-horde-feralas-objective-2978-1-gordunni-scroll",
            kind = "note",
            requiredQuests = {},
            route = { { label = "Gordunni Scroll", mapID = 1444, offMapText = "Travel to Gordunni Scroll.", x = 0.75, y = 0.3515 } },
            text = "Use Gordunni Scroll. Loot the starter item here, then use it to accept the quest.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "objective-2978-1-gordunni-scroll",
        },
        {
            complete = {
                any = { { item = { minCount = 1, name = "Gordunni Scroll" } }, { quest = { id = 2978, state = "activeOrCompleted" } } },
            },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2978, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "Gordunni Scroll" } }, { faction = "Horde" } } },
                    },
                },
            },
            id = "horde-leveling-era-horde-feralas-loot-starter-before-accept-2978-the-gordunni-scroll",
            instructionOnly = true,
            kind = "note",
            referenceQuest = 2978,
            requiredQuests = {},
            text = "Loot Gordunni Scroll from Gordunni Scroll. Keep it for the next pickup.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "loot-starter-before-accept-2978-the-gordunni-scroll",
        },
        {
            complete = { quest = { id = 2978, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2978, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "Gordunni Scroll" } }, { faction = "Horde" } } },
                    },
                },
            },
            id = "horde-leveling-era-horde-feralas-accept-2978-the-gordunni-scroll",
            kind = "accept",
            requiredQuests = {},
            sourceStep = 8,
            text = "Use the Gordunni Scroll to accept The Gordunni Scroll.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "accept-2978-the-gordunni-scroll",
        },
        {
            complete = { questObjective = { count = 12, id = 2987, index = 1 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-accept-2987-gordunni-cobalt" },
            id = "horde-leveling-era-horde-feralas-objective-2987-1-gordunni-cobalt",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Gordunni Cobalt", mapID = 1444, offMapText = "Travel to Gordunni Cobalt.", x = 0.767, y = 0.338 } },
            sourceStep = 9,
            text = "Use Orwin's Shovel beside glowing blue circles at Gordunni Outpost. Open the dirt mounds that appear and collect 12 Gordunni Cobalt.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "objective-2987-1-gordunni-cobalt",
        },
        {
            complete = { questObjective = { count = 5, id = 2975, index = 3, text = "Gordunni Brute" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-accept-2975-the-ogres-of-feralas" },
            id = "horde-leveling-era-horde-feralas-objective-2975-3-gordunni-brute",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Gordunni Brute", mapID = 1444, offMapText = "Travel to Gordunni Brute.", x = 0.767, y = 0.338 } },
            sourceStep = 10,
            text = "Kill 5 Gordunni Brute.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "objective-2975-3-gordunni-brute",
        },
        {
            complete = { questObjective = { count = 10, id = 2975, index = 1, text = "Gordunni Ogre" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-accept-2975-the-ogres-of-feralas" },
            id = "horde-leveling-era-horde-feralas-objective-2975-1-gordunni-ogre",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Gordunni Ogre", mapID = 1444, offMapText = "Travel to Gordunni Ogre.", x = 0.767, y = 0.338 } },
            sourceStep = 10,
            text = "Kill 10 Gordunni Ogre.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "objective-2975-1-gordunni-ogre",
        },
        {
            complete = { questObjective = { count = 10, id = 2975, index = 2, text = "Gordunni Ogre Mage" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-accept-2975-the-ogres-of-feralas" },
            id = "horde-leveling-era-horde-feralas-objective-2975-2-gordunni-ogre-mage",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Gordunni Ogre Mage", mapID = 1444, offMapText = "Travel to Gordunni Ogre Mage.", x = 0.767, y = 0.338 },
            },
            sourceStep = 10,
            text = "Kill 10 Gordunni Ogre Mage.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "objective-2975-2-gordunni-ogre-mage",
        },
        {
            complete = { quest = { id = 2862, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-feralas-accept-2862-war-on-the-woodpaw",
                "horde-leveling-era-horde-feralas-objective-2862-1-woodpaw-mongrel",
            },
            id = "horde-leveling-era-horde-feralas-turnin-2862-war-on-the-woodpaw",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Hadoken Swiftstrider",
                    mapID = 1444,
                    offMapText = "Travel to Hadoken Swiftstrider in Feralas.",
                    x = 0.7491,
                    y = 0.4247,
                },
            },
            sourceStep = 11,
            text = "Turn in War on the Woodpaw to Hadoken Swiftstrider.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "turnin-2862-war-on-the-woodpaw",
        },
        {
            complete = { quest = { id = 2863, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-accept-2863-alpha-strike",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2862 } } },
            route = {
                {
                    label = "Hadoken Swiftstrider",
                    mapID = 1444,
                    offMapText = "Travel to Hadoken Swiftstrider in Feralas.",
                    x = 0.7491,
                    y = 0.4247,
                },
            },
            sourceStep = 11,
            text = "Accept Alpha Strike from Hadoken Swiftstrider.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "accept-2863-alpha-strike",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2863, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2863, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
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
            complete = { quest = { id = 2987, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-feralas-accept-2987-gordunni-cobalt",
                "horde-leveling-era-horde-feralas-objective-2987-1-gordunni-cobalt",
            },
            id = "horde-leveling-era-horde-feralas-turnin-2987-gordunni-cobalt",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Orwin Gizzmick", mapID = 1444, offMapText = "Travel to Orwin Gizzmick in Feralas.", x = 0.757, y = 0.4431 },
            },
            sourceStep = 12,
            text = "Turn in Gordunni Cobalt to Orwin Gizzmick.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "turnin-2987-gordunni-cobalt",
        },
        {
            complete = { quest = { id = 2975, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-feralas-accept-2975-the-ogres-of-feralas",
                "horde-leveling-era-horde-feralas-objective-2975-3-gordunni-brute",
                "horde-leveling-era-horde-feralas-objective-2975-1-gordunni-ogre",
                "horde-leveling-era-horde-feralas-objective-2975-2-gordunni-ogre-mage",
            },
            id = "horde-leveling-era-horde-feralas-turnin-2975-the-ogres-of-feralas",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Rok Orhan", mapID = 1444, offMapText = "Travel to Rok Orhan in Feralas.", x = 0.756, y = 0.436 } },
            sourceStep = 13,
            text = "Turn in The Ogres of Feralas to Rok Orhan.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "turnin-2975-the-ogres-of-feralas",
        },
        {
            complete = { quest = { id = 2980, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-accept-2980-the-ogres-of-feralas",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2975 } } },
            route = { { label = "Rok Orhan", mapID = 1444, offMapText = "Travel to Rok Orhan in Feralas.", x = 0.742, y = 0.446 } },
            sourceStep = 13,
            text = "Accept The Ogres of Feralas from Rok Orhan.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "accept-2980-the-ogres-of-feralas",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2980, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2980, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 2975, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
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
            complete = { quest = { id = 2978, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-accept-2978-the-gordunni-scroll" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2978, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "Gordunni Scroll" } }, { faction = "Horde" } } },
                    },
                },
            },
            id = "horde-leveling-era-horde-feralas-turnin-2978-the-gordunni-scroll",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Rok Orhan", mapID = 1444, offMapText = "Travel to Rok Orhan in Feralas.", x = 0.756, y = 0.436 } },
            sourceStep = 13,
            text = "Turn in The Gordunni Scroll to Rok Orhan.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "turnin-2978-the-gordunni-scroll",
        },
        {
            complete = { quest = { id = 2979, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 2979, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2978, state = "activeOrCompleted" } },
                                                        { all = { { item = { minCount = 1, name = "Gordunni Scroll" } }, { faction = "Horde" } } },
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
                        ["not"] = {
                            any = {
                                { quest = { id = 2979, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 2979, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Horde" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 2978, state = "activeOrCompleted" } },
                                                                { all = { { item = { name = "Gordunni Scroll", minCount = 1 } }, { faction = "Horde" } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-feralas-accept-2979-dark-ceremony",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2978 } } },
            route = { { label = "Rok Orhan", mapID = 1444, offMapText = "Travel to Rok Orhan in Feralas.", x = 0.742, y = 0.446 } },
            sourceStep = 13,
            text = "Accept Dark Ceremony from Rok Orhan.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "accept-2979-dark-ceremony",
        },
        {
            complete = { questObjective = { count = 10, id = 2973, index = 1, text = "Sprite Darter" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-accept-2973-a-new-cloak-s-sheen" },
            id = "horde-leveling-era-horde-feralas-objective-2973-1-sprite-darter",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Sprite Darter", mapID = 1444, offMapText = "Travel to Sprite Darter.", x = 0.694, y = 0.468 } },
            sourceStep = 15,
            text = "Collect 10 Iridescent Sprite Darter Wing.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "objective-2973-1-sprite-darter",
        },
        {
            complete = { questObjective = { count = 5, id = 2863, index = 1, text = "Woodpaw Alpha" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-accept-2863-alpha-strike" },
            id = "horde-leveling-era-horde-feralas-objective-2863-1-woodpaw-alpha",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2862 } } },
            route = { { label = "Woodpaw Alpha", mapID = 1444, offMapText = "Travel to Woodpaw Alpha.", x = 0.686, y = 0.542 } },
            sourceStep = 16,
            text = "Kill 5 Woodpaw Alpha.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "objective-2863-1-woodpaw-alpha",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2863, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2863, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
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
            complete = { quest = { id = 2863, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-feralas-accept-2863-alpha-strike",
                "horde-leveling-era-horde-feralas-objective-2863-1-woodpaw-alpha",
            },
            id = "horde-leveling-era-horde-feralas-turnin-2863-alpha-strike",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2862 } } },
            route = {
                {
                    label = "Hadoken Swiftstrider",
                    mapID = 1444,
                    offMapText = "Travel to Hadoken Swiftstrider in Feralas.",
                    x = 0.7491,
                    y = 0.4246,
                },
            },
            sourceStep = 17,
            text = "Turn in Alpha Strike to Hadoken Swiftstrider.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "turnin-2863-alpha-strike",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2863, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2863, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
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
            complete = { quest = { id = 2902, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-accept-2902-woodpaw-investigation",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2863 } } },
            route = {
                {
                    label = "Hadoken Swiftstrider",
                    mapID = 1444,
                    offMapText = "Travel to Hadoken Swiftstrider in Feralas.",
                    x = 0.7491,
                    y = 0.4246,
                },
            },
            sourceStep = 17,
            text = "Accept Woodpaw Investigation from Hadoken Swiftstrider.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "accept-2902-woodpaw-investigation",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2902, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2902, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2863, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 2973, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-feralas-accept-2973-a-new-cloak-s-sheen",
                "horde-leveling-era-horde-feralas-objective-2973-1-sprite-darter",
            },
            id = "horde-leveling-era-horde-feralas-turnin-2973-a-new-cloak-s-sheen",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Krueg Skullsplitter",
                    mapID = 1444,
                    offMapText = "Travel to Krueg Skullsplitter in Feralas.",
                    x = 0.7594,
                    y = 0.4274,
                },
            },
            sourceStep = 18,
            text = "Turn in A New Cloak's Sheen to Krueg Skullsplitter.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "turnin-2973-a-new-cloak-s-sheen",
        },
        {
            complete = { quest = { id = 2974, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-accept-2974-a-grim-discovery",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2973 } } },
            route = {
                {
                    label = "Krueg Skullsplitter",
                    mapID = 1444,
                    offMapText = "Travel to Krueg Skullsplitter in Feralas.",
                    x = 0.7594,
                    y = 0.4274,
                },
            },
            sourceStep = 18,
            text = "Accept A Grim Discovery from Krueg Skullsplitter.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "accept-2974-a-grim-discovery",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2974, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2974, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 2973, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
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
            complete = { quest = { id = 2902, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-accept-2902-woodpaw-investigation" },
            id = "horde-leveling-era-horde-feralas-turnin-2902-woodpaw-investigation",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2863 } } },
            route = {
                {
                    label = "Woodpaw Investigation",
                    mapID = 1444,
                    offMapText = "Travel to Woodpaw Investigation.",
                    x = 0.7163,
                    y = 0.5592,
                },
            },
            sourceStep = 20,
            text = "Turn in Woodpaw Investigation.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "turnin-2902-woodpaw-investigation",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2902, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2902, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2863, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 2903, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-accept-2903-the-battle-plans",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2902 } } },
            route = {
                { label = "The Battle Plans", mapID = 1444, offMapText = "Travel to The Battle Plans.", x = 0.7163, y = 0.5592 },
            },
            sourceStep = 20,
            text = "Accept The Battle Plans.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "accept-2903-the-battle-plans",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2903, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2903, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2902, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 20, id = 2974, index = 1, text = "Grimtotem Shaman" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-accept-2974-a-grim-discovery" },
            id = "horde-leveling-era-horde-feralas-objective-2974-1-grimtotem-shaman",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2973 } } },
            route = {
                { label = "Grimtotem Shaman", mapID = 1444, offMapText = "Travel to Grimtotem Shaman.", x = 0.674, y = 0.464 },
            },
            sourceStep = 21,
            text = "Collect 20 Grimtotem Horn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "objective-2974-1-grimtotem-shaman",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2974, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2974, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 2973, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
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
            complete = { quest = { id = 2903, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-accept-2903-the-battle-plans" },
            id = "horde-leveling-era-horde-feralas-turnin-2903-the-battle-plans",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2902 } } },
            route = {
                {
                    label = "Hadoken Swiftstrider",
                    mapID = 1444,
                    offMapText = "Travel to Hadoken Swiftstrider in Feralas.",
                    x = 0.7491,
                    y = 0.4247,
                },
            },
            sourceStep = 22,
            text = "Turn in The Battle Plans to Hadoken Swiftstrider.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "turnin-2903-the-battle-plans",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2903, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2903, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2902, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 7730, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-accept-7730-zukk-ash-infestation",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2903 } } },
            route = {
                {
                    label = "Hadoken Swiftstrider",
                    mapID = 1444,
                    offMapText = "Travel to Hadoken Swiftstrider in Feralas.",
                    x = 0.7491,
                    y = 0.4247,
                },
            },
            sourceStep = 22,
            text = "Accept Zukk'ash Infestation from Hadoken Swiftstrider.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "accept-7730-zukk-ash-infestation",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 7730, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 7730, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2903, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 7731, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-accept-7731-stinglasher",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2903 } } },
            route = {
                {
                    label = "Hadoken Swiftstrider",
                    mapID = 1444,
                    offMapText = "Travel to Hadoken Swiftstrider in Feralas.",
                    x = 0.7491,
                    y = 0.4247,
                },
            },
            sourceStep = 22,
            text = "Accept Stinglasher from Hadoken Swiftstrider.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "accept-7731-stinglasher",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 7731, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 7731, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2903, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 2974, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-feralas-accept-2974-a-grim-discovery",
                "horde-leveling-era-horde-feralas-objective-2974-1-grimtotem-shaman",
            },
            id = "horde-leveling-era-horde-feralas-turnin-2974-a-grim-discovery",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2973 } } },
            route = {
                {
                    label = "Krueg Skullsplitter",
                    mapID = 1444,
                    offMapText = "Travel to Krueg Skullsplitter in Feralas.",
                    x = 0.7594,
                    y = 0.4274,
                },
            },
            sourceStep = 23,
            text = "Turn in A Grim Discovery to Krueg Skullsplitter.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "turnin-2974-a-grim-discovery",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2974, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2974, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 2973, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
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
            complete = { quest = { id = 2976, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 37 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-accept-2976-a-grim-discovery",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2974 } } },
            route = {
                {
                    label = "Krueg Skullsplitter",
                    mapID = 1444,
                    offMapText = "Travel to Krueg Skullsplitter in Feralas.",
                    x = 0.7594,
                    y = 0.4274,
                },
            },
            sourceStep = 23,
            text = "Accept A Grim Discovery from Krueg Skullsplitter.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "accept-2976-a-grim-discovery",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2976, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2976, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2974, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 2973, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 1, id = 7731, index = 1, text = "Stinglasher" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-accept-7731-stinglasher" },
            id = "horde-leveling-era-horde-feralas-objective-7731-1-stinglasher",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2903 } } },
            route = { { label = "Stinglasher", mapID = 1444, offMapText = "Travel to Stinglasher.", x = 0.756, y = 0.616 } },
            sourceStep = 28,
            text = "Collect 1 Stinglasher's Glands.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "objective-7731-1-stinglasher",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 7731, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 7731, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2903, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 20, id = 7730, index = 1, text = "Zukk'ash Carapace" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-accept-7730-zukk-ash-infestation" },
            id = "horde-leveling-era-horde-feralas-objective-7730-1-zukk-ash-carapace",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2903 } } },
            route = {
                { label = "Zukk'ash Carapace", mapID = 1444, offMapText = "Travel to Zukk'ash Carapace.", x = 0.754, y = 0.612 },
            },
            sourceStep = 29,
            text = "Collect 20 Zukk'ash Carapace.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "objective-7730-1-zukk-ash-carapace",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 7730, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 7730, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2903, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 5, id = 2980, index = 3, text = "Gordunni Mauler" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-accept-2980-the-ogres-of-feralas" },
            id = "horde-leveling-era-horde-feralas-objective-2980-3-gordunni-mauler",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2975 } } },
            route = { { label = "Gordunni Mauler", mapID = 1444, offMapText = "Travel to Gordunni Mauler.", x = 0.618, y = 0.544 } },
            sourceStep = 31,
            text = "Kill 5 Gordunni Mauler.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "objective-2980-3-gordunni-mauler",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2980, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2980, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 2975, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
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
            complete = { questObjective = { count = 1, id = 2979, index = 1, text = "Gordunni Mage-Lord" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-accept-2979-dark-ceremony" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 2979, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2978, state = "activeOrCompleted" } },
                                                        { all = { { item = { minCount = 1, name = "Gordunni Scroll" } }, { faction = "Horde" } } },
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
                        ["not"] = {
                            any = {
                                { quest = { id = 2979, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 2979, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Horde" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 2978, state = "activeOrCompleted" } },
                                                                { all = { { item = { name = "Gordunni Scroll", minCount = 1 } }, { faction = "Horde" } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-feralas-objective-2979-1-gordunni-mage-lord",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2978 } } },
            route = {
                { label = "Gordunni Mage-Lord", mapID = 1444, offMapText = "Travel to Gordunni Mage-Lord.", x = 0.584, y = 0.676 },
            },
            sourceStep = 35,
            text = "Collect 1 Gordunni Orb.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "objective-2979-1-gordunni-mage-lord",
        },
        {
            complete = { questObjective = { count = 10, id = 2980, index = 1, text = "Gordunni Shaman" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-accept-2980-the-ogres-of-feralas" },
            id = "horde-leveling-era-horde-feralas-objective-2980-1-gordunni-shaman",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2975 } } },
            route = { { label = "Gordunni Shaman", mapID = 1444, offMapText = "Travel to Gordunni Shaman.", x = 0.604, y = 0.68 } },
            sourceStep = 36,
            text = "Kill 10 Gordunni Shaman.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "objective-2980-1-gordunni-shaman",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2980, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2980, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 2975, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
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
            complete = { questObjective = { count = 10, id = 2980, index = 2, text = "Gordunni Warlock" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-accept-2980-the-ogres-of-feralas" },
            id = "horde-leveling-era-horde-feralas-objective-2980-2-gordunni-warlock",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2975 } } },
            route = {
                { label = "Gordunni Warlock", mapID = 1444, offMapText = "Travel to Gordunni Warlock.", x = 0.582, y = 0.664 },
            },
            sourceStep = 37,
            text = "Kill 10 Gordunni Warlock.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "objective-2980-2-gordunni-warlock",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2980, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2980, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 2975, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
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
            complete = { questObjective = { count = 10, id = 2822, index = 1, text = "Feral Scar Yeti" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-accept-2822-the-mark-of-quality" },
            id = "horde-leveling-era-horde-feralas-objective-2822-1-feral-scar-yeti",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Feral Scar Yeti", mapID = 1444, offMapText = "Travel to Feral Scar Yeti.", x = 0.554, y = 0.574 } },
            sourceStep = 38,
            text = "Collect 10 Thick Yeti Hide.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "objective-2822-1-feral-scar-yeti",
        },
        {
            complete = {
                any = {
                    { item = { minCount = 1, name = "OOX-22/FE Distress Beacon" } },
                    { quest = { id = 2766, state = "activeOrCompleted" } },
                },
            },
            conditions = { faction = "Horde" },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2766, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "OOX-22/FE Distress Beacon" } } } },
                    },
                },
            },
            id = "horde-leveling-era-horde-feralas-loot-starter-before-accept-2766-find-oox-22-fe",
            instructionOnly = true,
            kind = "note",
            referenceQuest = 2766,
            requiredQuests = {},
            text = "If an OOX-22/FE Distress Beacon drops while questing in Feralas, keep it for the optional rescue chain.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "loot-starter-before-accept-2766-find-oox-22-fe",
        },
        {
            checkpointQuest = 2766,
            complete = { level = { min = 40 } },
            conditions = { faction = "Horde" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2766, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "OOX-22/FE Distress Beacon" } } } },
                    },
                },
            },
            id = "horde-leveling-era-horde-feralas-level-before-accept-2766-find-oox-22-fe",
            kind = "note",
            requiredLevel = 40,
            requiredQuests = {},
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "level-before-accept-2766-find-oox-22-fe",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 2766, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2766, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "OOX-22/FE Distress Beacon" } } } },
                    },
                },
            },
            id = "horde-leveling-era-horde-feralas-accept-2766-find-oox-22-fe",
            kind = "accept",
            requiredQuests = {},
            sourceStep = 39,
            text = "Use the OOX-22/FE Distress Beacon to accept Find OOX-22/FE!.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "accept-2766-find-oox-22-fe",
        },
        {
            complete = { quest = { id = 2766, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-accept-2766-find-oox-22-fe" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2766, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "OOX-22/FE Distress Beacon" } } } },
                    },
                },
            },
            id = "horde-leveling-era-horde-feralas-turnin-2766-find-oox-22-fe",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Homing Robot OOX-22/FE",
                    mapID = 1444,
                    offMapText = "Travel to Homing Robot OOX-22/FE in Feralas.",
                    x = 0.5335,
                    y = 0.557,
                },
            },
            sourceStep = 40,
            text = "Turn in Find OOX-22/FE! to Homing Robot OOX-22/FE.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "turnin-2766-find-oox-22-fe",
        },
        {
            complete = { quest = { id = 3121, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-accept-3121-a-strange-request",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Witch Doctor Uzer'i",
                    mapID = 1444,
                    offMapText = "Travel to Witch Doctor Uzer'i in Feralas.",
                    x = 0.7442,
                    y = 0.4336,
                },
            },
            sourceStep = 42,
            text = "Accept A Strange Request from Witch Doctor Uzer'i.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "accept-3121-a-strange-request",
        },
        {
            complete = { quest = { id = 2822, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-feralas-accept-2822-the-mark-of-quality",
                "horde-leveling-era-horde-feralas-objective-2822-1-feral-scar-yeti",
            },
            id = "horde-leveling-era-horde-feralas-turnin-2822-the-mark-of-quality",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Jangdor Swiftstrider",
                    mapID = 1444,
                    offMapText = "Travel to Jangdor Swiftstrider in Feralas.",
                    x = 0.7443,
                    y = 0.4291,
                },
            },
            sourceStep = 43,
            text = "Turn in The Mark of Quality to Jangdor Swiftstrider.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "turnin-2822-the-mark-of-quality",
        },
        {
            complete = { quest = { id = 7730, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-feralas-accept-7730-zukk-ash-infestation",
                "horde-leveling-era-horde-feralas-objective-7730-1-zukk-ash-carapace",
            },
            id = "horde-leveling-era-horde-feralas-turnin-7730-zukk-ash-infestation",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2903 } } },
            route = {
                {
                    label = "Hadoken Swiftstrider",
                    mapID = 1444,
                    offMapText = "Travel to Hadoken Swiftstrider in Feralas.",
                    x = 0.7491,
                    y = 0.4247,
                },
            },
            sourceStep = 44,
            text = "Turn in Zukk'ash Infestation to Hadoken Swiftstrider.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "turnin-7730-zukk-ash-infestation",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 7730, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 7730, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2903, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 7731, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-feralas-accept-7731-stinglasher",
                "horde-leveling-era-horde-feralas-objective-7731-1-stinglasher",
            },
            id = "horde-leveling-era-horde-feralas-turnin-7731-stinglasher",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2903 } } },
            route = {
                {
                    label = "Hadoken Swiftstrider",
                    mapID = 1444,
                    offMapText = "Travel to Hadoken Swiftstrider in Feralas.",
                    x = 0.7491,
                    y = 0.4247,
                },
            },
            sourceStep = 44,
            text = "Turn in Stinglasher to Hadoken Swiftstrider.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "turnin-7731-stinglasher",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 7731, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 7731, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2903, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 7732, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-accept-7732-zukk-ash-report",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "all", quests = { 7730, 7731 } } },
            route = {
                {
                    label = "Hadoken Swiftstrider",
                    mapID = 1444,
                    offMapText = "Travel to Hadoken Swiftstrider in Feralas.",
                    x = 0.7491,
                    y = 0.4247,
                },
            },
            sourceStep = 44,
            text = "Accept Zukk'ash Report from Hadoken Swiftstrider.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "accept-7732-zukk-ash-report",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 7732, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 7732, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        { quest = { id = 7730, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2903, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
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
                                                    any = {
                                                        { quest = { id = 7731, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2903, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 2980, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-feralas-accept-2980-the-ogres-of-feralas",
                "horde-leveling-era-horde-feralas-objective-2980-3-gordunni-mauler",
                "horde-leveling-era-horde-feralas-objective-2980-1-gordunni-shaman",
                "horde-leveling-era-horde-feralas-objective-2980-2-gordunni-warlock",
            },
            id = "horde-leveling-era-horde-feralas-turnin-2980-the-ogres-of-feralas",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2975 } } },
            route = { { label = "Rok Orhan", mapID = 1444, offMapText = "Travel to Rok Orhan in Feralas.", x = 0.756, y = 0.436 } },
            sourceStep = 45,
            text = "Turn in The Ogres of Feralas to Rok Orhan.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "turnin-2980-the-ogres-of-feralas",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2980, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2980, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 2975, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
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
            complete = { quest = { id = 2979, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-feralas-accept-2979-dark-ceremony",
                "horde-leveling-era-horde-feralas-objective-2979-1-gordunni-mage-lord",
            },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 2979, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2978, state = "activeOrCompleted" } },
                                                        { all = { { item = { minCount = 1, name = "Gordunni Scroll" } }, { faction = "Horde" } } },
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
                        ["not"] = {
                            any = {
                                { quest = { id = 2979, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 2979, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Horde" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 2978, state = "activeOrCompleted" } },
                                                                { all = { { item = { name = "Gordunni Scroll", minCount = 1 } }, { faction = "Horde" } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-feralas-turnin-2979-dark-ceremony",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2978 } } },
            route = { { label = "Rok Orhan", mapID = 1444, offMapText = "Travel to Rok Orhan in Feralas.", x = 0.756, y = 0.436 } },
            sourceStep = 45,
            text = "Turn in Dark Ceremony to Rok Orhan.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "turnin-2979-dark-ceremony",
        },
        {
            complete = { quest = { id = 3002, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 3002, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2979, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2978, state = "activeOrCompleted" } },
                                                                                { all = { { item = { minCount = 1, name = "Gordunni Scroll" } }, { faction = "Horde" } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
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
                        ["not"] = {
                            any = {
                                { quest = { id = 3002, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 3002, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Horde" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 2979, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 2978, state = "activeOrCompleted" } },
                                                                                        { all = { { item = { name = "Gordunni Scroll", minCount = 1 } }, { faction = "Horde" } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-feralas-accept-3002-the-gordunni-orb",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2979 } } },
            route = { { label = "Rok Orhan", mapID = 1444, offMapText = "Travel to Rok Orhan in Feralas.", x = 0.742, y = 0.446 } },
            sourceStep = 45,
            text = "Accept The Gordunni Orb from Rok Orhan.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "accept-3002-the-gordunni-orb",
        },
        {
            complete = { quest = { id = 3002, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-accept-3002-the-gordunni-orb" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 3002, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2979, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2978, state = "activeOrCompleted" } },
                                                                                { all = { { item = { minCount = 1, name = "Gordunni Scroll" } }, { faction = "Horde" } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
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
                        ["not"] = {
                            any = {
                                { quest = { id = 3002, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 3002, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Horde" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 2979, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 2978, state = "activeOrCompleted" } },
                                                                                        { all = { { item = { name = "Gordunni Scroll", minCount = 1 } }, { faction = "Horde" } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-feralas-turnin-3002-the-gordunni-orb",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2979 } } },
            route = {
                { label = "Uthel'nay", mapID = 1454, offMapText = "Travel to Uthel'nay in Orgrimmar.", x = 0.3916, y = 0.8624 },
            },
            sourceStep = 51,
            text = "Turn in The Gordunni Orb to Uthel'nay.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "turnin-3002-the-gordunni-orb",
        },
        {
            complete = { quest = { id = 3121, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-accept-3121-a-strange-request" },
            id = "horde-leveling-era-horde-feralas-turnin-3121-a-strange-request",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Neeru Fireblade",
                    mapID = 1454,
                    offMapText = "Travel to Neeru Fireblade in Orgrimmar.",
                    x = 0.4949,
                    y = 0.5059,
                },
            },
            sourceStep = 57,
            text = "Turn in A Strange Request to Neeru Fireblade.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "turnin-3121-a-strange-request",
        },
        {
            complete = { quest = { id = 3122, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-accept-3122-return-to-witch-doctor-uzer-i",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3121 } } },
            route = {
                {
                    label = "Neeru Fireblade",
                    mapID = 1454,
                    offMapText = "Travel to Neeru Fireblade in Orgrimmar.",
                    x = 0.4949,
                    y = 0.5059,
                },
            },
            sourceStep = 57,
            text = "Accept Return to Witch Doctor Uzer'i from Neeru Fireblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "accept-3122-return-to-witch-doctor-uzer-i",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3122, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3122, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 3121, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
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
            complete = { quest = { id = 2976, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 37 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-accept-2976-a-grim-discovery" },
            id = "horde-leveling-era-horde-feralas-turnin-2976-a-grim-discovery",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2974 } } },
            route = {
                {
                    label = "Belgrom Rockmaul",
                    mapID = 1454,
                    offMapText = "Travel to Belgrom Rockmaul in Orgrimmar.",
                    x = 0.7523,
                    y = 0.3424,
                },
            },
            sourceStep = 58,
            text = "Turn in A Grim Discovery to Belgrom Rockmaul.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "turnin-2976-a-grim-discovery",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2976, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2976, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2974, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 2973, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 7732, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 39 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-accept-7732-zukk-ash-report" },
            id = "horde-leveling-era-horde-feralas-turnin-7732-zukk-ash-report",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "all", quests = { 7730, 7731 } } },
            route = {
                {
                    label = "Zilzibin Drumlore",
                    mapID = 1454,
                    offMapText = "Travel to Zilzibin Drumlore in Orgrimmar.",
                    x = 0.5628,
                    y = 0.4667,
                },
            },
            sourceStep = 62,
            text = "Turn in Zukk'ash Report to Zilzibin Drumlore.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "turnin-7732-zukk-ash-report",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 7732, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 7732, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        { quest = { id = 7730, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2903, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
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
                                                    any = {
                                                        { quest = { id = 7731, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 2903, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 2902, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 2863, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 2862, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3122, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-swamp-of-sorrows-turnin-3122-return-to-witch-doctor-uzer-i",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3121 } } },
            route = {
                {
                    label = "Witch Doctor Uzer'i",
                    mapID = 1444,
                    offMapText = "Travel to Witch Doctor Uzer'i in Feralas.",
                    x = 0.7442,
                    y = 0.4336,
                },
            },
            sourceStep = 37,
            text = "Turn in Return to Witch Doctor Uzer'i to Witch Doctor Uzer'i.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-swamp-of-sorrows",
            sourceActionID = "turnin-3122-return-to-witch-doctor-uzer-i",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3122, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3122, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 3121, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
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
            complete = { quest = { id = 3123, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-swamp-of-sorrows-accept-3123-testing-the-vessel",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3122 } } },
            route = {
                {
                    label = "Witch Doctor Uzer'i",
                    mapID = 1444,
                    offMapText = "Travel to Witch Doctor Uzer'i in Feralas.",
                    x = 0.7442,
                    y = 0.4336,
                },
            },
            sourceStep = 38,
            text = "Accept Testing the Vessel from Witch Doctor Uzer'i.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-swamp-of-sorrows",
            sourceActionID = "accept-3123-testing-the-vessel",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3123, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3123, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3122, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 3121, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 10, id = 3123, index = 1, text = "Wildkin Muisek" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-hinterlands-objective-3123-1-wildkin-muisek",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3122 } } },
            route = { { label = "Wildkin Muisek", mapID = 1425, offMapText = "Travel to Wildkin Muisek.", x = 0.574, y = 0.504 } },
            sourceStep = 30,
            text = "Collect 10 Wildkin Muisek.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "objective-3123-1-wildkin-muisek",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3123, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3123, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3122, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 3121, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            id = "visit-entry-leveling-era-horde-feralas-and-ungoro-crater",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            text = "Reach level 49 before the Feralas & Un'Goro Crater visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 49 } },
            requiredLevel = 49,
        },
        {
            checkpointQuest = 3062,
            complete = { level = { min = 45 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-level-before-accept-3062-dark-heart",
            kind = "note",
            requiredLevel = 45,
            requiredQuests = {},
            text = "Reach level 45 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "level-before-accept-3062-dark-heart",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 3062, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-3062-dark-heart",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Talo Thornhoof", mapID = 1444, offMapText = "Travel to Talo Thornhoof in Feralas.", x = 0.7618, y = 0.4383 },
            },
            sourceStep = 3,
            text = "Accept Dark Heart from Talo Thornhoof.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "accept-3062-dark-heart",
        },
        {
            complete = { quest = { id = 3063, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-3063-vengeance-on-the-northspring",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Talo Thornhoof", mapID = 1444, offMapText = "Travel to Talo Thornhoof in Feralas.", x = 0.7618, y = 0.4383 },
            },
            sourceStep = 3,
            text = "Accept Vengeance on the Northspring from Talo Thornhoof.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "accept-3063-vengeance-on-the-northspring",
        },
        {
            complete = { quest = { id = 7734, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-7734-improved-quality",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2822 } } },
            route = {
                {
                    label = "Jangdor Swiftstrider",
                    mapID = 1444,
                    offMapText = "Travel to Jangdor Swiftstrider in Feralas.",
                    x = 0.7443,
                    y = 0.4291,
                },
            },
            sourceStep = 4,
            text = "Accept Improved Quality from Jangdor Swiftstrider.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "accept-7734-improved-quality",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 7734, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 7734, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 2822, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
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
            complete = { quest = { id = 3123, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-3123-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3122 } } },
            route = { { label = "Wildkin Muisek", mapID = 1425, offMapText = "Travel to Wildkin Muisek.", x = 0.574, y = 0.504 } },
            sourceStep = 5,
            text = "For Testing the Vessel: Travel to the Hinterlands, and locate the Wildkin. Kill 10, and use the Muisek Vessel to shrink and capture the fallen Wildkin.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "objective-3123-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3123, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3123, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3122, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 3121, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3123, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-3123-quest-work",
                "horde-leveling-era-horde-the-hinterlands-objective-3123-1-wildkin-muisek",
            },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-turnin-3123-testing-the-vessel",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3122 } } },
            route = {
                {
                    label = "Witch Doctor Uzer'i",
                    mapID = 1444,
                    offMapText = "Travel to Witch Doctor Uzer'i in Feralas.",
                    x = 0.7442,
                    y = 0.4336,
                },
            },
            sourceStep = 5,
            text = "Turn in Testing the Vessel to Witch Doctor Uzer'i.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "turnin-3123-testing-the-vessel",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3123, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3123, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3122, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 3121, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3124, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-3124-hippogryph-muisek",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3123 } } },
            route = {
                {
                    label = "Witch Doctor Uzer'i",
                    mapID = 1444,
                    offMapText = "Travel to Witch Doctor Uzer'i in Feralas.",
                    x = 0.7442,
                    y = 0.4336,
                },
            },
            sourceStep = 5,
            text = "Accept Hippogryph Muisek from Witch Doctor Uzer'i.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "accept-3124-hippogryph-muisek",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3124, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3124, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3123, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3122, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 3121, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3128, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-3128-natural-materials",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3122 } } },
            route = {
                {
                    label = "Witch Doctor Uzer'i",
                    mapID = 1444,
                    offMapText = "Travel to Witch Doctor Uzer'i in Feralas.",
                    x = 0.7442,
                    y = 0.4336,
                },
            },
            sourceStep = 5,
            text = "Accept Natural Materials from Witch Doctor Uzer'i.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "accept-3128-natural-materials",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3128, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3128, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3122, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 3121, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 10, id = 3124, index = 1, text = "Frayfeather Patriarch" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-3124-hippogryph-muisek" },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-3124-1-frayfeather-patriarch",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3123 } } },
            route = {
                { label = "Frayfeather Patriarch", mapID = 1444, offMapText = "Travel to Frayfeather Patriarch.", x = 0.574, y = 0.624 },
            },
            sourceStep = 6,
            text = "Collect 10 Hippogryph Muisek.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "objective-3124-1-frayfeather-patriarch",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3124, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3124, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3123, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3122, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 3121, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 20, id = 3128, index = 3, text = "Resilient Sinew" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-3128-natural-materials" },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-3128-3-resilient-sinew",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3122 } } },
            route = { { label = "Resilient Sinew", mapID = 1444, offMapText = "Travel to Resilient Sinew.", x = 0.574, y = 0.624 } },
            sourceStep = 6,
            text = "Collect 20 Resilient Sinew.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "objective-3128-3-resilient-sinew",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3128, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3128, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3122, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 3121, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 40, id = 3128, index = 4, text = "Metallic Fragments" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-3128-natural-materials" },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-3128-4-metallic-fragments",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3122 } } },
            route = {
                { label = "Metallic Fragments", mapID = 1444, offMapText = "Travel to Metallic Fragments.", x = 0.574, y = 0.624 },
            },
            sourceStep = 6,
            text = "Collect 40 Metallic Fragments.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "objective-3128-4-metallic-fragments",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3128, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3128, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3122, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 3121, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3124, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-3124-hippogryph-muisek",
                "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-3124-1-frayfeather-patriarch",
            },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-turnin-3124-hippogryph-muisek",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3123 } } },
            route = {
                {
                    label = "Witch Doctor Uzer'i",
                    mapID = 1444,
                    offMapText = "Travel to Witch Doctor Uzer'i in Feralas.",
                    x = 0.7442,
                    y = 0.4336,
                },
            },
            sourceStep = 7,
            text = "Turn in Hippogryph Muisek to Witch Doctor Uzer'i.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "turnin-3124-hippogryph-muisek",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3124, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3124, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3123, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3122, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 3121, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3125, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-3125-faerie-dragon-muisek",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3124 } } },
            route = {
                {
                    label = "Witch Doctor Uzer'i",
                    mapID = 1444,
                    offMapText = "Travel to Witch Doctor Uzer'i in Feralas.",
                    x = 0.7442,
                    y = 0.4336,
                },
            },
            sourceStep = 7,
            text = "Accept Faerie Dragon Muisek from Witch Doctor Uzer'i.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "accept-3125-faerie-dragon-muisek",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3125, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3125, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3124, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3123, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3122, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 3121, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 8, id = 3125, index = 1, text = "Sprite Darter" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-3125-faerie-dragon-muisek" },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-3125-1-sprite-darter",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3124 } } },
            route = { { label = "Sprite Darter", mapID = 1444, offMapText = "Travel to Sprite Darter.", x = 0.694, y = 0.468 } },
            sourceStep = 8,
            text = "Collect 8 Faerie Dragon Muisek.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "objective-3125-1-sprite-darter",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3125, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3125, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3124, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3123, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3122, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 3121, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 6, id = 3128, index = 2, text = "Encrusted Minerals" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-3128-natural-materials" },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-3128-2-encrusted-minerals",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3122 } } },
            route = {
                { label = "Encrusted Minerals", mapID = 1444, offMapText = "Travel to Encrusted Minerals.", x = 0.694, y = 0.468 },
            },
            sourceStep = 8,
            text = "Collect 6 Encrusted Minerals.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "objective-3128-2-encrusted-minerals",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3128, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3128, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3122, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 3121, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3125, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-3125-faerie-dragon-muisek",
                "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-3125-1-sprite-darter",
            },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-turnin-3125-faerie-dragon-muisek",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3124 } } },
            route = {
                {
                    label = "Witch Doctor Uzer'i",
                    mapID = 1444,
                    offMapText = "Travel to Witch Doctor Uzer'i in Feralas.",
                    x = 0.7442,
                    y = 0.4336,
                },
            },
            sourceStep = 9,
            text = "Turn in Faerie Dragon Muisek to Witch Doctor Uzer'i.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "turnin-3125-faerie-dragon-muisek",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3125, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3125, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3124, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3123, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3122, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 3121, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3126, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-3126-treant-muisek",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3125 } } },
            route = {
                {
                    label = "Witch Doctor Uzer'i",
                    mapID = 1444,
                    offMapText = "Travel to Witch Doctor Uzer'i in Feralas.",
                    x = 0.7442,
                    y = 0.4336,
                },
            },
            sourceStep = 9,
            text = "Accept Treant Muisek from Witch Doctor Uzer'i.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "accept-3126-treant-muisek",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3126, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3126, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3125, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3124, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3123, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3122, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 3121, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 3, id = 3126, index = 1, text = "Wandering Forest Walker" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-3126-treant-muisek" },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-3126-1-wandering-forest-walker",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3125 } } },
            sourceStep = 10,
            text = "Collect 3 Treant Muisek.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "objective-3126-1-wandering-forest-walker",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3126, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3126, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3125, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3124, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3123, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3122, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 3121, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { questObjective = { count = 2, id = 3128, index = 1, text = "Splintered Log" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-3128-natural-materials" },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-3128-1-splintered-log",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3122 } } },
            sourceStep = 10,
            text = "Collect 2 Splintered Log.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "objective-3128-1-splintered-log",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3128, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3128, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3122, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 3121, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3126, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-3126-treant-muisek",
                "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-3126-1-wandering-forest-walker",
            },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-turnin-3126-treant-muisek",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3125 } } },
            route = {
                {
                    label = "Witch Doctor Uzer'i",
                    mapID = 1444,
                    offMapText = "Travel to Witch Doctor Uzer'i in Feralas.",
                    x = 0.7442,
                    y = 0.4336,
                },
            },
            sourceStep = 11,
            text = "Turn in Treant Muisek to Witch Doctor Uzer'i.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "turnin-3126-treant-muisek",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3126, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3126, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3125, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3124, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3123, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3122, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 3121, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3127, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-3127-mountain-giant-muisek",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3126 } } },
            route = {
                {
                    label = "Witch Doctor Uzer'i",
                    mapID = 1444,
                    offMapText = "Travel to Witch Doctor Uzer'i in Feralas.",
                    x = 0.7442,
                    y = 0.4336,
                },
            },
            sourceStep = 11,
            text = "Accept Mountain Giant Muisek from Witch Doctor Uzer'i.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "accept-3127-mountain-giant-muisek",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3127, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3127, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3126, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3125, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3124, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3123, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3122, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 3121, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3128, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-3128-natural-materials",
                "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-3128-3-resilient-sinew",
                "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-3128-4-metallic-fragments",
                "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-3128-2-encrusted-minerals",
                "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-3128-1-splintered-log",
            },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-turnin-3128-natural-materials",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3122 } } },
            route = {
                {
                    label = "Witch Doctor Uzer'i",
                    mapID = 1444,
                    offMapText = "Travel to Witch Doctor Uzer'i in Feralas.",
                    x = 0.7442,
                    y = 0.4336,
                },
            },
            sourceStep = 11,
            text = "Turn in Natural Materials to Witch Doctor Uzer'i.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "turnin-3128-natural-materials",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3128, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3128, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3122, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 3121, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            checkpointQuest = 7003,
            complete = { level = { min = 45 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-level-before-accept-7003-zapped-giants",
            kind = "note",
            requiredLevel = 45,
            requiredQuests = {},
            text = "Reach level 45 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "level-before-accept-7003-zapped-giants",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 7003, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-7003-zapped-giants",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Zorbin Fandazzle",
                    mapID = 1444,
                    offMapText = "Travel to Zorbin Fandazzle in Feralas.",
                    x = 0.4481,
                    y = 0.4342,
                },
            },
            sourceStep = 12,
            text = "Accept Zapped Giants from Zorbin Fandazzle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "accept-7003-zapped-giants",
        },
        {
            complete = { quest = { id = 7721, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-7721-fuel-for-the-zapping",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Zorbin Fandazzle",
                    mapID = 1444,
                    offMapText = "Travel to Zorbin Fandazzle in Feralas.",
                    x = 0.4481,
                    y = 0.4342,
                },
            },
            sourceStep = 12,
            text = "Accept Fuel for the Zapping from Zorbin Fandazzle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "accept-7721-fuel-for-the-zapping",
        },
        {
            complete = { questObjective = { count = 15, id = 7003, index = 1, text = "Zorbin's Ultra-Shrinker" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-7003-zapped-giants" },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-7003-1-zorbin-s-ultra-shrinker",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Zorbin's Ultra-Shrinker",
                    mapID = 1444,
                    offMapText = "Travel to Zorbin's Ultra-Shrinker.",
                    x = 0.444,
                    y = 0.498,
                },
            },
            sourceStep = 13,
            text = "Use the Ultra-Shrinker on giants along the coast, then kill them and collect 15 Miniaturization Residues.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "objective-7003-1-zorbin-s-ultra-shrinker",
        },
        {
            complete = { questObjective = { count = 10, id = 7721, index = 1, text = "Water Elemental Core" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-7721-fuel-for-the-zapping" },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-7721-1-water-elemental-core",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Water Elemental Core", mapID = 1444, offMapText = "Travel to Water Elemental Core.", x = 0.442, y = 0.506 },
            },
            sourceStep = 14,
            text = "Collect 10 Water Elemental Core.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "objective-7721-1-water-elemental-core",
        },
        {
            complete = { quest = { id = 7003, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {
                "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-7003-zapped-giants",
                "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-7003-1-zorbin-s-ultra-shrinker",
            },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-turnin-7003-zapped-giants",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Zorbin Fandazzle",
                    mapID = 1444,
                    offMapText = "Travel to Zorbin Fandazzle in Feralas.",
                    x = 0.4481,
                    y = 0.4342,
                },
            },
            sourceStep = 15,
            text = "Turn in Zapped Giants to Zorbin Fandazzle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "turnin-7003-zapped-giants",
        },
        {
            complete = { quest = { id = 7721, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {
                "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-7721-fuel-for-the-zapping",
                "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-7721-1-water-elemental-core",
            },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-turnin-7721-fuel-for-the-zapping",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Zorbin Fandazzle",
                    mapID = 1444,
                    offMapText = "Travel to Zorbin Fandazzle in Feralas.",
                    x = 0.4481,
                    y = 0.4342,
                },
            },
            sourceStep = 15,
            text = "Turn in Fuel for the Zapping to Zorbin Fandazzle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "turnin-7721-fuel-for-the-zapping",
        },
        {
            complete = {
                any = { { item = { minCount = 1, name = "Perfect Yeti Hide" } }, { quest = { id = 7738, state = "activeOrCompleted" } } },
            },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 7738, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { item = { minCount = 1, name = "Perfect Yeti Hide" } },
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 2822, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 7738, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 7738, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { item = { name = "Perfect Yeti Hide", minCount = 1 } },
                                                { faction = "Horde" },
                                                {
                                                    any = { { any = { { quest = { id = 2822, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-loot-starter-before-accept-7738-perfect-yeti-hide",
            instructionOnly = true,
            kind = "note",
            referenceQuest = 7738,
            requiredQuests = {},
            text = "Loot Perfect Yeti Hide from Ferocious Rage Scar. Keep it for the next pickup.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "loot-starter-before-accept-7738-perfect-yeti-hide",
        },
        {
            complete = { quest = { id = 7738, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 7738, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { item = { minCount = 1, name = "Perfect Yeti Hide" } },
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 2822, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 7738, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 7738, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { item = { name = "Perfect Yeti Hide", minCount = 1 } },
                                                { faction = "Horde" },
                                                {
                                                    any = { { any = { { quest = { id = 2822, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-7738-perfect-yeti-hide",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2822 } } },
            sourceStep = 18,
            text = "Use the Perfect Yeti Hide to accept Perfect Yeti Hide.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "accept-7738-perfect-yeti-hide",
        },
        {
            complete = { questObjective = { count = 10, id = 7734, index = 1, text = "Rage Scar Yeti Hide" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-7734-improved-quality" },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-7734-1-rage-scar-yeti-hide",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2822 } } },
            route = {
                { label = "Rage Scar Yeti Hide", mapID = 1444, offMapText = "Travel to Rage Scar Yeti Hide.", x = 0.514, y = 0.324 },
            },
            sourceStep = 19,
            text = "Collect 10 Rage Scar Yeti Hide.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "objective-7734-1-rage-scar-yeti-hide",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 7734, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 7734, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 2822, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
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
            complete = { questObjective = { count = 7, id = 3127, index = 1, text = "Zorbin's Ultra-Shrinker" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-3127-mountain-giant-muisek" },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-3127-1-zorbin-s-ultra-shrinker",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3126 } } },
            route = {
                { label = "Mountain Giant Muisek", mapID = 1444, offMapText = "Travel to Mountain Giant Muisek.", x = 0.402, y = 0.258 },
            },
            sourceStep = 20,
            text = "Collect 7 Mountain Giant Muisek.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "objective-3127-1-zorbin-s-ultra-shrinker",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3127, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3127, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3126, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3125, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3124, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3123, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3122, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 3121, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            checkpointQuest = 3062,
            complete = {
                any = {
                    { all = { { item = { minCount = 1, name = "Horn of Hatetalon" } } } },
                    { quest = { id = 3062, state = "complete" } },
                },
            },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-3062-dark-heart" },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-3062-1-northspring-harpy",
            instructionOnly = true,
            kind = "note",
            rememberPreparation = 3062,
            requiredQuests = {},
            route = {
                { label = "Northspring harpies", mapID = 1444, offMapText = "Travel to Northspring harpies.", x = 0.4, y = 0.152 },
            },
            sourceInstructionIndex = 1,
            sourceInstructionStep = 23,
            text = "Kill Northspring harpies in northern Feralas and loot the Horn of Hatetalon.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "objective-3062-1-northspring-harpy",
        },
        {
            complete = { questObjective = { count = 4, id = 3063, index = 1, text = "Northspring Harpy" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-3063-vengeance-on-the-northspring" },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-3063-1-northspring-harpy",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Northspring Harpy", mapID = 1444, offMapText = "Travel to Northspring Harpy.", x = 0.4, y = 0.152 },
            },
            sourceStep = 24,
            text = "Kill 4 Northspring Harpy.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "objective-3063-1-northspring-harpy",
        },
        {
            complete = { questObjective = { count = 1, id = 3062, index = 1 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-3062-dark-heart" },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-3062-1-horn-of-hatetalon",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Edana Hatetalon", mapID = 1444, offMapText = "Travel to Edana Hatetalon.", x = 0.4055, y = 0.0859 },
            },
            text = "Use the Horn of Hatetalon at the northern ruins to summon Edana Hatetalon. Defeat her and collect her Dark Heart. Bring a group if needed.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "objective-3062-1-horn-of-hatetalon",
        },
        {
            complete = { questObjective = { count = 4, id = 3063, index = 2, text = "Northspring Roguefeather" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-3063-vengeance-on-the-northspring" },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-3063-2-northspring-roguefeather",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Northspring Roguefeather",
                    mapID = 1444,
                    offMapText = "Travel to Northspring Roguefeather.",
                    x = 0.4,
                    y = 0.152,
                },
            },
            sourceStep = 24,
            text = "Kill 4 Northspring Roguefeather.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "objective-3063-2-northspring-roguefeather",
        },
        {
            complete = { questObjective = { count = 4, id = 3063, index = 3, text = "Northspring Slayer" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-3063-vengeance-on-the-northspring" },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-3063-3-northspring-slayer",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Northspring Slayer", mapID = 1444, offMapText = "Travel to Northspring Slayer.", x = 0.4, y = 0.152 },
            },
            sourceStep = 24,
            text = "Kill 4 Northspring Slayer.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "objective-3063-3-northspring-slayer",
        },
        {
            complete = { questObjective = { count = 4, id = 3063, index = 4, text = "Northspring Windcaller" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-3063-vengeance-on-the-northspring" },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-3063-4-northspring-windcaller",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Northspring Windcaller", mapID = 1444, offMapText = "Travel to Northspring Windcaller.", x = 0.4, y = 0.152 },
            },
            sourceStep = 24,
            text = "Kill 4 Northspring Windcaller.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "objective-3063-4-northspring-windcaller",
        },
        {
            complete = { quest = { id = 3063, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-3063-vengeance-on-the-northspring",
                "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-3063-1-northspring-harpy",
                "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-3063-2-northspring-roguefeather",
                "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-3063-3-northspring-slayer",
                "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-3063-4-northspring-windcaller",
            },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-turnin-3063-vengeance-on-the-northspring",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Talo Thornhoof", mapID = 1444, offMapText = "Travel to Talo Thornhoof in Feralas.", x = 0.7618, y = 0.4383 },
            },
            sourceStep = 76,
            text = "Turn in Vengeance on the Northspring to Talo Thornhoof.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "turnin-3063-vengeance-on-the-northspring",
        },
        {
            complete = { quest = { id = 3062, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-3062-dark-heart",
                "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-3062-1-northspring-harpy",
                "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-3062-1-horn-of-hatetalon",
            },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-turnin-3062-dark-heart",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Talo Thornhoof", mapID = 1444, offMapText = "Travel to Talo Thornhoof in Feralas.", x = 0.7618, y = 0.4383 },
            },
            sourceStep = 76,
            text = "Turn in Dark Heart to Talo Thornhoof.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "turnin-3062-dark-heart",
        },
        {
            complete = { quest = { id = 7734, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-7734-improved-quality",
                "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-7734-1-rage-scar-yeti-hide",
            },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-turnin-7734-improved-quality",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2822 } } },
            route = {
                {
                    label = "Jangdor Swiftstrider",
                    mapID = 1444,
                    offMapText = "Travel to Jangdor Swiftstrider in Feralas.",
                    x = 0.7443,
                    y = 0.4291,
                },
            },
            sourceStep = 77,
            text = "Turn in Improved Quality to Jangdor Swiftstrider.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "turnin-7734-improved-quality",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 7734, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 7734, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 2822, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
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
            complete = { quest = { id = 7738, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-7738-perfect-yeti-hide" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 7738, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { item = { minCount = 1, name = "Perfect Yeti Hide" } },
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 2822, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 7738, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 7738, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { item = { name = "Perfect Yeti Hide", minCount = 1 } },
                                                { faction = "Horde" },
                                                {
                                                    any = { { any = { { quest = { id = 2822, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-turnin-7738-perfect-yeti-hide",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2822 } } },
            route = {
                {
                    label = "Jangdor Swiftstrider",
                    mapID = 1444,
                    offMapText = "Travel to Jangdor Swiftstrider in Feralas.",
                    x = 0.7443,
                    y = 0.4291,
                },
            },
            sourceStep = 77,
            text = "Turn in Perfect Yeti Hide to Jangdor Swiftstrider.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "turnin-7738-perfect-yeti-hide",
        },
        {
            complete = { quest = { id = 3127, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-3127-mountain-giant-muisek",
                "horde-leveling-era-horde-feralas-and-ungoro-crater-objective-3127-1-zorbin-s-ultra-shrinker",
            },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-turnin-3127-mountain-giant-muisek",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3126 } } },
            route = {
                {
                    label = "Witch Doctor Uzer'i",
                    mapID = 1444,
                    offMapText = "Travel to Witch Doctor Uzer'i in Feralas.",
                    x = 0.7442,
                    y = 0.4337,
                },
            },
            sourceStep = 78,
            text = "Turn in Mountain Giant Muisek to Witch Doctor Uzer'i.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "turnin-3127-mountain-giant-muisek",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3127, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3127, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3126, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3125, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3124, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3123, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3122, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 3121, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3129, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-3129-weapons-of-spirit",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "all", quests = { 3127, 3128 } } },
            route = {
                {
                    label = "Witch Doctor Uzer'i",
                    mapID = 1444,
                    offMapText = "Travel to Witch Doctor Uzer'i in Feralas.",
                    x = 0.7442,
                    y = 0.4337,
                },
            },
            sourceStep = 78,
            text = "Accept Weapons of Spirit from Witch Doctor Uzer'i.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "accept-3129-weapons-of-spirit",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3129, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3129, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        { quest = { id = 3127, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3126, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3125, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3124, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3123, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3122, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Horde" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = { { any = { { quest = { id = 3121, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
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
                                                    any = {
                                                        { quest = { id = 3128, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3122, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 3121, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            complete = { quest = { id = 3129, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-feralas-and-ungoro-crater-accept-3129-weapons-of-spirit" },
            id = "horde-leveling-era-horde-feralas-and-ungoro-crater-turnin-3129-weapons-of-spirit",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "all", quests = { 3127, 3128 } } },
            route = {
                {
                    label = "Witch Doctor Uzer'i",
                    mapID = 1444,
                    offMapText = "Travel to Witch Doctor Uzer'i in Feralas.",
                    x = 0.7442,
                    y = 0.4337,
                },
            },
            sourceStep = 79,
            text = "Turn in Weapons of Spirit to Witch Doctor Uzer'i.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-feralas-and-ungoro-crater",
            sourceActionID = "turnin-3129-weapons-of-spirit",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3129, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3129, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        { quest = { id = 3127, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3126, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3125, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3124, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3123, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3122, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Horde" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = { { any = { { quest = { id = 3121, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
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
                                                    any = {
                                                        { quest = { id = 3128, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3122, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 3121, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
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
            id = "horde-extra-2767-level",
            kind = "note",
            checkpointQuest = 2767,
            text = "Reach level 45 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 45 } },
            requiredLevel = 45,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2767, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2767, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2766, state = "activeOrCompleted" } },
                                                        { all = { { item = { name = "OOX-22/FE Distress Beacon", minCount = 1 } } } },
                                                    },
                                                },
                                            },
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
            id = "horde-extra-2767-accept",
            kind = "accept",
            text = "Accept Rescue OOX-22/FE! from Homing Robot OOX-22/FE.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            route = {
                {
                    mapID = 1444,
                    x = 0.534,
                    y = 0.556,
                    label = "Homing Robot OOX-22/FE",
                    offMapText = "Travel to Homing Robot OOX-22/FE in Feralas.",
                },
            },
            complete = { quest = { id = 2767, state = "activeOrCompleted" } },
            requiredQuests = { { mode = "any", quests = { 2766 } } },
            useClientText = false,
            dependsOn = { "horde-extra-2767-level" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2767, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2767, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2766, state = "activeOrCompleted" } },
                                                        { all = { { item = { name = "OOX-22/FE Distress Beacon", minCount = 1 } } } },
                                                    },
                                                },
                                            },
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
            id = "horde-extra-2767-objective",
            kind = "objective",
            text = "Escort OOX-22/FE to the dock along the Forgotten Coast.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            route = {},
            complete = { quest = { id = 2767, state = "complete" } },
            requiredQuests = { { mode = "any", quests = { 2766 } } },
            useClientText = false,
            dependsOn = { "horde-extra-2767-accept" },
            useClientPin = true,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2767, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2767, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2766, state = "activeOrCompleted" } },
                                                        { all = { { item = { name = "OOX-22/FE Distress Beacon", minCount = 1 } } } },
                                                    },
                                                },
                                            },
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
            id = "horde-extra-2767-turnin",
            kind = "turnin",
            text = "Turn in Rescue OOX-22/FE! to Oglethorpe Obnoticus.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            route = {
                {
                    mapID = 1434,
                    x = 0.282,
                    y = 0.762,
                    label = "Oglethorpe Obnoticus",
                    offMapText = "Travel to Oglethorpe Obnoticus in Stranglethorn Vale.",
                },
            },
            complete = { quest = { id = 2767, state = "completed" } },
            requiredQuests = { { mode = "any", quests = { 2766 } } },
            useClientText = false,
            dependsOn = { "horde-extra-2767-objective" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2767, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2767, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2766, state = "activeOrCompleted" } },
                                                        { all = { { item = { name = "OOX-22/FE Distress Beacon", minCount = 1 } } } },
                                                    },
                                                },
                                            },
                                        },
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
