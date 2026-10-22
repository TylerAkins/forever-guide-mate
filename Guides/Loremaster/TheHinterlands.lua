local _, ns = ...

-- Source decisions: docs/loremaster/the-hinterlands.json.
-- Coordinates require a Forever client walkthrough.
ns:RegisterGuide({
    id = "loremaster-the-hinterlands",
    title = "The Hinterlands",
    category = "Loremaster Guides",
    revision = 2,
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
            checkpointQuest = 1448,
            complete = { level = { min = 38 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-level-before-accept-1448-in-search-of-the-temple",
            kind = "note",
            requiredLevel = 38,
            requiredQuests = {},
            text = "Reach level 38 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "level-before-accept-1448-in-search-of-the-temple",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 1448, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-accept-1448-in-search-of-the-temple",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Brohann Caskbelly",
                    mapID = 1453,
                    offMapText = "Travel to Brohann Caskbelly in Stormwind City.",
                    x = 0.6433,
                    y = 0.2066,
                },
            },
            sourceStep = 14,
            text = "Accept In Search of The Temple from Brohann Caskbelly.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "accept-1448-in-search-of-the-temple",
        },
        {
            complete = { quest = { id = 1448, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-swamp-of-sorrows-accept-1448-in-search-of-the-temple" },
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-turnin-1448-in-search-of-the-temple",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Brohann Caskbelly",
                    mapID = 1453,
                    offMapText = "Travel to Brohann Caskbelly in Stormwind City.",
                    x = 0.6433,
                    y = 0.2066,
                },
            },
            sourceActionID = "turnin-1448-in-search-of-the-temple",
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceStep = 43,
            text = "Turn in In Search of The Temple to Brohann Caskbelly.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1449, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-accept-1449-to-the-hinterlands",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1448 } } },
            route = {
                {
                    label = "Brohann Caskbelly",
                    mapID = 1453,
                    offMapText = "Travel to Brohann Caskbelly in Stormwind City.",
                    x = 0.6433,
                    y = 0.2066,
                },
            },
            sourceStep = 43,
            text = "Accept To The Hinterlands from Brohann Caskbelly.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "accept-1449-to-the-hinterlands",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1449, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1449, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1448, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
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
            checkpointQuest = 1449,
            complete = { level = { min = 38 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-level-before-turnin-1449-to-the-hinterlands",
            kind = "note",
            requiredLevel = 38,
            requiredQuests = {},
            text = "Reach level 38 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "level-before-turnin-1449-to-the-hinterlands",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1449, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1449, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1448, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1449, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1449, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1449, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1448, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-turnin-1449-to-the-hinterlands",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1448 } } },
            route = {
                {
                    label = "Falstad Wildhammer",
                    mapID = 1425,
                    offMapText = "Travel to Falstad Wildhammer in The Hinterlands.",
                    x = 0.1181,
                    y = 0.4676,
                },
            },
            sourceActionID = "turnin-1449-to-the-hinterlands",
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceStep = 32,
            text = "Turn in To The Hinterlands to Falstad Wildhammer.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1450, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-1450-gryphon-master-talonaxe",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1449 } } },
            route = {
                {
                    label = "Falstad Wildhammer",
                    mapID = 1425,
                    offMapText = "Travel to Falstad Wildhammer in The Hinterlands.",
                    x = 0.1181,
                    y = 0.4676,
                },
            },
            sourceStep = 32,
            text = "Accept Gryphon Master Talonaxe from Falstad Wildhammer.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "accept-1450-gryphon-master-talonaxe",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1450, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1450, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1449, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1448, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1450, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-1450-gryphon-master-talonaxe" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1450, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1450, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1449, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1448, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-turnin-1450-gryphon-master-talonaxe",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1449 } } },
            route = {
                {
                    label = "Gryphon Master Talonaxe",
                    mapID = 1425,
                    offMapText = "Travel to Gryphon Master Talonaxe in The Hinterlands.",
                    x = 0.0976,
                    y = 0.4448,
                },
            },
            sourceActionID = "turnin-1450-gryphon-master-talonaxe",
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceStep = 33,
            text = "Turn in Gryphon Master Talonaxe to Gryphon Master Talonaxe.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1451, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-1451-rhapsody-shindigger",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1450 } } },
            route = {
                {
                    label = "Gryphon Master Talonaxe",
                    mapID = 1425,
                    offMapText = "Travel to Gryphon Master Talonaxe in The Hinterlands.",
                    x = 0.0976,
                    y = 0.4448,
                },
            },
            sourceStep = 33,
            text = "Accept Rhapsody Shindigger from Gryphon Master Talonaxe.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "accept-1451-rhapsody-shindigger",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1451, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1451, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1450, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1449, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1448, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1451, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-1451-rhapsody-shindigger" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1451, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1451, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1450, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1449, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1448, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-turnin-1451-rhapsody-shindigger",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1450 } } },
            route = {
                {
                    label = "Rhapsody Shindigger",
                    mapID = 1425,
                    offMapText = "Travel to Rhapsody Shindigger in The Hinterlands.",
                    x = 0.2694,
                    y = 0.4859,
                },
            },
            sourceActionID = "turnin-1451-rhapsody-shindigger",
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceStep = 34,
            text = "Turn in Rhapsody Shindigger to Rhapsody Shindigger.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1452, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-1452-rhapsody-s-kalimdor-kocktail",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1451 } } },
            route = {
                {
                    label = "Rhapsody Shindigger",
                    mapID = 1425,
                    offMapText = "Travel to Rhapsody Shindigger in The Hinterlands.",
                    x = 0.2694,
                    y = 0.4859,
                },
            },
            sourceStep = 34,
            text = "Accept Rhapsody's Kalimdor Kocktail from Rhapsody Shindigger.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "accept-1452-rhapsody-s-kalimdor-kocktail",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1452, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1452, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1451, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1450, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1449, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 1448, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-alliance-tanaris",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-tanaris",
            text = "Reach level 43 before the Tanaris visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 43 } },
            requiredLevel = 43,
        },
        {
            checkpointQuest = 1452,
            complete = { level = { min = 38 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-tanaris-level-before-objective-1452-1-fire-roc",
            kind = "note",
            requiredLevel = 38,
            requiredQuests = {},
            text = "Reach level 38 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris",
            sourceActionID = "level-before-objective-1452-1-fire-roc",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1452, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1452, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1451, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1450, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1449, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 1448, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 3, id = 1452, index = 1, text = "Fire Roc" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-objective-1452-1-fire-roc",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1451 } } },
            route = { { label = "Fire Roc", mapID = 1446, offMapText = "Travel to Fire Roc.", x = 0.4991, y = 0.3516 } },
            sourceStep = 26,
            text = "Collect 3 Roc Gizzard.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-tanaris",
            sourceActionID = "objective-1452-1-fire-roc",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1452, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1452, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1451, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1450, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1449, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 1448, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
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
            complete = { questObjective = { count = 3, id = 1452, index = 3, text = "Groddoc Liver" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-objective-1452-3-groddoc-liver",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1451 } } },
            route = { { label = "Groddoc Liver", mapID = 1444, offMapText = "Travel to Groddoc Liver.", x = 0.59, y = 0.618 } },
            sourceStep = 55,
            text = "Collect 3 Groddoc Liver.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "objective-1452-3-groddoc-liver",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1452, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1452, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1451, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1450, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1449, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 1448, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 3, id = 1452, index = 2, text = "Ironfur Liver" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-objective-1452-2-ironfur-liver",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1451 } } },
            route = { { label = "Ironfur Liver", mapID = 1444, offMapText = "Travel to Ironfur Liver.", x = 0.59, y = 0.618 } },
            sourceStep = 56,
            text = "Collect 3 Ironfur Liver.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "objective-1452-2-ironfur-liver",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1452, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1452, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1451, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1450, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1449, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 1448, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { id = 1452, index = 1, text = "Roc Gizzard" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-tanaris-objective-1452-1-roc-gizzard",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1451 } } },
            route = { { label = "Roc Gizzard", mapID = 1446, offMapText = "Travel to Roc Gizzard.", x = 0.523, y = 0.2891 } },
            text = "Collect 3 Roc Gizzard.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-tanaris",
            sourceActionID = "objective-1452-1-roc-gizzard",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1452, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1452, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1451, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1450, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1449, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 1448, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-alliance-the-hinterlands",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-the-hinterlands",
            text = "Reach level 48 before the The Hinterlands visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 48 } },
            requiredLevel = 48,
        },
        {
            checkpointQuest = 2988,
            complete = { level = { min = 40 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-the-hinterlands-level-before-accept-2988-witherbark-cages",
            kind = "note",
            requiredLevel = 40,
            requiredQuests = {},
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-the-hinterlands",
            sourceActionID = "level-before-accept-2988-witherbark-cages",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 2988, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-the-hinterlands-accept-2988-witherbark-cages",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Gryphon Master Talonaxe",
                    mapID = 1425,
                    offMapText = "Travel to Gryphon Master Talonaxe in The Hinterlands.",
                    x = 0.0976,
                    y = 0.4448,
                },
            },
            sourceStep = 1,
            text = "Accept Witherbark Cages from Gryphon Master Talonaxe.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-the-hinterlands",
            sourceActionID = "accept-2988-witherbark-cages",
        },
        {
            complete = { quest = { id = 1452, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-the-hinterlands-objective-1452-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1451 } } },
            route = { { label = "Roc Gizzard", mapID = 1446, offMapText = "Travel to Roc Gizzard.", x = 0.4991, y = 0.3516 } },
            sourceStep = 2,
            text = "For Rhapsody's Kalimdor Kocktail: Rhapsody Shindigger in The Hinterlands wants you to bring him 3 Roc Gizzards, 3 Groddoc Livers and 3 Ironfur Livers.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-the-hinterlands",
            sourceActionID = "objective-1452-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1452, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1452, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1451, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1450, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1449, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 1448, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1452, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-the-hinterlands-objective-1452-quest-work",
                "alliance-leveling-era-alliance-tanaris-objective-1452-1-fire-roc",
                "alliance-leveling-era-alliance-feralas-and-tanaris-objective-1452-3-groddoc-liver",
                "alliance-leveling-era-alliance-feralas-and-tanaris-objective-1452-2-ironfur-liver",
                "alliance-leveling-era-alliance-feralas-and-tanaris-objective-1452-1-roc-gizzard",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1452, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1452, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1451, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1450, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1449, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 1448, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-the-hinterlands-turnin-1452-rhapsody-s-kalimdor-kocktail",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1451 } } },
            route = {
                {
                    label = "Rhapsody Shindigger",
                    mapID = 1425,
                    offMapText = "Travel to Rhapsody Shindigger in The Hinterlands.",
                    x = 0.2694,
                    y = 0.4859,
                },
            },
            sourceActionID = "turnin-1452-rhapsody-s-kalimdor-kocktail",
            sourceGuide = "leveling-era-alliance-the-hinterlands",
            sourceStep = 2,
            text = "Turn in Rhapsody's Kalimdor Kocktail to Rhapsody Shindigger.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1469, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-the-hinterlands-accept-1469-rhapsody-s-tale",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1452 } } },
            route = {
                {
                    label = "Rhapsody Shindigger",
                    mapID = 1425,
                    offMapText = "Travel to Rhapsody Shindigger in The Hinterlands.",
                    x = 0.2694,
                    y = 0.4859,
                },
            },
            sourceStep = 3,
            text = "Accept Rhapsody's Tale from Rhapsody Shindigger.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-the-hinterlands",
            sourceActionID = "accept-1469-rhapsody-s-tale",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1469, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1469, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1452, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1451, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1450, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1449, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 1448, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 2880, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-the-hinterlands-accept-2880-troll-necklace-bounty",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Fraggar Thundermantle",
                    mapID = 1425,
                    offMapText = "Travel to Fraggar Thundermantle in The Hinterlands.",
                    x = 0.1483,
                    y = 0.4456,
                },
            },
            sourceStep = 8,
            text = "Accept Troll Necklace Bounty from Fraggar Thundermantle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-the-hinterlands",
            sourceActionID = "accept-2880-troll-necklace-bounty",
        },
        {
            complete = { quest = { id = 2880, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-the-hinterlands-accept-2880-troll-necklace-bounty" },
            id = "alliance-leveling-era-alliance-the-hinterlands-objective-2880-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 9,
            text = "For Troll Necklace Bounty: Bring 5 Troll Tribal Necklaces to Fraggar Thundermantle in Aerie Peak.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-the-hinterlands",
            sourceActionID = "objective-2880-quest-work",
        },
        {
            complete = { quest = { id = 2880, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-the-hinterlands-accept-2880-troll-necklace-bounty",
                "alliance-leveling-era-alliance-the-hinterlands-objective-2880-quest-work",
            },
            id = "alliance-leveling-era-alliance-the-hinterlands-turnin-2880-troll-necklace-bounty",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Fraggar Thundermantle",
                    mapID = 1425,
                    offMapText = "Travel to Fraggar Thundermantle in The Hinterlands.",
                    x = 0.1483,
                    y = 0.4456,
                },
            },
            sourceActionID = "turnin-2880-troll-necklace-bounty",
            sourceGuide = "leveling-era-alliance-the-hinterlands",
            sourceStep = 9,
            text = "Turn in Troll Necklace Bounty to Fraggar Thundermantle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 2877, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-the-hinterlands-accept-2877-skulk-rock-clean-up",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Fraggar Thundermantle",
                    mapID = 1425,
                    offMapText = "Travel to Fraggar Thundermantle in The Hinterlands.",
                    x = 0.1483,
                    y = 0.4456,
                },
            },
            sourceStep = 9,
            text = "Accept Skulk Rock Clean-up from Fraggar Thundermantle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-the-hinterlands",
            sourceActionID = "accept-2877-skulk-rock-clean-up",
        },
        {
            complete = { quest = { id = 2988, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-the-hinterlands-accept-2988-witherbark-cages" },
            id = "alliance-leveling-era-alliance-the-hinterlands-objective-2988-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 10,
            text = "For Witherbark Cages: Check the cages at the two Witherbark villages.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-the-hinterlands",
            sourceActionID = "objective-2988-quest-work",
        },
        {
            complete = { quest = { id = 2988, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-the-hinterlands-accept-2988-witherbark-cages",
                "alliance-leveling-era-alliance-the-hinterlands-objective-2988-quest-work",
            },
            id = "alliance-leveling-era-alliance-the-hinterlands-turnin-2988-witherbark-cages",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Gryphon Master Talonaxe",
                    mapID = 1425,
                    offMapText = "Travel to Gryphon Master Talonaxe in The Hinterlands.",
                    x = 0.0976,
                    y = 0.4448,
                },
            },
            sourceActionID = "turnin-2988-witherbark-cages",
            sourceGuide = "leveling-era-alliance-the-hinterlands",
            sourceStep = 10,
            text = "Turn in Witherbark Cages to Gryphon Master Talonaxe.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 2989, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-the-hinterlands-accept-2989-the-altar-of-zul",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2988 } } },
            route = {
                {
                    label = "Gryphon Master Talonaxe",
                    mapID = 1425,
                    offMapText = "Travel to Gryphon Master Talonaxe in The Hinterlands.",
                    x = 0.0976,
                    y = 0.4448,
                },
            },
            sourceStep = 10,
            text = "Accept The Altar of Zul from Gryphon Master Talonaxe.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-the-hinterlands",
            sourceActionID = "accept-2989-the-altar-of-zul",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2989, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2989, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 2988, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 2877, index = 1, text = "Green Sludge" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-the-hinterlands-accept-2877-skulk-rock-clean-up" },
            id = "alliance-leveling-era-alliance-the-hinterlands-objective-2877-1-green-sludge",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Green Sludge", mapID = 1425, offMapText = "Travel to Green Sludge.", x = 0.486, y = 0.426 } },
            sourceStep = 15,
            text = "Kill 10 Green Sludge.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-the-hinterlands",
            sourceActionID = "objective-2877-1-green-sludge",
        },
        {
            complete = { questObjective = { count = 10, id = 2877, index = 2, text = "Jade Ooze" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-the-hinterlands-accept-2877-skulk-rock-clean-up" },
            id = "alliance-leveling-era-alliance-the-hinterlands-objective-2877-2-jade-ooze",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Jade Ooze", mapID = 1425, offMapText = "Travel to Jade Ooze.", x = 0.486, y = 0.426 } },
            sourceStep = 15,
            text = "Kill 10 Jade Ooze.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-the-hinterlands",
            sourceActionID = "objective-2877-2-jade-ooze",
        },
        {
            checkpointQuest = 485,
            complete = { level = { min = 43 } },
            conditions = { faction = "Alliance" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { item = { minCount = 1, name = "OOX-09/HL Distress Beacon" } },
                        { quest = { id = 485, state = "activeOrCompleted" } },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-the-hinterlands-level-before-accept-485-find-oox-09-hl",
            kind = "note",
            requiredLevel = 43,
            requiredQuests = {},
            text = "Reach level 43 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-the-hinterlands",
            sourceActionID = "level-before-accept-485-find-oox-09-hl",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 485, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 43 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { item = { minCount = 1, name = "OOX-09/HL Distress Beacon" } },
                        { quest = { id = 485, state = "activeOrCompleted" } },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-the-hinterlands-accept-485-find-oox-09-hl",
            kind = "accept",
            requiredQuests = {},
            sourceStep = 16,
            text = "Use the OOX-09/HL Distress Beacon to accept Find OOX-09/HL!.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-the-hinterlands",
            sourceActionID = "accept-485-find-oox-09-hl",
        },
        {
            complete = { quest = { id = 485, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 43 } } } },
            dependsOn = { "alliance-leveling-era-alliance-the-hinterlands-accept-485-find-oox-09-hl" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { item = { minCount = 1, name = "OOX-09/HL Distress Beacon" } },
                        { quest = { id = 485, state = "activeOrCompleted" } },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-the-hinterlands-turnin-485-find-oox-09-hl",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Homing Robot OOX-09/HL",
                    mapID = 1425,
                    offMapText = "Travel to Homing Robot OOX-09/HL in The Hinterlands.",
                    x = 0.4935,
                    y = 0.3766,
                },
            },
            sourceActionID = "turnin-485-find-oox-09-hl",
            sourceGuide = "leveling-era-alliance-the-hinterlands",
            sourceStep = 17,
            text = "Turn in Find OOX-09/HL! to Homing Robot OOX-09/HL.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            id = "visit-entry-leveling-era-alliance-stranglethorn-vale-part-4",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-stranglethorn-vale-part-4",
            text = "Reach level 50 before the Stranglethorn Vale visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 50 } },
            requiredLevel = 50,
        },
        {
            checkpointQuest = 1469,
            complete = { level = { min = 38 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-stranglethorn-vale-part-4-level-before-turnin-1469-rhapsody-s-tale",
            kind = "note",
            requiredLevel = 38,
            requiredQuests = {},
            text = "Reach level 38 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stranglethorn-vale-part-4",
            sourceActionID = "level-before-turnin-1469-rhapsody-s-tale",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1469, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1469, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1452, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1451, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1450, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1449, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 1448, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1469, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 38 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1469, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1469, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1452, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1451, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1450, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1449, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 1448, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-stranglethorn-vale-part-4-turnin-1469-rhapsody-s-tale",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1452 } } },
            route = {
                {
                    label = "Brohann Caskbelly",
                    mapID = 1453,
                    offMapText = "Travel to Brohann Caskbelly in Stormwind City.",
                    x = 0.6433,
                    y = 0.2066,
                },
            },
            sourceActionID = "turnin-1469-rhapsody-s-tale",
            sourceGuide = "leveling-era-alliance-stranglethorn-vale-part-4",
            sourceStep = 27,
            text = "Turn in Rhapsody's Tale to Brohann Caskbelly.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
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
            complete = { quest = { id = 2989, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2989, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2989, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 2988, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-turnin-2989-the-altar-of-zul",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2988 } } },
            route = {
                {
                    label = "Gryphon Master Talonaxe",
                    mapID = 1425,
                    offMapText = "Travel to Gryphon Master Talonaxe in The Hinterlands.",
                    x = 0.0976,
                    y = 0.4448,
                },
            },
            sourceActionID = "turnin-2989-the-altar-of-zul",
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceStep = 47,
            text = "Turn in The Altar of Zul to Gryphon Master Talonaxe.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 2877, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-objective-2877-quest-work",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Green Sludge", mapID = 1425, offMapText = "Travel to Green Sludge.", x = 0.486, y = 0.426 } },
            sourceStep = 48,
            text = "For Skulk Rock Clean-up: Kill 10 Green Sludges and 10 Jade Oozes.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "objective-2877-quest-work",
        },
        {
            complete = { quest = { id = 2877, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-objective-2877-quest-work",
                "alliance-leveling-era-alliance-the-hinterlands-objective-2877-1-green-sludge",
                "alliance-leveling-era-alliance-the-hinterlands-objective-2877-2-jade-ooze",
            },
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-turnin-2877-skulk-rock-clean-up",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Fraggar Thundermantle",
                    mapID = 1425,
                    offMapText = "Travel to Fraggar Thundermantle in The Hinterlands.",
                    x = 0.1483,
                    y = 0.4456,
                },
            },
            sourceActionID = "turnin-2877-skulk-rock-clean-up",
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceStep = 48,
            text = "Turn in Skulk Rock Clean-up to Fraggar Thundermantle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 836,
            complete = { level = { min = 43 } },
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 836, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 836, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 485, state = "activeOrCompleted" } },
                                                        { all = { { item = { minCount = 1, name = "OOX-09/HL Distress Beacon" } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-836-level",
            kind = "note",
            requiredLevel = 43,
            text = "Reach level 43 before this visit.",
        },
        {
            complete = { quest = { id = 836, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 43 } } } },
            dependsOn = { "alliance-extra-836-level" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 836, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 836, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 485, state = "activeOrCompleted" } },
                                                                { all = { { item = { minCount = 1, name = "OOX-09/HL Distress Beacon" } } } },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 836, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 836, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 485, state = "activeOrCompleted" } },
                                                                { all = { { item = { minCount = 1, name = "OOX-09/HL Distress Beacon" } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-836-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 485 } } },
            route = {
                {
                    label = "Homing Robot OOX-09/HL",
                    mapID = 1425,
                    offMapText = "Travel to Homing Robot OOX-09/HL in The Hinterlands.",
                    x = 0.494,
                    y = 0.376,
                },
            },
            text = "Accept Rescue OOX-09/HL! from Homing Robot OOX-09/HL.",
            useClientText = false,
        },
        {
            complete = { quest = { id = 836, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 43 } } } },
            dependsOn = { "alliance-extra-836-accept" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 836, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 836, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 485, state = "activeOrCompleted" } },
                                                                { all = { { item = { minCount = 1, name = "OOX-09/HL Distress Beacon" } } } },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 836, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 836, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 485, state = "activeOrCompleted" } },
                                                                { all = { { item = { minCount = 1, name = "OOX-09/HL Distress Beacon" } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-836-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 485 } } },
            route = {},
            text = "Escort OOX-09/HL to the shoreline beyond Overlook Cliff. Follow the quest log for the destination.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 836, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 43 } } } },
            dependsOn = { "alliance-extra-836-objective" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 836, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 836, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 485, state = "activeOrCompleted" } },
                                                                { all = { { item = { minCount = 1, name = "OOX-09/HL Distress Beacon" } } } },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 836, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 836, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 485, state = "activeOrCompleted" } },
                                                                { all = { { item = { minCount = 1, name = "OOX-09/HL Distress Beacon" } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-836-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 485 } } },
            route = {
                {
                    label = "Oglethorpe Obnoticus",
                    mapID = 1434,
                    offMapText = "Travel to Oglethorpe Obnoticus in Stranglethorn Vale.",
                    x = 0.282,
                    y = 0.762,
                },
            },
            text = "Turn in Rescue OOX-09/HL! to Oglethorpe Obnoticus.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
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
            sourceActionID = "turnin-1424-pool-of-tears",
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows",
            sourceStep = 48,
            text = "Turn in Pool of Tears to Fel'zerul.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
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
            complete = { item = { minCount = 10, name = "Long Elegant Feather" } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-feralas-collect-before-pickup-objective-7842-1-frayfeather-hippogryph",
            kind = "note",
            referenceQuest = 7842,
            requiredQuests = { { conditions = {}, mode = "any", quests = { 7841 } } },
            route = {
                {
                    label = "Frayfeather Hippogryph",
                    mapID = 1444,
                    offMapText = "Travel to Frayfeather Hippogryph.",
                    x = 0.5699,
                    y = 0.6445,
                },
            },
            text = "Kill Frayfeather Hippogryph. Keep 10 Long Elegant Feather for the later quest pickup.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-feralas",
            sourceActionID = "collect-before-pickup-objective-7842-1-frayfeather-hippogryph",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 7842, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 7842, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 7841, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
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
                                { quest = { id = 1429, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 1424, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-horde-tanaris-and-dustwallow-marsh",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            text = "Reach level 46 before the Tanaris & Dustwallow Marsh visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 46 } },
            requiredLevel = 46,
        },
        {
            complete = { quest = { id = 649, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 42 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-649-ripple-recovery",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Dran Droffers", mapID = 1454, offMapText = "Travel to Dran Droffers in Orgrimmar.", x = 0.5948, y = 0.3659 },
            },
            sourceStep = 97,
            text = "Accept Ripple Recovery from Dran Droffers.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "accept-649-ripple-recovery",
        },
        {
            complete = { quest = { id = 649, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 42 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-649-ripple-recovery" },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-turnin-649-ripple-recovery",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Malton Droffers",
                    mapID = 1454,
                    offMapText = "Travel to Malton Droffers in Orgrimmar.",
                    x = 0.5964,
                    y = 0.3692,
                },
            },
            sourceActionID = "turnin-649-ripple-recovery",
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceStep = 98,
            text = "Turn in Ripple Recovery to Malton Droffers.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 650, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 42 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-650-ripple-recovery",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 649 } } },
            route = {
                {
                    label = "Malton Droffers",
                    mapID = 1454,
                    offMapText = "Travel to Malton Droffers in Orgrimmar.",
                    x = 0.5964,
                    y = 0.3692,
                },
            },
            sourceStep = 98,
            text = "Accept Ripple Recovery from Malton Droffers.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "accept-650-ripple-recovery",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 650, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 650, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 649, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
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
            checkpointQuest = 7842,
            complete = { level = { min = 44 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-the-hinterlands-level-before-objective-7842-1-long-elegant-feather",
            kind = "note",
            requiredLevel = 44,
            requiredQuests = {},
            text = "Reach level 44 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "level-before-objective-7842-1-long-elegant-feather",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 7842, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 7842, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 7841, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 7842, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-hinterlands-objective-7842-1-long-elegant-feather",
            kind = "note",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 7841 } } },
            route = {
                { label = "Long Elegant Feather", mapID = 1454, offMapText = "Travel to Long Elegant Feather.", x = 0.4958, y = 0.6912 },
            },
            text = "Collect 10 Long Elegant Feather. Loot the starter item here, then use it to accept the quest.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "objective-7842-1-long-elegant-feather",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 7842, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 7842, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 7841, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 2995, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 42 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-hinterlands-accept-2995-lines-of-communication",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Oran Snakewrithe",
                    mapID = 1458,
                    offMapText = "Travel to Oran Snakewrithe in Undercity.",
                    x = 0.7306,
                    y = 0.3285,
                },
            },
            sourceStep = 5,
            text = "Accept Lines of Communication from Oran Snakewrithe.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "accept-2995-lines-of-communication",
        },
        {
            complete = { quest = { id = 2933, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-hinterlands-accept-2933-venom-bottles",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Venom Bottles", mapID = 1425, offMapText = "Travel to Venom Bottles.", x = 0.236, y = 0.587 } },
            sourceStep = 8,
            text = "Accept Venom Bottles.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "accept-2933-venom-bottles",
        },
        {
            complete = { quest = { id = 650, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 42 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 650, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 650, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 649, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-the-hinterlands-turnin-650-ripple-recovery",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 649 } } },
            route = {
                {
                    label = "Gilveradin Sunchaser",
                    mapID = 1425,
                    offMapText = "Travel to Gilveradin Sunchaser in The Hinterlands.",
                    x = 0.2671,
                    y = 0.4859,
                },
            },
            sourceActionID = "turnin-650-ripple-recovery",
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceStep = 9,
            text = "Turn in Ripple Recovery to Gilveradin Sunchaser.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 77, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 42 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-hinterlands-accept-77-a-sticky-situation",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 650 } } },
            route = {
                {
                    label = "Gilveradin Sunchaser",
                    mapID = 1425,
                    offMapText = "Travel to Gilveradin Sunchaser in The Hinterlands.",
                    x = 0.2671,
                    y = 0.4859,
                },
            },
            sourceStep = 9,
            text = "Accept A Sticky Situation from Gilveradin Sunchaser.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "accept-77-a-sticky-situation",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 77, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 77, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 650, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 649, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 7839, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-hinterlands-accept-7839-vilebranch-hooligans",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Smith Slagtree",
                    mapID = 1425,
                    offMapText = "Travel to Smith Slagtree in The Hinterlands.",
                    x = 0.7723,
                    y = 0.8012,
                },
            },
            sourceStep = 11,
            text = "Accept Vilebranch Hooligans from Smith Slagtree.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "accept-7839-vilebranch-hooligans",
        },
        {
            complete = { quest = { id = 7840, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-hinterlands-accept-7840-lard-lost-his-lunch",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Lard", mapID = 1425, offMapText = "Travel to Lard in The Hinterlands.", x = 0.7814, y = 0.8138 } },
            sourceStep = 12,
            text = "Accept Lard Lost His Lunch from Lard.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "accept-7840-lard-lost-his-lunch",
        },
        {
            complete = { quest = { id = 7815, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-hinterlands-accept-7815-snapjaws-mon",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Katoom the Angler",
                    mapID = 1425,
                    offMapText = "Travel to Katoom the Angler in The Hinterlands.",
                    x = 0.8033,
                    y = 0.8153,
                },
            },
            sourceStep = 13,
            text = "Accept Snapjaws, Mon! from Katoom the Angler.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "accept-7815-snapjaws-mon",
        },
        {
            complete = { questObjective = { count = 1, id = 7840, index = 1, text = "Vilebranch Kidnapper" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-hinterlands-accept-7840-lard-lost-his-lunch" },
            id = "horde-leveling-era-horde-the-hinterlands-objective-7840-1-vilebranch-kidnapper",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Vilebranch Kidnapper", mapID = 1425, offMapText = "Travel to Vilebranch Kidnapper.", x = 0.8447, y = 0.4122 },
            },
            sourceStep = 15,
            text = "Collect 1 Lard's Lunch.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "objective-7840-1-vilebranch-kidnapper",
        },
        {
            complete = { questObjective = { count = 15, id = 7815, index = 1, text = "Saltwater Snapjaw" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-hinterlands-accept-7815-snapjaws-mon" },
            id = "horde-leveling-era-horde-the-hinterlands-objective-7815-1-saltwater-snapjaw",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Saltwater Snapjaw", mapID = 1425, offMapText = "Travel to Saltwater Snapjaw.", x = 0.782, y = 0.682 },
            },
            sourceStep = 17,
            text = "Kill 15 Saltwater Snapjaw.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "objective-7815-1-saltwater-snapjaw",
        },
        {
            complete = { quest = { id = 7840, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-the-hinterlands-accept-7840-lard-lost-his-lunch",
                "horde-leveling-era-horde-the-hinterlands-objective-7840-1-vilebranch-kidnapper",
            },
            id = "horde-leveling-era-horde-the-hinterlands-turnin-7840-lard-lost-his-lunch",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Lard", mapID = 1425, offMapText = "Travel to Lard in The Hinterlands.", x = 0.7814, y = 0.8138 } },
            sourceActionID = "turnin-7840-lard-lost-his-lunch",
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceStep = 18,
            text = "Turn in Lard Lost His Lunch to Lard.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 7815, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-the-hinterlands-accept-7815-snapjaws-mon",
                "horde-leveling-era-horde-the-hinterlands-objective-7815-1-saltwater-snapjaw",
            },
            id = "horde-leveling-era-horde-the-hinterlands-turnin-7815-snapjaws-mon",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Katoom the Angler",
                    mapID = 1425,
                    offMapText = "Travel to Katoom the Angler in The Hinterlands.",
                    x = 0.8033,
                    y = 0.8153,
                },
            },
            sourceActionID = "turnin-7815-snapjaws-mon",
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceStep = 19,
            text = "Turn in Snapjaws, Mon! to Katoom the Angler.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 7828, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-hinterlands-accept-7828-stalking-the-stalkers",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Huntsman Markhor",
                    mapID = 1425,
                    offMapText = "Travel to Huntsman Markhor in The Hinterlands.",
                    x = 0.7916,
                    y = 0.7952,
                },
            },
            sourceStep = 20,
            text = "Accept Stalking the Stalkers from Huntsman Markhor.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "accept-7828-stalking-the-stalkers",
        },
        {
            complete = { quest = { id = 7829, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-hinterlands-accept-7829-hunt-the-savages",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Huntsman Markhor",
                    mapID = 1425,
                    offMapText = "Travel to Huntsman Markhor in The Hinterlands.",
                    x = 0.7916,
                    y = 0.7952,
                },
            },
            sourceStep = 20,
            text = "Accept Hunt the Savages from Huntsman Markhor.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "accept-7829-hunt-the-savages",
        },
        {
            complete = { quest = { id = 7830, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-hinterlands-accept-7830-avenging-the-fallen",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Huntsman Markhor",
                    mapID = 1425,
                    offMapText = "Travel to Huntsman Markhor in The Hinterlands.",
                    x = 0.7916,
                    y = 0.7952,
                },
            },
            sourceStep = 20,
            text = "Accept Avenging the Fallen from Huntsman Markhor.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "accept-7830-avenging-the-fallen",
        },
        {
            complete = { quest = { id = 7841, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-hinterlands-accept-7841-message-to-the-wildhammer",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Otho Moji'ko",
                    mapID = 1425,
                    offMapText = "Travel to Otho Moji'ko in The Hinterlands.",
                    x = 0.794,
                    y = 0.7909,
                },
            },
            sourceStep = 21,
            text = "Accept Message to the Wildhammer from Otho Moji'ko.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "accept-7841-message-to-the-wildhammer",
        },
        {
            complete = { quest = { id = 7844, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-hinterlands-accept-7844-cannibalistic-cousins",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Mystic Yayo'jin",
                    mapID = 1425,
                    offMapText = "Travel to Mystic Yayo'jin in The Hinterlands.",
                    x = 0.788,
                    y = 0.7824,
                },
            },
            sourceStep = 22,
            text = "Accept Cannibalistic Cousins from Mystic Yayo'jin.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "accept-7844-cannibalistic-cousins",
        },
        {
            complete = { questObjective = { count = 1, id = 7830, index = 1, text = "Skylord Plume" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-hinterlands-accept-7830-avenging-the-fallen" },
            id = "horde-leveling-era-horde-the-hinterlands-objective-7830-1-skylord-plume",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Skylord Plume", mapID = 1425, offMapText = "Travel to Skylord Plume.", x = 0.602, y = 0.506 } },
            sourceStep = 24,
            text = "Collect 1 Skylord Plume.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "objective-7830-1-skylord-plume",
        },
        {
            complete = { questObjective = { count = 10, id = 77, index = 1, text = "Hinterlands Honey Ripple" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 42 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-hinterlands-accept-77-a-sticky-situation" },
            id = "horde-leveling-era-horde-the-hinterlands-objective-77-1-hinterlands-honey-ripple",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 650 } } },
            route = {
                {
                    label = "Hinterlands Honey Ripple",
                    mapID = 1425,
                    offMapText = "Travel to Hinterlands Honey Ripple.",
                    x = 0.5746,
                    y = 0.3888,
                },
            },
            sourceStep = 25,
            text = "Collect 10 Hinterlands Honey Ripple.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "objective-77-1-hinterlands-honey-ripple",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 77, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 77, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 650, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 649, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 15, id = 7828, index = 2, text = "Silvermane Howler" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-hinterlands-accept-7828-stalking-the-stalkers" },
            id = "horde-leveling-era-horde-the-hinterlands-objective-7828-2-silvermane-howler",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Silvermane Howler", mapID = 1425, offMapText = "Travel to Silvermane Howler.", x = 0.466, y = 0.536 },
            },
            sourceStep = 26,
            text = "Kill 15 Silvermane Howler.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "objective-7828-2-silvermane-howler",
        },
        {
            complete = { questObjective = { count = 15, id = 7844, index = 2, text = "Vilebranch Soothsayer" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-hinterlands-accept-7844-cannibalistic-cousins" },
            id = "horde-leveling-era-horde-the-hinterlands-objective-7844-2-vilebranch-soothsayer",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Vilebranch Soothsayer", mapID = 1425, offMapText = "Travel to Vilebranch Soothsayer.", x = 0.468, y = 0.632 },
            },
            sourceStep = 27,
            text = "Kill 15 Vilebranch Soothsayer.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "objective-7844-2-vilebranch-soothsayer",
        },
        {
            complete = { questObjective = { count = 30, id = 7844, index = 1, text = "Vilebranch Scalper" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-hinterlands-accept-7844-cannibalistic-cousins" },
            id = "horde-leveling-era-horde-the-hinterlands-objective-7844-1-vilebranch-scalper",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Vilebranch Scalper", mapID = 1425, offMapText = "Travel to Vilebranch Scalper.", x = 0.456, y = 0.634 },
            },
            sourceStep = 28,
            text = "Kill 30 Vilebranch Scalper.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "objective-7844-1-vilebranch-scalper",
        },
        {
            complete = { questObjective = { count = 15, id = 7828, index = 1, text = "Silvermane Stalker" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-hinterlands-accept-7828-stalking-the-stalkers" },
            id = "horde-leveling-era-horde-the-hinterlands-objective-7828-1-silvermane-stalker",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Silvermane Stalker", mapID = 1425, offMapText = "Travel to Silvermane Stalker.", x = 0.518, y = 0.494 },
            },
            sourceStep = 29,
            text = "Kill 15 Silvermane Stalker.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "objective-7828-1-silvermane-stalker",
        },
        {
            complete = { questObjective = { count = 20, id = 7829, index = 1, text = "Savage Owlbeast" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-hinterlands-accept-7829-hunt-the-savages" },
            id = "horde-leveling-era-horde-the-hinterlands-objective-7829-1-savage-owlbeast",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Savage Owlbeast", mapID = 1425, offMapText = "Travel to Savage Owlbeast.", x = 0.574, y = 0.504 } },
            sourceStep = 31,
            text = "Kill 20 Savage Owlbeast.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "objective-7829-1-savage-owlbeast",
        },
        {
            complete = { quest = { id = 2742, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 42 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-hinterlands-accept-2742-rin-ji-is-trapped",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Rin'ji", mapID = 1425, offMapText = "Travel to Rin'ji in The Hinterlands.", x = 0.3073, y = 0.4697 },
            },
            sourceStep = 33,
            text = "Accept Rin'ji is Trapped! from Rin'ji.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "accept-2742-rin-ji-is-trapped",
        },
        {
            complete = { questObjective = { count = 15, id = 7841, index = 4, text = "Highvale Marksman" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-hinterlands-accept-7841-message-to-the-wildhammer" },
            id = "horde-leveling-era-horde-the-hinterlands-objective-7841-4-highvale-marksman",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Highvale Marksman", mapID = 1425, offMapText = "Travel to Highvale Marksman.", x = 0.3174, y = 0.494 },
            },
            sourceStep = 37,
            text = "Kill 15 Highvale Marksman.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "objective-7841-4-highvale-marksman",
        },
        {
            complete = { questObjective = { count = 15, id = 7841, index = 2, text = "Highvale Outrunner" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-hinterlands-accept-7841-message-to-the-wildhammer" },
            id = "horde-leveling-era-horde-the-hinterlands-objective-7841-2-highvale-outrunner",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Highvale Outrunner", mapID = 1425, offMapText = "Travel to Highvale Outrunner.", x = 0.322, y = 0.51 },
            },
            sourceStep = 38,
            text = "Kill 15 Highvale Outrunner.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "objective-7841-2-highvale-outrunner",
        },
        {
            complete = { questObjective = { count = 15, id = 7841, index = 3, text = "Highvale Ranger" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-hinterlands-accept-7841-message-to-the-wildhammer" },
            id = "horde-leveling-era-horde-the-hinterlands-objective-7841-3-highvale-ranger",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Highvale Ranger", mapID = 1425, offMapText = "Travel to Highvale Ranger.", x = 0.324, y = 0.504 } },
            sourceStep = 39,
            text = "Kill 15 Highvale Ranger.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "objective-7841-3-highvale-ranger",
        },
        {
            complete = { questObjective = { count = 15, id = 7841, index = 1, text = "Highvale Scout" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-hinterlands-accept-7841-message-to-the-wildhammer" },
            id = "horde-leveling-era-horde-the-hinterlands-objective-7841-1-highvale-scout",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Highvale Scout", mapID = 1425, offMapText = "Travel to Highvale Scout.", x = 0.322, y = 0.506 } },
            sourceStep = 40,
            text = "Kill 15 Highvale Scout.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "objective-7841-1-highvale-scout",
        },
        {
            complete = { quest = { id = 485, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 43 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { item = { minCount = 1, name = "OOX-09/HL Distress Beacon" } },
                        { quest = { id = 485, state = "activeOrCompleted" } },
                    },
                },
            },
            id = "horde-leveling-era-horde-the-hinterlands-accept-485-find-oox-09-hl",
            kind = "accept",
            requiredQuests = {},
            sourceStep = 41,
            text = "Use the OOX-09/HL Distress Beacon to accept Find OOX-09/HL!.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "accept-485-find-oox-09-hl",
        },
        {
            complete = { quest = { id = 485, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 43 } } } },
            dependsOn = { "horde-leveling-era-horde-the-hinterlands-accept-485-find-oox-09-hl" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { item = { minCount = 1, name = "OOX-09/HL Distress Beacon" } },
                        { quest = { id = 485, state = "activeOrCompleted" } },
                    },
                },
            },
            id = "horde-leveling-era-horde-the-hinterlands-turnin-485-find-oox-09-hl",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Homing Robot OOX-09/HL",
                    mapID = 1425,
                    offMapText = "Travel to Homing Robot OOX-09/HL in The Hinterlands.",
                    x = 0.4935,
                    y = 0.3766,
                },
            },
            sourceActionID = "turnin-485-find-oox-09-hl",
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceStep = 42,
            text = "Turn in Find OOX-09/HL! to Homing Robot OOX-09/HL.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 2742, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 42 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-hinterlands-accept-2742-rin-ji-is-trapped" },
            id = "horde-leveling-era-horde-the-hinterlands-turnin-2742-rin-ji-is-trapped",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Rin'ji is Trapped!", mapID = 1425, offMapText = "Travel to Rin'ji is Trapped!.", x = 0.863, y = 0.5901 },
            },
            sourceActionID = "turnin-2742-rin-ji-is-trapped",
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceStep = 43,
            text = "Turn in Rin'ji is Trapped!.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 2782, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 42 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-hinterlands-accept-2782-rin-ji-s-secret",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2742 } } },
            route = { { label = "Rin'ji's Secret", mapID = 1425, offMapText = "Travel to Rin'ji's Secret.", x = 0.863, y = 0.5901 } },
            sourceStep = 43,
            text = "Accept Rin'ji's Secret.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "accept-2782-rin-ji-s-secret",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2782, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2782, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 2742, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 7839, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-hinterlands-accept-7839-vilebranch-hooligans" },
            id = "horde-leveling-era-horde-the-hinterlands-objective-7839-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 44,
            text = "For Vilebranch Hooligans: Smith Slagtree at Revantusk Village in the Hinterlands wants you to find Slagtree's Lost Tools.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "objective-7839-quest-work",
        },
        {
            complete = { quest = { id = 7839, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-the-hinterlands-accept-7839-vilebranch-hooligans",
                "horde-leveling-era-horde-the-hinterlands-objective-7839-quest-work",
            },
            id = "horde-leveling-era-horde-the-hinterlands-turnin-7839-vilebranch-hooligans",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Smith Slagtree",
                    mapID = 1425,
                    offMapText = "Travel to Smith Slagtree in The Hinterlands.",
                    x = 0.7724,
                    y = 0.8012,
                },
            },
            sourceActionID = "turnin-7839-vilebranch-hooligans",
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceStep = 44,
            text = "Turn in Vilebranch Hooligans to Smith Slagtree.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 7844, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-the-hinterlands-accept-7844-cannibalistic-cousins",
                "horde-leveling-era-horde-the-hinterlands-objective-7844-2-vilebranch-soothsayer",
                "horde-leveling-era-horde-the-hinterlands-objective-7844-1-vilebranch-scalper",
            },
            id = "horde-leveling-era-horde-the-hinterlands-turnin-7844-cannibalistic-cousins",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Mystic Yayo'jin",
                    mapID = 1425,
                    offMapText = "Travel to Mystic Yayo'jin in The Hinterlands.",
                    x = 0.788,
                    y = 0.7825,
                },
            },
            sourceActionID = "turnin-7844-cannibalistic-cousins",
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceStep = 45,
            text = "Turn in Cannibalistic Cousins to Mystic Yayo'jin.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 7841, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-the-hinterlands-accept-7841-message-to-the-wildhammer",
                "horde-leveling-era-horde-the-hinterlands-objective-7841-4-highvale-marksman",
                "horde-leveling-era-horde-the-hinterlands-objective-7841-2-highvale-outrunner",
                "horde-leveling-era-horde-the-hinterlands-objective-7841-3-highvale-ranger",
                "horde-leveling-era-horde-the-hinterlands-objective-7841-1-highvale-scout",
            },
            id = "horde-leveling-era-horde-the-hinterlands-turnin-7841-message-to-the-wildhammer",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Otho Moji'ko",
                    mapID = 1425,
                    offMapText = "Travel to Otho Moji'ko in The Hinterlands.",
                    x = 0.794,
                    y = 0.7908,
                },
            },
            sourceActionID = "turnin-7841-message-to-the-wildhammer",
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceStep = 46,
            text = "Turn in Message to the Wildhammer to Otho Moji'ko.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 7842, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-hinterlands-accept-7842-another-message-to-the-wildhammer",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 7841 } } },
            route = {
                {
                    label = "Otho Moji'ko",
                    mapID = 1425,
                    offMapText = "Travel to Otho Moji'ko in The Hinterlands.",
                    x = 0.794,
                    y = 0.7908,
                },
            },
            sourceStep = 46,
            text = "Accept Another Message to the Wildhammer from Otho Moji'ko.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "accept-7842-another-message-to-the-wildhammer",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 7842, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 7842, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 7841, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 7842, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-hinterlands-accept-7842-another-message-to-the-wildhammer" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 7842, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 7842, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 7841, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-the-hinterlands-turnin-7842-another-message-to-the-wildhammer",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 7841 } } },
            route = {
                {
                    label = "Otho Moji'ko",
                    mapID = 1425,
                    offMapText = "Travel to Otho Moji'ko in The Hinterlands.",
                    x = 0.794,
                    y = 0.7908,
                },
            },
            sourceActionID = "turnin-7842-another-message-to-the-wildhammer",
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceStep = 47,
            text = "Turn in Another Message to the Wildhammer to Otho Moji'ko.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 7843, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-hinterlands-accept-7843-the-final-message-to-the-wildhammer",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 7842 } } },
            route = {
                {
                    label = "Otho Moji'ko",
                    mapID = 1425,
                    offMapText = "Travel to Otho Moji'ko in The Hinterlands.",
                    x = 0.794,
                    y = 0.7908,
                },
            },
            sourceStep = 47,
            text = "Accept The Final Message to the Wildhammer from Otho Moji'ko.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "accept-7843-the-final-message-to-the-wildhammer",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 7843, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 7843, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 7842, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 7841, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 7828, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-the-hinterlands-accept-7828-stalking-the-stalkers",
                "horde-leveling-era-horde-the-hinterlands-objective-7828-2-silvermane-howler",
                "horde-leveling-era-horde-the-hinterlands-objective-7828-1-silvermane-stalker",
            },
            id = "horde-leveling-era-horde-the-hinterlands-turnin-7828-stalking-the-stalkers",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Huntsman Markhor",
                    mapID = 1425,
                    offMapText = "Travel to Huntsman Markhor in The Hinterlands.",
                    x = 0.7916,
                    y = 0.7953,
                },
            },
            sourceActionID = "turnin-7828-stalking-the-stalkers",
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceStep = 49,
            text = "Turn in Stalking the Stalkers to Huntsman Markhor.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 7829, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-the-hinterlands-accept-7829-hunt-the-savages",
                "horde-leveling-era-horde-the-hinterlands-objective-7829-1-savage-owlbeast",
            },
            id = "horde-leveling-era-horde-the-hinterlands-turnin-7829-hunt-the-savages",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Huntsman Markhor",
                    mapID = 1425,
                    offMapText = "Travel to Huntsman Markhor in The Hinterlands.",
                    x = 0.7916,
                    y = 0.7953,
                },
            },
            sourceActionID = "turnin-7829-hunt-the-savages",
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceStep = 49,
            text = "Turn in Hunt the Savages to Huntsman Markhor.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 7830, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-the-hinterlands-accept-7830-avenging-the-fallen",
                "horde-leveling-era-horde-the-hinterlands-objective-7830-1-skylord-plume",
            },
            id = "horde-leveling-era-horde-the-hinterlands-turnin-7830-avenging-the-fallen",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Huntsman Markhor",
                    mapID = 1425,
                    offMapText = "Travel to Huntsman Markhor in The Hinterlands.",
                    x = 0.7916,
                    y = 0.7953,
                },
            },
            sourceActionID = "turnin-7830-avenging-the-fallen",
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceStep = 49,
            text = "Turn in Avenging the Fallen to Huntsman Markhor.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 2933, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-hinterlands-accept-2933-venom-bottles" },
            id = "horde-leveling-era-horde-the-hinterlands-turnin-2933-venom-bottles",
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
            sourceActionID = "turnin-2933-venom-bottles",
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceStep = 50,
            text = "Turn in Venom Bottles to Apothecary Lydon.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 2934, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-hinterlands-accept-2934-undamaged-venom-sac",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2933 } } },
            route = {
                {
                    label = "Apothecary Lydon",
                    mapID = 1424,
                    offMapText = "Travel to Apothecary Lydon in Hillsbrad Foothills.",
                    x = 0.6144,
                    y = 0.1906,
                },
            },
            sourceStep = 50,
            text = "Accept Undamaged Venom Sac from Apothecary Lydon.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "accept-2934-undamaged-venom-sac",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2934, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2934, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 2933, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { id = 7843, index = 1, text = "Final Message to the Wildhammer" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-hinterlands-accept-7843-the-final-message-to-the-wildhammer" },
            id = "horde-leveling-era-horde-the-hinterlands-objective-7843-1-final-message-to-the-wildhammer",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 7842 } } },
            route = {
                {
                    label = "Final Message to the Wildhammer",
                    mapID = 1425,
                    offMapText = "Travel to Final Message to the Wildhammer.",
                    x = 0.1439,
                    y = 0.4803,
                },
            },
            text = "Use Final Message to the Wildhammer.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "objective-7843-1-final-message-to-the-wildhammer",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 7843, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 7843, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 7842, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 7841, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 77, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 42 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-the-hinterlands-accept-77-a-sticky-situation",
                "horde-leveling-era-horde-the-hinterlands-objective-77-1-hinterlands-honey-ripple",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 77, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 77, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 650, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 649, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-the-hinterlands-turnin-77-a-sticky-situation",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 650 } } },
            route = {
                {
                    label = "Gilveradin Sunchaser",
                    mapID = 1425,
                    offMapText = "Travel to Gilveradin Sunchaser in The Hinterlands.",
                    x = 0.2671,
                    y = 0.4859,
                },
            },
            sourceActionID = "turnin-77-a-sticky-situation",
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceStep = 52,
            text = "Turn in A Sticky Situation to Gilveradin Sunchaser.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1429, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1429, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1429, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 1424, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
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
            sourceActionID = "turnin-1429-the-atal-ai-exile",
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceStep = 54,
            text = "Turn in The Atal'ai Exile to Atal'ai Exile.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1444, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-hinterlands-accept-1444-return-to-fel-zerul",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1429 } } },
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
            text = "Accept Return to Fel'Zerul from Atal'ai Exile.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "accept-1444-return-to-fel-zerul",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1444, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1444, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1429, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1424, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 2934, index = 1, text = "Undamaged Venom Sac" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-hinterlands-accept-2934-undamaged-venom-sac" },
            id = "horde-leveling-era-horde-the-hinterlands-objective-2934-1-undamaged-venom-sac",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2933 } } },
            route = {
                { label = "Undamaged Venom Sac", mapID = 1425, offMapText = "Travel to Undamaged Venom Sac.", x = 0.342, y = 0.67 },
            },
            sourceStep = 55,
            text = "Collect 1 Undamaged Venom Sac.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "objective-2934-1-undamaged-venom-sac",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2934, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2934, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 2933, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 485, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 43 } } } },
            dependsOn = { "horde-leveling-era-horde-the-hinterlands-accept-485-find-oox-09-hl" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { item = { minCount = 1, name = "OOX-09/HL Distress Beacon" } },
                        { quest = { id = 485, state = "activeOrCompleted" } },
                    },
                },
            },
            id = "horde-leveling-era-horde-the-hinterlands-turnin-485-find-oox-09-hl-2",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Find OOX-09/HL!", mapID = 1425, offMapText = "Travel to Find OOX-09/HL!.", x = 0.358, y = 0.6419 } },
            sourceActionID = "turnin-485-find-oox-09-hl-2",
            sourceGuide = "leveling-era-horde-the-hinterlands",
            text = "Turn in Find OOX-09/HL!.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 7843, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-the-hinterlands-accept-7843-the-final-message-to-the-wildhammer",
                "horde-leveling-era-horde-the-hinterlands-objective-7843-1-final-message-to-the-wildhammer",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 7843, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 7843, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 7842, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 7841, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-the-hinterlands-turnin-7843-the-final-message-to-the-wildhammer",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 7842 } } },
            route = {
                {
                    label = "Otho Moji'ko",
                    mapID = 1425,
                    offMapText = "Travel to Otho Moji'ko in The Hinterlands.",
                    x = 0.7938,
                    y = 0.7908,
                },
            },
            sourceActionID = "turnin-7843-the-final-message-to-the-wildhammer",
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceStep = 59,
            text = "Turn in The Final Message to the Wildhammer to Otho Moji'ko.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 2934, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-the-hinterlands-accept-2934-undamaged-venom-sac",
                "horde-leveling-era-horde-the-hinterlands-objective-2934-1-undamaged-venom-sac",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2934, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2934, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 2933, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-the-hinterlands-turnin-2934-undamaged-venom-sac",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2933 } } },
            route = {
                {
                    label = "Apothecary Lydon",
                    mapID = 1424,
                    offMapText = "Travel to Apothecary Lydon in Hillsbrad Foothills.",
                    x = 0.6144,
                    y = 0.1907,
                },
            },
            sourceActionID = "turnin-2934-undamaged-venom-sac",
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceStep = 60,
            text = "Turn in Undamaged Venom Sac to Apothecary Lydon.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 1, id = 2995, index = 1 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 42 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-hinterlands-accept-2995-lines-of-communication" },
            id = "horde-leveling-era-horde-the-hinterlands-objective-2995-1-authored-Highvale-Records",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Highvale-Records", mapID = 1425, offMapText = "Travel to Highvale-Records.", x = 0.3198, y = 0.4683 },
            },
            text = "Open the Highvale Records and burn them.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "objective-2995-1-authored-Highvale-Records",
        },
        {
            complete = { questObjective = { count = 1, id = 2995, index = 2 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 42 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-hinterlands-accept-2995-lines-of-communication" },
            id = "horde-leveling-era-horde-the-hinterlands-objective-2995-2-authored-Highvale-Notes",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Highvale-Notes", mapID = 1425, offMapText = "Travel to Highvale-Notes.", x = 0.2963, y = 0.4866 } },
            text = "Open the Highvale Notes and burn them.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "objective-2995-2-authored-Highvale-Notes",
        },
        {
            complete = { questObjective = { count = 1, id = 2995, index = 3 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 42 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-hinterlands-accept-2995-lines-of-communication" },
            id = "horde-leveling-era-horde-the-hinterlands-objective-2995-3-authored-Highvale-Report",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Highvale-Report", mapID = 1425, offMapText = "Travel to Highvale-Report.", x = 0.2856, y = 0.4605 },
            },
            text = "Open the Highvale Report and burn it.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "objective-2995-3-authored-Highvale-Report",
        },
        {
            complete = { quest = { id = 2995, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 42 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-the-hinterlands-accept-2995-lines-of-communication",
                "horde-leveling-era-horde-the-hinterlands-objective-2995-1-authored-Highvale-Records",
                "horde-leveling-era-horde-the-hinterlands-objective-2995-2-authored-Highvale-Notes",
                "horde-leveling-era-horde-the-hinterlands-objective-2995-3-authored-Highvale-Report",
            },
            id = "horde-leveling-era-horde-the-hinterlands-turnin-2995-lines-of-communication",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Oran Snakewrithe",
                    mapID = 1458,
                    offMapText = "Travel to Oran Snakewrithe in Undercity.",
                    x = 0.7307,
                    y = 0.3285,
                },
            },
            sourceActionID = "turnin-2995-lines-of-communication",
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceStep = 61,
            text = "Turn in Lines of Communication to Oran Snakewrithe.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 2782, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 42 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-hinterlands-accept-2782-rin-ji-s-secret" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2782, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2782, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 2742, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-the-hinterlands-turnin-2782-rin-ji-s-secret",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2742 } } },
            route = {
                {
                    label = "Oran Snakewrithe",
                    mapID = 1458,
                    offMapText = "Travel to Oran Snakewrithe in Undercity.",
                    x = 0.7307,
                    y = 0.3285,
                },
            },
            sourceActionID = "turnin-2782-rin-ji-s-secret",
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceStep = 61,
            text = "Turn in Rin'ji's Secret to Oran Snakewrithe.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 8273, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 42 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-hinterlands-accept-8273-ora-s-gratitude",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2782 } } },
            route = {
                {
                    label = "Oran Snakewrithe",
                    mapID = 1458,
                    offMapText = "Travel to Oran Snakewrithe in Undercity.",
                    x = 0.7307,
                    y = 0.3285,
                },
            },
            sourceStep = 61,
            text = "Accept Ora's Gratitude from Oran Snakewrithe.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-hinterlands",
            sourceActionID = "accept-8273-ora-s-gratitude",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8273, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8273, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2782, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 2742, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
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
            complete = { quest = { id = 1444, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 38 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1444, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1444, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1429, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1424, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2-turnin-1444-return-to-fel-zerul",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1429 } } },
            route = {
                { label = "Fel'zerul", mapID = 1435, offMapText = "Travel to Fel'zerul in Swamp of Sorrows.", x = 0.4793, y = 0.5479 },
            },
            sourceActionID = "turnin-1444-return-to-fel-zerul",
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2",
            sourceStep = 23,
            text = "Turn in Return to Fel'Zerul to Fel'zerul.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            id = "visit-entry-leveling-era-horde-felwood-and-winterspring-part-2",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            text = "Reach level 54 before the Felwood & Winterspring visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 54 } },
            requiredLevel = 54,
        },
        {
            complete = { quest = { id = 7816, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-accept-7816-gammerita-mon",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Katoom the Angler",
                    mapID = 1425,
                    offMapText = "Travel to Katoom the Angler in The Hinterlands.",
                    x = 0.8033,
                    y = 0.8153,
                },
            },
            sourceStep = 95,
            text = "Accept Gammerita, Mon! from Katoom the Angler.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "accept-7816-gammerita-mon",
        },
        {
            complete = { questObjective = { count = 1, id = 7816, index = 1, text = "Katoom's Best Lure" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-felwood-and-winterspring-part-2-accept-7816-gammerita-mon" },
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-objective-7816-1-katoom-s-best-lure",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Katoom's Best Lure", mapID = 1425, offMapText = "Travel to Katoom's Best Lure.", x = 0.814, y = 0.472 },
            },
            sourceStep = 97,
            text = "Collect 1 Katoom's Best Lure.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "objective-7816-1-katoom-s-best-lure",
        },
        {
            complete = { quest = { id = 7816, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-felwood-and-winterspring-part-2-accept-7816-gammerita-mon",
                "horde-leveling-era-horde-felwood-and-winterspring-part-2-objective-7816-1-katoom-s-best-lure",
            },
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-turnin-7816-gammerita-mon",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Katoom the Angler",
                    mapID = 1425,
                    offMapText = "Travel to Katoom the Angler in The Hinterlands.",
                    x = 0.8033,
                    y = 0.8153,
                },
            },
            sourceActionID = "turnin-7816-gammerita-mon",
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceStep = 98,
            text = "Turn in Gammerita, Mon! to Katoom the Angler.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 836,
            complete = { level = { min = 43 } },
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 836, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 836, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 485, state = "activeOrCompleted" } },
                                                        { all = { { item = { minCount = 1, name = "OOX-09/HL Distress Beacon" } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-836-level",
            kind = "note",
            requiredLevel = 43,
            text = "Reach level 43 before this visit.",
        },
        {
            complete = { quest = { id = 836, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 43 } } } },
            dependsOn = { "horde-extra-836-level" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 836, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 836, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 485, state = "activeOrCompleted" } },
                                                                { all = { { item = { minCount = 1, name = "OOX-09/HL Distress Beacon" } } } },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 836, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 836, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 485, state = "activeOrCompleted" } },
                                                                { all = { { item = { minCount = 1, name = "OOX-09/HL Distress Beacon" } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-836-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 485 } } },
            route = {
                {
                    label = "Homing Robot OOX-09/HL",
                    mapID = 1425,
                    offMapText = "Travel to Homing Robot OOX-09/HL in The Hinterlands.",
                    x = 0.494,
                    y = 0.376,
                },
            },
            text = "Accept Rescue OOX-09/HL! from Homing Robot OOX-09/HL.",
            useClientText = false,
        },
        {
            complete = { quest = { id = 836, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 43 } } } },
            dependsOn = { "horde-extra-836-accept" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 836, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 836, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 485, state = "activeOrCompleted" } },
                                                                { all = { { item = { minCount = 1, name = "OOX-09/HL Distress Beacon" } } } },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 836, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 836, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 485, state = "activeOrCompleted" } },
                                                                { all = { { item = { minCount = 1, name = "OOX-09/HL Distress Beacon" } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-836-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 485 } } },
            route = {},
            text = "Escort OOX-09/HL to the shoreline beyond Overlook Cliff. Follow the quest log for the destination.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 836, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 43 } } } },
            dependsOn = { "horde-extra-836-objective" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 836, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 836, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 485, state = "activeOrCompleted" } },
                                                                { all = { { item = { minCount = 1, name = "OOX-09/HL Distress Beacon" } } } },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 836, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 836, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 485, state = "activeOrCompleted" } },
                                                                { all = { { item = { minCount = 1, name = "OOX-09/HL Distress Beacon" } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-836-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 485 } } },
            route = {
                {
                    label = "Oglethorpe Obnoticus",
                    mapID = 1434,
                    offMapText = "Travel to Oglethorpe Obnoticus in Stranglethorn Vale.",
                    x = 0.282,
                    y = 0.762,
                },
            },
            text = "Turn in Rescue OOX-09/HL! to Oglethorpe Obnoticus.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 2935,
            complete = { level = { min = 40 } },
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2935, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2935, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 2934, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 2933, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-2935-level",
            kind = "note",
            requiredLevel = 40,
            text = "Reach level 40 before this visit.",
        },
        {
            complete = { quest = { id = 2935, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-extra-2935-level" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 2935, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 2935, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Horde" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 2934, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = { { any = { { quest = { id = 2933, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 2935, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 2935, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Horde" },
                                                { race = { 2, 5, 6, 8 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 2934, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        { race = { 2, 5, 6, 8 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 2933, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = { { item = { minCount = 1, name = "Venom Bottle" } }, { faction = "Horde" }, { race = { 2, 5, 6, 8 } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-2935-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 2934 } } },
            route = {
                {
                    label = "Apothecary Lydon",
                    mapID = 1424,
                    offMapText = "Travel to Apothecary Lydon in Hillsbrad Foothills.",
                    x = 0.614,
                    y = 0.192,
                },
            },
            text = "Accept Consult Master Gadrin from Apothecary Lydon.",
            useClientText = false,
        },
        {
            complete = { quest = { id = 2935, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-extra-2935-accept" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 2935, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 2935, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Horde" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 2934, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = { { any = { { quest = { id = 2933, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 2935, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 2935, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Horde" },
                                                { race = { 2, 5, 6, 8 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 2934, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        { race = { 2, 5, 6, 8 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 2933, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = { { item = { minCount = 1, name = "Venom Bottle" } }, { faction = "Horde" }, { race = { 2, 5, 6, 8 } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-2935-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 2934 } } },
            route = {},
            text = "Speak with Master Gadrin in Sen'jin Village.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 2935, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-extra-2935-objective" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 2935, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 2935, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Horde" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 2934, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = { { any = { { quest = { id = 2933, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 2935, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 2935, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Horde" },
                                                { race = { 2, 5, 6, 8 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 2934, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        { race = { 2, 5, 6, 8 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 2933, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = { { item = { minCount = 1, name = "Venom Bottle" } }, { faction = "Horde" }, { race = { 2, 5, 6, 8 } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-2935-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 2934 } } },
            route = {
                { label = "Master Gadrin", mapID = 1411, offMapText = "Travel to Master Gadrin in Durotar.", x = 0.56, y = 0.746 },
            },
            text = "Turn in Consult Master Gadrin to Master Gadrin.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 7861,
            complete = { level = { min = 46 } },
            conditions = { all = { { faction = "Horde" } } },
            id = "horde-extra-7861-level",
            kind = "note",
            requiredLevel = 46,
            text = "Reach level 46 before this visit.",
        },
        {
            id = "horde-extra-7861-accept",
            kind = "accept",
            text = "Accept Wanted: Vile Priestess Hexx and Her Minions from Call to Arms!.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 46 } } } },
            route = {
                { mapID = 1425, x = 0.79, y = 0.79, label = "Call to Arms!", offMapText = "Travel to Call to Arms! in The Hinterlands." },
            },
            complete = { quest = { id = 7861, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-7861-level" },
        },
        {
            id = "horde-extra-7861-objective",
            kind = "objective",
            text = "Slay Vile Priestess Hexx and 20 Vilebranch Aman\'zasi Guards atop Jintha\'alor. These are elites. Bring a group.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 46 } } } },
            route = {
                {
                    mapID = 1425,
                    x = 0.58,
                    y = 0.7959999999999999,
                    label = "Vilebranch Aman'zasi Guard",
                    offMapText = "Travel to Vilebranch Aman'zasi Guard in The Hinterlands.",
                },
            },
            complete = { quest = { id = 7861, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-7861-accept" },
        },
        {
            complete = { quest = { id = 7861, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 46 } } } },
            dependsOn = { "horde-extra-7861-objective" },
            id = "horde-extra-7861-turnin",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Primal Torntusk",
                    mapID = 1425,
                    offMapText = "Travel to Primal Torntusk in The Hinterlands.",
                    x = 0.782,
                    y = 0.812,
                },
            },
            text = "Turn in Wanted: Vile Priestess Hexx and Her Minions to Primal Torntusk.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 7862,
            complete = { level = { min = 46 } },
            conditions = { all = { { faction = "Horde" } } },
            id = "horde-extra-7862-level",
            kind = "note",
            requiredLevel = 46,
            text = "Reach level 46 before this visit.",
        },
        {
            id = "horde-extra-7862-accept",
            kind = "accept",
            text = "Accept Job Opening: Guard Captain of Revantusk Village from Call to Arms!.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 46 } } } },
            route = {
                { mapID = 1425, x = 0.79, y = 0.79, label = "Call to Arms!", offMapText = "Travel to Call to Arms! in The Hinterlands." },
            },
            complete = { quest = { id = 7862, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-7862-level" },
        },
        {
            id = "horde-extra-7862-objective",
            kind = "objective",
            text = "Slay 20 each of Vilebranch Berserkers, Shadow Hunters, Blood Drinkers, and Soul Eaters. These are elites. Bring a group.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 46 } } } },
            route = {
                {
                    mapID = 1425,
                    x = 0.638,
                    y = 0.7040000000000001,
                    label = "Vilebranch Berserker",
                    offMapText = "Travel to Vilebranch Berserker in The Hinterlands.",
                },
            },
            complete = { quest = { id = 7862, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-7862-accept" },
        },
        {
            complete = { quest = { id = 7862, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 46 } } } },
            dependsOn = { "horde-extra-7862-objective" },
            id = "horde-extra-7862-turnin",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Primal Torntusk",
                    mapID = 1425,
                    offMapText = "Travel to Primal Torntusk in The Hinterlands.",
                    x = 0.782,
                    y = 0.812,
                },
            },
            text = "Turn in Job Opening: Guard Captain of Revantusk Village to Primal Torntusk.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
    },
})
