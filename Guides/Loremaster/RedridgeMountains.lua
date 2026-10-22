local _, ns = ...

-- Source decisions: docs/loremaster/redridge-mountains.json.
-- Coordinates require a Forever client walkthrough.
ns:RegisterGuide({
    id = "loremaster-redridge-mountains",
    title = "Redridge Mountains",
    category = "Loremaster Guides",
    revision = 2,
    routeMode = "ordered",
    loremasterExpanded = true,
    goals = {
        {
            complete = { level = { min = 19 } },
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            id = "visit-entry-leveling-era-alliance-redridge-and-westfall",
            kind = "note",
            requiredLevel = 19,
            text = "Reach level 19 before the Redridge & Westfall visit.",
            visitSourceGuide = "leveling-era-alliance-redridge-and-westfall",
        },
        {
            checkpointQuest = 244,
            complete = { level = { min = 11 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-level-before-accept-244-encroaching-gnolls",
            kind = "note",
            requiredLevel = 11,
            requiredQuests = {},
            text = "Reach level 11 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "level-before-accept-244-encroaching-gnolls",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 244, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 11 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-redridge-and-westfall-accept-244-encroaching-gnolls",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Guard Parker",
                    mapID = 1433,
                    offMapText = "Travel to Guard Parker in Redridge Mountains.",
                    x = 0.104,
                    y = 0.714,
                },
            },
            sourceStep = 2,
            text = "Accept Encroaching Gnolls from Guard Parker.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "accept-244-encroaching-gnolls",
        },
        {
            complete = { quest = { id = 244, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 11 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-redridge-and-westfall-accept-244-encroaching-gnolls" },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-turnin-244-encroaching-gnolls",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Deputy Feldon",
                    mapID = 1433,
                    offMapText = "Travel to Deputy Feldon in Redridge Mountains.",
                    x = 0.3074,
                    y = 0.6,
                },
            },
            sourceActionID = "turnin-244-encroaching-gnolls",
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceStep = 3,
            text = "Turn in Encroaching Gnolls to Deputy Feldon.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 125,
            complete = { level = { min = 15 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-level-before-accept-125-the-lost-tools",
            kind = "note",
            requiredLevel = 15,
            requiredQuests = {},
            text = "Reach level 15 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "level-before-accept-125-the-lost-tools",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 125, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 15 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-redridge-and-westfall-accept-125-the-lost-tools",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Foreman Oslow",
                    mapID = 1433,
                    offMapText = "Travel to Foreman Oslow in Redridge Mountains.",
                    x = 0.27,
                    y = 0.486,
                },
            },
            sourceStep = 5,
            text = "Accept The Lost Tools from Foreman Oslow.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "accept-125-the-lost-tools",
        },
        {
            complete = { quest = { id = 118, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 14 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-redridge-and-westfall-accept-118-the-price-of-shoes",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Verner Osgood",
                    mapID = 1433,
                    offMapText = "Travel to Verner Osgood in Redridge Mountains.",
                    x = 0.259,
                    y = 0.473,
                },
            },
            sourceStep = 6,
            text = "Accept The Price of Shoes from Verner Osgood.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "accept-118-the-price-of-shoes",
        },
        {
            complete = { quest = { id = 120, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 14 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-redridge-and-westfall-accept-120-messenger-to-stormwind",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Magistrate Solomon",
                    mapID = 1433,
                    offMapText = "Travel to Magistrate Solomon in Redridge Mountains.",
                    x = 0.249,
                    y = 0.444,
                },
            },
            sourceStep = 7,
            text = "Accept Messenger to Stormwind from Magistrate Solomon.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "accept-120-messenger-to-stormwind",
        },
        {
            complete = { quest = { id = 129, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 12 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-redridge-and-westfall-accept-129-a-free-lunch",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Darcy", mapID = 1433, offMapText = "Travel to Darcy in Redridge Mountains.", x = 0.22, y = 0.45 } },
            sourceStep = 8,
            text = "Accept A Free Lunch from Darcy.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "accept-129-a-free-lunch",
        },
        {
            complete = { quest = { id = 92, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 15 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-redridge-and-westfall-accept-92-redridge-goulash",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Chef Breanna",
                    mapID = 1433,
                    offMapText = "Travel to Chef Breanna in Redridge Mountains.",
                    x = 0.176,
                    y = 0.438,
                },
            },
            sourceStep = 10,
            text = "Accept Redridge Goulash from Chef Breanna.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "accept-92-redridge-goulash",
        },
        {
            checkpointQuest = 3741,
            complete = { level = { min = 12 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-level-before-accept-3741-hilary-s-necklace",
            kind = "note",
            requiredLevel = 12,
            requiredQuests = {},
            text = "Reach level 12 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "level-before-accept-3741-hilary-s-necklace",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 3741, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 12 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-redridge-and-westfall-accept-3741-hilary-s-necklace",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Shawn", mapID = 1433, offMapText = "Travel to Shawn in Redridge Mountains.", x = 0.242, y = 0.536 },
            },
            sourceStep = 11,
            text = "Accept Hilary's Necklace from Shawn.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "accept-3741-hilary-s-necklace",
        },
        {
            complete = { questObjective = { count = 1, id = 3741, index = 1, text = "Glinting Mud" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 12 } } } },
            dependsOn = { "alliance-leveling-era-alliance-redridge-and-westfall-accept-3741-hilary-s-necklace" },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-objective-3741-1-glinting-mud",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Glinting Mud", mapID = 1433, offMapText = "Travel to Glinting Mud.", x = 0.259, y = 0.541 } },
            sourceStep = 12,
            text = "Collect 1 Hilary's Necklace.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "objective-3741-1-glinting-mud",
        },
        {
            complete = { quest = { id = 3741, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 12 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-redridge-and-westfall-accept-3741-hilary-s-necklace",
                "alliance-leveling-era-alliance-redridge-and-westfall-objective-3741-1-glinting-mud",
            },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-turnin-3741-hilary-s-necklace",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Hilary", mapID = 1433, offMapText = "Travel to Hilary in Redridge Mountains.", x = 0.2924, y = 0.5363 },
            },
            sourceActionID = "turnin-3741-hilary-s-necklace",
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceStep = 13,
            text = "Turn in Hilary's Necklace to Hilary.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 120, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 14 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-redridge-and-westfall-accept-120-messenger-to-stormwind" },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-turnin-120-messenger-to-stormwind",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "General Marcus Jonathan",
                    mapID = 1453,
                    offMapText = "Travel to General Marcus Jonathan in Stormwind City.",
                    x = 0.6397,
                    y = 0.7532,
                },
            },
            sourceActionID = "turnin-120-messenger-to-stormwind",
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceStep = 15,
            text = "Turn in Messenger to Stormwind to General Marcus Jonathan.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 121, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 14 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-redridge-and-westfall-accept-121-messenger-to-stormwind",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 120 } } },
            route = {
                {
                    label = "General Marcus Jonathan",
                    mapID = 1453,
                    offMapText = "Travel to General Marcus Jonathan in Stormwind City.",
                    x = 0.6397,
                    y = 0.7532,
                },
            },
            sourceStep = 15,
            text = "Accept Messenger to Stormwind from General Marcus Jonathan.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "accept-121-messenger-to-stormwind",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 121, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 121, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 246, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 11 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-redridge-and-westfall-accept-246-assessing-the-threat",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 244 } } },
            route = {
                {
                    label = "Deputy Feldon",
                    mapID = 1433,
                    offMapText = "Travel to Deputy Feldon in Redridge Mountains.",
                    x = 0.256,
                    y = 0.6,
                },
            },
            sourceStep = 28,
            text = "Accept Assessing the Threat from Deputy Feldon.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "accept-246-assessing-the-threat",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 246, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 246, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 244, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 129, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 12 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-redridge-and-westfall-accept-129-a-free-lunch" },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-turnin-129-a-free-lunch",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Guard Parker",
                    mapID = 1433,
                    offMapText = "Travel to Guard Parker in Redridge Mountains.",
                    x = 0.1527,
                    y = 0.7145,
                },
            },
            sourceActionID = "turnin-129-a-free-lunch",
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceStep = 29,
            text = "Turn in A Free Lunch to Guard Parker.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 130, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 12 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-redridge-and-westfall-accept-130-visit-the-herbalist",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 129 } } },
            route = {
                {
                    label = "Guard Parker",
                    mapID = 1433,
                    offMapText = "Travel to Guard Parker in Redridge Mountains.",
                    x = 0.104,
                    y = 0.714,
                },
            },
            sourceStep = 29,
            text = "Accept Visit the Herbalist from Guard Parker.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "accept-130-visit-the-herbalist",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 130, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 130, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 129, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 6, id = 246, index = 2, text = "Redridge Poacher" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 11 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-redridge-and-westfall-accept-246-assessing-the-threat" },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-objective-246-2-redridge-poacher",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 244 } } },
            route = {
                { label = "Redridge Poacher", mapID = 1433, offMapText = "Travel to Redridge Poacher.", x = 0.294, y = 0.784 },
            },
            sourceStep = 30,
            text = "Kill 6 Redridge Poacher.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "objective-246-2-redridge-poacher",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 246, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 246, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 244, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 246, index = 1, text = "Redridge Mongrel" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 11 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-redridge-and-westfall-accept-246-assessing-the-threat" },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-objective-246-1-redridge-mongrel",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 244 } } },
            route = {
                { label = "Redridge Mongrel", mapID = 1433, offMapText = "Travel to Redridge Mongrel.", x = 0.294, y = 0.784 },
            },
            sourceStep = 31,
            text = "Kill 10 Redridge Mongrel.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "objective-246-1-redridge-mongrel",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 246, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 246, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 244, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 5, id = 92, index = 3, text = "Crisp Spider Meat" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 15 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-redridge-and-westfall-accept-92-redridge-goulash" },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-objective-92-3-crisp-spider-meat",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Crisp Spider Meat", mapID = 1433, offMapText = "Travel to Crisp Spider Meat.", x = 0.22, y = 0.74 },
            },
            sourceStep = 32,
            text = "Collect 5 Crisp Spider Meat.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "objective-92-3-crisp-spider-meat",
        },
        {
            complete = { quest = { id = 246, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 11 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-redridge-and-westfall-accept-246-assessing-the-threat",
                "alliance-leveling-era-alliance-redridge-and-westfall-objective-246-2-redridge-poacher",
                "alliance-leveling-era-alliance-redridge-and-westfall-objective-246-1-redridge-mongrel",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 246, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 246, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 244, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-turnin-246-assessing-the-threat",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 244 } } },
            route = {
                {
                    label = "Deputy Feldon",
                    mapID = 1433,
                    offMapText = "Travel to Deputy Feldon in Redridge Mountains.",
                    x = 0.3074,
                    y = 0.6,
                },
            },
            sourceActionID = "turnin-246-assessing-the-threat",
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceStep = 34,
            text = "Turn in Assessing the Threat to Deputy Feldon.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 118, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 14 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-redridge-and-westfall-accept-118-the-price-of-shoes" },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-turnin-118-the-price-of-shoes",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Smith Argus", mapID = 1429, offMapText = "Travel to Smith Argus in Elwynn Forest.", x = 0.4171, y = 0.6555 },
            },
            sourceActionID = "turnin-118-the-price-of-shoes",
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceStep = 55,
            text = "Turn in The Price of Shoes to Smith Argus.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 119, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 13 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-redridge-and-westfall-accept-119-return-to-verner",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 118 } } },
            route = {
                { label = "Smith Argus", mapID = 1429, offMapText = "Travel to Smith Argus in Elwynn Forest.", x = 0.4171, y = 0.6555 },
            },
            sourceStep = 55,
            text = "Accept Return to Verner from Smith Argus.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "accept-119-return-to-verner",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 119, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 119, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 118, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 94,
            complete = { level = { min = 20 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-level-before-accept-94-a-watchful-eye",
            kind = "note",
            requiredLevel = 20,
            requiredQuests = {},
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "level-before-accept-94-a-watchful-eye",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 94, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-redridge-and-westfall-accept-94-a-watchful-eye",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Theocritus", mapID = 1429, offMapText = "Travel to Theocritus in Elwynn Forest.", x = 0.6522, y = 0.6971 },
            },
            sourceStep = 56,
            text = "Accept A Watchful Eye from Theocritus.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "accept-94-a-watchful-eye",
        },
        {
            complete = { questObjective = { count = 1, id = 125, index = 1, text = "Sunken Chest" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 15 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-redridge-and-westfall-accept-125-the-lost-tools" },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-objective-125-1-sunken-chest",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Sunken Chest", mapID = 1433, offMapText = "Travel to Sunken Chest.", x = 0.4153, y = 0.5467 } },
            sourceStep = 57,
            text = "Collect 1 Oslow's Toolbox.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "objective-125-1-sunken-chest",
        },
        {
            complete = { quest = { id = 125, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 15 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-redridge-and-westfall-accept-125-the-lost-tools",
                "alliance-leveling-era-alliance-redridge-and-westfall-objective-125-1-sunken-chest",
            },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-turnin-125-the-lost-tools",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Foreman Oslow",
                    mapID = 1433,
                    offMapText = "Travel to Foreman Oslow in Redridge Mountains.",
                    x = 0.3214,
                    y = 0.4864,
                },
            },
            sourceActionID = "turnin-125-the-lost-tools",
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceStep = 58,
            text = "Turn in The Lost Tools to Foreman Oslow.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 89, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 15 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-redridge-and-westfall-accept-89-the-everstill-bridge",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 125 } } },
            route = {
                {
                    label = "Foreman Oslow",
                    mapID = 1433,
                    offMapText = "Travel to Foreman Oslow in Redridge Mountains.",
                    x = 0.27,
                    y = 0.486,
                },
            },
            sourceStep = 58,
            text = "Accept The Everstill Bridge from Foreman Oslow.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "accept-89-the-everstill-bridge",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 89, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 89, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 125, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 119, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 13 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-redridge-and-westfall-accept-119-return-to-verner" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 119, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 119, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 118, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-turnin-119-return-to-verner",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 118 } } },
            route = {
                {
                    label = "Verner Osgood",
                    mapID = 1433,
                    offMapText = "Travel to Verner Osgood in Redridge Mountains.",
                    x = 0.3097,
                    y = 0.4727,
                },
            },
            sourceActionID = "turnin-119-return-to-verner",
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceStep = 59,
            text = "Turn in Return to Verner to Verner Osgood.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 122, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 14 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-redridge-and-westfall-accept-122-underbelly-scales",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 119 } } },
            route = {
                {
                    label = "Verner Osgood",
                    mapID = 1433,
                    offMapText = "Travel to Verner Osgood in Redridge Mountains.",
                    x = 0.259,
                    y = 0.473,
                },
            },
            sourceStep = 59,
            text = "Accept Underbelly Scales from Verner Osgood.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "accept-122-underbelly-scales",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 122, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 122, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 119, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 118, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 124, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 15 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-redridge-and-westfall-accept-124-a-baying-of-gnolls",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 119 } } },
            route = {
                {
                    label = "Verner Osgood",
                    mapID = 1433,
                    offMapText = "Travel to Verner Osgood in Redridge Mountains.",
                    x = 0.259,
                    y = 0.473,
                },
            },
            sourceStep = 59,
            text = "Accept A Baying of Gnolls from Verner Osgood.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "accept-124-a-baying-of-gnolls",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 124, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 124, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 119, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 118, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 5, id = 92, index = 2, text = "Tough Condor Meat" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 15 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-redridge-and-westfall-accept-92-redridge-goulash" },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-objective-92-2-tough-condor-meat",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Tough Condor Meat", mapID = 1433, offMapText = "Travel to Tough Condor Meat.", x = 0.452, y = 0.776 },
            },
            sourceStep = 60,
            text = "Collect 5 Tough Condor Meat.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "objective-92-2-tough-condor-meat",
        },
        {
            complete = { questObjective = { count = 6, id = 122, index = 1, text = "Underbelly Whelp Scale" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 14 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-redridge-and-westfall-accept-122-underbelly-scales" },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-objective-122-1-underbelly-whelp-scale",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 119 } } },
            route = {
                {
                    label = "Underbelly Whelp Scale",
                    mapID = 1433,
                    offMapText = "Travel to Underbelly Whelp Scale.",
                    x = 0.364,
                    y = 0.746,
                },
            },
            sourceStep = 61,
            text = "Collect 6 Underbelly Whelp Scale.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "objective-122-1-underbelly-whelp-scale",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 122, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 122, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 119, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 118, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 5, id = 92, index = 1, text = "Great Goretusk Snout" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 15 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-redridge-and-westfall-accept-92-redridge-goulash" },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-objective-92-1-great-goretusk-snout",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Great Goretusk Snout", mapID = 1433, offMapText = "Travel to Great Goretusk Snout.", x = 0.304, y = 0.704 },
            },
            sourceStep = 62,
            text = "Collect 5 Great Goretusk Snout.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "objective-92-1-great-goretusk-snout",
        },
        {
            complete = { quest = { id = 122, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 14 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-redridge-and-westfall-accept-122-underbelly-scales",
                "alliance-leveling-era-alliance-redridge-and-westfall-objective-122-1-underbelly-whelp-scale",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 122, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 122, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 119, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 118, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-turnin-122-underbelly-scales",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 119 } } },
            route = {
                {
                    label = "Verner Osgood",
                    mapID = 1433,
                    offMapText = "Travel to Verner Osgood in Redridge Mountains.",
                    x = 0.3097,
                    y = 0.4727,
                },
            },
            sourceActionID = "turnin-122-underbelly-scales",
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceStep = 64,
            text = "Turn in Underbelly Scales to Verner Osgood.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 121, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 14 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-redridge-and-westfall-accept-121-messenger-to-stormwind" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 121, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 121, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-turnin-121-messenger-to-stormwind",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 120 } } },
            route = {
                {
                    label = "Magistrate Solomon",
                    mapID = 1433,
                    offMapText = "Travel to Magistrate Solomon in Redridge Mountains.",
                    x = 0.2999,
                    y = 0.4445,
                },
            },
            sourceActionID = "turnin-121-messenger-to-stormwind",
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceStep = 65,
            text = "Turn in Messenger to Stormwind to Magistrate Solomon.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 92, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 15 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-redridge-and-westfall-accept-92-redridge-goulash",
                "alliance-leveling-era-alliance-redridge-and-westfall-objective-92-3-crisp-spider-meat",
                "alliance-leveling-era-alliance-redridge-and-westfall-objective-92-2-tough-condor-meat",
                "alliance-leveling-era-alliance-redridge-and-westfall-objective-92-1-great-goretusk-snout",
            },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-turnin-92-redridge-goulash",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Chef Breanna",
                    mapID = 1433,
                    offMapText = "Travel to Chef Breanna in Redridge Mountains.",
                    x = 0.2268,
                    y = 0.4384,
                },
            },
            sourceActionID = "turnin-92-redridge-goulash",
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceStep = 66,
            text = "Turn in Redridge Goulash to Chef Breanna.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 130, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 12 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-redridge-and-westfall-accept-130-visit-the-herbalist" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 130, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 130, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 129, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-turnin-130-visit-the-herbalist",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 129 } } },
            route = {
                {
                    label = "Martie Jainrose",
                    mapID = 1433,
                    offMapText = "Travel to Martie Jainrose in Redridge Mountains.",
                    x = 0.2186,
                    y = 0.4633,
                },
            },
            sourceActionID = "turnin-130-visit-the-herbalist",
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceStep = 67,
            text = "Turn in Visit the Herbalist to Martie Jainrose.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 131, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 12 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-redridge-and-westfall-accept-131-delivering-daffodils",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 130 } } },
            route = {
                {
                    label = "Martie Jainrose",
                    mapID = 1433,
                    offMapText = "Travel to Martie Jainrose in Redridge Mountains.",
                    x = 0.168,
                    y = 0.463,
                },
            },
            sourceStep = 67,
            text = "Accept Delivering Daffodils from Martie Jainrose.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "accept-131-delivering-daffodils",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 131, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 131, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 130, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 129, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 131, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 12 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-redridge-and-westfall-accept-131-delivering-daffodils" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 131, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 131, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 130, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 129, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-turnin-131-delivering-daffodils",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 130 } } },
            route = {
                { label = "Darcy", mapID = 1433, offMapText = "Travel to Darcy in Redridge Mountains.", x = 0.2675, y = 0.4434 },
            },
            sourceActionID = "turnin-131-delivering-daffodils",
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceStep = 68,
            text = "Turn in Delivering Daffodils to Darcy.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 143,
            complete = { level = { min = 14 } },
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 143, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 143, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 121, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-143-level",
            kind = "note",
            requiredLevel = 14,
            text = "Reach level 14 before this visit.",
        },
        {
            complete = { quest = { id = 143, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 14 } } } },
            dependsOn = { "alliance-extra-143-level" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 143, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 143, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 121, state = "completed" } },
                                                                        {
                                                                            all = {
                                                                                { faction = "Alliance" },
                                                                                { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
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
                                        { quest = { id = 143, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 143, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 121, state = "completed" } },
                                                                        {
                                                                            all = {
                                                                                { faction = "Alliance" },
                                                                                { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 143, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 143, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 121, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { race = { 1, 3, 4, 7 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 120, state = "activeOrCompleted" } },
                                                                                        { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-143-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 121 } } },
            route = {
                {
                    label = "Magistrate Solomon",
                    mapID = 1433,
                    offMapText = "Travel to Magistrate Solomon in Redridge Mountains.",
                    x = 0.3,
                    y = 0.442,
                },
            },
            text = "Accept Messenger to Westfall from Magistrate Solomon.",
            useClientText = false,
        },
        {
            complete = { questObjective = { count = 5, id = 89, index = 1, text = "Redridge Mystic" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 15 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-redridge-and-westfall-accept-89-the-everstill-bridge" },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-objective-89-1-redridge-mystic",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 125 } } },
            route = { { label = "Redridge Mystic", mapID = 1433, offMapText = "Travel to Redridge Mystic.", x = 0.212, y = 0.384 } },
            sourceStep = 69,
            text = "Collect 5 Iron Pike.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "objective-89-1-redridge-mystic",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 89, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 89, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 125, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 5, id = 89, index = 2, text = "Iron Rivet" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 15 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-redridge-and-westfall-accept-89-the-everstill-bridge" },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-objective-89-2-iron-rivet",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 125 } } },
            route = { { label = "Iron Rivet", mapID = 1433, offMapText = "Travel to Iron Rivet.", x = 0.212, y = 0.384 } },
            sourceStep = 69,
            text = "Collect 5 Iron Rivet.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "objective-89-2-iron-rivet",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 89, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 89, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 125, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 8, id = 124, index = 2, text = "Redridge Mystic" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 15 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-redridge-and-westfall-accept-124-a-baying-of-gnolls" },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-objective-124-2-redridge-mystic",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 119 } } },
            route = { { label = "Redridge Mystic", mapID = 1433, offMapText = "Travel to Redridge Mystic.", x = 0.212, y = 0.384 } },
            sourceStep = 70,
            text = "Kill 8 Redridge Mystic.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "objective-124-2-redridge-mystic",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 124, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 124, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 119, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 118, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 124, index = 1, text = "Redridge Brute" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 15 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-redridge-and-westfall-accept-124-a-baying-of-gnolls" },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-objective-124-1-redridge-brute",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 119 } } },
            route = { { label = "Redridge Brute", mapID = 1433, offMapText = "Travel to Redridge Brute.", x = 0.212, y = 0.384 } },
            sourceStep = 70,
            text = "Kill 10 Redridge Brute.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "objective-124-1-redridge-brute",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 124, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 124, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 119, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 118, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 124, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 15 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-redridge-and-westfall-accept-124-a-baying-of-gnolls",
                "alliance-leveling-era-alliance-redridge-and-westfall-objective-124-2-redridge-mystic",
                "alliance-leveling-era-alliance-redridge-and-westfall-objective-124-1-redridge-brute",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 124, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 124, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 119, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 118, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-turnin-124-a-baying-of-gnolls",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 119 } } },
            route = {
                {
                    label = "Verner Osgood",
                    mapID = 1433,
                    offMapText = "Travel to Verner Osgood in Redridge Mountains.",
                    x = 0.3097,
                    y = 0.4727,
                },
            },
            sourceActionID = "turnin-124-a-baying-of-gnolls",
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceStep = 74,
            text = "Turn in A Baying of Gnolls to Verner Osgood.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 89, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 15 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-redridge-and-westfall-accept-89-the-everstill-bridge",
                "alliance-leveling-era-alliance-redridge-and-westfall-objective-89-1-redridge-mystic",
                "alliance-leveling-era-alliance-redridge-and-westfall-objective-89-2-iron-rivet",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 89, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 89, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 125, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-turnin-89-the-everstill-bridge",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 125 } } },
            route = {
                {
                    label = "Foreman Oslow",
                    mapID = 1433,
                    offMapText = "Travel to Foreman Oslow in Redridge Mountains.",
                    x = 0.3214,
                    y = 0.4864,
                },
            },
            sourceActionID = "turnin-89-the-everstill-bridge",
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceStep = 75,
            text = "Turn in The Everstill Bridge to Foreman Oslow.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 98407,
            complete = { level = { min = 11 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-level-before-woven-accept-98407-show-of-force",
            kind = "note",
            requiredLevel = 11,
            requiredQuests = {},
            text = "Reach level 11 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "level-before-woven-accept-98407-show-of-force",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 98407, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 11 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-redridge-and-westfall-woven-accept-98407-show-of-force",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Deputy Feldon", mapID = 1433, offMapText = "Travel to Deputy Feldon.", x = 0.256, y = 0.6 } },
            text = "Accept Show of Force from Deputy Feldon.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "woven-accept-98407-show-of-force",
        },
        {
            complete = { quest = { id = 98407, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 11 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-redridge-and-westfall-woven-accept-98407-show-of-force" },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-woven-objective-98407-show-of-force",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Redridge Thrasher", mapID = 1433, offMapText = "Travel to Redridge Thrasher.", x = 0.3, y = 0.812 },
            },
            text = "Show of Force: collect 5 Spiked Collars from Redridge Thrashers.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            sourceActionID = "woven-objective-98407-show-of-force",
        },
        {
            complete = { quest = { id = 98407, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 11 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-redridge-and-westfall-woven-accept-98407-show-of-force",
                "alliance-leveling-era-alliance-redridge-and-westfall-woven-objective-98407-show-of-force",
            },
            id = "alliance-leveling-era-alliance-redridge-and-westfall-woven-turnin-98407-show-of-force",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Deputy Feldon", mapID = 1433, offMapText = "Travel to Deputy Feldon.", x = 0.308, y = 0.6 } },
            sourceActionID = "woven-turnin-98407-show-of-force",
            sourceGuide = "leveling-era-alliance-redridge-and-westfall",
            text = "Turn in Show of Force to Deputy Feldon.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { level = { min = 25 } },
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            id = "visit-entry-leveling-era-alliance-duskwood-and-redridge-mountains",
            kind = "note",
            requiredLevel = 25,
            text = "Reach level 25 before the Duskwood & Redridge Mountains visit.",
            visitSourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
        },
        {
            complete = { quest = { id = 20, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-accept-20-blackrock-menace",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Marshal Marris",
                    mapID = 1433,
                    offMapText = "Travel to Marshal Marris in Redridge Mountains.",
                    x = 0.284,
                    y = 0.49,
                },
            },
            sourceStep = 67,
            text = "Accept Blackrock Menace from Marshal Marris.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceActionID = "accept-20-blackrock-menace",
        },
        {
            checkpointQuest = 343,
            complete = { level = { min = 20 } },
            conditions = { all = { { faction = "Alliance" } } },
            id = "alliance-extra-343-level",
            kind = "note",
            requiredLevel = 20,
            text = "Reach level 20 before this visit.",
        },
        {
            id = "alliance-extra-343-accept",
            kind = "accept",
            text = "Accept Speaking of Fortitude from Brother Kristoff.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } } } },
            route = {
                {
                    mapID = 1453,
                    x = 0.45799999999999996,
                    y = 0.386,
                    label = "Brother Kristoff",
                    offMapText = "Travel to Brother Kristoff in Stormwind City.",
                },
            },
            complete = { quest = { id = 343, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-343-level" },
        },
        {
            complete = { quest = { id = 127, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 16 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-accept-127-selling-fish",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Dockmaster Baren",
                    mapID = 1433,
                    offMapText = "Travel to Dockmaster Baren in Redridge Mountains.",
                    x = 0.226,
                    y = 0.474,
                },
            },
            sourceStep = 68,
            text = "Accept Selling Fish from Dockmaster Baren.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceActionID = "accept-127-selling-fish",
        },
        {
            complete = { quest = { id = 150, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-accept-150-murloc-poachers",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Dockmaster Baren",
                    mapID = 1433,
                    offMapText = "Travel to Dockmaster Baren in Redridge Mountains.",
                    x = 0.226,
                    y = 0.474,
                },
            },
            sourceStep = 68,
            text = "Accept Murloc Poachers from Dockmaster Baren.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceActionID = "accept-150-murloc-poachers",
        },
        {
            complete = { quest = { id = 34, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-accept-34-an-unwelcome-guest",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Martie Jainrose",
                    mapID = 1433,
                    offMapText = "Travel to Martie Jainrose in Redridge Mountains.",
                    x = 0.168,
                    y = 0.463,
                },
            },
            sourceStep = 69,
            text = "Accept An Unwelcome Guest from Martie Jainrose.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceActionID = "accept-34-an-unwelcome-guest",
        },
        {
            complete = { questObjective = { count = 1, id = 34, index = 1, text = "Bellygrub" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-accept-34-an-unwelcome-guest" },
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-objective-34-1-bellygrub",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Bellygrub", mapID = 1433, offMapText = "Travel to Bellygrub.", x = 0.1568, y = 0.4932 } },
            sourceStep = 70,
            text = "Collect 1 Bellygrub's Tusk.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceActionID = "objective-34-1-bellygrub",
        },
        {
            complete = { quest = { id = 34, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-accept-34-an-unwelcome-guest",
                "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-objective-34-1-bellygrub",
            },
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-turnin-34-an-unwelcome-guest",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Martie Jainrose",
                    mapID = 1433,
                    offMapText = "Travel to Martie Jainrose in Redridge Mountains.",
                    x = 0.2186,
                    y = 0.4633,
                },
            },
            sourceActionID = "turnin-34-an-unwelcome-guest",
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceStep = 71,
            text = "Turn in An Unwelcome Guest to Martie Jainrose.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 10, id = 20, index = 1, text = "Blackrock Grunt" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-accept-20-blackrock-menace" },
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-objective-20-1-blackrock-grunt",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Blackrock Grunt", mapID = 1433, offMapText = "Travel to Blackrock Grunt.", x = 0.626, y = 0.436 } },
            sourceStep = 72,
            text = "Collect 10 Battleworn Axe.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceActionID = "objective-20-1-blackrock-grunt",
        },
        {
            complete = { questObjective = { count = 8, id = 150, index = 1, text = "Murloc Flesheater" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-accept-150-murloc-poachers" },
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-objective-150-1-murloc-flesheater",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Murloc Flesheater", mapID = 1433, offMapText = "Travel to Murloc Flesheater.", x = 0.5593, y = 0.5301 },
            },
            sourceStep = 73,
            text = "Collect 8 Murloc Fin.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceActionID = "objective-150-1-murloc-flesheater",
        },
        {
            complete = { questObjective = { count = 10, id = 127, index = 1, text = "Spotted Sunfish" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 16 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-accept-127-selling-fish" },
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-objective-127-1-spotted-sunfish",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Spotted Sunfish", mapID = 1433, offMapText = "Travel to Spotted Sunfish.", x = 0.578, y = 0.514 } },
            sourceStep = 73,
            text = "Collect 10 Spotted Sunfish.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceActionID = "objective-127-1-spotted-sunfish",
        },
        {
            complete = { quest = { id = 20, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-accept-20-blackrock-menace",
                "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-objective-20-1-blackrock-grunt",
            },
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-turnin-20-blackrock-menace",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Marshal Marris",
                    mapID = 1433,
                    offMapText = "Travel to Marshal Marris in Redridge Mountains.",
                    x = 0.3351,
                    y = 0.4897,
                },
            },
            sourceActionID = "turnin-20-blackrock-menace",
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceStep = 74,
            text = "Turn in Blackrock Menace to Marshal Marris.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 127, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 16 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-accept-127-selling-fish",
                "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-objective-127-1-spotted-sunfish",
            },
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-turnin-127-selling-fish",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Dockmaster Baren",
                    mapID = 1433,
                    offMapText = "Travel to Dockmaster Baren in Redridge Mountains.",
                    x = 0.2772,
                    y = 0.4738,
                },
            },
            sourceActionID = "turnin-127-selling-fish",
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceStep = 75,
            text = "Turn in Selling Fish to Dockmaster Baren.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 150, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-accept-150-murloc-poachers",
                "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-objective-150-1-murloc-flesheater",
            },
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-turnin-150-murloc-poachers",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Dockmaster Baren",
                    mapID = 1433,
                    offMapText = "Travel to Dockmaster Baren in Redridge Mountains.",
                    x = 0.2772,
                    y = 0.4738,
                },
            },
            sourceActionID = "turnin-150-murloc-poachers",
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceStep = 75,
            text = "Turn in Murloc Poachers to Dockmaster Baren.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 128, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-accept-128-blackrock-bounty",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Guard Howe", mapID = 1433, offMapText = "Travel to Guard Howe in Redridge Mountains.", x = 0.265, y = 0.579 },
            },
            sourceStep = 90,
            text = "Accept Blackrock Bounty from Guard Howe.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceActionID = "accept-128-blackrock-bounty",
        },
        {
            complete = { quest = { id = 126, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 15 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-accept-126-howling-in-the-hills",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 124 } } },
            route = {
                {
                    label = "Verner Osgood",
                    mapID = 1433,
                    offMapText = "Travel to Verner Osgood in Redridge Mountains.",
                    x = 0.259,
                    y = 0.473,
                },
            },
            sourceStep = 91,
            text = "Accept Howling in the Hills from Verner Osgood.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceActionID = "accept-126-howling-in-the-hills",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 126, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 126, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 124, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 119, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 118, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 19,
            complete = { level = { min = 18 } },
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 19, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 19, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 20, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-19-level",
            kind = "note",
            requiredLevel = 18,
            text = "Reach level 18 before this visit.",
        },
        {
            complete = { quest = { id = 19, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } } } },
            dependsOn = { "alliance-extra-19-level" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 19, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 19, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        { any = { { any = { { quest = { id = 20, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
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
                                        { quest = { id = 19, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 19, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        { any = { { any = { { quest = { id = 20, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                    },
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
                                { quest = { id = 19, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 19, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 20, state = "activeOrCompleted" } },
                                                                { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-19-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 20 } } },
            route = {
                {
                    label = "Marshal Marris",
                    mapID = 1433,
                    offMapText = "Travel to Marshal Marris in Redridge Mountains.",
                    x = 0.334,
                    y = 0.488,
                },
            },
            text = "Accept Tharil'zun from Marshal Marris.",
            useClientText = false,
        },
        {
            checkpointQuest = 115,
            complete = { level = { min = 18 } },
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 115, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 115, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 20, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-115-level",
            kind = "note",
            requiredLevel = 18,
            text = "Reach level 18 before this visit.",
        },
        {
            complete = { quest = { id = 115, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } } } },
            dependsOn = { "alliance-extra-115-level" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 115, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 115, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        { any = { { any = { { quest = { id = 20, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
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
                                        { quest = { id = 115, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 115, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        { any = { { any = { { quest = { id = 20, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                    },
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
                                { quest = { id = 115, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 115, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 20, state = "activeOrCompleted" } },
                                                                { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-115-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 20 } } },
            route = {
                {
                    label = "Marshal Marris",
                    mapID = 1433,
                    offMapText = "Travel to Marshal Marris in Redridge Mountains.",
                    x = 0.334,
                    y = 0.488,
                },
            },
            text = "Accept Shadow Magic from Marshal Marris.",
            useClientText = false,
        },
        {
            complete = { quest = { id = 91, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 17 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-accept-91-solomon-s-law",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Bailiff Conacher",
                    mapID = 1433,
                    offMapText = "Travel to Bailiff Conacher in Redridge Mountains.",
                    x = 0.246,
                    y = 0.443,
                },
            },
            sourceStep = 92,
            text = "Accept Solomon's Law from Bailiff Conacher.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceActionID = "accept-91-solomon-s-law",
        },
        {
            checkpointQuest = 169,
            complete = { level = { min = 15 } },
            conditions = { all = { { faction = "Alliance" } } },
            id = "alliance-extra-169-level",
            kind = "note",
            requiredLevel = 15,
            text = "Reach level 15 before this visit.",
        },
        {
            id = "alliance-extra-169-accept",
            kind = "accept",
            text = "Accept Wanted: Gath'Ilzogg from Wanted: Gath'Ilzogg.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 15 } } } },
            route = {
                {
                    mapID = 1433,
                    x = 0.29600000000000004,
                    y = 0.46299999999999997,
                    label = "Wanted: Gath'Ilzogg",
                    offMapText = "Travel to Wanted: Gath'Ilzogg in Redridge Mountains.",
                },
            },
            complete = { quest = { id = 169, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-169-level" },
        },
        {
            complete = { quest = { id = 180, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 15 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-accept-180-wanted-lieutenant-fangore",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Wanted: Lieutenant Fangore",
                    mapID = 1433,
                    offMapText = "Travel to Wanted: Lieutenant Fangore.",
                    x = 0.217,
                    y = 0.465,
                },
            },
            sourceStep = 93,
            text = "Accept Wanted: Lieutenant Fangore.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceActionID = "accept-180-wanted-lieutenant-fangore",
        },
        {
            complete = { questObjective = { count = 1, id = 126, index = 1, text = "Yowler" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 15 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-accept-126-howling-in-the-hills" },
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-objective-126-1-yowler",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 124 } } },
            route = { { label = "Yowler", mapID = 1433, offMapText = "Travel to Yowler.", x = 0.2765, y = 0.2138 } },
            sourceStep = 94,
            text = "Collect 1 Yowler's Paw.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceActionID = "objective-126-1-yowler",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 126, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 126, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 124, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 119, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 118, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 19, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } } } },
            dependsOn = { "alliance-extra-19-accept" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                any = {
                                    {
                                        ["not"] = {
                                            any = {
                                                { quest = { id = 19, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 19, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 20, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
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
                                                { quest = { id = 19, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 19, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 20, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
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
                                        { quest = { id = 19, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 19, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        { any = { { any = { { quest = { id = 20, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                    },
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
                                { quest = { id = 19, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 19, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 20, state = "activeOrCompleted" } },
                                                                { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-19-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 20 } } },
            route = {
                { label = "Tharil'zun", mapID = 1433, offMapText = "Travel to Tharil'zun in Redridge Mountains.", x = 0.692, y = 0.594 },
            },
            text = "Bring Tharil'zun's Head to Marshal Marris in Redridge. This is an elite. Bring a group.",
            useClientPin = true,
            useClientText = false,
        },
        {
            id = "alliance-extra-169-objective",
            kind = "objective",
            text = "Kill Gath'Ilzogg and bring his head to Magistrate Solomon in Lakeshire for the reward. This is an elite. Bring a group.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 15 } } } },
            route = {
                {
                    mapID = 1433,
                    x = 0.6920000000000001,
                    y = 0.5579999999999999,
                    label = "Gath'Ilzogg",
                    offMapText = "Travel to Gath'Ilzogg in Redridge Mountains.",
                },
            },
            complete = { quest = { id = 169, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-169-accept" },
        },
        {
            complete = { quest = { id = 115, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } } } },
            dependsOn = { "alliance-extra-115-accept" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                any = {
                                    {
                                        ["not"] = {
                                            any = {
                                                { quest = { id = 115, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 115, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 20, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
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
                                                { quest = { id = 115, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 115, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 20, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
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
                                        { quest = { id = 115, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 115, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        { any = { { any = { { quest = { id = 20, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                    },
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
                                { quest = { id = 115, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 115, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 20, state = "activeOrCompleted" } },
                                                                { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-115-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 20 } } },
            route = {
                {
                    label = "Blackrock Shadowcaster",
                    mapID = 1433,
                    offMapText = "Travel to Blackrock Shadowcaster in Redridge Mountains.",
                    x = 0.684,
                    y = 0.546,
                },
            },
            text = "Bring 3 Midnight Orbs to Marshal Marris in Lakeshire. This is an elite. Bring a group.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { questObjective = { count = 1, id = 180, index = 1, text = "Lieutenant Fangore" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 15 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-accept-180-wanted-lieutenant-fangore" },
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-objective-180-1-lieutenant-fangore",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Lieutenant Fangore", mapID = 1433, offMapText = "Travel to Lieutenant Fangore.", x = 0.798, y = 0.374 },
            },
            sourceStep = 95,
            text = "Collect 1 Fangore's Paw.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceActionID = "objective-180-1-lieutenant-fangore",
        },
        {
            complete = { quest = { id = 94, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-turnin-94-a-watchful-eye",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "A Watchful Eye", mapID = 1433, offMapText = "Travel to A Watchful Eye.", x = 0.8436, y = 0.4671 } },
            sourceActionID = "turnin-94-a-watchful-eye",
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceStep = 96,
            text = "Turn in A Watchful Eye.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 248,
            complete = { level = { min = 20 } },
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 248, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 248, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 94, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-248-level",
            kind = "note",
            requiredLevel = 20,
            text = "Reach level 20 before this visit.",
        },
        {
            complete = { quest = { id = 248, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } } } },
            dependsOn = { "alliance-extra-248-level" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 248, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 248, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        { any = { { any = { { quest = { id = 94, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
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
                                        { quest = { id = 248, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 248, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        { any = { { any = { { quest = { id = 94, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                    },
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
                                { quest = { id = 248, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 248, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { item = { minCount = 1, name = "Glyph of Azora" } },
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 94, state = "activeOrCompleted" } },
                                                                { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-248-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 94 } } },
            route = {
                {
                    label = "Old Lion Statue",
                    mapID = 1433,
                    offMapText = "Travel to Old Lion Statue in Redridge Mountains.",
                    x = 0.843,
                    y = 0.469,
                },
            },
            text = "Accept Looking Further from Old Lion Statue.",
            useClientText = false,
        },
        {
            complete = { questObjective = { count = 10, id = 91, index = 1, text = "Shadowhide Pendant" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 17 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-accept-91-solomon-s-law" },
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-objective-91-1-shadowhide-pendant",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Shadowhide Pendant", mapID = 1433, offMapText = "Travel to Shadowhide Pendant.", x = 0.754, y = 0.426 },
            },
            sourceStep = 97,
            text = "Collect 10 Shadowhide Pendant.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceActionID = "objective-91-1-shadowhide-pendant",
        },
        {
            complete = { questObjective = { count = 15, id = 128, index = 1, text = "Blackrock Champion" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-accept-128-blackrock-bounty" },
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-objective-128-1-blackrock-champion",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Blackrock Champion", mapID = 1433, offMapText = "Travel to Blackrock Champion.", x = 0.3321, y = 0.0688 },
            },
            sourceStep = 98,
            text = "Kill 15 Blackrock Champion.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceActionID = "objective-128-1-blackrock-champion",
        },
        {
            complete = { quest = { id = 219, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 19 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-accept-219-missing-in-action",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Corporal Keeshan",
                    mapID = 1433,
                    offMapText = "Travel to Corporal Keeshan in Redridge Mountains.",
                    x = 0.234,
                    y = 0.126,
                },
            },
            sourceStep = 99,
            text = "Accept Missing In Action from Corporal Keeshan.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceActionID = "accept-219-missing-in-action",
        },
        {
            complete = { quest = { id = 219, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 19 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-accept-219-missing-in-action" },
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-objective-219-reviewed-escort",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Escort destination", mapID = 1433, offMapText = "Travel to Escort destination.", x = 0.3341, y = 0.4851 },
            },
            sourceStep = 100,
            text = "Follow and protect Corporal Keeshan out of the cave and back to Lakeshire.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceActionID = "objective-219-reviewed-escort",
        },
        {
            complete = { quest = { id = 219, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 19 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-accept-219-missing-in-action",
                "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-objective-219-reviewed-escort",
            },
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-turnin-219-missing-in-action",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Marshal Marris",
                    mapID = 1433,
                    offMapText = "Travel to Marshal Marris in Redridge Mountains.",
                    x = 0.3351,
                    y = 0.4897,
                },
            },
            sourceActionID = "turnin-219-missing-in-action",
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceStep = 101,
            text = "Turn in Missing In Action to Marshal Marris.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 126, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 15 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-accept-126-howling-in-the-hills",
                "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-objective-126-1-yowler",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 126, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 126, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 124, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 119, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 118, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-turnin-126-howling-in-the-hills",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 124 } } },
            route = {
                {
                    label = "Verner Osgood",
                    mapID = 1433,
                    offMapText = "Travel to Verner Osgood in Redridge Mountains.",
                    x = 0.3097,
                    y = 0.4727,
                },
            },
            sourceActionID = "turnin-126-howling-in-the-hills",
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceStep = 103,
            text = "Turn in Howling in the Hills to Verner Osgood.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 19, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } } } },
            dependsOn = { "alliance-extra-19-objective" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                any = {
                                    {
                                        ["not"] = {
                                            any = {
                                                { quest = { id = 19, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 19, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 20, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
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
                                                { quest = { id = 19, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 19, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 20, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
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
                                        { quest = { id = 19, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 19, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        { any = { { any = { { quest = { id = 20, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                    },
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
                                { quest = { id = 19, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 19, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 20, state = "activeOrCompleted" } },
                                                                { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-19-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 20 } } },
            route = {
                {
                    label = "Marshal Marris",
                    mapID = 1433,
                    offMapText = "Travel to Marshal Marris in Redridge Mountains.",
                    x = 0.334,
                    y = 0.488,
                },
            },
            text = "Turn in Tharil'zun to Marshal Marris.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 115, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } } } },
            dependsOn = { "alliance-extra-115-objective" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                any = {
                                    {
                                        ["not"] = {
                                            any = {
                                                { quest = { id = 115, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 115, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 20, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
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
                                                { quest = { id = 115, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 115, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 20, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
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
                                        { quest = { id = 115, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 115, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        { any = { { any = { { quest = { id = 20, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                    },
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
                                { quest = { id = 115, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 115, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 20, state = "activeOrCompleted" } },
                                                                { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-115-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 20 } } },
            route = {
                {
                    label = "Marshal Marris",
                    mapID = 1433,
                    offMapText = "Travel to Marshal Marris in Redridge Mountains.",
                    x = 0.334,
                    y = 0.488,
                },
            },
            text = "Turn in Shadow Magic to Marshal Marris.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 91, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 17 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-accept-91-solomon-s-law",
                "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-objective-91-1-shadowhide-pendant",
            },
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-turnin-91-solomon-s-law",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Bailiff Conacher",
                    mapID = 1433,
                    offMapText = "Travel to Bailiff Conacher in Redridge Mountains.",
                    x = 0.2971,
                    y = 0.4427,
                },
            },
            sourceActionID = "turnin-91-solomon-s-law",
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceStep = 104,
            text = "Turn in Solomon's Law to Bailiff Conacher.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 169, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 15 } } } },
            dependsOn = { "alliance-extra-169-objective" },
            id = "alliance-extra-169-turnin",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Magistrate Solomon",
                    mapID = 1433,
                    offMapText = "Travel to Magistrate Solomon in Redridge Mountains.",
                    x = 0.3,
                    y = 0.442,
                },
            },
            text = "Turn in Wanted: Gath'Ilzogg to Magistrate Solomon.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 180, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 15 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-accept-180-wanted-lieutenant-fangore",
                "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-objective-180-1-lieutenant-fangore",
            },
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-turnin-180-wanted-lieutenant-fangore",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Magistrate Solomon",
                    mapID = 1433,
                    offMapText = "Travel to Magistrate Solomon in Redridge Mountains.",
                    x = 0.2999,
                    y = 0.4446,
                },
            },
            sourceActionID = "turnin-180-wanted-lieutenant-fangore",
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceStep = 105,
            text = "Turn in Wanted: Lieutenant Fangore to Magistrate Solomon.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 128, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-accept-128-blackrock-bounty",
                "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-objective-128-1-blackrock-champion",
            },
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-turnin-128-blackrock-bounty",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Guard Howe",
                    mapID = 1433,
                    offMapText = "Travel to Guard Howe in Redridge Mountains.",
                    x = 0.3154,
                    y = 0.5786,
                },
            },
            sourceActionID = "turnin-128-blackrock-bounty",
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceStep = 106,
            text = "Turn in Blackrock Bounty to Guard Howe.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 98387,
            complete = { level = { min = 18 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-level-before-woven-accept-98387-blackrock-blockade",
            kind = "note",
            requiredLevel = 18,
            requiredQuests = {},
            text = "Reach level 18 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceActionID = "level-before-woven-accept-98387-blackrock-blockade",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 98387, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-woven-accept-98387-blackrock-blockade",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Marshal Marris", mapID = 1433, offMapText = "Travel to Marshal Marris.", x = 0.284, y = 0.49 } },
            text = "Accept Blackrock Blockade from Marshal Marris in Lakeshire.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceActionID = "woven-accept-98387-blackrock-blockade",
        },
        {
            complete = { quest = { id = 98386, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 15 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-woven-accept-98386-althers-mill",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Foreman Oslow", mapID = 1433, offMapText = "Travel to Foreman Oslow.", x = 0.27, y = 0.486 } },
            text = "Accept Alther's Mill from Foreman Oslow in Lakeshire.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceActionID = "woven-accept-98386-althers-mill",
        },
        {
            complete = { quest = { id = 98387, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-woven-accept-98387-blackrock-blockade" },
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-woven-objective-98387-blackrock-blockade",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Blackrock Grunt", mapID = 1433, offMapText = "Travel to Blackrock Grunt.", x = 0.292, y = 0.116 } },
            text = "Blackrock Blockade: collect 10 Battleworn Axes from the Blackrock camp you are already clearing. No saved spot for this, so the guide follows the pin in your quest log.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceActionID = "woven-objective-98387-blackrock-blockade",
        },
        {
            complete = { quest = { id = 98387, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-woven-accept-98387-blackrock-blockade",
                "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-woven-objective-98387-blackrock-blockade",
            },
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-woven-turnin-98387-blackrock-blockade",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Marshal Marris", mapID = 1433, offMapText = "Travel to Marshal Marris.", x = 0.334, y = 0.488 } },
            sourceActionID = "woven-turnin-98387-blackrock-blockade",
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            text = "Turn in Blackrock Blockade to Marshal Marris in Lakeshire.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 98386, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 15 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-woven-accept-98386-althers-mill" },
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-woven-objective-98386-althers-mill",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Greater Tarantula", mapID = 1433, offMapText = "Travel to Greater Tarantula.", x = 0.52, y = 0.452 },
                { label = "Greater Tarantula", mapID = 1433, offMapText = "Travel to Greater Tarantula.", x = 0.472, y = 0.408 },
            },
            text = "Alther's Mill: slay 12 Greater Tarantulas and destroy 6 Tarantula Eggs.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            sourceActionID = "woven-objective-98386-althers-mill",
        },
        {
            complete = { quest = { id = 98386, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 15 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-woven-accept-98386-althers-mill",
                "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-woven-objective-98386-althers-mill",
            },
            id = "alliance-leveling-era-alliance-duskwood-and-redridge-mountains-woven-turnin-98386-althers-mill",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Foreman Oslow", mapID = 1433, offMapText = "Travel to Foreman Oslow.", x = 0.322, y = 0.486 } },
            sourceActionID = "woven-turnin-98386-althers-mill",
            sourceGuide = "leveling-era-alliance-duskwood-and-redridge-mountains",
            text = "Turn in Alther's Mill to Foreman Oslow in Lakeshire.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 143, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 14 } } } },
            dependsOn = { "alliance-extra-143-accept" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                any = {
                                    {
                                        ["not"] = {
                                            any = {
                                                { quest = { id = 143, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 143, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 121, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
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
                                                { quest = { id = 143, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 143, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 121, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
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
                                        { quest = { id = 143, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 143, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 121, state = "completed" } },
                                                                        {
                                                                            all = {
                                                                                { faction = "Alliance" },
                                                                                { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 143, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 143, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 121, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { race = { 1, 3, 4, 7 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 120, state = "activeOrCompleted" } },
                                                                                        { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-143-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 121 } } },
            route = {},
            text = "Magistrate Solomon wants you to take his written plea to Gryan Stoutmantle in Westfall. Follow the quest log for the destination.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 143, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 14 } } } },
            dependsOn = { "alliance-extra-143-objective" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                any = {
                                    {
                                        ["not"] = {
                                            any = {
                                                { quest = { id = 143, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 143, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 121, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
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
                                                { quest = { id = 143, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 143, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 121, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
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
                                        { quest = { id = 143, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 143, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 121, state = "completed" } },
                                                                        {
                                                                            all = {
                                                                                { faction = "Alliance" },
                                                                                { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 143, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 143, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 121, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { race = { 1, 3, 4, 7 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 120, state = "activeOrCompleted" } },
                                                                                        { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-143-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 121 } } },
            route = {
                {
                    label = "Gryan Stoutmantle",
                    mapID = 1436,
                    offMapText = "Travel to Gryan Stoutmantle in Westfall.",
                    x = 0.562,
                    y = 0.476,
                },
            },
            text = "Turn in Messenger to Westfall to Gryan Stoutmantle.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 144,
            complete = { level = { min = 14 } },
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 144, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 144, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 143, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 121, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-144-level",
            kind = "note",
            requiredLevel = 14,
            text = "Reach level 14 before this visit.",
        },
        {
            complete = { quest = { id = 144, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 14 } } } },
            dependsOn = { "alliance-extra-144-level" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 144, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 144, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 143, state = "completed" } },
                                                                        {
                                                                            all = {
                                                                                { faction = "Alliance" },
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 121, state = "completed" } },
                                                                                                {
                                                                                                    all = {
                                                                                                        { faction = "Alliance" },
                                                                                                        { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
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
                                        { quest = { id = 144, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 144, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 143, state = "completed" } },
                                                                        {
                                                                            all = {
                                                                                { faction = "Alliance" },
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 121, state = "completed" } },
                                                                                                {
                                                                                                    all = {
                                                                                                        { faction = "Alliance" },
                                                                                                        { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 144, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 144, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 143, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { race = { 1, 3, 4, 7 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 121, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Alliance" },
                                                                                                { race = { 1, 3, 4, 7 } },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 120, state = "activeOrCompleted" } },
                                                                                                                { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-144-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 143 } } },
            route = {
                {
                    label = "Gryan Stoutmantle",
                    mapID = 1436,
                    offMapText = "Travel to Gryan Stoutmantle in Westfall.",
                    x = 0.562,
                    y = 0.476,
                },
            },
            text = "Accept Messenger to Westfall from Gryan Stoutmantle.",
            useClientText = false,
        },
        {
            complete = { quest = { id = 144, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 14 } } } },
            dependsOn = { "alliance-extra-144-accept" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                any = {
                                    {
                                        ["not"] = {
                                            any = {
                                                { quest = { id = 144, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 144, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 143, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 121, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
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
                                                { quest = { id = 144, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 144, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 143, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 121, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
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
                                        { quest = { id = 144, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 144, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 143, state = "completed" } },
                                                                        {
                                                                            all = {
                                                                                { faction = "Alliance" },
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 121, state = "completed" } },
                                                                                                {
                                                                                                    all = {
                                                                                                        { faction = "Alliance" },
                                                                                                        { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 144, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 144, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 143, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { race = { 1, 3, 4, 7 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 121, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Alliance" },
                                                                                                { race = { 1, 3, 4, 7 } },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 120, state = "activeOrCompleted" } },
                                                                                                                { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-144-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 143 } } },
            route = {},
            text = "Return to Magistrate Solomon with Gryan Stoutmantle's response. Follow the quest log for the destination.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 144, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 14 } } } },
            dependsOn = { "alliance-extra-144-objective" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                any = {
                                    {
                                        ["not"] = {
                                            any = {
                                                { quest = { id = 144, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 144, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 143, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 121, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
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
                                                { quest = { id = 144, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 144, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 143, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 121, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
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
                                        { quest = { id = 144, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 144, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 143, state = "completed" } },
                                                                        {
                                                                            all = {
                                                                                { faction = "Alliance" },
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 121, state = "completed" } },
                                                                                                {
                                                                                                    all = {
                                                                                                        { faction = "Alliance" },
                                                                                                        { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 144, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 144, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 143, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { race = { 1, 3, 4, 7 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 121, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Alliance" },
                                                                                                { race = { 1, 3, 4, 7 } },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 120, state = "activeOrCompleted" } },
                                                                                                                { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-144-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 143 } } },
            route = {
                {
                    label = "Magistrate Solomon",
                    mapID = 1433,
                    offMapText = "Travel to Magistrate Solomon in Redridge Mountains.",
                    x = 0.3,
                    y = 0.442,
                },
            },
            text = "Turn in Messenger to Westfall to Magistrate Solomon.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 145,
            complete = { level = { min = 18 } },
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 145, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 145, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 144, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 143, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 121, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-145-level",
            kind = "note",
            requiredLevel = 18,
            text = "Reach level 18 before this visit.",
        },
        {
            complete = { quest = { id = 145, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } } } },
            dependsOn = { "alliance-extra-145-level" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 145, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 145, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 144, state = "completed" } },
                                                                        {
                                                                            all = {
                                                                                { faction = "Alliance" },
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 143, state = "completed" } },
                                                                                                {
                                                                                                    all = {
                                                                                                        { faction = "Alliance" },
                                                                                                        {
                                                                                                            any = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        { quest = { id = 121, state = "completed" } },
                                                                                                                        {
                                                                                                                            all = {
                                                                                                                                { faction = "Alliance" },
                                                                                                                                { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
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
                                        { quest = { id = 145, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 145, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 144, state = "completed" } },
                                                                        {
                                                                            all = {
                                                                                { faction = "Alliance" },
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 143, state = "completed" } },
                                                                                                {
                                                                                                    all = {
                                                                                                        { faction = "Alliance" },
                                                                                                        {
                                                                                                            any = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        { quest = { id = 121, state = "completed" } },
                                                                                                                        {
                                                                                                                            all = {
                                                                                                                                { faction = "Alliance" },
                                                                                                                                { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 145, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 145, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 144, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { race = { 1, 3, 4, 7 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 143, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Alliance" },
                                                                                                { race = { 1, 3, 4, 7 } },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 121, state = "activeOrCompleted" } },
                                                                                                                {
                                                                                                                    all = {
                                                                                                                        { faction = "Alliance" },
                                                                                                                        { race = { 1, 3, 4, 7 } },
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                {
                                                                                                                                    any = {
                                                                                                                                        { quest = { id = 120, state = "activeOrCompleted" } },
                                                                                                                                        { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-145-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 144 } } },
            route = {
                {
                    label = "Magistrate Solomon",
                    mapID = 1433,
                    offMapText = "Travel to Magistrate Solomon in Redridge Mountains.",
                    x = 0.3,
                    y = 0.442,
                },
            },
            text = "Accept Messenger to Darkshire from Magistrate Solomon.",
            useClientText = false,
        },
        {
            complete = { quest = { id = 145, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } } } },
            dependsOn = { "alliance-extra-145-accept" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                any = {
                                    {
                                        ["not"] = {
                                            any = {
                                                { quest = { id = 145, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 145, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 144, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 143, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 121, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
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
                                                { quest = { id = 145, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 145, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 144, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 143, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 121, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
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
                                        { quest = { id = 145, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 145, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 144, state = "completed" } },
                                                                        {
                                                                            all = {
                                                                                { faction = "Alliance" },
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 143, state = "completed" } },
                                                                                                {
                                                                                                    all = {
                                                                                                        { faction = "Alliance" },
                                                                                                        {
                                                                                                            any = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        { quest = { id = 121, state = "completed" } },
                                                                                                                        {
                                                                                                                            all = {
                                                                                                                                { faction = "Alliance" },
                                                                                                                                { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 145, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 145, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 144, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { race = { 1, 3, 4, 7 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 143, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Alliance" },
                                                                                                { race = { 1, 3, 4, 7 } },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 121, state = "activeOrCompleted" } },
                                                                                                                {
                                                                                                                    all = {
                                                                                                                        { faction = "Alliance" },
                                                                                                                        { race = { 1, 3, 4, 7 } },
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                {
                                                                                                                                    any = {
                                                                                                                                        { quest = { id = 120, state = "activeOrCompleted" } },
                                                                                                                                        { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-145-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 144 } } },
            route = {},
            text = "Magistrate Solomon wants you to take a letter to Lord Ebonlocke in Darkshire. Follow the quest log for the destination.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 145, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } } } },
            dependsOn = { "alliance-extra-145-objective" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                any = {
                                    {
                                        ["not"] = {
                                            any = {
                                                { quest = { id = 145, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 145, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 144, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 143, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 121, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
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
                                                { quest = { id = 145, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 145, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 144, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 143, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 121, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
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
                                        { quest = { id = 145, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 145, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 144, state = "completed" } },
                                                                        {
                                                                            all = {
                                                                                { faction = "Alliance" },
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 143, state = "completed" } },
                                                                                                {
                                                                                                    all = {
                                                                                                        { faction = "Alliance" },
                                                                                                        {
                                                                                                            any = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        { quest = { id = 121, state = "completed" } },
                                                                                                                        {
                                                                                                                            all = {
                                                                                                                                { faction = "Alliance" },
                                                                                                                                { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 145, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 145, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 144, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { race = { 1, 3, 4, 7 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 143, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Alliance" },
                                                                                                { race = { 1, 3, 4, 7 } },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 121, state = "activeOrCompleted" } },
                                                                                                                {
                                                                                                                    all = {
                                                                                                                        { faction = "Alliance" },
                                                                                                                        { race = { 1, 3, 4, 7 } },
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                {
                                                                                                                                    any = {
                                                                                                                                        { quest = { id = 120, state = "activeOrCompleted" } },
                                                                                                                                        { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-145-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 144 } } },
            route = {
                {
                    label = "Lord Ello Ebonlocke",
                    mapID = 1431,
                    offMapText = "Travel to Lord Ello Ebonlocke in Duskwood.",
                    x = 0.718,
                    y = 0.464,
                },
            },
            text = "Turn in Messenger to Darkshire to Lord Ello Ebonlocke.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 146,
            complete = { level = { min = 18 } },
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 146, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 146, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 145, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 144, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 143, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 121, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-146-level",
            kind = "note",
            requiredLevel = 18,
            text = "Reach level 18 before this visit.",
        },
        {
            complete = { quest = { id = 146, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } } } },
            dependsOn = { "alliance-extra-146-level" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 146, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 146, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 145, state = "completed" } },
                                                                        {
                                                                            all = {
                                                                                { faction = "Alliance" },
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 144, state = "completed" } },
                                                                                                {
                                                                                                    all = {
                                                                                                        { faction = "Alliance" },
                                                                                                        {
                                                                                                            any = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        { quest = { id = 143, state = "completed" } },
                                                                                                                        {
                                                                                                                            all = {
                                                                                                                                { faction = "Alliance" },
                                                                                                                                {
                                                                                                                                    any = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                { quest = { id = 121, state = "completed" } },
                                                                                                                                                {
                                                                                                                                                    all = {
                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                        { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
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
                                        { quest = { id = 146, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 146, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 145, state = "completed" } },
                                                                        {
                                                                            all = {
                                                                                { faction = "Alliance" },
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 144, state = "completed" } },
                                                                                                {
                                                                                                    all = {
                                                                                                        { faction = "Alliance" },
                                                                                                        {
                                                                                                            any = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        { quest = { id = 143, state = "completed" } },
                                                                                                                        {
                                                                                                                            all = {
                                                                                                                                { faction = "Alliance" },
                                                                                                                                {
                                                                                                                                    any = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                { quest = { id = 121, state = "completed" } },
                                                                                                                                                {
                                                                                                                                                    all = {
                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                        { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 146, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 146, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 145, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { race = { 1, 3, 4, 7 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 144, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Alliance" },
                                                                                                { race = { 1, 3, 4, 7 } },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 143, state = "activeOrCompleted" } },
                                                                                                                {
                                                                                                                    all = {
                                                                                                                        { faction = "Alliance" },
                                                                                                                        { race = { 1, 3, 4, 7 } },
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                {
                                                                                                                                    any = {
                                                                                                                                        { quest = { id = 121, state = "activeOrCompleted" } },
                                                                                                                                        {
                                                                                                                                            all = {
                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                { race = { 1, 3, 4, 7 } },
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        {
                                                                                                                                                            any = {
                                                                                                                                                                { quest = { id = 120, state = "activeOrCompleted" } },
                                                                                                                                                                { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-146-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 145 } } },
            route = {
                {
                    label = "Lord Ello Ebonlocke",
                    mapID = 1431,
                    offMapText = "Travel to Lord Ello Ebonlocke in Duskwood.",
                    x = 0.718,
                    y = 0.464,
                },
            },
            text = "Accept Messenger to Darkshire from Lord Ello Ebonlocke.",
            useClientText = false,
        },
        {
            complete = { quest = { id = 146, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } } } },
            dependsOn = { "alliance-extra-146-accept" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                any = {
                                    {
                                        ["not"] = {
                                            any = {
                                                { quest = { id = 146, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 146, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 145, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 144, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 143, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 121, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
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
                                                { quest = { id = 146, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 146, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 145, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 144, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 143, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 121, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
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
                                        { quest = { id = 146, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 146, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 145, state = "completed" } },
                                                                        {
                                                                            all = {
                                                                                { faction = "Alliance" },
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 144, state = "completed" } },
                                                                                                {
                                                                                                    all = {
                                                                                                        { faction = "Alliance" },
                                                                                                        {
                                                                                                            any = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        { quest = { id = 143, state = "completed" } },
                                                                                                                        {
                                                                                                                            all = {
                                                                                                                                { faction = "Alliance" },
                                                                                                                                {
                                                                                                                                    any = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                { quest = { id = 121, state = "completed" } },
                                                                                                                                                {
                                                                                                                                                    all = {
                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                        { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 146, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 146, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 145, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { race = { 1, 3, 4, 7 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 144, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Alliance" },
                                                                                                { race = { 1, 3, 4, 7 } },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 143, state = "activeOrCompleted" } },
                                                                                                                {
                                                                                                                    all = {
                                                                                                                        { faction = "Alliance" },
                                                                                                                        { race = { 1, 3, 4, 7 } },
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                {
                                                                                                                                    any = {
                                                                                                                                        { quest = { id = 121, state = "activeOrCompleted" } },
                                                                                                                                        {
                                                                                                                                            all = {
                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                { race = { 1, 3, 4, 7 } },
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        {
                                                                                                                                                            any = {
                                                                                                                                                                { quest = { id = 120, state = "activeOrCompleted" } },
                                                                                                                                                                { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-146-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 145 } } },
            route = {},
            text = "Return to Magistrate Solomon with Lord Ebonlocke's letter of response. Follow the quest log for the destination.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 146, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } } } },
            dependsOn = { "alliance-extra-146-objective" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                any = {
                                    {
                                        ["not"] = {
                                            any = {
                                                { quest = { id = 146, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 146, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 145, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 144, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 143, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 121, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
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
                                                { quest = { id = 146, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 146, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 145, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 144, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 143, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 121, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
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
                                        { quest = { id = 146, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 146, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 145, state = "completed" } },
                                                                        {
                                                                            all = {
                                                                                { faction = "Alliance" },
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 144, state = "completed" } },
                                                                                                {
                                                                                                    all = {
                                                                                                        { faction = "Alliance" },
                                                                                                        {
                                                                                                            any = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        { quest = { id = 143, state = "completed" } },
                                                                                                                        {
                                                                                                                            all = {
                                                                                                                                { faction = "Alliance" },
                                                                                                                                {
                                                                                                                                    any = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                { quest = { id = 121, state = "completed" } },
                                                                                                                                                {
                                                                                                                                                    all = {
                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                        { any = { { any = { { quest = { id = 120, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 146, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 146, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 145, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { race = { 1, 3, 4, 7 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 144, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Alliance" },
                                                                                                { race = { 1, 3, 4, 7 } },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 143, state = "activeOrCompleted" } },
                                                                                                                {
                                                                                                                    all = {
                                                                                                                        { faction = "Alliance" },
                                                                                                                        { race = { 1, 3, 4, 7 } },
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                {
                                                                                                                                    any = {
                                                                                                                                        { quest = { id = 121, state = "activeOrCompleted" } },
                                                                                                                                        {
                                                                                                                                            all = {
                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                { race = { 1, 3, 4, 7 } },
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        {
                                                                                                                                                            any = {
                                                                                                                                                                { quest = { id = 120, state = "activeOrCompleted" } },
                                                                                                                                                                { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-146-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 145 } } },
            route = {
                {
                    label = "Magistrate Solomon",
                    mapID = 1433,
                    offMapText = "Travel to Magistrate Solomon in Redridge Mountains.",
                    x = 0.3,
                    y = 0.442,
                },
            },
            text = "Turn in Messenger to Darkshire to Magistrate Solomon.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 248, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } } } },
            dependsOn = { "alliance-extra-248-accept" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                any = {
                                    {
                                        ["not"] = {
                                            any = {
                                                { quest = { id = 248, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 248, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 94, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
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
                                                { quest = { id = 248, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 248, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 94, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
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
                                        { quest = { id = 248, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 248, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        { any = { { any = { { quest = { id = 94, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                    },
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
                                { quest = { id = 248, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 248, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { item = { minCount = 1, name = "Glyph of Azora" } },
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 94, state = "activeOrCompleted" } },
                                                                { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-248-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 94 } } },
            route = {},
            text = "Climb the intact watch tower beside Stonewatch Keep.  Find a suitable container to place the Glyph of Azora. This is an elite. Bring a group. Follow the quest log for the destination.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 248, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } } } },
            dependsOn = { "alliance-extra-248-objective" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                any = {
                                    {
                                        ["not"] = {
                                            any = {
                                                { quest = { id = 248, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 248, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 94, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
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
                                                { quest = { id = 248, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 248, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 94, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
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
                                        { quest = { id = 248, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 248, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        { any = { { any = { { quest = { id = 94, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                    },
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
                                { quest = { id = 248, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 248, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { item = { minCount = 1, name = "Glyph of Azora" } },
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 94, state = "activeOrCompleted" } },
                                                                { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-248-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 94 } } },
            route = {
                {
                    label = "An Empty Jar",
                    mapID = 1433,
                    offMapText = "Travel to An Empty Jar in Redridge Mountains.",
                    x = 0.632,
                    y = 0.497,
                },
            },
            text = "Turn in Looking Further to An Empty Jar.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 249,
            complete = { level = { min = 20 } },
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 249, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 249, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 248, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 94, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-249-level",
            kind = "note",
            requiredLevel = 20,
            text = "Reach level 20 before this visit.",
        },
        {
            complete = { quest = { id = 249, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } } } },
            dependsOn = { "alliance-extra-249-level" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 249, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 249, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 248, state = "completed" } },
                                                                        {
                                                                            all = {
                                                                                { faction = "Alliance" },
                                                                                { any = { { any = { { quest = { id = 94, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
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
                                        { quest = { id = 249, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 249, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 248, state = "completed" } },
                                                                        {
                                                                            all = {
                                                                                { faction = "Alliance" },
                                                                                { any = { { any = { { quest = { id = 94, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 249, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 249, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 248, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { item = { minCount = 1, name = "Glyph of Azora" } },
                                                                        { faction = "Alliance" },
                                                                        { race = { 1, 3, 4, 7 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 94, state = "activeOrCompleted" } },
                                                                                        { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-249-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 248 } } },
            route = {
                { label = "Theocritus", mapID = 1429, offMapText = "Travel to Theocritus in Elwynn Forest.", x = 0.652, y = 0.698 },
            },
            text = "Accept Morganth from Theocritus.",
            useClientText = false,
        },
        {
            complete = { quest = { id = 249, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } } } },
            dependsOn = { "alliance-extra-249-accept" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                any = {
                                    {
                                        ["not"] = {
                                            any = {
                                                { quest = { id = 249, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 249, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 248, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 94, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
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
                                                { quest = { id = 249, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 249, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 248, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 94, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
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
                                        { quest = { id = 249, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 249, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 248, state = "completed" } },
                                                                        {
                                                                            all = {
                                                                                { faction = "Alliance" },
                                                                                { any = { { any = { { quest = { id = 94, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 249, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 249, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 248, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { item = { minCount = 1, name = "Glyph of Azora" } },
                                                                        { faction = "Alliance" },
                                                                        { race = { 1, 3, 4, 7 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 94, state = "activeOrCompleted" } },
                                                                                        { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-249-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 248 } } },
            route = {
                { label = "Morganth", mapID = 1433, offMapText = "Travel to Morganth in Redridge Mountains.", x = 0.8, y = 0.494 },
            },
            text = "Defeat Morganth.  Bring his Pendant of Shadow to Theocritus at the Tower of Azora in Elwynn Forest. This is an elite. Bring a group.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 249, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } } } },
            dependsOn = { "alliance-extra-249-objective" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                any = {
                                    {
                                        ["not"] = {
                                            any = {
                                                { quest = { id = 249, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 249, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 248, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 94, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
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
                                                { quest = { id = 249, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 249, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 248, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 94, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
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
                                        { quest = { id = 249, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 249, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 248, state = "completed" } },
                                                                        {
                                                                            all = {
                                                                                { faction = "Alliance" },
                                                                                { any = { { any = { { quest = { id = 94, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 249, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 249, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 248, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { item = { minCount = 1, name = "Glyph of Azora" } },
                                                                        { faction = "Alliance" },
                                                                        { race = { 1, 3, 4, 7 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 94, state = "activeOrCompleted" } },
                                                                                        { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-249-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 248 } } },
            route = {
                { label = "Theocritus", mapID = 1429, offMapText = "Travel to Theocritus in Elwynn Forest.", x = 0.652, y = 0.698 },
            },
            text = "Turn in Morganth to Theocritus.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            id = "alliance-extra-343-objective",
            kind = "objective",
            text = "Go to the Royal Library in Stormwind Keep and speak with Milton Sheaf. He can find for you the book on metallurgy that Brother Kristoff needs for his speech. Follow the quest log for the destination.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } } } },
            route = {},
            complete = { quest = { id = 343, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-343-accept" },
            useClientPin = true,
        },
        {
            complete = { quest = { id = 343, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } } } },
            dependsOn = { "alliance-extra-343-objective" },
            id = "alliance-extra-343-turnin",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Milton Sheaf", mapID = 1453, offMapText = "Travel to Milton Sheaf in Stormwind City.", x = 0.74, y = 0.076 },
            },
            text = "Turn in Speaking of Fortitude to Milton Sheaf.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 344,
            complete = { level = { min = 20 } },
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 344, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 344, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 343, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-344-level",
            kind = "note",
            requiredLevel = 20,
            text = "Reach level 20 before this visit.",
        },
        {
            complete = { quest = { id = 344, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } } } },
            dependsOn = { "alliance-extra-344-level" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 344, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 344, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        { any = { { any = { { quest = { id = 343, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
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
                                        { quest = { id = 344, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 344, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        { any = { { any = { { quest = { id = 343, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                    },
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
                                { quest = { id = 344, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 344, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 343, state = "activeOrCompleted" } },
                                                                { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-344-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 343 } } },
            route = {
                { label = "Milton Sheaf", mapID = 1453, offMapText = "Travel to Milton Sheaf in Stormwind City.", x = 0.74, y = 0.076 },
            },
            text = "Accept Brother Paxton from Milton Sheaf.",
            useClientText = false,
        },
        {
            complete = { quest = { id = 344, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } } } },
            dependsOn = { "alliance-extra-344-accept" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                any = {
                                    {
                                        ["not"] = {
                                            any = {
                                                { quest = { id = 344, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 344, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 343, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
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
                                                { quest = { id = 344, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 344, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 343, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
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
                                        { quest = { id = 344, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 344, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        { any = { { any = { { quest = { id = 343, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                    },
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
                                { quest = { id = 344, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 344, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 343, state = "activeOrCompleted" } },
                                                                { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-344-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 343 } } },
            route = {},
            text = "Speak with Brother Paxton in the Northshire Abbey. Follow the quest log for the destination.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 344, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } } } },
            dependsOn = { "alliance-extra-344-objective" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                any = {
                                    {
                                        ["not"] = {
                                            any = {
                                                { quest = { id = 344, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 344, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 343, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
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
                                                { quest = { id = 344, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 344, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 343, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
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
                                        { quest = { id = 344, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 344, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        { any = { { any = { { quest = { id = 343, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                    },
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
                                { quest = { id = 344, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 344, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 343, state = "activeOrCompleted" } },
                                                                { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-344-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 343 } } },
            route = {
                {
                    label = "Brother Paxton",
                    mapID = 1429,
                    offMapText = "Travel to Brother Paxton in Elwynn Forest.",
                    x = 0.494,
                    y = 0.404,
                },
            },
            text = "Turn in Brother Paxton to Brother Paxton.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 345,
            complete = { level = { min = 20 } },
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 345, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 345, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 344, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 343, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-345-level",
            kind = "note",
            requiredLevel = 20,
            text = "Reach level 20 before this visit.",
        },
        {
            complete = { quest = { id = 345, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } } } },
            dependsOn = { "alliance-extra-345-level" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 345, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 345, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 344, state = "completed" } },
                                                                        {
                                                                            all = {
                                                                                { faction = "Alliance" },
                                                                                { any = { { any = { { quest = { id = 343, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
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
                                        { quest = { id = 345, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 345, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 344, state = "completed" } },
                                                                        {
                                                                            all = {
                                                                                { faction = "Alliance" },
                                                                                { any = { { any = { { quest = { id = 343, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 345, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 345, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 344, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { race = { 1, 3, 4, 7 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 343, state = "activeOrCompleted" } },
                                                                                        { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-345-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 344 } } },
            route = {
                {
                    label = "Brother Paxton",
                    mapID = 1429,
                    offMapText = "Travel to Brother Paxton in Elwynn Forest.",
                    x = 0.494,
                    y = 0.404,
                },
            },
            text = "Accept Ink Supplies from Brother Paxton.",
            useClientText = false,
        },
        {
            complete = { quest = { id = 345, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } } } },
            dependsOn = { "alliance-extra-345-accept" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                any = {
                                    {
                                        ["not"] = {
                                            any = {
                                                { quest = { id = 345, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 345, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 344, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 343, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
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
                                                { quest = { id = 345, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 345, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 344, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 343, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
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
                                        { quest = { id = 345, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 345, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 344, state = "completed" } },
                                                                        {
                                                                            all = {
                                                                                { faction = "Alliance" },
                                                                                { any = { { any = { { quest = { id = 343, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 345, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 345, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 344, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { race = { 1, 3, 4, 7 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 343, state = "activeOrCompleted" } },
                                                                                        { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-345-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 344 } } },
            route = {},
            text = "Speak with Foreman Oslow in Lakeshire and ask him for Rethban Iron Ore. Follow the quest log for the destination.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 345, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } } } },
            dependsOn = { "alliance-extra-345-objective" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                any = {
                                    {
                                        ["not"] = {
                                            any = {
                                                { quest = { id = 345, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 345, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 344, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 343, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
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
                                                { quest = { id = 345, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 345, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 344, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 343, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
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
                                        { quest = { id = 345, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 345, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 344, state = "completed" } },
                                                                        {
                                                                            all = {
                                                                                { faction = "Alliance" },
                                                                                { any = { { any = { { quest = { id = 343, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 345, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 345, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 344, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { race = { 1, 3, 4, 7 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 343, state = "activeOrCompleted" } },
                                                                                        { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-345-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 344 } } },
            route = {
                {
                    label = "Foreman Oslow",
                    mapID = 1433,
                    offMapText = "Travel to Foreman Oslow in Redridge Mountains.",
                    x = 0.322,
                    y = 0.486,
                },
            },
            text = "Turn in Ink Supplies to Foreman Oslow.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 347,
            complete = { level = { min = 20 } },
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 347, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 347, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 345, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 344, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 343, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-347-level",
            kind = "note",
            requiredLevel = 20,
            text = "Reach level 20 before this visit.",
        },
        {
            complete = { quest = { id = 347, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } } } },
            dependsOn = { "alliance-extra-347-level" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 347, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 347, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 345, state = "completed" } },
                                                                        {
                                                                            all = {
                                                                                { faction = "Alliance" },
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 344, state = "completed" } },
                                                                                                {
                                                                                                    all = {
                                                                                                        { faction = "Alliance" },
                                                                                                        { any = { { any = { { quest = { id = 343, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
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
                                        { quest = { id = 347, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 347, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 345, state = "completed" } },
                                                                        {
                                                                            all = {
                                                                                { faction = "Alliance" },
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 344, state = "completed" } },
                                                                                                {
                                                                                                    all = {
                                                                                                        { faction = "Alliance" },
                                                                                                        { any = { { any = { { quest = { id = 343, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 347, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 347, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 345, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { race = { 1, 3, 4, 7 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 344, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Alliance" },
                                                                                                { race = { 1, 3, 4, 7 } },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 343, state = "activeOrCompleted" } },
                                                                                                                { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-347-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 345 } } },
            route = {
                {
                    label = "Foreman Oslow",
                    mapID = 1433,
                    offMapText = "Travel to Foreman Oslow in Redridge Mountains.",
                    x = 0.322,
                    y = 0.486,
                },
            },
            text = "Accept Rethban Ore from Foreman Oslow.",
            useClientText = false,
        },
        {
            complete = { quest = { id = 347, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } } } },
            dependsOn = { "alliance-extra-347-accept" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                any = {
                                    {
                                        ["not"] = {
                                            any = {
                                                { quest = { id = 347, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 347, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 345, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 344, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                { any = { { any = { { quest = { id = 343, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
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
                                                { quest = { id = 347, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 347, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 345, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 344, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                { any = { { any = { { quest = { id = 343, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
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
                                        { quest = { id = 347, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 347, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 345, state = "completed" } },
                                                                        {
                                                                            all = {
                                                                                { faction = "Alliance" },
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 344, state = "completed" } },
                                                                                                {
                                                                                                    all = {
                                                                                                        { faction = "Alliance" },
                                                                                                        { any = { { any = { { quest = { id = 343, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 347, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 347, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 345, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { race = { 1, 3, 4, 7 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 344, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Alliance" },
                                                                                                { race = { 1, 3, 4, 7 } },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 343, state = "activeOrCompleted" } },
                                                                                                                { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-347-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 345 } } },
            route = {
                {
                    label = "Redridge Drudger",
                    mapID = 1433,
                    offMapText = "Travel to Redridge Drudger in Redridge Mountains.",
                    x = 0.202,
                    y = 0.278,
                },
            },
            text = "Gather 5 loads of Rethban Ore and bring it to Brother Paxton in the Northshire Library.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 347, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } } } },
            dependsOn = { "alliance-extra-347-objective" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                any = {
                                    {
                                        ["not"] = {
                                            any = {
                                                { quest = { id = 347, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 347, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 345, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 344, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                { any = { { any = { { quest = { id = 343, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
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
                                                { quest = { id = 347, state = "activeOrCompleted" } },
                                                {
                                                    any = {
                                                        { quest = { id = 347, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 345, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 344, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                { any = { { any = { { quest = { id = 343, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
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
                                        { quest = { id = 347, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 347, state = "completed" } },
                                                {
                                                    all = {
                                                        { faction = "Alliance" },
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 345, state = "completed" } },
                                                                        {
                                                                            all = {
                                                                                { faction = "Alliance" },
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 344, state = "completed" } },
                                                                                                {
                                                                                                    all = {
                                                                                                        { faction = "Alliance" },
                                                                                                        { any = { { any = { { quest = { id = 343, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 347, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 347, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 345, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { race = { 1, 3, 4, 7 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 344, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Alliance" },
                                                                                                { race = { 1, 3, 4, 7 } },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 343, state = "activeOrCompleted" } },
                                                                                                                { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7 } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-347-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 345 } } },
            route = {
                {
                    label = "Brother Paxton",
                    mapID = 1429,
                    offMapText = "Travel to Brother Paxton in Elwynn Forest.",
                    x = 0.494,
                    y = 0.404,
                },
            },
            text = "Turn in Rethban Ore to Brother Paxton.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 95999,
            complete = { level = { min = 16 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 3, 4, 7, 95 } } } },
            id = "alliance-extra-95999-level",
            kind = "note",
            requiredLevel = 16,
            text = "Reach level 16 before this visit.",
        },
        {
            id = "alliance-extra-95999-accept",
            kind = "accept",
            text = "Accept WANTED: Incinerator Gar'im from Wanted: Incinerator Gar'im.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 16 } }, { race = { 3, 4, 7, 95 } } } },
            route = {
                {
                    mapID = 1433,
                    x = 0.244,
                    y = 0.46299999999999997,
                    label = "Wanted: Incinerator Gar'im",
                    offMapText = "Travel to Wanted: Incinerator Gar'im in Redridge Mountains.",
                },
            },
            complete = { quest = { id = 95999, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-95999-level" },
        },
        {
            id = "alliance-extra-95999-objective",
            kind = "objective",
            text = "Defeat Incinerator Gar'im and loot the Broken Staff of Incinerator Gar'im. Return it to Magistrate Solomon in Lakeshire.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 16 } }, { race = { 3, 4, 7, 95 } } } },
            route = {
                {
                    mapID = 1433,
                    x = 0.7240000000000001,
                    y = 0.858,
                    label = "Incinerator Gar'im",
                    offMapText = "Travel to Incinerator Gar'im in Redridge Mountains.",
                },
            },
            complete = { quest = { id = 95999, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-95999-accept" },
        },
        {
            complete = { quest = { id = 95999, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 16 } }, { race = { 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-extra-95999-objective" },
            id = "alliance-extra-95999-turnin",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Magistrate Solomon",
                    mapID = 1433,
                    offMapText = "Travel to Magistrate Solomon in Redridge Mountains.",
                    x = 0.3,
                    y = 0.442,
                },
            },
            text = "Turn in WANTED: Incinerator Gar'im to Magistrate Solomon.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 3741,
            complete = { level = { min = 12 } },
            conditions = { all = { { faction = "Horde" } } },
            id = "horde-extra-3741-level",
            kind = "note",
            requiredLevel = 12,
            text = "Reach level 12 before this visit.",
        },
        {
            complete = { quest = { id = 3741, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 12 } } } },
            dependsOn = { "horde-extra-3741-level" },
            id = "horde-extra-3741-accept",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Shawn",
                    mapID = 1433,
                    offMapText = "Travel to Shawn in Redridge Mountains.",
                    x = 0.24230000000000002,
                    y = 0.5364,
                },
            },
            text = "Accept Hilary's Necklace from Shawn.",
            useClientText = false,
        },
        {
            complete = { quest = { id = 3741, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 12 } } } },
            dependsOn = { "horde-extra-3741-accept" },
            id = "horde-extra-3741-objective",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Glinting Mud",
                    mapID = 1433,
                    offMapText = "Travel to Glinting Mud in Redridge Mountains.",
                    x = 0.1681,
                    y = 0.532,
                },
            },
            text = "Find Hilary's Necklace, and return it to Hilary in Lakeshire..",
            useClientText = false,
        },
        {
            complete = { quest = { id = 3741, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 12 } } } },
            dependsOn = { "horde-extra-3741-objective" },
            id = "horde-extra-3741-turnin",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Hilary", mapID = 1433, offMapText = "Travel to Hilary in Redridge Mountains.", x = 0.2415, y = 0.5363 },
            },
            text = "Turn in Hilary's Necklace to Hilary.",
            useClientText = false,
        },
    },
})
