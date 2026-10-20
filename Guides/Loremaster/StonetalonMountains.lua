local _, ns = ...

-- Source decisions: docs/loremaster/stonetalon-mountains.json.
-- Coordinates require a Forever client walkthrough.
ns:RegisterGuide({
    id = "loremaster-stonetalon-mountains",
    title = "Stonetalon Mountains",
    category = "Loremaster Guides",
    revision = 1,
    routeMode = "ordered",
    loremasterExpanded = true,
    goals = {
        {
            id = "visit-entry-leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            text = "Reach level 21 before the Ashenvale & Stonetalon Mountains visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 21 } },
            requiredLevel = 21,
        },
        {
            complete = { quest = { id = 1085, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 17 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1085-on-guard-in-stonetalon",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Kaela Shadowspear",
                    mapID = 1442,
                    offMapText = "Travel to Kaela Shadowspear in Stonetalon Mountains.",
                    x = 0.599,
                    y = 0.6685,
                },
            },
            sourceStep = 63,
            text = "Accept On Guard in Stonetalon from Kaela Shadowspear.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "accept-1085-on-guard-in-stonetalon",
        },
        {
            complete = { quest = { id = 1085, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 17 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1085-on-guard-in-stonetalon" },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-turnin-1085-on-guard-in-stonetalon",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Gaxim Rustfizzle",
                    mapID = 1442,
                    offMapText = "Travel to Gaxim Rustfizzle in Stonetalon Mountains.",
                    x = 0.5952,
                    y = 0.6715,
                },
            },
            sourceStep = 64,
            text = "Turn in On Guard in Stonetalon to Gaxim Rustfizzle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "turnin-1085-on-guard-in-stonetalon",
        },
        {
            complete = { quest = { id = 1071, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 17 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1071-a-gnome-s-respite",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1085 } } },
            route = {
                {
                    label = "Gaxim Rustfizzle",
                    mapID = 1442,
                    offMapText = "Travel to Gaxim Rustfizzle in Stonetalon Mountains.",
                    x = 0.5952,
                    y = 0.6715,
                },
            },
            sourceStep = 64,
            text = "Accept A Gnome's Respite from Gaxim Rustfizzle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "accept-1071-a-gnome-s-respite",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1071, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1071, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1085, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 1093,
            complete = { level = { min = 16 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-level-before-accept-1093-super-reaper-6000",
            kind = "note",
            requiredLevel = 16,
            requiredQuests = {},
            text = "Reach level 16 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "level-before-accept-1093-super-reaper-6000",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 1093, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 16 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1093-super-reaper-6000",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Ziz Fizziks",
                    mapID = 1442,
                    offMapText = "Travel to Ziz Fizziks in Stonetalon Mountains.",
                    x = 0.5899,
                    y = 0.626,
                },
            },
            sourceStep = 65,
            text = "Accept Super Reaper 6000 from Ziz Fizziks.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "accept-1093-super-reaper-6000",
        },
        {
            complete = { questObjective = { count = 1, id = 1093, index = 1, text = "Venture Co. Operator" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 16 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1093-super-reaper-6000" },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1093-1-venture-co-operator",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Venture Co. Operator", mapID = 1442, offMapText = "Travel to Venture Co. Operator.", x = 0.622, y = 0.52 },
            },
            sourceStep = 66,
            text = "Collect 1 Super Reaper 6000 Blueprints.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "objective-1093-1-venture-co-operator",
        },
        {
            complete = { questObjective = { count = 10, id = 1071, index = 1, text = "Venture Co. Logger" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 17 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1071-a-gnome-s-respite" },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1071-1-venture-co-logger",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1085 } } },
            route = {
                { label = "Venture Co. Logger", mapID = 1442, offMapText = "Travel to Venture Co. Logger.", x = 0.666, y = 0.55 },
            },
            sourceStep = 67,
            text = "Kill 10 Venture Co. Logger.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "objective-1071-1-venture-co-logger",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1071, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1071, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1085, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 1071, index = 2, text = "Venture Co. Deforester" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 17 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1071-a-gnome-s-respite" },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1071-2-venture-co-deforester",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1085 } } },
            route = {
                { label = "Venture Co. Deforester", mapID = 1442, offMapText = "Travel to Venture Co. Deforester.", x = 0.666, y = 0.55 },
            },
            sourceStep = 67,
            text = "Kill 10 Venture Co. Deforester.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "objective-1071-2-venture-co-deforester",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1071, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1071, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1085, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1093, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 16 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1093-super-reaper-6000",
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1093-1-venture-co-operator",
            },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-turnin-1093-super-reaper-6000",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Ziz Fizziks",
                    mapID = 1442,
                    offMapText = "Travel to Ziz Fizziks in Stonetalon Mountains.",
                    x = 0.5899,
                    y = 0.626,
                },
            },
            sourceStep = 68,
            text = "Turn in Super Reaper 6000 to Ziz Fizziks.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "turnin-1093-super-reaper-6000",
        },
        {
            complete = { quest = { id = 1071, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 17 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1071-a-gnome-s-respite",
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1071-1-venture-co-logger",
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1071-2-venture-co-deforester",
            },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-turnin-1071-a-gnome-s-respite",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1085 } } },
            route = {
                {
                    label = "Gaxim Rustfizzle",
                    mapID = 1442,
                    offMapText = "Travel to Gaxim Rustfizzle in Stonetalon Mountains.",
                    x = 0.5952,
                    y = 0.6715,
                },
            },
            sourceStep = 69,
            text = "Turn in A Gnome's Respite to Gaxim Rustfizzle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "turnin-1071-a-gnome-s-respite",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1071, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1071, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1085, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1072, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 17 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1072-an-old-colleague",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1071 } } },
            route = {
                {
                    label = "Gaxim Rustfizzle",
                    mapID = 1442,
                    offMapText = "Travel to Gaxim Rustfizzle in Stonetalon Mountains.",
                    x = 0.5952,
                    y = 0.6715,
                },
            },
            sourceStep = 69,
            text = "Accept An Old Colleague from Gaxim Rustfizzle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "accept-1072-an-old-colleague",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1072, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1072, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1071, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1085, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1075, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 17 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1075-a-scroll-from-mauren",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1071 } } },
            route = {
                {
                    label = "Gaxim Rustfizzle",
                    mapID = 1442,
                    offMapText = "Travel to Gaxim Rustfizzle in Stonetalon Mountains.",
                    x = 0.5952,
                    y = 0.6715,
                },
            },
            sourceStep = 69,
            text = "Accept A Scroll from Mauren from Gaxim Rustfizzle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "accept-1075-a-scroll-from-mauren",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1075, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1075, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1071, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1085, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
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
            complete = { quest = { id = 1073, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 17 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-objective-1073-1-elixir-of-minor-fortitude",
            kind = "note",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1072 } } },
            route = {
                {
                    label = "Elixir of Minor Fortitude",
                    mapID = 1455,
                    offMapText = "Travel to Elixir of Minor Fortitude.",
                    x = 0.2424,
                    y = 0.7457,
                },
            },
            text = "Collect 2 Elixir of Minor Fortitude. Keep the required materials for the quest.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "objective-1073-1-elixir-of-minor-fortitude",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1073, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1073, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1072, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1071, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1085, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1072, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 17 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-turnin-1072-an-old-colleague",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1071 } } },
            route = {
                {
                    label = "Lomac Gearstrip",
                    mapID = 1455,
                    offMapText = "Travel to Lomac Gearstrip in Ironforge.",
                    x = 0.7209,
                    y = 0.5188,
                },
            },
            sourceStep = 42,
            text = "Turn in An Old Colleague to Lomac Gearstrip.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "turnin-1072-an-old-colleague",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1072, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1072, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1071, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1085, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1073, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 17 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-accept-1073-ineptitude-chemicals-fun",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1072 } } },
            route = {
                {
                    label = "Lomac Gearstrip",
                    mapID = 1455,
                    offMapText = "Travel to Lomac Gearstrip in Ironforge.",
                    x = 0.7209,
                    y = 0.5188,
                },
            },
            sourceStep = 43,
            text = "Accept Ineptitude + Chemicals = Fun from Lomac Gearstrip.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "accept-1073-ineptitude-chemicals-fun",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1073, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1073, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1072, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1071, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1085, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 1073,
            complete = {
                any = {
                    {
                        all = {
                            { item = { minCount = 4, name = "Minor Mana Potion" } },
                            { item = { minCount = 2, name = "Elixir of Minor Fortitude" } },
                        },
                    },
                    { quest = { id = 1073, state = "complete" } },
                },
            },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 17 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-prepare-1073-all-required-materials",
            instructionOnly = true,
            kind = "note",
            rememberPreparation = 1073,
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1072 } } },
            route = {
                { label = "Auctioneer Redmuse", mapID = 1455, offMapText = "Travel to Auctioneer Redmuse.", x = 0.2424, y = 0.7457 },
            },
            text = "Buy 4 Minor Mana Potions and 2 Elixirs of Minor Fortitude at the Ironforge Auction House if available. Keep all six potions for Lomac Gearstrip.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "prepare-1073-all-required-materials",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1073, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1073, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1072, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1071, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1085, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1073, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 17 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-wetlands-accept-1073-ineptitude-chemicals-fun" },
            id = "alliance-leveling-era-alliance-wetlands-turnin-1073-ineptitude-chemicals-fun",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1072 } } },
            route = {
                {
                    label = "Lomac Gearstrip",
                    mapID = 1455,
                    offMapText = "Travel to Lomac Gearstrip in Ironforge.",
                    x = 0.7209,
                    y = 0.5188,
                },
            },
            sourceStep = 44,
            text = "Turn in Ineptitude + Chemicals = Fun to Lomac Gearstrip.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "turnin-1073-ineptitude-chemicals-fun",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1073, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1073, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1072, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1071, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1085, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1075, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 17 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-wetlands-turnin-1075-a-scroll-from-mauren",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1071 } } },
            route = {
                {
                    label = "Collin Mauren",
                    mapID = 1453,
                    offMapText = "Travel to Collin Mauren in Stormwind City.",
                    x = 0.4309,
                    y = 0.8038,
                },
            },
            sourceStep = 51,
            text = "Turn in A Scroll from Mauren to Collin Mauren.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-wetlands",
            sourceActionID = "turnin-1075-a-scroll-from-mauren",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1075, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1075, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1071, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1085, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            text = "Reach level 29 before the Stonetalon Mountains & Ashenvale visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 29 } },
            requiredLevel = 29,
        },
        {
            checkpointQuest = 1057,
            complete = { level = { min = 20 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-level-before-accept-1057-reclaiming-the-charred-vale",
            kind = "note",
            requiredLevel = 20,
            requiredQuests = {},
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "level-before-accept-1057-reclaiming-the-charred-vale",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 1057, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1057-reclaiming-the-charred-vale",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Keeper Albagorm",
                    mapID = 1442,
                    offMapText = "Travel to Keeper Albagorm in Stonetalon Mountains.",
                    x = 0.371,
                    y = 0.081,
                },
            },
            sourceStep = 2,
            text = "Accept Reclaiming the Charred Vale from Keeper Albagorm.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "accept-1057-reclaiming-the-charred-vale",
        },
        {
            complete = { questObjective = { count = 7, id = 1057, index = 1, text = "Bloodfury Harpy" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1057-reclaiming-the-charred-vale" },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1057-1-bloodfury-harpy",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Bloodfury Harpy", mapID = 1442, offMapText = "Travel to Bloodfury Harpy.", x = 0.326, y = 0.616 } },
            sourceStep = 3,
            text = "Kill 7 Bloodfury Harpy.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "objective-1057-1-bloodfury-harpy",
        },
        {
            complete = { questObjective = { count = 7, id = 1057, index = 2, text = "Bloodfury Ambusher" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1057-reclaiming-the-charred-vale" },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1057-2-bloodfury-ambusher",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Bloodfury Ambusher", mapID = 1442, offMapText = "Travel to Bloodfury Ambusher.", x = 0.322, y = 0.638 },
            },
            sourceStep = 4,
            text = "Kill 7 Bloodfury Ambusher.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "objective-1057-2-bloodfury-ambusher",
        },
        {
            complete = { questObjective = { count = 7, id = 1057, index = 3, text = "Bloodfury Slayer" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1057-reclaiming-the-charred-vale" },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1057-3-bloodfury-slayer",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Bloodfury Slayer", mapID = 1442, offMapText = "Travel to Bloodfury Slayer.", x = 0.344, y = 0.674 },
            },
            sourceStep = 5,
            text = "Kill 7 Bloodfury Slayer.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "objective-1057-3-bloodfury-slayer",
        },
        {
            complete = { questObjective = { count = 7, id = 1057, index = 4, text = "Bloodfury Roguefeather" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1057-reclaiming-the-charred-vale" },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1057-4-bloodfury-roguefeather",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Bloodfury Roguefeather",
                    mapID = 1442,
                    offMapText = "Travel to Bloodfury Roguefeather.",
                    x = 0.344,
                    y = 0.674,
                },
            },
            sourceStep = 6,
            text = "Kill 7 Bloodfury Roguefeather.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "objective-1057-4-bloodfury-roguefeather",
        },
        {
            complete = { quest = { id = 1057, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1057-reclaiming-the-charred-vale",
                "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1057-1-bloodfury-harpy",
                "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1057-2-bloodfury-ambusher",
                "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1057-3-bloodfury-slayer",
                "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1057-4-bloodfury-roguefeather",
            },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-turnin-1057-reclaiming-the-charred-vale",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Keeper Albagorm",
                    mapID = 1442,
                    offMapText = "Travel to Keeper Albagorm in Stonetalon Mountains.",
                    x = 0.371,
                    y = 0.081,
                },
            },
            sourceStep = 8,
            text = "Turn in Reclaiming the Charred Vale to Keeper Albagorm.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "turnin-1057-reclaiming-the-charred-vale",
        },
        {
            complete = { quest = { id = 1059, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1059-reclaiming-the-charred-vale",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1057 } } },
            route = {
                {
                    label = "Keeper Albagorm",
                    mapID = 1442,
                    offMapText = "Travel to Keeper Albagorm in Stonetalon Mountains.",
                    x = 0.371,
                    y = 0.081,
                },
            },
            sourceStep = 8,
            text = "Accept Reclaiming the Charred Vale from Keeper Albagorm.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "accept-1059-reclaiming-the-charred-vale",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1059, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1059, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1057, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            text = "Reach level 33 before the Dustwallow Marsh & Thousand Needles visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 33 } },
            requiredLevel = 33,
        },
        {
            complete = { quest = { id = 1059, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-turnin-1059-reclaiming-the-charred-vale",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1057 } } },
            route = {
                {
                    label = "Falfindel Waywarder",
                    mapID = 1444,
                    offMapText = "Travel to Falfindel Waywarder in Feralas.",
                    x = 0.8964,
                    y = 0.4656,
                },
            },
            sourceStep = 27,
            text = "Turn in Reclaiming the Charred Vale to Falfindel Waywarder.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            sourceActionID = "turnin-1059-reclaiming-the-charred-vale",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1059, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1059, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1057, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
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
            id = "horde-extra-6421-level",
            kind = "note",
            checkpointQuest = 6421,
            text = "Reach level 18 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 18 } },
            requiredLevel = 18,
        },
        {
            id = "horde-extra-6421-accept",
            kind = "accept",
            text = "Accept Boulderslide Ravine from Mor'rogal.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 14 } } } },
            route = {
                {
                    mapID = 1442,
                    x = 0.47200000000000003,
                    y = 0.64,
                    label = "Mor'rogal",
                    offMapText = "Travel to Mor'rogal in Stonetalon Mountains.",
                },
            },
            complete = { quest = { id = 6421, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-6421-level" },
        },
        {
            id = "horde-extra-6421-objective",
            kind = "objective",
            text = "Explore deep into the cave at Boulderslide Ravine and collect 10 Resonite Crystals from the crystal deposits.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 14 } } } },
            route = {
                {
                    mapID = 1442,
                    x = 0.612,
                    y = 0.924,
                    label = "Resonite Crystal",
                    offMapText = "Travel to Resonite Crystal in Stonetalon Mountains.",
                },
            },
            complete = { quest = { id = 6421, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-6421-accept" },
        },
        {
            id = "horde-extra-6421-turnin",
            kind = "turnin",
            text = "Turn in Boulderslide Ravine to Mor'rogal.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 14 } } } },
            route = {
                {
                    mapID = 1442,
                    x = 0.47200000000000003,
                    y = 0.64,
                    label = "Mor'rogal",
                    offMapText = "Travel to Mor'rogal in Stonetalon Mountains.",
                },
            },
            complete = { quest = { id = 6421, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-6421-objective" },
        },
        {
            id = "horde-extra-6284-level",
            kind = "note",
            checkpointQuest = 6284,
            text = "Reach level 21 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 21 } },
            requiredLevel = 21,
        },
        {
            id = "horde-extra-6284-accept",
            kind = "accept",
            text = "Accept Arachnophobia from Wanted Poster: Besseleth.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 15 } } } },
            route = {
                {
                    mapID = 1442,
                    x = 0.591,
                    y = 0.758,
                    label = "Wanted Poster: Besseleth",
                    offMapText = "Travel to Wanted Poster: Besseleth in Stonetalon Mountains.",
                },
            },
            complete = { quest = { id = 6284, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-6284-level" },
        },
        {
            id = "horde-extra-6284-objective",
            kind = "objective",
            text = "Slay Besseleth and loot Besseleth's Fang. This is an elite. Bring a group.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 15 } } } },
            route = {
                { mapID = 1442, x = 0.52, y = 0.738, label = "Besseleth", offMapText = "Travel to Besseleth in Stonetalon Mountains." },
            },
            complete = { quest = { id = 6284, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-6284-accept" },
        },
        {
            id = "horde-extra-6284-turnin",
            kind = "turnin",
            text = "Turn in Arachnophobia to Maggran Earthbinder.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 15 } } } },
            route = {
                {
                    mapID = 1442,
                    x = 0.47200000000000003,
                    y = 0.61,
                    label = "Maggran Earthbinder",
                    offMapText = "Travel to Maggran Earthbinder in Stonetalon Mountains.",
                },
            },
            complete = { quest = { id = 6284, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-6284-objective" },
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
            sourceStep = 136,
            text = "Turn in The Spirits of Stonetalon to Seereth Stonebreak.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "turnin-1061-the-spirits-of-stonetalon",
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
                                { quest = { id = 1062, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                { ["not"] = { faction = "Horde" } },
                                                {
                                                    all = { { any = { { quest = { id = 1061, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 6548, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 12 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-6548-avenge-my-village",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Makaba Flathoof",
                    mapID = 1413,
                    offMapText = "Travel to Makaba Flathoof in The Barrens.",
                    x = 0.3519,
                    y = 0.2779,
                },
            },
            sourceStep = 137,
            text = "Accept Avenge My Village from Makaba Flathoof.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "accept-6548-avenge-my-village",
        },
        {
            complete = { questObjective = { count = 6, id = 6548, index = 2, text = "Grimtotem Mercenary" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 12 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-6548-avenge-my-village" },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-6548-2-grimtotem-mercenary",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Grimtotem Mercenary", mapID = 1442, offMapText = "Travel to Grimtotem Mercenary.", x = 0.802, y = 0.906 },
            },
            sourceStep = 138,
            text = "Kill 6 Grimtotem Mercenary.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "objective-6548-2-grimtotem-mercenary",
        },
        {
            complete = { questObjective = { count = 8, id = 6548, index = 1, text = "Grimtotem Ruffian" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 12 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-6548-avenge-my-village" },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-6548-1-grimtotem-ruffian",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Grimtotem Ruffian", mapID = 1442, offMapText = "Travel to Grimtotem Ruffian.", x = 0.802, y = 0.906 },
            },
            sourceStep = 138,
            text = "Kill 8 Grimtotem Ruffian.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "objective-6548-1-grimtotem-ruffian",
        },
        {
            complete = { quest = { id = 6548, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 12 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-6548-avenge-my-village",
                "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-6548-2-grimtotem-mercenary",
                "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-6548-1-grimtotem-ruffian",
            },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-turnin-6548-avenge-my-village",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Makaba Flathoof",
                    mapID = 1413,
                    offMapText = "Travel to Makaba Flathoof in The Barrens.",
                    x = 0.3519,
                    y = 0.2779,
                },
            },
            sourceStep = 139,
            text = "Turn in Avenge My Village to Makaba Flathoof.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "turnin-6548-avenge-my-village",
        },
        {
            complete = { quest = { id = 6629, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 12 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-6629-kill-grundig-darkcloud",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6548 } } },
            route = {
                {
                    label = "Makaba Flathoof",
                    mapID = 1413,
                    offMapText = "Travel to Makaba Flathoof in The Barrens.",
                    x = 0.3519,
                    y = 0.2779,
                },
            },
            sourceStep = 139,
            text = "Accept Kill Grundig Darkcloud from Makaba Flathoof.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "accept-6629-kill-grundig-darkcloud",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6629, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6629, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 6548, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 6, id = 6629, index = 2, text = "Grimtotem Brute" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 12 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-6629-kill-grundig-darkcloud" },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-6629-2-grimtotem-brute",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6548 } } },
            route = { { label = "Grimtotem Brute", mapID = 1442, offMapText = "Travel to Grimtotem Brute.", x = 0.74, y = 0.854 } },
            sourceStep = 141,
            text = "Kill 6 Grimtotem Brute.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "objective-6629-2-grimtotem-brute",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6629, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6629, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 6548, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 6523, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 12 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-6523-protect-kaya",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Kaya Flathoof",
                    mapID = 1442,
                    offMapText = "Travel to Kaya Flathoof in Stonetalon Mountains.",
                    x = 0.7348,
                    y = 0.8559,
                },
            },
            sourceStep = 142,
            text = "Accept Protect Kaya from Kaya Flathoof.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "accept-6523-protect-kaya",
        },
        {
            complete = { quest = { id = 6461, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 13 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-6461-blood-feeders",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Xen'Zilla",
                    mapID = 1442,
                    offMapText = "Travel to Xen'Zilla in Stonetalon Mountains.",
                    x = 0.7124,
                    y = 0.9502,
                },
            },
            sourceStep = 144,
            text = "Accept Blood Feeders from Xen'Zilla.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "accept-6461-blood-feeders",
        },
        {
            complete = { questObjective = { count = 10, id = 6461, index = 1, text = "Deepmoss Creeper" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 13 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-6461-blood-feeders" },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-6461-1-deepmoss-creeper",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Deepmoss Creeper", mapID = 1442, offMapText = "Travel to Deepmoss Creeper.", x = 0.592, y = 0.78 } },
            sourceStep = 145,
            text = "Kill 10 Deepmoss Creeper.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "objective-6461-1-deepmoss-creeper",
        },
        {
            complete = { quest = { id = 1093, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 16 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-1093-super-reaper-6000",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Ziz Fizziks",
                    mapID = 1442,
                    offMapText = "Travel to Ziz Fizziks in Stonetalon Mountains.",
                    x = 0.5899,
                    y = 0.626,
                },
            },
            sourceStep = 147,
            text = "Accept Super Reaper 6000 from Ziz Fizziks.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "accept-1093-super-reaper-6000",
        },
        {
            complete = { questObjective = { count = 7, id = 6461, index = 2, text = "Deepmoss Venomspitter" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 13 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-6461-blood-feeders" },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-6461-2-deepmoss-venomspitter",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Deepmoss Venomspitter", mapID = 1442, offMapText = "Travel to Deepmoss Venomspitter.", x = 0.624, y = 0.614 },
            },
            sourceStep = 149,
            text = "Kill 7 Deepmoss Venomspitter.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "objective-6461-2-deepmoss-venomspitter",
        },
        {
            complete = { questObjective = { count = 1, id = 1093, index = 1, text = "Venture Co. Operator" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 16 } } } },
            dependsOn = { "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-1093-super-reaper-6000" },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-1093-1-venture-co-operator",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Venture Co. Operator", mapID = 1442, offMapText = "Travel to Venture Co. Operator.", x = 0.622, y = 0.52 },
            },
            sourceStep = 150,
            text = "Collect 1 Super Reaper 6000 Blueprints.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "objective-1093-1-venture-co-operator",
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
                                { quest = { id = 1062, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                { ["not"] = { faction = "Horde" } },
                                                {
                                                    all = { { any = { { quest = { id = 1061, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1093, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 16 } } } },
            dependsOn = {
                "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-1093-super-reaper-6000",
                "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-1093-1-venture-co-operator",
            },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-turnin-1093-super-reaper-6000",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Ziz Fizziks",
                    mapID = 1442,
                    offMapText = "Travel to Ziz Fizziks in Stonetalon Mountains.",
                    x = 0.5899,
                    y = 0.626,
                },
            },
            sourceStep = 153,
            text = "Turn in Super Reaper 6000 to Ziz Fizziks.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "turnin-1093-super-reaper-6000",
        },
        {
            complete = { quest = { id = 1094, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 16 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-1094-further-instructions",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1093 } } },
            route = {
                {
                    label = "Ziz Fizziks",
                    mapID = 1442,
                    offMapText = "Travel to Ziz Fizziks in Stonetalon Mountains.",
                    x = 0.5899,
                    y = 0.626,
                },
            },
            sourceStep = 153,
            text = "Accept Further Instructions from Ziz Fizziks.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "accept-1094-further-instructions",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1094, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1094, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 1093, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1094, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 16 } } } },
            dependsOn = { "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-1094-further-instructions" },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-turnin-1094-further-instructions",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1093 } } },
            route = {
                { label = "Sputtervalve", mapID = 1413, offMapText = "Travel to Sputtervalve in The Barrens.", x = 0.6298, y = 0.3722 },
            },
            sourceStep = 167,
            text = "Turn in Further Instructions to Sputtervalve.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "turnin-1094-further-instructions",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1094, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1094, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 1093, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1095, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 16 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-1095-further-instructions",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1094 } } },
            route = {
                { label = "Sputtervalve", mapID = 1413, offMapText = "Travel to Sputtervalve in The Barrens.", x = 0.6298, y = 0.3722 },
            },
            sourceStep = 167,
            text = "Accept Further Instructions from Sputtervalve.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "accept-1095-further-instructions",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1095, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1095, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1094, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 1093, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
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
            sourceStep = 249,
            text = "Turn in Goblin Invaders to Seereth Stonebreak.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "turnin-1062-goblin-invaders",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1062, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1062, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                { ["not"] = { faction = "Horde" } },
                                                {
                                                    all = { { any = { { quest = { id = 1061, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
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
                                { quest = { id = 1063, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1062, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        { ["not"] = { faction = "Horde" } },
                                                                        {
                                                                            all = { { any = { { quest = { id = 1061, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1068, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 13 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-1068-shredding-machines",
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
            text = "Accept Shredding Machines from Seereth Stonebreak.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "accept-1068-shredding-machines",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1068, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1068, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1062, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        { ["not"] = { faction = "Horde" } },
                                                                        {
                                                                            all = { { any = { { quest = { id = 1061, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 6523, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 12 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-6523-protect-kaya" },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-turnin-6523-protect-kaya",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Makaba Flathoof",
                    mapID = 1413,
                    offMapText = "Travel to Makaba Flathoof in The Barrens.",
                    x = 0.3519,
                    y = 0.2779,
                },
            },
            sourceStep = 251,
            text = "Turn in Protect Kaya to Makaba Flathoof.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "turnin-6523-protect-kaya",
        },
        {
            complete = { quest = { id = 6401, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 12 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-6401-kaya-s-alive",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6523 } } },
            route = {
                {
                    label = "Makaba Flathoof",
                    mapID = 1413,
                    offMapText = "Travel to Makaba Flathoof in The Barrens.",
                    x = 0.3519,
                    y = 0.2779,
                },
            },
            sourceStep = 251,
            text = "Accept Kaya's Alive from Makaba Flathoof.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "accept-6401-kaya-s-alive",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6401, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6401, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 6523, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 6629, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 12 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-6629-kill-grundig-darkcloud",
                "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-6629-2-grimtotem-brute",
            },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-turnin-6629-kill-grundig-darkcloud",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6548 } } },
            route = {
                {
                    label = "Makaba Flathoof",
                    mapID = 1413,
                    offMapText = "Travel to Makaba Flathoof in The Barrens.",
                    x = 0.3519,
                    y = 0.2779,
                },
            },
            sourceStep = 251,
            text = "Turn in Kill Grundig Darkcloud to Makaba Flathoof.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "turnin-6629-kill-grundig-darkcloud",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6629, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6629, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 6548, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 1058,
            complete = { level = { min = 20 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-level-before-accept-1058-jin-zil-s-forest-magic",
            kind = "note",
            requiredLevel = 20,
            requiredQuests = {},
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "level-before-accept-1058-jin-zil-s-forest-magic",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 1058, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-1058-jin-zil-s-forest-magic",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Witch Doctor Jin'Zil",
                    mapID = 1442,
                    offMapText = "Travel to Witch Doctor Jin'Zil in Stonetalon Mountains.",
                    x = 0.7454,
                    y = 0.9794,
                },
            },
            sourceStep = 252,
            text = "Accept Jin'Zil's Forest Magic from Witch Doctor Jin'Zil.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "accept-1058-jin-zil-s-forest-magic",
        },
        {
            complete = { quest = { id = 6461, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 13 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-6461-blood-feeders",
                "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-6461-1-deepmoss-creeper",
                "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-6461-2-deepmoss-venomspitter",
            },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-turnin-6461-blood-feeders",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Xen'Zilla",
                    mapID = 1442,
                    offMapText = "Travel to Xen'Zilla in Stonetalon Mountains.",
                    x = 0.7124,
                    y = 0.9502,
                },
            },
            sourceStep = 254,
            text = "Turn in Blood Feeders to Xen'Zilla.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "turnin-6461-blood-feeders",
        },
        {
            complete = { quest = { id = 6401, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 12 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-6401-kaya-s-alive" },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-turnin-6401-kaya-s-alive",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6523 } } },
            route = {
                {
                    label = "Tammra Windfield",
                    mapID = 1442,
                    offMapText = "Travel to Tammra Windfield in Stonetalon Mountains.",
                    x = 0.4746,
                    y = 0.5838,
                },
            },
            sourceStep = 255,
            text = "Turn in Kaya's Alive to Tammra Windfield.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "turnin-6401-kaya-s-alive",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6401, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6401, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 6523, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1095, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 16 } } } },
            dependsOn = { "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-1095-further-instructions" },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-turnin-1095-further-instructions",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1094 } } },
            route = {
                {
                    label = "Ziz Fizziks",
                    mapID = 1442,
                    offMapText = "Travel to Ziz Fizziks in Stonetalon Mountains.",
                    x = 0.5899,
                    y = 0.626,
                },
            },
            sourceStep = 257,
            text = "Turn in Further Instructions to Ziz Fizziks.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "turnin-1095-further-instructions",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1095, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1095, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1094, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 1093, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 1068, index = 2 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 13 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-1068-shredding-machines" },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-1068-2-authored-XT-9",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1062 } } },
            route = { { label = "XT-9", mapID = 1442, offMapText = "Travel to XT-9.", x = 0.7066, y = 0.5612 } },
            sourceStep = 258,
            text = "Kill the shredder XT:9 near the southern side of Windshear Crag.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "objective-1068-2-authored-XT-9",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1068, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1068, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1062, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        { ["not"] = { faction = "Horde" } },
                                                                        {
                                                                            all = { { any = { { quest = { id = 1061, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 1068, index = 1 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 13 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-1068-shredding-machines" },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-1068-1-authored-XT-4",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1062 } } },
            route = { { label = "XT-4", mapID = 1442, offMapText = "Travel to XT-4.", x = 0.6732, y = 0.4658 } },
            sourceStep = 259,
            text = "Kill the shredder XT:4 near the northern side of Windshear Crag.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "objective-1068-1-authored-XT-4",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1068, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1068, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1062, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        { ["not"] = { faction = "Horde" } },
                                                                        {
                                                                            all = { { any = { { quest = { id = 1061, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
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
            sourceStep = 14,
            text = "Turn in The Elder Crone to Magatha Grimtotem.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-ashenvale",
            sourceActionID = "turnin-1063-the-elder-crone",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1063, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1063, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1062, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        { ["not"] = { faction = "Horde" } },
                                                                        {
                                                                            all = { { any = { { quest = { id = 1061, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-horde-stonetalon-mountains",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-stonetalon-mountains",
            text = "Reach level 25 before the Stonetalon Mountains visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 25 } },
            requiredLevel = 25,
        },
        {
            checkpointQuest = 1087,
            complete = { level = { min = 20 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-stonetalon-mountains-level-before-accept-1087-cenarius-legacy",
            kind = "note",
            requiredLevel = 20,
            requiredQuests = {},
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "level-before-accept-1087-cenarius-legacy",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 1087, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stonetalon-mountains-accept-1087-cenarius-legacy",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Braelyn Firehand",
                    mapID = 1442,
                    offMapText = "Travel to Braelyn Firehand in Stonetalon Mountains.",
                    x = 0.4594,
                    y = 0.6042,
                },
            },
            sourceStep = 1,
            text = "Accept Cenarius' Legacy from Braelyn Firehand.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "accept-1087-cenarius-legacy",
        },
        {
            complete = { quest = { id = 6301, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 17 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stonetalon-mountains-accept-6301-cycle-of-rebirth",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Tammra Windfield",
                    mapID = 1442,
                    offMapText = "Travel to Tammra Windfield in Stonetalon Mountains.",
                    x = 0.4746,
                    y = 0.5838,
                },
            },
            sourceStep = 2,
            text = "Accept Cycle of Rebirth from Tammra Windfield.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "accept-6301-cycle-of-rebirth",
        },
        {
            checkpointQuest = 5881,
            complete = { level = { min = 23 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-stonetalon-mountains-level-before-accept-5881-calling-in-the-reserves",
            kind = "note",
            requiredLevel = 23,
            requiredQuests = {},
            text = "Reach level 23 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "level-before-accept-5881-calling-in-the-reserves",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 5881, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 23 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stonetalon-mountains-accept-5881-calling-in-the-reserves",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Maggran Earthbinder",
                    mapID = 1442,
                    offMapText = "Travel to Maggran Earthbinder in Stonetalon Mountains.",
                    x = 0.472,
                    y = 0.6115,
                },
            },
            sourceStep = 3,
            text = "Accept Calling in the Reserves from Maggran Earthbinder.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "accept-5881-calling-in-the-reserves",
        },
        {
            complete = { quest = { id = 6282, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 18 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stonetalon-mountains-accept-6282-harpies-threaten",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Maggran Earthbinder",
                    mapID = 1442,
                    offMapText = "Travel to Maggran Earthbinder in Stonetalon Mountains.",
                    x = 0.472,
                    y = 0.6115,
                },
            },
            sourceStep = 3,
            text = "Accept Harpies Threaten from Maggran Earthbinder.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "accept-6282-harpies-threaten",
        },
        {
            complete = { quest = { id = 6393, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stonetalon-mountains-accept-6393-elemental-war",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Tsunaman", mapID = 1442, offMapText = "Travel to Tsunaman in Stonetalon Mountains.", x = 0.4737, y = 0.6429 },
            },
            sourceStep = 4,
            text = "Accept Elemental War from Tsunaman.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "accept-6393-elemental-war",
        },
        {
            checkpointQuest = 1096,
            complete = { level = { min = 16 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-stonetalon-mountains-level-before-accept-1096-gerenzo-wrenchwhistle",
            kind = "note",
            requiredLevel = 16,
            requiredQuests = {},
            text = "Reach level 16 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "level-before-accept-1096-gerenzo-wrenchwhistle",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1096, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1096, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1095, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1094, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 1093, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1096, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 16 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stonetalon-mountains-accept-1096-gerenzo-wrenchwhistle",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1095 } } },
            route = {
                {
                    label = "Ziz Fizziks",
                    mapID = 1442,
                    offMapText = "Travel to Ziz Fizziks in Stonetalon Mountains.",
                    x = 0.5899,
                    y = 0.626,
                },
            },
            sourceStep = 5,
            text = "Accept Gerenzo Wrenchwhistle from Ziz Fizziks.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "accept-1096-gerenzo-wrenchwhistle",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1096, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1096, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1095, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1094, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 1093, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1096, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 16 } } } },
            dependsOn = { "horde-leveling-era-horde-stonetalon-mountains-accept-1096-gerenzo-wrenchwhistle" },
            id = "horde-leveling-era-horde-stonetalon-mountains-objective-1096-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1095 } } },
            sourceStep = 8,
            text = "For Gerenzo Wrenchwhistle: Bring Gerenzo Wrenchwhistle's Mechanical Arm to Ziz Fizziks in the Stonetalon Mountains.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "objective-1096-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1096, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1096, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1095, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1094, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 1093, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1096, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 16 } } } },
            dependsOn = {
                "horde-leveling-era-horde-stonetalon-mountains-accept-1096-gerenzo-wrenchwhistle",
                "horde-leveling-era-horde-stonetalon-mountains-objective-1096-quest-work",
            },
            id = "horde-leveling-era-horde-stonetalon-mountains-turnin-1096-gerenzo-wrenchwhistle",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1095 } } },
            route = {
                {
                    label = "Ziz Fizziks",
                    mapID = 1442,
                    offMapText = "Travel to Ziz Fizziks in Stonetalon Mountains.",
                    x = 0.5899,
                    y = 0.626,
                },
            },
            sourceStep = 8,
            text = "Turn in Gerenzo Wrenchwhistle to Ziz Fizziks.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "turnin-1096-gerenzo-wrenchwhistle",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1096, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1096, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1095, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1094, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 1093, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 6393, index = 1, text = "Burning Ravager" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-stonetalon-mountains-accept-6393-elemental-war" },
            id = "horde-leveling-era-horde-stonetalon-mountains-objective-6393-1-burning-ravager",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Incendrites", mapID = 1442, offMapText = "Travel to Incendrites.", x = 0.448, y = 0.434 } },
            sourceStep = 9,
            text = "Collect 10 Incendrites.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "objective-6393-1-burning-ravager",
        },
        {
            complete = { questObjective = { count = 30, id = 1058, index = 3, text = "Antlered Courser" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stonetalon-mountains-objective-1058-3-antlered-courser",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Antlered Courser", mapID = 1442, offMapText = "Travel to Antlered Courser.", x = 0.464, y = 0.382 },
            },
            sourceStep = 10,
            text = "Collect 30 Courser Eye.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "objective-1058-3-antlered-courser",
        },
        {
            complete = { questObjective = { count = 1, id = 1058, index = 4, text = "Fey Dragon Scale" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stonetalon-mountains-objective-1058-4-fey-dragon-scale",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Fey Dragon Scale", mapID = 1442, offMapText = "Travel to Fey Dragon Scale.", x = 0.41, y = 0.122 } },
            sourceStep = 11,
            text = "Collect 1 Fey Dragon Scale.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "objective-1058-4-fey-dragon-scale",
        },
        {
            complete = { questObjective = { id = 6393, index = 1, text = "Burning Ravager" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-stonetalon-mountains-accept-6393-elemental-war" },
            id = "horde-leveling-era-horde-stonetalon-mountains-objective-6393-1-burning-ravager-2",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Burning Ravager", mapID = 1442, offMapText = "Travel to Burning Ravager.", x = 0.448, y = 0.434 } },
            text = "Kill Burning Ravager.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "objective-6393-1-burning-ravager-2",
        },
        {
            complete = { questObjective = { count = 5, id = 1058, index = 1, text = "Stonetalon Sap" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stonetalon-mountains-objective-1058-1-stonetalon-sap",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Stonetalon Sap", mapID = 1442, offMapText = "Travel to Stonetalon Sap.", x = 0.354, y = 0.178 } },
            sourceStep = 12,
            text = "Collect 5 Stonetalon Sap.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "objective-1058-1-stonetalon-sap",
        },
        {
            complete = { questObjective = { count = 5, id = 1058, index = 2, text = "Twilight Whisker" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stonetalon-mountains-objective-1058-2-twilight-whisker",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Twilight Whisker", mapID = 1442, offMapText = "Travel to Twilight Whisker.", x = 0.314, y = 0.13 } },
            sourceStep = 13,
            text = "Collect 5 Twilight Whisker.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "objective-1058-2-twilight-whisker",
        },
        {
            complete = { questObjective = { count = 4, id = 1087, index = 1, text = "Son of Cenarius" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-stonetalon-mountains-accept-1087-cenarius-legacy" },
            id = "horde-leveling-era-horde-stonetalon-mountains-objective-1087-1-son-of-cenarius",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Son of Cenarius", mapID = 1442, offMapText = "Travel to Son of Cenarius.", x = 0.352, y = 0.136 } },
            sourceStep = 14,
            text = "Kill 4 Son of Cenarius.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "objective-1087-1-son-of-cenarius",
        },
        {
            complete = { questObjective = { count = 4, id = 1087, index = 2, text = "Daughter of Cenarius" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-stonetalon-mountains-accept-1087-cenarius-legacy" },
            id = "horde-leveling-era-horde-stonetalon-mountains-objective-1087-2-daughter-of-cenarius",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Daughter of Cenarius", mapID = 1442, offMapText = "Travel to Daughter of Cenarius.", x = 0.352, y = 0.136 },
            },
            sourceStep = 14,
            text = "Kill 4 Daughter of Cenarius.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "objective-1087-2-daughter-of-cenarius",
        },
        {
            complete = { questObjective = { count = 4, id = 1087, index = 3, text = "Cenarion Botanist" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-stonetalon-mountains-accept-1087-cenarius-legacy" },
            id = "horde-leveling-era-horde-stonetalon-mountains-objective-1087-3-cenarion-botanist",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Cenarion Botanist", mapID = 1442, offMapText = "Travel to Cenarion Botanist.", x = 0.352, y = 0.136 },
            },
            sourceStep = 14,
            text = "Kill 4 Cenarion Botanist.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "objective-1087-3-cenarion-botanist",
        },
        {
            complete = { questObjective = { count = 10, id = 6301, index = 1, text = "Gaea Seed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 17 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-stonetalon-mountains-accept-6301-cycle-of-rebirth" },
            id = "horde-leveling-era-horde-stonetalon-mountains-objective-6301-1-gaea-seed",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Gaea Seed", mapID = 1442, offMapText = "Travel to Gaea Seed.", x = 0.467, y = 0.374 } },
            sourceStep = 15,
            text = "Collect 10 Gaea Seed.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "objective-6301-1-gaea-seed",
        },
        {
            complete = { questObjective = { count = 7, id = 6282, index = 1, text = "Bloodfury Harpy" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 18 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-stonetalon-mountains-accept-6282-harpies-threaten" },
            id = "horde-leveling-era-horde-stonetalon-mountains-objective-6282-1-bloodfury-harpy",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Bloodfury Harpy", mapID = 1442, offMapText = "Travel to Bloodfury Harpy.", x = 0.326, y = 0.616 } },
            sourceStep = 17,
            text = "Kill 7 Bloodfury Harpy.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "objective-6282-1-bloodfury-harpy",
        },
        {
            complete = { questObjective = { count = 7, id = 6282, index = 2, text = "Bloodfury Ambusher" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 18 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-stonetalon-mountains-accept-6282-harpies-threaten" },
            id = "horde-leveling-era-horde-stonetalon-mountains-objective-6282-2-bloodfury-ambusher",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Bloodfury Ambusher", mapID = 1442, offMapText = "Travel to Bloodfury Ambusher.", x = 0.322, y = 0.638 },
            },
            sourceStep = 18,
            text = "Kill 7 Bloodfury Ambusher.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "objective-6282-2-bloodfury-ambusher",
        },
        {
            complete = { questObjective = { count = 7, id = 6282, index = 3, text = "Bloodfury Slayer" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 18 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-stonetalon-mountains-accept-6282-harpies-threaten" },
            id = "horde-leveling-era-horde-stonetalon-mountains-objective-6282-3-bloodfury-slayer",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Bloodfury Slayer", mapID = 1442, offMapText = "Travel to Bloodfury Slayer.", x = 0.344, y = 0.674 },
            },
            sourceStep = 19,
            text = "Kill 7 Bloodfury Slayer.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "objective-6282-3-bloodfury-slayer",
        },
        {
            complete = { questObjective = { count = 7, id = 6282, index = 4, text = "Bloodfury Roguefeather" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 18 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-stonetalon-mountains-accept-6282-harpies-threaten" },
            id = "horde-leveling-era-horde-stonetalon-mountains-objective-6282-4-bloodfury-roguefeather",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Bloodfury Roguefeather",
                    mapID = 1442,
                    offMapText = "Travel to Bloodfury Roguefeather.",
                    x = 0.344,
                    y = 0.674,
                },
            },
            sourceStep = 20,
            text = "Kill 7 Bloodfury Roguefeather.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "objective-6282-4-bloodfury-roguefeather",
        },
        {
            complete = { quest = { id = 6393, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-stonetalon-mountains-accept-6393-elemental-war",
                "horde-leveling-era-horde-stonetalon-mountains-objective-6393-1-burning-ravager",
                "horde-leveling-era-horde-stonetalon-mountains-objective-6393-1-burning-ravager-2",
            },
            id = "horde-leveling-era-horde-stonetalon-mountains-turnin-6393-elemental-war",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Tsunaman", mapID = 1442, offMapText = "Travel to Tsunaman in Stonetalon Mountains.", x = 0.4737, y = 0.6429 },
            },
            sourceStep = 22,
            text = "Turn in Elemental War to Tsunaman.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "turnin-6393-elemental-war",
        },
        {
            complete = { quest = { id = 6282, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 18 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-stonetalon-mountains-accept-6282-harpies-threaten",
                "horde-leveling-era-horde-stonetalon-mountains-objective-6282-1-bloodfury-harpy",
                "horde-leveling-era-horde-stonetalon-mountains-objective-6282-2-bloodfury-ambusher",
                "horde-leveling-era-horde-stonetalon-mountains-objective-6282-3-bloodfury-slayer",
                "horde-leveling-era-horde-stonetalon-mountains-objective-6282-4-bloodfury-roguefeather",
            },
            id = "horde-leveling-era-horde-stonetalon-mountains-turnin-6282-harpies-threaten",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Maggran Earthbinder",
                    mapID = 1442,
                    offMapText = "Travel to Maggran Earthbinder in Stonetalon Mountains.",
                    x = 0.4719,
                    y = 0.6114,
                },
            },
            sourceStep = 23,
            text = "Turn in Harpies Threaten to Maggran Earthbinder.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "turnin-6282-harpies-threaten",
        },
        {
            complete = { quest = { id = 6301, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 17 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-stonetalon-mountains-accept-6301-cycle-of-rebirth",
                "horde-leveling-era-horde-stonetalon-mountains-objective-6301-1-gaea-seed",
            },
            id = "horde-leveling-era-horde-stonetalon-mountains-turnin-6301-cycle-of-rebirth",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Tammra Windfield",
                    mapID = 1442,
                    offMapText = "Travel to Tammra Windfield in Stonetalon Mountains.",
                    x = 0.4746,
                    y = 0.5838,
                },
            },
            sourceStep = 24,
            text = "Turn in Cycle of Rebirth to Tammra Windfield.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "turnin-6301-cycle-of-rebirth",
        },
        {
            complete = { quest = { id = 6381, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 17 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stonetalon-mountains-accept-6381-new-life",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6301 } } },
            route = {
                {
                    label = "Tammra Windfield",
                    mapID = 1442,
                    offMapText = "Travel to Tammra Windfield in Stonetalon Mountains.",
                    x = 0.4746,
                    y = 0.5838,
                },
            },
            sourceStep = 24,
            text = "Accept New Life from Tammra Windfield.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "accept-6381-new-life",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6381, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6381, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 6301, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1087, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-stonetalon-mountains-accept-1087-cenarius-legacy",
                "horde-leveling-era-horde-stonetalon-mountains-objective-1087-1-son-of-cenarius",
                "horde-leveling-era-horde-stonetalon-mountains-objective-1087-2-daughter-of-cenarius",
                "horde-leveling-era-horde-stonetalon-mountains-objective-1087-3-cenarion-botanist",
            },
            id = "horde-leveling-era-horde-stonetalon-mountains-turnin-1087-cenarius-legacy",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Braelyn Firehand",
                    mapID = 1442,
                    offMapText = "Travel to Braelyn Firehand in Stonetalon Mountains.",
                    x = 0.4594,
                    y = 0.6042,
                },
            },
            sourceStep = 25,
            text = "Turn in Cenarius' Legacy to Braelyn Firehand.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "turnin-1087-cenarius-legacy",
        },
        {
            id = "horde-extra-6283-level",
            kind = "note",
            checkpointQuest = 6283,
            text = "Reach level 26 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 26 } },
            requiredLevel = 26,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6283, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6283, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 6282, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-6283-accept",
            kind = "accept",
            text = "Accept Bloodfury Bloodline from Maggran Earthbinder.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 18 } } } },
            route = {
                {
                    mapID = 1442,
                    x = 0.47200000000000003,
                    y = 0.61,
                    label = "Maggran Earthbinder",
                    offMapText = "Travel to Maggran Earthbinder in Stonetalon Mountains.",
                },
            },
            complete = { quest = { id = 6283, state = "activeOrCompleted" } },
            requiredQuests = { { mode = "any", quests = { 6282 } } },
            useClientText = false,
            dependsOn = { "horde-extra-6283-level" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6283, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6283, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 6282, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-6283-objective",
            kind = "objective",
            text = "Slay Bloodfury Ripper and loot Bloodfury Ripper's Remains. This is an elite. Bring a group.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 18 } } } },
            route = {
                {
                    mapID = 1442,
                    x = 0.31,
                    y = 0.62,
                    label = "Bloodfury Ripper",
                    offMapText = "Travel to Bloodfury Ripper in Stonetalon Mountains.",
                },
            },
            complete = { quest = { id = 6283, state = "complete" } },
            requiredQuests = { { mode = "any", quests = { 6282 } } },
            useClientText = false,
            dependsOn = { "horde-extra-6283-accept" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6283, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6283, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 6282, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-6283-turnin",
            kind = "turnin",
            text = "Turn in Bloodfury Bloodline to Maggran Earthbinder.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 18 } } } },
            route = {
                {
                    mapID = 1442,
                    x = 0.47200000000000003,
                    y = 0.61,
                    label = "Maggran Earthbinder",
                    offMapText = "Travel to Maggran Earthbinder in Stonetalon Mountains.",
                },
            },
            complete = { quest = { id = 6283, state = "completed" } },
            requiredQuests = { { mode = "any", quests = { 6282 } } },
            useClientText = false,
            dependsOn = { "horde-extra-6283-objective" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6283, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6283, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 6282, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 6381, index = 1 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 17 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-stonetalon-mountains-accept-6381-new-life" },
            id = "horde-leveling-era-horde-stonetalon-mountains-objective-6381-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6301 } } },
            route = { { label = "New Life", mapID = 1442, offMapText = "Travel to New Life.", x = 0.3225, y = 0.6816 } },
            sourceStep = 27,
            text = "Follow the path into the Charred Vale. Plant Gaea Seeds in 10 Gaea Dirt Mounds scattered around the vale.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "objective-6381-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6381, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6381, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 6301, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 6381, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 17 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-stonetalon-mountains-accept-6381-new-life",
                "horde-leveling-era-horde-stonetalon-mountains-objective-6381-quest-work",
            },
            id = "horde-leveling-era-horde-stonetalon-mountains-turnin-6381-new-life",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6301 } } },
            route = {
                {
                    label = "Tammra Windfield",
                    mapID = 1442,
                    offMapText = "Travel to Tammra Windfield in Stonetalon Mountains.",
                    x = 0.4746,
                    y = 0.5838,
                },
            },
            sourceStep = 27,
            text = "Turn in New Life to Tammra Windfield.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "turnin-6381-new-life",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6381, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6381, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 6301, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1058, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-stonetalon-mountains-objective-1058-3-antlered-courser",
                "horde-leveling-era-horde-stonetalon-mountains-objective-1058-4-fey-dragon-scale",
                "horde-leveling-era-horde-stonetalon-mountains-objective-1058-1-stonetalon-sap",
                "horde-leveling-era-horde-stonetalon-mountains-objective-1058-2-twilight-whisker",
            },
            id = "horde-leveling-era-horde-stonetalon-mountains-turnin-1058-jin-zil-s-forest-magic",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Witch Doctor Jin'Zil",
                    mapID = 1442,
                    offMapText = "Travel to Witch Doctor Jin'Zil in Stonetalon Mountains.",
                    x = 0.7454,
                    y = 0.9794,
                },
            },
            sourceStep = 28,
            text = "Turn in Jin'Zil's Forest Magic to Witch Doctor Jin'Zil.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "turnin-1058-jin-zil-s-forest-magic",
        },
        {
            complete = { questObjective = { count = 1, id = 1068, index = 2 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 13 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stonetalon-mountains-objective-1068-2-authored-XT-9",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1062 } } },
            route = { { label = "XT-9", mapID = 1442, offMapText = "Travel to XT-9.", x = 0.7066, y = 0.5612 } },
            text = "Kill the shredder XT:9 near the southern side of Windshear Crag.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "objective-1068-2-authored-XT-9",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1068, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1068, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1062, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        { ["not"] = { faction = "Horde" } },
                                                                        {
                                                                            all = { { any = { { quest = { id = 1061, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 1068, index = 1 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 13 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stonetalon-mountains-objective-1068-1-authored-XT-4",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1062 } } },
            route = { { label = "XT-4", mapID = 1442, offMapText = "Travel to XT-4.", x = 0.6732, y = 0.4658 } },
            text = "Kill the shredder XT:4 near the northern side of Windshear Crag.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "objective-1068-1-authored-XT-4",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1068, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1068, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1062, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        { ["not"] = { faction = "Horde" } },
                                                                        {
                                                                            all = { { any = { { quest = { id = 1061, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1068, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 13 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-stonetalon-mountains-objective-1068-2-authored-XT-9",
                "horde-leveling-era-horde-stonetalon-mountains-objective-1068-1-authored-XT-4",
                "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-1068-2-authored-XT-9",
                "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-1068-1-authored-XT-4",
            },
            id = "horde-leveling-era-horde-stonetalon-mountains-turnin-1068-shredding-machines",
            kind = "turnin",
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
            sourceStep = 29,
            text = "Turn in Shredding Machines to Seereth Stonebreak.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stonetalon-mountains",
            sourceActionID = "turnin-1068-shredding-machines",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1068, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1068, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1062, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        { ["not"] = { faction = "Horde" } },
                                                                        {
                                                                            all = { { any = { { quest = { id = 1061, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-horde-thousand-needles",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-thousand-needles",
            text = "Reach level 28 before the Thousand Needles visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 28 } },
            requiredLevel = 28,
        },
        {
            complete = { quest = { id = 5881, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 23 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-turnin-5881-calling-in-the-reserves",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Grish Longrunner",
                    mapID = 1441,
                    offMapText = "Travel to Grish Longrunner in Thousand Needles.",
                    x = 0.3186,
                    y = 0.2166,
                },
            },
            sourceStep = 3,
            text = "Turn in Calling in the Reserves to Grish Longrunner.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "turnin-5881-calling-in-the-reserves",
        },
        {
            id = "horde-extra-6481-level",
            kind = "note",
            checkpointQuest = 6481,
            text = "Reach level 20 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 20 } },
            requiredLevel = 20,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6481, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6481, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 6421, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-6481-accept",
            kind = "accept",
            text = "Accept Earthen Arise from Mor'rogal.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 14 } } } },
            route = {
                {
                    mapID = 1442,
                    x = 0.47200000000000003,
                    y = 0.64,
                    label = "Mor'rogal",
                    offMapText = "Travel to Mor'rogal in Stonetalon Mountains.",
                },
            },
            complete = { quest = { id = 6481, state = "activeOrCompleted" } },
            requiredQuests = { { mode = "any", quests = { 6421 } } },
            useClientText = false,
            dependsOn = { "horde-extra-6481-level" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6481, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6481, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 6421, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-6481-objective",
            kind = "objective",
            text = "Open the Resonite cask with the Enchanted Resonite Crystal, then slay Goggeroc. This is an elite. Bring a group.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 14 } } } },
            route = {
                {
                    mapID = 1442,
                    x = 0.5760000000000001,
                    y = 0.894,
                    label = "Goggeroc",
                    offMapText = "Travel to Goggeroc in Stonetalon Mountains.",
                },
            },
            complete = { quest = { id = 6481, state = "complete" } },
            requiredQuests = { { mode = "any", quests = { 6421 } } },
            useClientText = false,
            dependsOn = { "horde-extra-6481-accept" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6481, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6481, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 6421, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-6481-turnin",
            kind = "turnin",
            text = "Turn in Earthen Arise to Mor'rogal.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 14 } } } },
            route = {
                {
                    mapID = 1442,
                    x = 0.47200000000000003,
                    y = 0.64,
                    label = "Mor'rogal",
                    offMapText = "Travel to Mor'rogal in Stonetalon Mountains.",
                },
            },
            complete = { quest = { id = 6481, state = "completed" } },
            requiredQuests = { { mode = "any", quests = { 6421 } } },
            useClientText = false,
            dependsOn = { "horde-extra-6481-objective" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6481, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6481, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 6421, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-6542-level",
            kind = "note",
            checkpointQuest = 6542,
            text = "Reach level 19 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 19 } },
            requiredLevel = 19,
            alternativeQuests = { 6543 },
        },
        {
            id = "horde-extra-6542-accept",
            kind = "accept",
            text = "Accept Report to Kadrak from Darn Talongrip.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 17 } } } },
            route = {
                {
                    mapID = 1442,
                    x = 0.732,
                    y = 0.948,
                    label = "Darn Talongrip",
                    offMapText = "Travel to Darn Talongrip in Stonetalon Mountains.",
                },
            },
            complete = { quest = { id = 6542, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            alternativeQuests = { 6543 },
            dependsOn = { "horde-extra-6542-level" },
        },
        {
            id = "horde-extra-6542-objective",
            kind = "objective",
            text = "Report to Kadrak at the watch tower in northern Barrens. Follow the quest log for the destination.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 17 } } } },
            route = {},
            complete = { quest = { id = 6542, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            alternativeQuests = { 6543 },
            dependsOn = { "horde-extra-6542-accept" },
            useClientPin = true,
        },
        {
            id = "horde-extra-6542-turnin",
            kind = "turnin",
            text = "Turn in Report to Kadrak to Kadrak.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 17 } } } },
            route = {
                { mapID = 1413, x = 0.48, y = 0.054000000000000006, label = "Kadrak", offMapText = "Travel to Kadrak in The Barrens." },
            },
            complete = { quest = { id = 6542, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            alternativeQuests = { 6543 },
            dependsOn = { "horde-extra-6542-objective" },
        },
        {
            id = "horde-extra-86576-level",
            kind = "note",
            checkpointQuest = 86576,
            text = "Reach level 26 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 26 } },
            requiredLevel = 26,
        },
        {
            id = "horde-extra-86576-accept",
            kind = "accept",
            text = "Accept Bloodfury Trinkets from Maggran Earthbinder.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 18 } } } },
            route = {
                {
                    mapID = 1442,
                    x = 0.47200000000000003,
                    y = 0.61,
                    label = "Maggran Earthbinder",
                    offMapText = "Travel to Maggran Earthbinder in Stonetalon Mountains.",
                },
            },
            complete = { quest = { id = 86576, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-86576-level" },
        },
        {
            id = "horde-extra-86576-objective",
            kind = "objective",
            text = "Defeat Bloodfury harpies and loot 15 Glittering Sunstones.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 18 } } } },
            route = {
                {
                    mapID = 1442,
                    x = 0.32799999999999996,
                    y = 0.644,
                    label = "Bloodfury Harpy",
                    offMapText = "Travel to Bloodfury Harpy in Stonetalon Mountains.",
                },
            },
            complete = { quest = { id = 86576, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-86576-accept" },
        },
        {
            id = "horde-extra-86576-turnin",
            kind = "turnin",
            text = "Turn in Bloodfury Trinkets to Mor'rogal.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 18 } } } },
            route = {
                {
                    mapID = 1442,
                    x = 0.47200000000000003,
                    y = 0.64,
                    label = "Mor'rogal",
                    offMapText = "Travel to Mor'rogal in Stonetalon Mountains.",
                },
            },
            complete = { quest = { id = 86576, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-86576-objective" },
        },
    },
})
