local _, ns = ...

-- Source decisions: docs/loremaster/azshara.json.
-- Coordinates require a Forever client walkthrough.
ns:RegisterGuide({
    id = "loremaster-azshara",
    title = "Azshara",
    category = "Loremaster Guides",
    revision = 1,
    routeMode = "ordered",
    loremasterExpanded = true,
    goals = {
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
            complete = { quest = { id = 3448, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-3448-passing-the-burden",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Historian Karnik",
                    mapID = 1455,
                    offMapText = "Travel to Historian Karnik in Ironforge.",
                    x = 0.7755,
                    y = 0.1184,
                },
            },
            sourceStep = 25,
            text = "Accept Passing the Burden from Historian Karnik.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "accept-3448-passing-the-burden",
        },
        {
            complete = { quest = { id = 3448, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-3448-passing-the-burden" },
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-turnin-3448-passing-the-burden",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Tymor", mapID = 1455, offMapText = "Travel to Tymor in Ironforge.", x = 0.3097, y = 0.0481 } },
            sourceStep = 26,
            text = "Turn in Passing the Burden to Tymor.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "turnin-3448-passing-the-burden",
        },
        {
            complete = { quest = { id = 3449, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-3449-arcane-runes",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3448 } } },
            route = { { label = "Tymor", mapID = 1455, offMapText = "Travel to Tymor in Ironforge.", x = 0.3097, y = 0.0481 } },
            sourceStep = 26,
            text = "Accept Arcane Runes from Tymor.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "accept-3449-arcane-runes",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3449, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3449, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 3448, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
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
            checkpointQuest = 5535,
            complete = { level = { min = 45 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-level-before-accept-5535-spiritual-unrest",
            kind = "note",
            requiredLevel = 45,
            requiredQuests = {},
            text = "Reach level 45 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "level-before-accept-5535-spiritual-unrest",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 5535, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-azshara-and-felwood-accept-5535-spiritual-unrest",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Loh'atu", mapID = 1447, offMapText = "Travel to Loh'atu in Azshara.", x = 0.1137, y = 0.7816 } },
            sourceStep = 10,
            text = "Accept Spiritual Unrest from Loh'atu.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "accept-5535-spiritual-unrest",
        },
        {
            complete = { quest = { id = 5536, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-azshara-and-felwood-accept-5536-a-land-filled-with-hatred",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Loh'atu", mapID = 1447, offMapText = "Travel to Loh'atu in Azshara.", x = 0.1137, y = 0.7816 } },
            sourceStep = 10,
            text = "Accept A Land Filled with Hatred from Loh'atu.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "accept-5536-a-land-filled-with-hatred",
        },
        {
            complete = { questObjective = { count = 6, id = 5535, index = 1, text = "Highborne Apparition" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-leveling-era-alliance-azshara-and-felwood-accept-5535-spiritual-unrest" },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-objective-5535-1-highborne-apparition",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Highborne Apparition", mapID = 1447, offMapText = "Travel to Highborne Apparition.", x = 0.134, y = 0.734 },
            },
            sourceStep = 11,
            text = "Kill 6 Highborne Apparition.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "objective-5535-1-highborne-apparition",
        },
        {
            complete = { questObjective = { count = 6, id = 5535, index = 2, text = "Highborne Lichling" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-leveling-era-alliance-azshara-and-felwood-accept-5535-spiritual-unrest" },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-objective-5535-2-highborne-lichling",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Highborne Lichling", mapID = 1447, offMapText = "Travel to Highborne Lichling.", x = 0.134, y = 0.734 },
            },
            sourceStep = 11,
            text = "Kill 6 Highborne Lichling.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "objective-5535-2-highborne-lichling",
        },
        {
            complete = { questObjective = { count = 2, id = 5536, index = 2, text = "Haldarr Trickster" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-leveling-era-alliance-azshara-and-felwood-accept-5536-a-land-filled-with-hatred" },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-objective-5536-2-haldarr-trickster",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Haldarr Trickster", mapID = 1447, offMapText = "Travel to Haldarr Trickster.", x = 0.198, y = 0.646 },
            },
            sourceStep = 12,
            text = "Kill 2 Haldarr Trickster.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "objective-5536-2-haldarr-trickster",
        },
        {
            complete = { questObjective = { count = 2, id = 5536, index = 3, text = "Haldarr Felsworn" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-leveling-era-alliance-azshara-and-felwood-accept-5536-a-land-filled-with-hatred" },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-objective-5536-3-haldarr-felsworn",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Haldarr Felsworn", mapID = 1447, offMapText = "Travel to Haldarr Felsworn.", x = 0.198, y = 0.646 },
            },
            sourceStep = 12,
            text = "Kill 2 Haldarr Felsworn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "objective-5536-3-haldarr-felsworn",
        },
        {
            complete = { questObjective = { count = 6, id = 5536, index = 1, text = "Haldarr Satyr" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-leveling-era-alliance-azshara-and-felwood-accept-5536-a-land-filled-with-hatred" },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-objective-5536-1-haldarr-satyr",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Haldarr Satyr", mapID = 1447, offMapText = "Travel to Haldarr Satyr.", x = 0.198, y = 0.646 } },
            sourceStep = 12,
            text = "Kill 6 Haldarr Satyr.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "objective-5536-1-haldarr-satyr",
        },
        {
            complete = { quest = { id = 5535, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-azshara-and-felwood-accept-5535-spiritual-unrest",
                "alliance-leveling-era-alliance-azshara-and-felwood-objective-5535-1-highborne-apparition",
                "alliance-leveling-era-alliance-azshara-and-felwood-objective-5535-2-highborne-lichling",
            },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-turnin-5535-spiritual-unrest",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Loh'atu", mapID = 1447, offMapText = "Travel to Loh'atu in Azshara.", x = 0.1137, y = 0.7817 } },
            sourceStep = 13,
            text = "Turn in Spiritual Unrest to Loh'atu.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "turnin-5535-spiritual-unrest",
        },
        {
            complete = { quest = { id = 5536, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-azshara-and-felwood-accept-5536-a-land-filled-with-hatred",
                "alliance-leveling-era-alliance-azshara-and-felwood-objective-5536-2-haldarr-trickster",
                "alliance-leveling-era-alliance-azshara-and-felwood-objective-5536-3-haldarr-felsworn",
                "alliance-leveling-era-alliance-azshara-and-felwood-objective-5536-1-haldarr-satyr",
            },
            id = "alliance-leveling-era-alliance-azshara-and-felwood-turnin-5536-a-land-filled-with-hatred",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Loh'atu", mapID = 1447, offMapText = "Travel to Loh'atu in Azshara.", x = 0.1137, y = 0.7817 } },
            sourceStep = 13,
            text = "Turn in A Land Filled with Hatred to Loh'atu.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-azshara-and-felwood",
            sourceActionID = "turnin-5536-a-land-filled-with-hatred",
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
            complete = { quest = { id = 3601, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 47 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-azshara-accept-3601-kim-jael-indeed",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Kim'jael", mapID = 1447, offMapText = "Travel to Kim'jael in Azshara.", x = 0.5345, y = 0.2182 } },
            sourceStep = 34,
            text = "Accept Kim'jael Indeed! from Kim'jael.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "accept-3601-kim-jael-indeed",
        },
        {
            complete = { questObjective = { count = 1, id = 3601, index = 1, text = "Kim'jael's Equipment" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 47 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-azshara-accept-3601-kim-jael-indeed" },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-objective-3601-1-kim-jael-s-equipment",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Kim'jael's Equipment", mapID = 1447, offMapText = "Travel to Kim'jael's Equipment.", x = 0.561, y = 0.301 },
            },
            sourceStep = 35,
            text = "Collect 1 Kim'Jael's Compass.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "objective-3601-1-kim-jael-s-equipment",
        },
        {
            complete = { questObjective = { count = 1, id = 3601, index = 2, text = "Kim'Jael's Scope" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 47 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-azshara-accept-3601-kim-jael-indeed" },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-objective-3601-2-kim-jael-s-scope",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Kim'Jael's Scope", mapID = 1447, offMapText = "Travel to Kim'Jael's Scope.", x = 0.561, y = 0.301 },
            },
            sourceStep = 35,
            text = "Collect 1 Kim'Jael's Scope.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "objective-3601-2-kim-jael-s-scope",
        },
        {
            complete = { questObjective = { count = 1, id = 3601, index = 3, text = "Kim'Jael's Stuffed Chicken" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 47 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-azshara-accept-3601-kim-jael-indeed" },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-objective-3601-3-kim-jael-s-stuffed-chicken",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Kim'Jael's Stuffed Chicken",
                    mapID = 1447,
                    offMapText = "Travel to Kim'Jael's Stuffed Chicken.",
                    x = 0.561,
                    y = 0.301,
                },
            },
            sourceStep = 35,
            text = "Collect 1 Kim'Jael's Stuffed Chicken.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "objective-3601-3-kim-jael-s-stuffed-chicken",
        },
        {
            complete = { questObjective = { count = 1, id = 3601, index = 4, text = "Kim'Jael's Wizzlegoober" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 47 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-azshara-accept-3601-kim-jael-indeed" },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-objective-3601-4-kim-jael-s-wizzlegoober",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Kim'Jael's Wizzlegoober",
                    mapID = 1447,
                    offMapText = "Travel to Kim'Jael's Wizzlegoober.",
                    x = 0.561,
                    y = 0.301,
                },
            },
            sourceStep = 35,
            text = "Collect 1 Kim'Jael's Wizzlegoober.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "objective-3601-4-kim-jael-s-wizzlegoober",
        },
        {
            complete = { quest = { id = 3601, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 47 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-feralas-and-azshara-accept-3601-kim-jael-indeed",
                "alliance-leveling-era-alliance-feralas-and-azshara-objective-3601-1-kim-jael-s-equipment",
                "alliance-leveling-era-alliance-feralas-and-azshara-objective-3601-2-kim-jael-s-scope",
                "alliance-leveling-era-alliance-feralas-and-azshara-objective-3601-3-kim-jael-s-stuffed-chicken",
                "alliance-leveling-era-alliance-feralas-and-azshara-objective-3601-4-kim-jael-s-wizzlegoober",
            },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-turnin-3601-kim-jael-indeed",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Kim'jael", mapID = 1447, offMapText = "Travel to Kim'jael in Azshara.", x = 0.5345, y = 0.2182 } },
            sourceStep = 36,
            text = "Turn in Kim'jael Indeed! to Kim'jael.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "turnin-3601-kim-jael-indeed",
        },
        {
            complete = { quest = { id = 5534, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 47 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-azshara-accept-5534-kim-jael-s-missing-equipment",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3601 } } },
            route = { { label = "Kim'jael", mapID = 1447, offMapText = "Travel to Kim'jael in Azshara.", x = 0.5345, y = 0.2182 } },
            sourceStep = 36,
            text = "Accept Kim'jael's \"Missing\" Equipment from Kim'jael.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "accept-5534-kim-jael-s-missing-equipment",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5534, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5534, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 3601, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 3449, index = 2, text = "Rune of Jin'yael" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-azshara-objective-3449-2-rune-of-jin-yael",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3448 } } },
            route = {
                { label = "Rune of Jin'yael", mapID = 1447, offMapText = "Travel to Rune of Jin'yael.", x = 0.3956, y = 0.5031 },
            },
            sourceStep = 37,
            text = "Collect 1 Rubbing: Rune of Jin'yael.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "objective-3449-2-rune-of-jin-yael",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3449, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3449, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 3448, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 3449, index = 1, text = "Rune of Beth'Amara" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-azshara-objective-3449-1-rune-of-beth-amara",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3448 } } },
            route = {
                { label = "Rune of Beth'Amara", mapID = 1447, offMapText = "Travel to Rune of Beth'Amara.", x = 0.3687, y = 0.5319 },
            },
            sourceStep = 38,
            text = "Collect 1 Rubbing: Rune of Beth'Amara.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "objective-3449-1-rune-of-beth-amara",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3449, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3449, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 3448, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 3449, index = 3, text = "Rune of Markri" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-azshara-objective-3449-3-rune-of-markri",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3448 } } },
            route = { { label = "Rune of Markri", mapID = 1447, offMapText = "Travel to Rune of Markri.", x = 0.393, y = 0.5548 } },
            sourceStep = 39,
            text = "Collect 1 Rubbing: Rune of Markri.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "objective-3449-3-rune-of-markri",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3449, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3449, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 3448, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 3449, index = 4, text = "Rune of Sael'hai" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-feralas-and-azshara-objective-3449-4-rune-of-sael-hai",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3448 } } },
            route = {
                { label = "Rune of Sael'hai", mapID = 1447, offMapText = "Travel to Rune of Sael'hai.", x = 0.4234, y = 0.6413 },
            },
            sourceStep = 40,
            text = "Collect 1 Rubbing: Rune of Sael'hai.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "objective-3449-4-rune-of-sael-hai",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3449, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3449, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 3448, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 5534, index = 1, text = "Some Rune" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 47 } } } },
            dependsOn = { "alliance-leveling-era-alliance-feralas-and-azshara-accept-5534-kim-jael-s-missing-equipment" },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-objective-5534-1-some-rune",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3601 } } },
            route = { { label = "Some Rune", mapID = 1447, offMapText = "Travel to Some Rune.", x = 0.454, y = 0.54 } },
            sourceStep = 41,
            text = "Collect 1 Some Rune.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "objective-5534-1-some-rune",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5534, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5534, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 3601, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5534, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 47 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-feralas-and-azshara-accept-5534-kim-jael-s-missing-equipment",
                "alliance-leveling-era-alliance-feralas-and-azshara-objective-5534-1-some-rune",
            },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-turnin-5534-kim-jael-s-missing-equipment",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3601 } } },
            route = { { label = "Kim'jael", mapID = 1447, offMapText = "Travel to Kim'jael in Azshara.", x = 0.5345, y = 0.2182 } },
            sourceStep = 42,
            text = "Turn in Kim'jael's \"Missing\" Equipment to Kim'jael.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "turnin-5534-kim-jael-s-missing-equipment",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5534, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5534, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 3601, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3449, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-feralas-and-azshara-objective-3449-2-rune-of-jin-yael",
                "alliance-leveling-era-alliance-feralas-and-azshara-objective-3449-1-rune-of-beth-amara",
                "alliance-leveling-era-alliance-feralas-and-azshara-objective-3449-3-rune-of-markri",
                "alliance-leveling-era-alliance-feralas-and-azshara-objective-3449-4-rune-of-sael-hai",
            },
            id = "alliance-leveling-era-alliance-feralas-and-azshara-turnin-3449-arcane-runes",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3448 } } },
            route = {
                {
                    label = "Pilot Xiggs Fuselighter",
                    mapID = 1447,
                    offMapText = "Travel to Pilot Xiggs Fuselighter in Azshara.",
                    x = 0.778,
                    y = 0.9132,
                },
            },
            sourceStep = 44,
            text = "Turn in Arcane Runes to Pilot Xiggs Fuselighter.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-feralas-and-azshara",
            sourceActionID = "turnin-3449-arcane-runes",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3449, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3449, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 3448, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
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
            complete = { quest = { id = 3504, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-accept-3504-betrayed",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Belgrom Rockmaul",
                    mapID = 1454,
                    offMapText = "Travel to Belgrom Rockmaul in Orgrimmar.",
                    x = 0.7523,
                    y = 0.3423,
                },
            },
            sourceStep = 26,
            text = "Accept Betrayed from Belgrom Rockmaul.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "accept-3504-betrayed",
        },
        {
            complete = { quest = { id = 5535, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-accept-5535-spiritual-unrest",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Loh'atu", mapID = 1447, offMapText = "Travel to Loh'atu in Azshara.", x = 0.1137, y = 0.7816 } },
            sourceStep = 34,
            text = "Accept Spiritual Unrest from Loh'atu.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "accept-5535-spiritual-unrest",
        },
        {
            complete = { quest = { id = 5536, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-accept-5536-a-land-filled-with-hatred",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Loh'atu", mapID = 1447, offMapText = "Travel to Loh'atu in Azshara.", x = 0.1137, y = 0.7816 } },
            sourceStep = 34,
            text = "Accept A Land Filled with Hatred from Loh'atu.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "accept-5536-a-land-filled-with-hatred",
        },
        {
            complete = { questObjective = { count = 6, id = 5535, index = 1, text = "Highborne Apparition" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-burning-steppes-and-azshara-accept-5535-spiritual-unrest" },
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-objective-5535-1-highborne-apparition",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Highborne Apparition", mapID = 1447, offMapText = "Travel to Highborne Apparition.", x = 0.134, y = 0.734 },
            },
            sourceStep = 35,
            text = "Kill 6 Highborne Apparition.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "objective-5535-1-highborne-apparition",
        },
        {
            complete = { questObjective = { count = 6, id = 5535, index = 2, text = "Highborne Lichling" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-burning-steppes-and-azshara-accept-5535-spiritual-unrest" },
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-objective-5535-2-highborne-lichling",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Highborne Lichling", mapID = 1447, offMapText = "Travel to Highborne Lichling.", x = 0.134, y = 0.734 },
            },
            sourceStep = 35,
            text = "Kill 6 Highborne Lichling.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "objective-5535-2-highborne-lichling",
        },
        {
            complete = { questObjective = { count = 2, id = 5536, index = 2, text = "Haldarr Trickster" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-burning-steppes-and-azshara-accept-5536-a-land-filled-with-hatred" },
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-objective-5536-2-haldarr-trickster",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Haldarr Trickster", mapID = 1447, offMapText = "Travel to Haldarr Trickster.", x = 0.198, y = 0.646 },
            },
            sourceStep = 36,
            text = "Kill 2 Haldarr Trickster.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "objective-5536-2-haldarr-trickster",
        },
        {
            complete = { questObjective = { count = 2, id = 5536, index = 3, text = "Haldarr Felsworn" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-burning-steppes-and-azshara-accept-5536-a-land-filled-with-hatred" },
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-objective-5536-3-haldarr-felsworn",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Haldarr Felsworn", mapID = 1447, offMapText = "Travel to Haldarr Felsworn.", x = 0.198, y = 0.646 },
            },
            sourceStep = 36,
            text = "Kill 2 Haldarr Felsworn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "objective-5536-3-haldarr-felsworn",
        },
        {
            complete = { questObjective = { count = 6, id = 5536, index = 1, text = "Haldarr Satyr" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-burning-steppes-and-azshara-accept-5536-a-land-filled-with-hatred" },
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-objective-5536-1-haldarr-satyr",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Haldarr Satyr", mapID = 1447, offMapText = "Travel to Haldarr Satyr.", x = 0.198, y = 0.646 } },
            sourceStep = 36,
            text = "Kill 6 Haldarr Satyr.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "objective-5536-1-haldarr-satyr",
        },
        {
            complete = { quest = { id = 5535, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {
                "horde-leveling-era-horde-burning-steppes-and-azshara-accept-5535-spiritual-unrest",
                "horde-leveling-era-horde-burning-steppes-and-azshara-objective-5535-1-highborne-apparition",
                "horde-leveling-era-horde-burning-steppes-and-azshara-objective-5535-2-highborne-lichling",
            },
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-turnin-5535-spiritual-unrest",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Loh'atu", mapID = 1447, offMapText = "Travel to Loh'atu in Azshara.", x = 0.1137, y = 0.7817 } },
            sourceStep = 37,
            text = "Turn in Spiritual Unrest to Loh'atu.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "turnin-5535-spiritual-unrest",
        },
        {
            complete = { quest = { id = 5536, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {
                "horde-leveling-era-horde-burning-steppes-and-azshara-accept-5536-a-land-filled-with-hatred",
                "horde-leveling-era-horde-burning-steppes-and-azshara-objective-5536-2-haldarr-trickster",
                "horde-leveling-era-horde-burning-steppes-and-azshara-objective-5536-3-haldarr-felsworn",
                "horde-leveling-era-horde-burning-steppes-and-azshara-objective-5536-1-haldarr-satyr",
            },
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-turnin-5536-a-land-filled-with-hatred",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Loh'atu", mapID = 1447, offMapText = "Travel to Loh'atu in Azshara.", x = 0.1137, y = 0.7817 } },
            sourceStep = 37,
            text = "Turn in A Land Filled with Hatred to Loh'atu.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "turnin-5536-a-land-filled-with-hatred",
        },
        {
            complete = { quest = { id = 3504, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-burning-steppes-and-azshara-accept-3504-betrayed" },
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-turnin-3504-betrayed",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Ag'tor Bloodfist",
                    mapID = 1447,
                    offMapText = "Travel to Ag'tor Bloodfist in Azshara.",
                    x = 0.2226,
                    y = 0.5148,
                },
            },
            sourceStep = 39,
            text = "Turn in Betrayed to Ag'tor Bloodfist.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "turnin-3504-betrayed",
        },
        {
            complete = { quest = { id = 3517, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-accept-3517-stealing-knowledge",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Jediga", mapID = 1447, offMapText = "Travel to Jediga in Azshara.", x = 0.2256, y = 0.5142 } },
            sourceStep = 40,
            text = "Accept Stealing Knowledge from Jediga.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "accept-3517-stealing-knowledge",
        },
        {
            complete = { questObjective = { count = 1, id = 3517, index = 3, text = "Tablet of Markri" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-burning-steppes-and-azshara-accept-3517-stealing-knowledge" },
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-objective-3517-3-tablet-of-markri",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Tablet of Markri", mapID = 1447, offMapText = "Travel to Tablet of Markri.", x = 0.35, y = 0.546 } },
            sourceStep = 41,
            text = "Collect 1 Tablet of Markri.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "objective-3517-3-tablet-of-markri",
        },
        {
            complete = { questObjective = { count = 1, id = 3517, index = 1, text = "Tablet of Beth'Amara" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-burning-steppes-and-azshara-accept-3517-stealing-knowledge" },
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-objective-3517-1-tablet-of-beth-amara",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Tablet of Beth'Amara", mapID = 1447, offMapText = "Travel to Tablet of Beth'Amara.", x = 0.352, y = 0.558 },
            },
            sourceStep = 42,
            text = "Collect 1 Tablet of Beth'Amara.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "objective-3517-1-tablet-of-beth-amara",
        },
        {
            complete = { questObjective = { count = 1, id = 3517, index = 2, text = "Tablet of Jin'yael" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-burning-steppes-and-azshara-accept-3517-stealing-knowledge" },
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-objective-3517-2-tablet-of-jin-yael",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Tablet of Jin'yael", mapID = 1447, offMapText = "Travel to Tablet of Jin'yael.", x = 0.348, y = 0.533 },
            },
            sourceStep = 43,
            text = "Collect 1 Tablet of Jin'yael.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "objective-3517-2-tablet-of-jin-yael",
        },
        {
            complete = { questObjective = { count = 1, id = 3517, index = 4, text = "Tablet of Sael'hai" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-burning-steppes-and-azshara-accept-3517-stealing-knowledge" },
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-objective-3517-4-tablet-of-sael-hai",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Tablet of Sael'hai", mapID = 1447, offMapText = "Travel to Tablet of Sael'hai.", x = 0.348, y = 0.541 },
            },
            sourceStep = 44,
            text = "Collect 1 Tablet of Sael'hai.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "objective-3517-4-tablet-of-sael-hai",
        },
        {
            complete = { quest = { id = 3517, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-burning-steppes-and-azshara-accept-3517-stealing-knowledge",
                "horde-leveling-era-horde-burning-steppes-and-azshara-objective-3517-3-tablet-of-markri",
                "horde-leveling-era-horde-burning-steppes-and-azshara-objective-3517-1-tablet-of-beth-amara",
                "horde-leveling-era-horde-burning-steppes-and-azshara-objective-3517-2-tablet-of-jin-yael",
                "horde-leveling-era-horde-burning-steppes-and-azshara-objective-3517-4-tablet-of-sael-hai",
            },
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-turnin-3517-stealing-knowledge",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Jediga", mapID = 1447, offMapText = "Travel to Jediga in Azshara.", x = 0.2256, y = 0.5142 } },
            sourceStep = 50,
            text = "Turn in Stealing Knowledge to Jediga.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "turnin-3517-stealing-knowledge",
        },
        {
            complete = { quest = { id = 3518, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-accept-3518-delivery-to-magatha",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3517 } } },
            route = { { label = "Jediga", mapID = 1447, offMapText = "Travel to Jediga in Azshara.", x = 0.2256, y = 0.5142 } },
            sourceStep = 50,
            text = "Accept Delivery to Magatha from Jediga.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "accept-3518-delivery-to-magatha",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3518, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3518, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 3517, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3541, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-accept-3541-delivery-to-jes-rimon",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3517 } } },
            route = { { label = "Jediga", mapID = 1447, offMapText = "Travel to Jediga in Azshara.", x = 0.2256, y = 0.5142 } },
            sourceStep = 50,
            text = "Accept Delivery to Jes'rimon from Jediga.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "accept-3541-delivery-to-jes-rimon",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3541, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3541, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 3517, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3561, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-accept-3561-delivery-to-archmage-xylem",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3517 } } },
            route = { { label = "Jediga", mapID = 1447, offMapText = "Travel to Jediga in Azshara.", x = 0.2256, y = 0.5142 } },
            sourceStep = 50,
            text = "Accept Delivery to Archmage Xylem from Jediga.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "accept-3561-delivery-to-archmage-xylem",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3561, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3561, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 3517, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3561, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-burning-steppes-and-azshara-accept-3561-delivery-to-archmage-xylem" },
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-turnin-3561-delivery-to-archmage-xylem",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3517 } } },
            route = {
                { label = "Archmage Xylem", mapID = 1447, offMapText = "Travel to Archmage Xylem in Azshara.", x = 0.2971, y = 0.4052 },
            },
            sourceStep = 52,
            text = "Turn in Delivery to Archmage Xylem to Archmage Xylem.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "turnin-3561-delivery-to-archmage-xylem",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3561, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3561, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 3517, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3565, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-accept-3565-xylem-s-payment-to-jediga",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3561 } } },
            route = {
                { label = "Archmage Xylem", mapID = 1447, offMapText = "Travel to Archmage Xylem in Azshara.", x = 0.2971, y = 0.4052 },
            },
            sourceStep = 52,
            text = "Accept Xylem's Payment to Jediga from Archmage Xylem.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "accept-3565-xylem-s-payment-to-jediga",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3565, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3565, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3561, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 3517, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3565, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-burning-steppes-and-azshara-accept-3565-xylem-s-payment-to-jediga" },
            id = "horde-leveling-era-horde-burning-steppes-and-azshara-turnin-3565-xylem-s-payment-to-jediga",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3561 } } },
            route = { { label = "Jediga", mapID = 1447, offMapText = "Travel to Jediga in Azshara.", x = 0.2256, y = 0.5142 } },
            sourceStep = 54,
            text = "Turn in Xylem's Payment to Jediga to Jediga.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-burning-steppes-and-azshara",
            sourceActionID = "turnin-3565-xylem-s-payment-to-jediga",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3565, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3565, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3561, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 3517, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
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
            complete = { quest = { id = 3541, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-felwood-and-winterspring-turnin-3541-delivery-to-jes-rimon",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3517 } } },
            route = {
                { label = "Jes'rimon", mapID = 1454, offMapText = "Travel to Jes'rimon in Orgrimmar.", x = 0.5551, y = 0.3409 },
            },
            sourceStep = 40,
            text = "Turn in Delivery to Jes'rimon to Jes'rimon.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "turnin-3541-delivery-to-jes-rimon",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3541, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3541, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 3517, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3563, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-felwood-and-winterspring-accept-3563-jes-rimon-s-payment-to-jediga",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3541 } } },
            route = {
                { label = "Jes'rimon", mapID = 1454, offMapText = "Travel to Jes'rimon in Orgrimmar.", x = 0.5551, y = 0.3409 },
            },
            sourceStep = 40,
            text = "Accept Jes'rimon's Payment to Jediga from Jes'rimon.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring",
            sourceActionID = "accept-3563-jes-rimon-s-payment-to-jediga",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3563, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3563, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3541, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 3517, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-horde-ungoro-crater",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-ungoro-crater",
            text = "Reach level 53 before the Un'Goro Crater visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 53 } },
            requiredLevel = 53,
        },
        {
            complete = { quest = { id = 3518, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-ungoro-crater-turnin-3518-delivery-to-magatha",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3517 } } },
            route = {
                {
                    label = "Magatha Grimtotem",
                    mapID = 1456,
                    offMapText = "Travel to Magatha Grimtotem in Thunder Bluff.",
                    x = 0.6984,
                    y = 0.309,
                },
            },
            sourceStep = 71,
            text = "Turn in Delivery to Magatha to Magatha Grimtotem.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-ungoro-crater",
            sourceActionID = "turnin-3518-delivery-to-magatha",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3518, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3518, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 3517, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3562, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-ungoro-crater-accept-3562-magatha-s-payment-to-jediga",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3518 } } },
            route = {
                {
                    label = "Magatha Grimtotem",
                    mapID = 1456,
                    offMapText = "Travel to Magatha Grimtotem in Thunder Bluff.",
                    x = 0.6984,
                    y = 0.309,
                },
            },
            sourceStep = 71,
            text = "Accept Magatha's Payment to Jediga from Magatha Grimtotem.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ungoro-crater",
            sourceActionID = "accept-3562-magatha-s-payment-to-jediga",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3562, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3562, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3518, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 3517, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-horde-azshara",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-azshara",
            text = "Reach level 54 before the Azshara visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 54 } },
            requiredLevel = 54,
        },
        {
            checkpointQuest = 3505,
            complete = { level = { min = 44 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-azshara-level-before-accept-3505-betrayed",
            kind = "note",
            requiredLevel = 44,
            requiredQuests = {},
            text = "Reach level 44 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-azshara",
            sourceActionID = "level-before-accept-3505-betrayed",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3505, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3505, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 3504, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3505, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-azshara-accept-3505-betrayed",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3504 } } },
            route = {
                {
                    label = "Ag'tor Bloodfist",
                    mapID = 1447,
                    offMapText = "Travel to Ag'tor Bloodfist in Azshara.",
                    x = 0.2226,
                    y = 0.5148,
                },
            },
            sourceStep = 1,
            text = "Accept Betrayed from Ag'tor Bloodfist.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-azshara",
            sourceActionID = "accept-3505-betrayed",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3505, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3505, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 3504, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 3562,
            complete = { level = { min = 45 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-azshara-level-before-turnin-3562-magatha-s-payment-to-jediga",
            kind = "note",
            requiredLevel = 45,
            requiredQuests = {},
            text = "Reach level 45 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-azshara",
            sourceActionID = "level-before-turnin-3562-magatha-s-payment-to-jediga",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3562, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3562, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3518, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 3517, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3562, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-azshara-turnin-3562-magatha-s-payment-to-jediga",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3518 } } },
            route = { { label = "Jediga", mapID = 1447, offMapText = "Travel to Jediga in Azshara.", x = 0.2256, y = 0.5142 } },
            sourceStep = 2,
            text = "Turn in Magatha's Payment to Jediga to Jediga.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-azshara",
            sourceActionID = "turnin-3562-magatha-s-payment-to-jediga",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3562, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3562, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3518, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 3517, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3563, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-azshara-turnin-3563-jes-rimon-s-payment-to-jediga",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3541 } } },
            route = { { label = "Jediga", mapID = 1447, offMapText = "Travel to Jediga in Azshara.", x = 0.2256, y = 0.5142 } },
            sourceStep = 2,
            text = "Turn in Jes'rimon's Payment to Jediga to Jediga.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-azshara",
            sourceActionID = "turnin-3563-jes-rimon-s-payment-to-jediga",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3563, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3563, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3541, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 3517, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3542, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-azshara-accept-3542-delivery-to-andron-gant",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3517 } } },
            route = { { label = "Jediga", mapID = 1447, offMapText = "Travel to Jediga in Azshara.", x = 0.2256, y = 0.5142 } },
            sourceStep = 2,
            text = "Accept Delivery to Andron Gant from Jediga.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-azshara",
            sourceActionID = "accept-3542-delivery-to-andron-gant",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3542, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3542, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 3517, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 3601,
            complete = { level = { min = 47 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-azshara-level-before-accept-3601-kim-jael-indeed",
            kind = "note",
            requiredLevel = 47,
            requiredQuests = {},
            text = "Reach level 47 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-azshara",
            sourceActionID = "level-before-accept-3601-kim-jael-indeed",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 3601, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 47 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-azshara-accept-3601-kim-jael-indeed",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Kim'jael", mapID = 1447, offMapText = "Travel to Kim'jael in Azshara.", x = 0.5345, y = 0.2182 } },
            sourceStep = 3,
            text = "Accept Kim'jael Indeed! from Kim'jael.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-azshara",
            sourceActionID = "accept-3601-kim-jael-indeed",
        },
        {
            complete = { questObjective = { count = 10, id = 3505, index = 1, text = "Blood Elf Reclaimer" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-azshara-accept-3505-betrayed" },
            id = "horde-leveling-era-horde-azshara-objective-3505-1-blood-elf-reclaimer",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3504 } } },
            route = {
                { label = "Blood Elf Reclaimer", mapID = 1447, offMapText = "Travel to Blood Elf Reclaimer.", x = 0.552, y = 0.274 },
            },
            sourceStep = 4,
            text = "Kill 10 Blood Elf Reclaimer.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-azshara",
            sourceActionID = "objective-3505-1-blood-elf-reclaimer",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3505, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3505, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 3504, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 3505, index = 2, text = "Blood Elf Surveyor" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-azshara-accept-3505-betrayed" },
            id = "horde-leveling-era-horde-azshara-objective-3505-2-blood-elf-surveyor",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3504 } } },
            route = {
                { label = "Blood Elf Surveyor", mapID = 1447, offMapText = "Travel to Blood Elf Surveyor.", x = 0.552, y = 0.274 },
            },
            sourceStep = 4,
            text = "Kill 10 Blood Elf Surveyor.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-azshara",
            sourceActionID = "objective-3505-2-blood-elf-surveyor",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3505, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3505, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 3504, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3505, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-azshara-accept-3505-betrayed",
                "horde-leveling-era-horde-azshara-objective-3505-1-blood-elf-reclaimer",
                "horde-leveling-era-horde-azshara-objective-3505-2-blood-elf-surveyor",
            },
            id = "horde-leveling-era-horde-azshara-turnin-3505-betrayed",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3504 } } },
            route = { { label = "Betrayed", mapID = 1447, offMapText = "Travel to Betrayed.", x = 0.5951, y = 0.313 } },
            sourceStep = 6,
            text = "Turn in Betrayed.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-azshara",
            sourceActionID = "turnin-3505-betrayed",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3505, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3505, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 3504, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3506, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-azshara-accept-3506-betrayed",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3505 } } },
            route = { { label = "Betrayed", mapID = 1447, offMapText = "Travel to Betrayed.", x = 0.5951, y = 0.313 } },
            sourceStep = 6,
            text = "Accept Betrayed.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-azshara",
            sourceActionID = "accept-3506-betrayed",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3506, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3506, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3505, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 3504, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 3506, index = 1, text = "Blood Elf Defender" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-azshara-accept-3506-betrayed" },
            id = "horde-leveling-era-horde-azshara-objective-3506-1-blood-elf-defender",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3505 } } },
            route = {
                { label = "Blood Elf Defender", mapID = 1447, offMapText = "Travel to Blood Elf Defender.", x = 0.5955, y = 0.3152 },
            },
            sourceStep = 7,
            text = "Collect 1 Head of Magus Rimtori.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-azshara",
            sourceActionID = "objective-3506-1-blood-elf-defender",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3506, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3506, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3505, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 3504, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 3601, index = 1, text = "Kim'Jael's Compass" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 47 } } } },
            dependsOn = { "horde-leveling-era-horde-azshara-accept-3601-kim-jael-indeed" },
            id = "horde-leveling-era-horde-azshara-objective-3601-1-kim-jael-s-compass",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Kim'Jael's Compass", mapID = 1447, offMapText = "Travel to Kim'Jael's Compass.", x = 0.561, y = 0.301 },
            },
            sourceStep = 8,
            text = "Collect 1 Kim'Jael's Compass.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-azshara",
            sourceActionID = "objective-3601-1-kim-jael-s-compass",
        },
        {
            complete = { questObjective = { count = 1, id = 3601, index = 2, text = "Kim'Jael's Scope" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 47 } } } },
            dependsOn = { "horde-leveling-era-horde-azshara-accept-3601-kim-jael-indeed" },
            id = "horde-leveling-era-horde-azshara-objective-3601-2-kim-jael-s-scope",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Kim'Jael's Scope", mapID = 1447, offMapText = "Travel to Kim'Jael's Scope.", x = 0.561, y = 0.301 },
            },
            sourceStep = 8,
            text = "Collect 1 Kim'Jael's Scope.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-azshara",
            sourceActionID = "objective-3601-2-kim-jael-s-scope",
        },
        {
            complete = { questObjective = { count = 1, id = 3601, index = 3, text = "Kim'Jael's Stuffed Chicken" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 47 } } } },
            dependsOn = { "horde-leveling-era-horde-azshara-accept-3601-kim-jael-indeed" },
            id = "horde-leveling-era-horde-azshara-objective-3601-3-kim-jael-s-stuffed-chicken",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Kim'Jael's Stuffed Chicken",
                    mapID = 1447,
                    offMapText = "Travel to Kim'Jael's Stuffed Chicken.",
                    x = 0.561,
                    y = 0.301,
                },
            },
            sourceStep = 8,
            text = "Collect 1 Kim'Jael's Stuffed Chicken.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-azshara",
            sourceActionID = "objective-3601-3-kim-jael-s-stuffed-chicken",
        },
        {
            complete = { questObjective = { count = 1, id = 3601, index = 4, text = "Kim'Jael's Wizzlegoober" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 47 } } } },
            dependsOn = { "horde-leveling-era-horde-azshara-accept-3601-kim-jael-indeed" },
            id = "horde-leveling-era-horde-azshara-objective-3601-4-kim-jael-s-wizzlegoober",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Kim'Jael's Wizzlegoober",
                    mapID = 1447,
                    offMapText = "Travel to Kim'Jael's Wizzlegoober.",
                    x = 0.561,
                    y = 0.301,
                },
            },
            sourceStep = 8,
            text = "Collect 1 Kim'Jael's Wizzlegoober.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-azshara",
            sourceActionID = "objective-3601-4-kim-jael-s-wizzlegoober",
        },
        {
            complete = { quest = { id = 3601, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 47 } } } },
            dependsOn = {
                "horde-leveling-era-horde-azshara-accept-3601-kim-jael-indeed",
                "horde-leveling-era-horde-azshara-objective-3601-1-kim-jael-s-compass",
                "horde-leveling-era-horde-azshara-objective-3601-2-kim-jael-s-scope",
                "horde-leveling-era-horde-azshara-objective-3601-3-kim-jael-s-stuffed-chicken",
                "horde-leveling-era-horde-azshara-objective-3601-4-kim-jael-s-wizzlegoober",
            },
            id = "horde-leveling-era-horde-azshara-turnin-3601-kim-jael-indeed",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Kim'jael", mapID = 1447, offMapText = "Travel to Kim'jael in Azshara.", x = 0.5345, y = 0.2182 } },
            sourceStep = 9,
            text = "Turn in Kim'jael Indeed! to Kim'jael.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-azshara",
            sourceActionID = "turnin-3601-kim-jael-indeed",
        },
        {
            complete = { quest = { id = 5534, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 47 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-azshara-accept-5534-kim-jael-s-missing-equipment",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3601 } } },
            route = { { label = "Kim'jael", mapID = 1447, offMapText = "Travel to Kim'jael in Azshara.", x = 0.5345, y = 0.2182 } },
            sourceStep = 9,
            text = "Accept Kim'jael's \"Missing\" Equipment from Kim'jael.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-azshara",
            sourceActionID = "accept-5534-kim-jael-s-missing-equipment",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5534, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5534, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 3601, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 5534, index = 1, text = "Spitelash Siren" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 47 } } } },
            dependsOn = { "horde-leveling-era-horde-azshara-accept-5534-kim-jael-s-missing-equipment" },
            id = "horde-leveling-era-horde-azshara-objective-5534-1-spitelash-siren",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3601 } } },
            route = { { label = "Spitelash Siren", mapID = 1447, offMapText = "Travel to Spitelash Siren.", x = 0.48, y = 0.422 } },
            sourceStep = 10,
            text = "Collect 1 Some Rune.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-azshara",
            sourceActionID = "objective-5534-1-spitelash-siren",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5534, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5534, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 3601, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5534, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 47 } } } },
            dependsOn = {
                "horde-leveling-era-horde-azshara-accept-5534-kim-jael-s-missing-equipment",
                "horde-leveling-era-horde-azshara-objective-5534-1-spitelash-siren",
            },
            id = "horde-leveling-era-horde-azshara-turnin-5534-kim-jael-s-missing-equipment",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3601 } } },
            route = { { label = "Kim'jael", mapID = 1447, offMapText = "Travel to Kim'jael in Azshara.", x = 0.5345, y = 0.2182 } },
            sourceStep = 11,
            text = "Turn in Kim'jael's \"Missing\" Equipment to Kim'jael.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-azshara",
            sourceActionID = "turnin-5534-kim-jael-s-missing-equipment",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5534, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5534, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 3601, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3506, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 44 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-azshara-accept-3506-betrayed",
                "horde-leveling-era-horde-azshara-objective-3506-1-blood-elf-defender",
            },
            id = "horde-leveling-era-horde-azshara-turnin-3506-betrayed",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3505 } } },
            route = {
                {
                    label = "Ag'tor Bloodfist",
                    mapID = 1447,
                    offMapText = "Travel to Ag'tor Bloodfist in Azshara.",
                    x = 0.2226,
                    y = 0.5148,
                },
            },
            sourceStep = 12,
            text = "Turn in Betrayed to Ag'tor Bloodfist.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-azshara",
            sourceActionID = "turnin-3506-betrayed",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3506, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3506, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3505, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 3504, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
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
            complete = { quest = { id = 3542, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-turnin-3542-delivery-to-andron-gant",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3517 } } },
            route = {
                { label = "Andron Gant", mapID = 1458, offMapText = "Travel to Andron Gant in Undercity.", x = 0.5482, y = 0.7633 },
            },
            sourceStep = 89,
            text = "Turn in Delivery to Andron Gant to Andron Gant.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "turnin-3542-delivery-to-andron-gant",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3542, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3542, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 3517, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3564, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-accept-3564-andron-s-payment-to-jediga",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3542 } } },
            route = {
                { label = "Andron Gant", mapID = 1458, offMapText = "Travel to Andron Gant in Undercity.", x = 0.5482, y = 0.7633 },
            },
            sourceStep = 89,
            text = "Accept Andron's Payment to Jediga from Andron Gant.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "accept-3564-andron-s-payment-to-jediga",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3564, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3564, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3542, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 3517, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-horde-western-and-eastern-plaguelands",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            text = "Reach level 56 before the Western & Eastern Plaguelands visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 56 } },
            requiredLevel = 56,
        },
        {
            complete = { quest = { id = 3564, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-3564-andron-s-payment-to-jediga",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3542 } } },
            route = { { label = "Jediga", mapID = 1447, offMapText = "Travel to Jediga in Azshara.", x = 0.2256, y = 0.5142 } },
            sourceStep = 141,
            text = "Turn in Andron's Payment to Jediga to Jediga.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "turnin-3564-andron-s-payment-to-jediga",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3564, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3564, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3542, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 3517, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
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
