local _, ns = ...

-- Source decisions: docs/loremaster/eastern-plaguelands.json.
-- Coordinates require a Forever client walkthrough.
ns:RegisterGuide({
    id = "loremaster-eastern-plaguelands",
    title = "Eastern Plaguelands",
    category = "Loremaster Guides",
    revision = 1,
    routeMode = "ordered",
    loremasterExpanded = true,
    goals = {
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
            checkpointQuest = 6182,
            complete = { level = { min = 56 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-burning-steppes-level-before-accept-6182-the-first-and-the-last",
            kind = "note",
            requiredLevel = 56,
            requiredQuests = {},
            text = "Reach level 56 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "level-before-accept-6182-the-first-and-the-last",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 6182, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 56 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-burning-steppes-accept-6182-the-first-and-the-last",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Highlord Bolvar Fordragon",
                    mapID = 1453,
                    offMapText = "Travel to Highlord Bolvar Fordragon in Stormwind City.",
                    x = 0.798,
                    y = 0.386,
                },
            },
            sourceStep = 33,
            text = "Accept The First and the Last from Highlord Bolvar Fordragon.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "accept-6182-the-first-and-the-last",
        },
        {
            complete = { quest = { id = 6182, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 56 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-burning-steppes-accept-6182-the-first-and-the-last" },
            id = "alliance-leveling-era-alliance-burning-steppes-turnin-6182-the-first-and-the-last",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Master Mathias Shaw",
                    mapID = 1453,
                    offMapText = "Travel to Master Mathias Shaw in Stormwind City.",
                    x = 0.7579,
                    y = 0.5985,
                },
            },
            sourceStep = 36,
            text = "Turn in The First and the Last to Master Mathias Shaw.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "turnin-6182-the-first-and-the-last",
        },
        {
            complete = { quest = { id = 6183, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 56 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-burning-steppes-accept-6183-honor-the-dead",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6182 } } },
            route = {
                {
                    label = "Master Mathias Shaw",
                    mapID = 1453,
                    offMapText = "Travel to Master Mathias Shaw in Stormwind City.",
                    x = 0.783,
                    y = 0.707,
                },
            },
            sourceStep = 36,
            text = "Accept Honor the Dead from Master Mathias Shaw.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "accept-6183-honor-the-dead",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6183, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6183, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 6182, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 6183, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 56 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-burning-steppes-accept-6183-honor-the-dead" },
            id = "alliance-leveling-era-alliance-burning-steppes-turnin-6183-honor-the-dead",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6182 } } },
            route = {
                {
                    label = "Master Mathias Shaw",
                    mapID = 1453,
                    offMapText = "Travel to Master Mathias Shaw in Stormwind City.",
                    x = 0.7579,
                    y = 0.5985,
                },
            },
            sourceStep = 37,
            text = "Turn in Honor the Dead to Master Mathias Shaw.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "turnin-6183-honor-the-dead",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6183, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6183, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 6182, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 6184, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 56 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-burning-steppes-accept-6184-flint-shadowmore",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6183 } } },
            route = {
                {
                    label = "Master Mathias Shaw",
                    mapID = 1453,
                    offMapText = "Travel to Master Mathias Shaw in Stormwind City.",
                    x = 0.783,
                    y = 0.707,
                },
            },
            sourceStep = 37,
            text = "Accept Flint Shadowmore from Master Mathias Shaw.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "accept-6184-flint-shadowmore",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6184, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6184, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 6183, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 6182, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
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
            checkpointQuest = 6184,
            complete = { level = { min = 56 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-level-before-turnin-6184-flint-shadowmore",
            kind = "note",
            requiredLevel = 56,
            requiredQuests = {},
            text = "Reach level 56 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "level-before-turnin-6184-flint-shadowmore",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6184, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6184, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 6183, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 6182, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 6184, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 56 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-6184-flint-shadowmore",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6183 } } },
            route = {
                {
                    label = "Flint Shadowmore",
                    mapID = 1422,
                    offMapText = "Travel to Flint Shadowmore in Western Plaguelands.",
                    x = 0.4361,
                    y = 0.8451,
                },
            },
            sourceStep = 10,
            text = "Turn in Flint Shadowmore to Flint Shadowmore.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "turnin-6184-flint-shadowmore",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6184, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6184, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 6183, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 6182, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            alternativeQuests = { 5601 },
            checkpointQuest = 5142,
            complete = { level = { min = 50 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-level-before-accept-5142-little-pamela",
            kind = "note",
            requiredLevel = 50,
            requiredQuests = {},
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "level-before-accept-5142-little-pamela",
            dependsOn = {},
        },
        {
            alternativeQuests = { 5601 },
            complete = { quest = { id = 5142, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5142-little-pamela",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Marlene Redpath",
                    mapID = 1422,
                    offMapText = "Travel to Marlene Redpath in Western Plaguelands.",
                    x = 0.4913,
                    y = 0.7852,
                },
            },
            sourceStep = 11,
            text = "Accept Little Pamela from Marlene Redpath.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-5142-little-pamela",
        },
        {
            complete = { quest = { id = 6185, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 56 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-6185-the-eastern-plagues",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6184 } } },
            route = {
                {
                    label = "Flint Shadowmore",
                    mapID = 1422,
                    offMapText = "Travel to Flint Shadowmore in Western Plaguelands.",
                    x = 0.4361,
                    y = 0.8451,
                },
            },
            sourceStep = 32,
            text = "Accept The Eastern Plagues from Flint Shadowmore.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-6185-the-eastern-plagues",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6185, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6185, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 6184, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 6183, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 6182, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5542, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 52 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5542-demon-dogs",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Tirion Fordring",
                    mapID = 1423,
                    offMapText = "Travel to Tirion Fordring in Eastern Plaguelands.",
                    x = 0.0756,
                    y = 0.437,
                },
            },
            sourceStep = 36,
            text = "Accept Demon Dogs from Tirion Fordring.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-5542-demon-dogs",
        },
        {
            complete = { quest = { id = 5543, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 52 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5543-blood-tinged-skies",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Tirion Fordring",
                    mapID = 1423,
                    offMapText = "Travel to Tirion Fordring in Eastern Plaguelands.",
                    x = 0.0756,
                    y = 0.437,
                },
            },
            sourceStep = 36,
            text = "Accept Blood Tinged Skies from Tirion Fordring.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-5543-blood-tinged-skies",
        },
        {
            complete = { quest = { id = 5544, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 52 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5544-carrion-grubbage",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Tirion Fordring",
                    mapID = 1423,
                    offMapText = "Travel to Tirion Fordring in Eastern Plaguelands.",
                    x = 0.0756,
                    y = 0.437,
                },
            },
            sourceStep = 36,
            text = "Accept Carrion Grubbage from Tirion Fordring.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-5544-carrion-grubbage",
        },
        {
            complete = { questObjective = { count = 1, id = 6185, index = 3, text = "SI:7 Insignia (Turyen)" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 56 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-6185-the-eastern-plagues" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-6185-3-si-7-insignia-turyen",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6184 } } },
            route = {
                {
                    label = "SI:7 Insignia (Turyen)",
                    mapID = 1423,
                    offMapText = "Travel to SI:7 Insignia (Turyen).",
                    x = 0.2881,
                    y = 0.7488,
                },
            },
            sourceStep = 37,
            text = "Collect 1 SI:7 Insignia (Turyen).",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-6185-3-si-7-insignia-turyen",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6185, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6185, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 6184, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 6183, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 6182, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 6185, index = 2, text = "SI:7 Insignia (Fredo)" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 56 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-6185-the-eastern-plagues" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-6185-2-si-7-insignia-fredo",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6184 } } },
            route = {
                {
                    label = "SI:7 Insignia (Fredo)",
                    mapID = 1423,
                    offMapText = "Travel to SI:7 Insignia (Fredo).",
                    x = 0.2716,
                    y = 0.7497,
                },
            },
            sourceStep = 39,
            text = "Collect 1 SI:7 Insignia (Fredo).",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-6185-2-si-7-insignia-fredo",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6185, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6185, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 6184, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 6183, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 6182, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 6185, index = 1, text = "SI:7 Insignia (Rutger)" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 56 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-6185-the-eastern-plagues" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-6185-1-si-7-insignia-rutger",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6184 } } },
            route = {
                {
                    label = "SI:7 Insignia (Rutger)",
                    mapID = 1423,
                    offMapText = "Travel to SI:7 Insignia (Rutger).",
                    x = 0.2881,
                    y = 0.7985,
                },
            },
            sourceStep = 40,
            text = "Collect 1 SI:7 Insignia (Rutger).",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-6185-1-si-7-insignia-rutger",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6185, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6185, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 6184, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 6183, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 6182, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            alternativeQuests = { 5601 },
            complete = { quest = { id = 5142, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5142-little-pamela" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-5142-little-pamela",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Pamela Redpath",
                    mapID = 1423,
                    offMapText = "Travel to Pamela Redpath in Eastern Plaguelands.",
                    x = 0.3645,
                    y = 0.908,
                },
            },
            sourceStep = 41,
            text = "Turn in Little Pamela to Pamela Redpath.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "turnin-5142-little-pamela",
        },
        {
            complete = { quest = { id = 5149, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5149-pamela-s-doll",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Pamela Redpath",
                    mapID = 1423,
                    offMapText = "Travel to Pamela Redpath in Eastern Plaguelands.",
                    x = 0.3645,
                    y = 0.908,
                },
            },
            sourceStep = 41,
            text = "Accept Pamela's Doll from Pamela Redpath.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-5149-pamela-s-doll",
        },
        {
            checkpointQuest = 5149,
            complete = {
                any = {
                    {
                        all = {
                            { item = { minCount = 1, name = "Pamela's Doll's Head" } },
                            { item = { minCount = 1, name = "Pamela's Doll's Left Side" } },
                            { item = { minCount = 1, name = "Pamela's Doll's Right Side" } },
                        },
                    },
                    { quest = { id = 5149, state = "complete" } },
                },
            },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5149-pamela-s-doll" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5149-1-pamela-s-doll-s-head",
            instructionOnly = true,
            kind = "note",
            rememberPreparation = 5149,
            requiredQuests = {},
            route = {
                { label = "Darrowshire houses", mapID = 1423, offMapText = "Travel to Darrowshire houses.", x = 0.381, y = 0.923 },
            },
            sourceInstructionIndex = 1,
            sourceInstructionStep = 45,
            text = "Search the ruined houses of Darrowshire for Pamela's Doll's Head, Left Side and Right Side. Spirits attack when you take the pieces.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-5149-1-pamela-s-doll-s-head",
        },
        {
            complete = { questObjective = { count = 1, id = 5149, index = 1 } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5149-pamela-s-doll" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5149-1-pamela-s-doll-s-head-2",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Darrowshire houses", mapID = 1423, offMapText = "Travel to Darrowshire houses.", x = 0.381, y = 0.923 },
            },
            text = "Use Pamela's Doll's Head with the two sides in your bags to assemble Pamela's Doll.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-5149-1-pamela-s-doll-s-head-2",
        },
        {
            complete = { quest = { id = 5149, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5149-pamela-s-doll",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5149-1-pamela-s-doll-s-head",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5149-1-pamela-s-doll-s-head-2",
            },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-5149-pamela-s-doll",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Pamela Redpath",
                    mapID = 1423,
                    offMapText = "Travel to Pamela Redpath in Eastern Plaguelands.",
                    x = 0.3645,
                    y = 0.908,
                },
            },
            sourceStep = 46,
            text = "Turn in Pamela's Doll to Pamela Redpath.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "turnin-5149-pamela-s-doll",
        },
        {
            complete = { quest = { id = 5152, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5152-auntie-marlene",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5149 } } },
            route = {
                {
                    label = "Pamela Redpath",
                    mapID = 1423,
                    offMapText = "Travel to Pamela Redpath in Eastern Plaguelands.",
                    x = 0.3645,
                    y = 0.908,
                },
            },
            sourceStep = 46,
            text = "Accept Auntie Marlene from Pamela Redpath.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-5152-auntie-marlene",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5152, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5152, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 5149, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5241, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5241-uncle-carlin",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5149 } } },
            route = {
                {
                    label = "Pamela Redpath",
                    mapID = 1423,
                    offMapText = "Travel to Pamela Redpath in Eastern Plaguelands.",
                    x = 0.3645,
                    y = 0.908,
                },
            },
            sourceStep = 46,
            text = "Accept Uncle Carlin from Pamela Redpath.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-5241-uncle-carlin",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5241, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5241, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 5149, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 15, id = 5544, index = 1, text = "Slab of Carrion Worm Meat" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 52 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5544-carrion-grubbage" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5544-1-slab-of-carrion-worm-meat",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Slab of Carrion Worm Meat",
                    mapID = 1423,
                    offMapText = "Travel to Slab of Carrion Worm Meat.",
                    x = 0.402,
                    y = 0.836,
                },
            },
            sourceStep = 47,
            text = "Collect 15 Slab of Carrion Worm Meat.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-5544-1-slab-of-carrion-worm-meat",
        },
        {
            complete = { questObjective = { count = 20, id = 5542, index = 1, text = "Plaguehound Runt" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 52 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5542-demon-dogs" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5542-1-plaguehound-runt",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Plaguehound Runt", mapID = 1423, offMapText = "Travel to Plaguehound Runt.", x = 0.402, y = 0.836 },
            },
            sourceStep = 48,
            text = "Kill 20 Plaguehound Runt.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-5542-1-plaguehound-runt",
        },
        {
            complete = { questObjective = { count = 30, id = 5543, index = 1, text = "Plaguebat" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 52 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5543-blood-tinged-skies" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5543-1-plaguebat",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Plaguebat", mapID = 1423, offMapText = "Travel to Plaguebat.", x = 0.402, y = 0.836 } },
            sourceStep = 48,
            text = "Kill 30 Plaguebat.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-5543-1-plaguebat",
        },
        {
            complete = { questObjective = { count = 5, id = 5542, index = 2, text = "Plaguehound" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 52 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5542-demon-dogs" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5542-2-plaguehound",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Plaguehound", mapID = 1423, offMapText = "Travel to Plaguehound.", x = 0.68, y = 0.756 } },
            sourceStep = 50,
            text = "Kill 5 Plaguehound.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-5542-2-plaguehound",
        },
        {
            complete = { quest = { id = 6021, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-6021-zaeldarr-the-outcast",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Caretaker Alen",
                    mapID = 1423,
                    offMapText = "Travel to Caretaker Alen in Eastern Plaguelands.",
                    x = 0.7954,
                    y = 0.6377,
                },
            },
            sourceStep = 51,
            text = "Accept Zaeldarr the Outcast from Caretaker Alen.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-6021-zaeldarr-the-outcast",
        },
        {
            complete = { quest = { id = 5241, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5241-uncle-carlin" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-5241-uncle-carlin",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5149 } } },
            route = {
                {
                    label = "Carlin Redpath",
                    mapID = 1423,
                    offMapText = "Travel to Carlin Redpath in Eastern Plaguelands.",
                    x = 0.8152,
                    y = 0.5977,
                },
            },
            sourceStep = 53,
            text = "Turn in Uncle Carlin to Carlin Redpath.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "turnin-5241-uncle-carlin",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5241, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5241, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 5149, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5211, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5211-defenders-of-darrowshire",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Carlin Redpath",
                    mapID = 1423,
                    offMapText = "Travel to Carlin Redpath in Eastern Plaguelands.",
                    x = 0.8152,
                    y = 0.5977,
                },
            },
            sourceStep = 53,
            text = "Accept Defenders of Darrowshire from Carlin Redpath.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-5211-defenders-of-darrowshire",
        },
        {
            complete = { quest = { id = 6164, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-6164-augustus-receipt-book",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Augustus the Touched",
                    mapID = 1423,
                    offMapText = "Travel to Augustus the Touched in Eastern Plaguelands.",
                    x = 0.1445,
                    y = 0.3348,
                },
            },
            sourceStep = 59,
            text = "Accept Augustus' Receipt Book from Augustus the Touched.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-6164-augustus-receipt-book",
        },
        {
            complete = { questObjective = { count = 1, id = 6164, index = 1, text = "Augustus' Receipt Book" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-6164-augustus-receipt-book" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-6164-1-augustus-receipt-book",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Augustus' Receipt Book",
                    mapID = 1423,
                    offMapText = "Travel to Augustus' Receipt Book.",
                    x = 0.1743,
                    y = 0.3109,
                },
            },
            sourceStep = 60,
            text = "Collect 1 Augustus' Receipt Book.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-6164-1-augustus-receipt-book",
        },
        {
            complete = { quest = { id = 6164, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-6164-augustus-receipt-book",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-6164-1-augustus-receipt-book",
            },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-6164-augustus-receipt-book",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Augustus the Touched",
                    mapID = 1423,
                    offMapText = "Travel to Augustus the Touched in Eastern Plaguelands.",
                    x = 0.1445,
                    y = 0.3348,
                },
            },
            sourceStep = 61,
            text = "Turn in Augustus' Receipt Book to Augustus the Touched.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "turnin-6164-augustus-receipt-book",
        },
        {
            complete = { questObjective = { count = 5, id = 5542, index = 3, text = "Frenzied Plaguehound" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 52 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5542-demon-dogs" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5542-3-frenzied-plaguehound",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Frenzied Plaguehound", mapID = 1423, offMapText = "Travel to Frenzied Plaguehound.", x = 0.45, y = 0.386 },
            },
            sourceStep = 62,
            text = "Kill 5 Frenzied Plaguehound.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-5542-3-frenzied-plaguehound",
        },
        {
            complete = { questObjective = { count = 1, id = 6021, index = 1, text = "Zaeldarr the Outcast" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-6021-zaeldarr-the-outcast" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-6021-1-zaeldarr-the-outcast",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Zaeldarr the Outcast", mapID = 1423, offMapText = "Travel to Zaeldarr the Outcast.", x = 0.2786, y = 0.8548 },
            },
            sourceStep = 64,
            text = "Collect 1 Zaeldarr's Head.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-6021-1-zaeldarr-the-outcast",
        },
        {
            complete = { quest = { id = 5542, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 52 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5542-demon-dogs",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5542-1-plaguehound-runt",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5542-2-plaguehound",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5542-3-frenzied-plaguehound",
            },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-5542-demon-dogs",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Tirion Fordring",
                    mapID = 1423,
                    offMapText = "Travel to Tirion Fordring in Eastern Plaguelands.",
                    x = 0.0757,
                    y = 0.437,
                },
            },
            sourceStep = 65,
            text = "Turn in Demon Dogs to Tirion Fordring.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "turnin-5542-demon-dogs",
        },
        {
            complete = { quest = { id = 5543, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 52 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5543-blood-tinged-skies",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5543-1-plaguebat",
            },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-5543-blood-tinged-skies",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Tirion Fordring",
                    mapID = 1423,
                    offMapText = "Travel to Tirion Fordring in Eastern Plaguelands.",
                    x = 0.0757,
                    y = 0.437,
                },
            },
            sourceStep = 65,
            text = "Turn in Blood Tinged Skies to Tirion Fordring.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "turnin-5543-blood-tinged-skies",
        },
        {
            complete = { quest = { id = 5544, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 52 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5544-carrion-grubbage",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5544-1-slab-of-carrion-worm-meat",
            },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-5544-carrion-grubbage",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Tirion Fordring",
                    mapID = 1423,
                    offMapText = "Travel to Tirion Fordring in Eastern Plaguelands.",
                    x = 0.0757,
                    y = 0.437,
                },
            },
            sourceStep = 65,
            text = "Turn in Carrion Grubbage to Tirion Fordring.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "turnin-5544-carrion-grubbage",
        },
        {
            complete = { quest = { id = 5742, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 52 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5742-redemption",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "all", quests = { 5542, 5543, 5544 } } },
            route = {
                {
                    label = "Tirion Fordring",
                    mapID = 1423,
                    offMapText = "Travel to Tirion Fordring in Eastern Plaguelands.",
                    x = 0.0757,
                    y = 0.437,
                },
            },
            sourceStep = 65,
            text = "Accept Redemption from Tirion Fordring.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-5742-redemption",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5742, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5742, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            all = {
                                                { any = { { quest = { id = 5542, state = "activeOrCompleted" } }, { all = {} } } },
                                                { any = { { quest = { id = 5543, state = "activeOrCompleted" } }, { all = {} } } },
                                                { any = { { quest = { id = 5544, state = "activeOrCompleted" } }, { all = {} } } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5742, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 52 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5742-redemption" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5742-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "all", quests = { 5542, 5543, 5544 } } },
            sourceStep = 67,
            text = "Speak with Tirion Fordring and tell him you are ready to hear his tale. Follow the conversation until the quest is ready to turn in.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-5742-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5742, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5742, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            all = {
                                                { any = { { quest = { id = 5542, state = "activeOrCompleted" } }, { all = {} } } },
                                                { any = { { quest = { id = 5543, state = "activeOrCompleted" } }, { all = {} } } },
                                                { any = { { quest = { id = 5544, state = "activeOrCompleted" } }, { all = {} } } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5742, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 52 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5742-redemption",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5742-quest-work",
            },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-5742-redemption",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "all", quests = { 5542, 5543, 5544 } } },
            route = {
                {
                    label = "Tirion Fordring",
                    mapID = 1423,
                    offMapText = "Travel to Tirion Fordring in Eastern Plaguelands.",
                    x = 0.0757,
                    y = 0.437,
                },
            },
            sourceStep = 67,
            text = "Turn in Redemption to Tirion Fordring.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "turnin-5742-redemption",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5742, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5742, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            all = {
                                                { any = { { quest = { id = 5542, state = "activeOrCompleted" } }, { all = {} } } },
                                                { any = { { quest = { id = 5543, state = "activeOrCompleted" } }, { all = {} } } },
                                                { any = { { quest = { id = 5544, state = "activeOrCompleted" } }, { all = {} } } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 6185, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 56 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-6185-the-eastern-plagues",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-6185-3-si-7-insignia-turyen",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-6185-2-si-7-insignia-fredo",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-6185-1-si-7-insignia-rutger",
            },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-6185-the-eastern-plagues",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6184 } } },
            route = {
                {
                    label = "Flint Shadowmore",
                    mapID = 1422,
                    offMapText = "Travel to Flint Shadowmore in Western Plaguelands.",
                    x = 0.4361,
                    y = 0.8451,
                },
            },
            sourceStep = 71,
            text = "Turn in The Eastern Plagues to Flint Shadowmore.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "turnin-6185-the-eastern-plagues",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6185, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6185, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 6184, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 6183, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 6182, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5152, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5152-auntie-marlene" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-5152-auntie-marlene",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5149 } } },
            route = {
                {
                    label = "Marlene Redpath",
                    mapID = 1422,
                    offMapText = "Travel to Marlene Redpath in Western Plaguelands.",
                    x = 0.4913,
                    y = 0.7852,
                },
            },
            sourceStep = 74,
            text = "Turn in Auntie Marlene to Marlene Redpath.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "turnin-5152-auntie-marlene",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5152, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5152, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 5149, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5153, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5153-a-strange-historian",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5152 } } },
            route = {
                {
                    label = "Marlene Redpath",
                    mapID = 1422,
                    offMapText = "Travel to Marlene Redpath in Western Plaguelands.",
                    x = 0.4913,
                    y = 0.7852,
                },
            },
            sourceStep = 74,
            text = "Accept A Strange Historian from Marlene Redpath.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-5153-a-strange-historian",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5153, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5153, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5152, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 5149, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 5153, index = 1, text = "Joseph's Wedding Ring" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5153-a-strange-historian" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5153-1-joseph-s-wedding-ring",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5152 } } },
            route = {
                {
                    label = "Joseph's Wedding Ring",
                    mapID = 1422,
                    offMapText = "Travel to Joseph's Wedding Ring.",
                    x = 0.4968,
                    y = 0.7677,
                },
            },
            sourceStep = 75,
            text = "Collect 1 Joseph's Wedding Ring.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-5153-1-joseph-s-wedding-ring",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5153, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5153, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5152, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 5149, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5153, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5153-a-strange-historian",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5153-1-joseph-s-wedding-ring",
            },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-5153-a-strange-historian",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5152 } } },
            route = {
                { label = "Chromie", mapID = 1422, offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945, y = 0.6676 },
            },
            sourceStep = 77,
            text = "Turn in A Strange Historian to Chromie.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "turnin-5153-a-strange-historian",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5153, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5153, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5152, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 5149, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5154, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5154-the-annals-of-darrowshire",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5153 } } },
            route = {
                { label = "Chromie", mapID = 1422, offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945, y = 0.6676 },
            },
            sourceStep = 77,
            text = "Accept The Annals of Darrowshire from Chromie.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-5154-the-annals-of-darrowshire",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5154, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5154, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5153, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5152, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 5149, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 5154, index = 1, text = "Annals of Darrowshire" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5154-the-annals-of-darrowshire" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5154-1-annals-of-darrowshire",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5153 } } },
            route = {
                {
                    label = "Annals of Darrowshire",
                    mapID = 1422,
                    offMapText = "Travel to Annals of Darrowshire.",
                    x = 0.4352,
                    y = 0.6955,
                },
            },
            sourceStep = 79,
            text = "Collect 1 Annals of Darrowshire.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-5154-1-annals-of-darrowshire",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5154, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5154, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5153, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5152, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 5149, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5154, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5154-the-annals-of-darrowshire",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5154-1-annals-of-darrowshire",
            },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-5154-the-annals-of-darrowshire",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5153 } } },
            route = {
                { label = "Chromie", mapID = 1422, offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945, y = 0.6676 },
            },
            sourceStep = 81,
            text = "Turn in The Annals of Darrowshire to Chromie.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "turnin-5154-the-annals-of-darrowshire",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5154, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5154, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5153, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5152, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 5149, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5210, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5210-brother-carlin",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5154 } } },
            route = {
                { label = "Chromie", mapID = 1422, offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945, y = 0.6676 },
            },
            sourceStep = 81,
            text = "Accept Brother Carlin from Chromie.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-5210-brother-carlin",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5210, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5210, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5154, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5153, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5152, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 5149, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5210, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5210-brother-carlin" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-5210-brother-carlin",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5154 } } },
            route = {
                {
                    label = "Carlin Redpath",
                    mapID = 1423,
                    offMapText = "Travel to Carlin Redpath in Eastern Plaguelands.",
                    x = 0.8152,
                    y = 0.5976,
                },
            },
            sourceStep = 86,
            text = "Turn in Brother Carlin to Carlin Redpath.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "turnin-5210-brother-carlin",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5210, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5210, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5154, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5153, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5152, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 5149, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5181, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5181-villains-of-darrowshire",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5210 } } },
            route = {
                {
                    label = "Carlin Redpath",
                    mapID = 1423,
                    offMapText = "Travel to Carlin Redpath in Eastern Plaguelands.",
                    x = 0.8152,
                    y = 0.5976,
                },
            },
            sourceStep = 86,
            text = "Accept Villains of Darrowshire from Carlin Redpath.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-5181-villains-of-darrowshire",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5181, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5181, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5210, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5154, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5153, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5152, state = "activeOrCompleted" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 5149, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5211, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5211-defenders-of-darrowshire" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5211-quest-work",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Darrowshire ghouls", mapID = 1423, offMapText = "Travel to Darrowshire ghouls.", x = 0.67, y = 0.408 },
            },
            sourceStep = 86,
            text = "Kill Cannibal Ghouls, Diseased Flayers and Gibbering Ghouls in Eastern Plaguelands. Speak with the Darrowshire Spirits that appear at their corpses to free them. Continue until the quest log reports enough freed spirits.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-5211-quest-work",
        },
        {
            complete = { quest = { id = 5211, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5211-defenders-of-darrowshire",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5211-quest-work",
            },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-5211-defenders-of-darrowshire",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Carlin Redpath",
                    mapID = 1423,
                    offMapText = "Travel to Carlin Redpath in Eastern Plaguelands.",
                    x = 0.8152,
                    y = 0.5976,
                },
            },
            sourceStep = 86,
            text = "Turn in Defenders of Darrowshire to Carlin Redpath.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "turnin-5211-defenders-of-darrowshire",
        },
        {
            complete = { quest = { id = 6021, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-6021-zaeldarr-the-outcast",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-6021-1-zaeldarr-the-outcast",
            },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-6021-zaeldarr-the-outcast",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Caretaker Alen",
                    mapID = 1423,
                    offMapText = "Travel to Caretaker Alen in Eastern Plaguelands.",
                    x = 0.7954,
                    y = 0.6377,
                },
            },
            sourceStep = 88,
            text = "Turn in Zaeldarr the Outcast to Caretaker Alen.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "turnin-6021-zaeldarr-the-outcast",
        },
        {
            complete = { questObjective = { count = 1, id = 5181, index = 1, text = "Horgus' Skull" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5181-villains-of-darrowshire" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5181-1-horgus-skull",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5210 } } },
            route = { { label = "Horgus' Skull", mapID = 1423, offMapText = "Travel to Horgus' Skull.", x = 0.5111, y = 0.4993 } },
            sourceStep = 89,
            text = "Collect 1 Skull of Horgus.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-5181-1-horgus-skull",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5181, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5181, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5210, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5154, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5153, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5152, state = "activeOrCompleted" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 5149, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 5181, index = 2, text = "Shattered Sword of Marduk" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5181-villains-of-darrowshire" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5181-2-shattered-sword-of-marduk",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5210 } } },
            route = {
                {
                    label = "Shattered Sword of Marduk",
                    mapID = 1423,
                    offMapText = "Travel to Shattered Sword of Marduk.",
                    x = 0.5391,
                    y = 0.6576,
                },
            },
            sourceStep = 90,
            text = "Collect 1 Shattered Sword of Marduk.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-5181-2-shattered-sword-of-marduk",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5181, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5181, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5210, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5154, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5153, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5152, state = "activeOrCompleted" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 5149, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5181, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5181-villains-of-darrowshire",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5181-1-horgus-skull",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5181-2-shattered-sword-of-marduk",
            },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-5181-villains-of-darrowshire",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5210 } } },
            route = {
                {
                    label = "Carlin Redpath",
                    mapID = 1423,
                    offMapText = "Travel to Carlin Redpath in Eastern Plaguelands.",
                    x = 0.8152,
                    y = 0.5976,
                },
            },
            sourceStep = 103,
            text = "Turn in Villains of Darrowshire to Carlin Redpath.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "turnin-5181-villains-of-darrowshire",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5181, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5181, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5210, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5154, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5153, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5152, state = "activeOrCompleted" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 5149, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-6024-level",
            kind = "note",
            checkpointQuest = 6024,
            text = "Reach level 60 before this visit.",
            conditions = { all = { { faction = "Alliance" } } },
            complete = { level = { min = 60 } },
            requiredLevel = 60,
        },
        {
            id = "alliance-extra-6024-accept",
            kind = "accept",
            text = "Accept Hameya's Plea from Torn Scroll.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            route = {
                {
                    mapID = 1423,
                    x = 0.273,
                    y = 0.853,
                    label = "Torn Scroll",
                    offMapText = "Travel to Torn Scroll in Eastern Plaguelands.",
                },
            },
            complete = { quest = { id = 6024, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-6024-level" },
        },
        {
            id = "alliance-extra-6024-objective",
            kind = "objective",
            text = "Defeat Infiltrator Hameya and loot Hameya's Key.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            route = {
                {
                    mapID = 1423,
                    x = 0.698,
                    y = 0.18,
                    label = "Infiltrator Hameya",
                    offMapText = "Travel to Infiltrator Hameya in Eastern Plaguelands.",
                },
            },
            complete = { quest = { id = 6024, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-6024-accept" },
        },
        {
            id = "alliance-extra-6024-turnin",
            kind = "turnin",
            text = "Use Hameya's Key on the Mound of Dirt behind the Undercroft to complete Hameya's Plea.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            route = {
                {
                    mapID = 1423,
                    x = 0.281,
                    y = 0.861,
                    label = "Mound of Dirt",
                    offMapText = "Travel to Mound of Dirt in Eastern Plaguelands.",
                },
            },
            complete = { quest = { id = 6024, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-6024-objective" },
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
            alternativeQuests = { 5142 },
            complete = { quest = { id = 5601, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-felwood-and-winterspring-part-2-accept-5601-sister-pamela",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Jessica Redpath",
                    mapID = 1452,
                    offMapText = "Travel to Jessica Redpath in Winterspring.",
                    x = 0.6128,
                    y = 0.3898,
                },
            },
            sourceStep = 51,
            text = "Accept Sister Pamela from Jessica Redpath.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-felwood-and-winterspring-part-2",
            sourceActionID = "accept-5601-sister-pamela",
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
            complete = { quest = { id = 5542, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 52 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5542-demon-dogs",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Tirion Fordring",
                    mapID = 1423,
                    offMapText = "Travel to Tirion Fordring in Eastern Plaguelands.",
                    x = 0.0756,
                    y = 0.437,
                },
            },
            sourceStep = 48,
            text = "Accept Demon Dogs from Tirion Fordring.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5542-demon-dogs",
        },
        {
            complete = { quest = { id = 5543, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 52 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5543-blood-tinged-skies",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Tirion Fordring",
                    mapID = 1423,
                    offMapText = "Travel to Tirion Fordring in Eastern Plaguelands.",
                    x = 0.0756,
                    y = 0.437,
                },
            },
            sourceStep = 48,
            text = "Accept Blood Tinged Skies from Tirion Fordring.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5543-blood-tinged-skies",
        },
        {
            complete = { quest = { id = 5544, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 52 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5544-carrion-grubbage",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Tirion Fordring",
                    mapID = 1423,
                    offMapText = "Travel to Tirion Fordring in Eastern Plaguelands.",
                    x = 0.0756,
                    y = 0.437,
                },
            },
            sourceStep = 48,
            text = "Accept Carrion Grubbage from Tirion Fordring.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5544-carrion-grubbage",
        },
        {
            complete = { quest = { id = 6022, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-6022-to-kill-with-purpose",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Nathanos Blightcaller",
                    mapID = 1423,
                    offMapText = "Travel to Nathanos Blightcaller in Eastern Plaguelands.",
                    x = 0.2654,
                    y = 0.7474,
                },
            },
            sourceStep = 49,
            text = "Accept To Kill With Purpose from Nathanos Blightcaller.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-6022-to-kill-with-purpose",
        },
        {
            complete = { quest = { id = 6042, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-6042-un-life-s-little-annoyances",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Nathanos Blightcaller",
                    mapID = 1423,
                    offMapText = "Travel to Nathanos Blightcaller in Eastern Plaguelands.",
                    x = 0.2654,
                    y = 0.7474,
                },
            },
            sourceStep = 49,
            text = "Accept Un-Life's Little Annoyances from Nathanos Blightcaller.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-6042-un-life-s-little-annoyances",
        },
        {
            alternativeQuests = { 5142 },
            complete = { quest = { id = 5601, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5601-sister-pamela",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Pamela Redpath",
                    mapID = 1423,
                    offMapText = "Travel to Pamela Redpath in Eastern Plaguelands.",
                    x = 0.3645,
                    y = 0.908,
                },
            },
            sourceStep = 50,
            text = "Turn in Sister Pamela to Pamela Redpath.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "turnin-5601-sister-pamela",
        },
        {
            complete = { quest = { id = 5149, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5149-pamela-s-doll",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Pamela Redpath",
                    mapID = 1423,
                    offMapText = "Travel to Pamela Redpath in Eastern Plaguelands.",
                    x = 0.3645,
                    y = 0.908,
                },
            },
            sourceStep = 50,
            text = "Accept Pamela's Doll from Pamela Redpath.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5149-pamela-s-doll",
        },
        {
            checkpointQuest = 5149,
            complete = {
                any = {
                    {
                        all = {
                            { item = { minCount = 1, name = "Pamela's Doll's Head" } },
                            { item = { minCount = 1, name = "Pamela's Doll's Left Side" } },
                            { item = { minCount = 1, name = "Pamela's Doll's Right Side" } },
                        },
                    },
                    { quest = { id = 5149, state = "complete" } },
                },
            },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5149-pamela-s-doll" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5149-1-pamela-s-doll-s-head",
            instructionOnly = true,
            kind = "note",
            rememberPreparation = 5149,
            requiredQuests = {},
            route = {
                { label = "Darrowshire houses", mapID = 1423, offMapText = "Travel to Darrowshire houses.", x = 0.381, y = 0.923 },
            },
            sourceInstructionIndex = 1,
            sourceInstructionStep = 54,
            text = "Search the ruined houses of Darrowshire for Pamela's Doll's Head, Left Side and Right Side. Spirits attack when you take the pieces.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-5149-1-pamela-s-doll-s-head",
        },
        {
            complete = { questObjective = { count = 1, id = 5149, index = 1 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5149-pamela-s-doll" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5149-1-pamela-s-doll-s-head-2",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Darrowshire houses", mapID = 1423, offMapText = "Travel to Darrowshire houses.", x = 0.381, y = 0.923 },
            },
            text = "Use Pamela's Doll's Head with the two sides in your bags to assemble Pamela's Doll.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-5149-1-pamela-s-doll-s-head-2",
        },
        {
            complete = { quest = { id = 5149, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {
                "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5149-pamela-s-doll",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5149-1-pamela-s-doll-s-head",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5149-1-pamela-s-doll-s-head-2",
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5149-pamela-s-doll",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Pamela Redpath",
                    mapID = 1423,
                    offMapText = "Travel to Pamela Redpath in Eastern Plaguelands.",
                    x = 0.3645,
                    y = 0.908,
                },
            },
            sourceStep = 55,
            text = "Turn in Pamela's Doll to Pamela Redpath.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "turnin-5149-pamela-s-doll",
        },
        {
            complete = { quest = { id = 5152, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5152-auntie-marlene",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5149 } } },
            route = {
                {
                    label = "Pamela Redpath",
                    mapID = 1423,
                    offMapText = "Travel to Pamela Redpath in Eastern Plaguelands.",
                    x = 0.3645,
                    y = 0.908,
                },
            },
            sourceStep = 55,
            text = "Accept Auntie Marlene from Pamela Redpath.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5152-auntie-marlene",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5152, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5152, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 5149, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5241, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5241-uncle-carlin",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5149 } } },
            route = {
                {
                    label = "Pamela Redpath",
                    mapID = 1423,
                    offMapText = "Travel to Pamela Redpath in Eastern Plaguelands.",
                    x = 0.3645,
                    y = 0.908,
                },
            },
            sourceStep = 55,
            text = "Accept Uncle Carlin from Pamela Redpath.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5241-uncle-carlin",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5241, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5241, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 5149, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 15, id = 5544, index = 1, text = "Slab of Carrion Worm Meat" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 52 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5544-carrion-grubbage" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5544-1-slab-of-carrion-worm-meat",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Slab of Carrion Worm Meat",
                    mapID = 1423,
                    offMapText = "Travel to Slab of Carrion Worm Meat.",
                    x = 0.402,
                    y = 0.836,
                },
            },
            sourceStep = 56,
            text = "Collect 15 Slab of Carrion Worm Meat.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-5544-1-slab-of-carrion-worm-meat",
        },
        {
            complete = { questObjective = { count = 20, id = 5542, index = 1, text = "Plaguehound Runt" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 52 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5542-demon-dogs" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5542-1-plaguehound-runt",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Plaguehound Runt", mapID = 1423, offMapText = "Travel to Plaguehound Runt.", x = 0.402, y = 0.836 },
            },
            sourceStep = 57,
            text = "Kill 20 Plaguehound Runt.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-5542-1-plaguehound-runt",
        },
        {
            complete = { questObjective = { count = 30, id = 5543, index = 1, text = "Plaguebat" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 52 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5543-blood-tinged-skies" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5543-1-plaguebat",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Plaguebat", mapID = 1423, offMapText = "Travel to Plaguebat.", x = 0.402, y = 0.836 } },
            sourceStep = 57,
            text = "Kill 30 Plaguebat.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-5543-1-plaguebat",
        },
        {
            complete = { questObjective = { count = 1, id = 6022, index = 1 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-6022-to-kill-with-purpose" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-6022-1-hate-shrieker",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "To Kill With Purpose", mapID = 1423, offMapText = "Travel to To Kill With Purpose.", x = 0.576, y = 0.708 },
            },
            sourceStep = 59,
            text = "Kill undead around Corins Crossing and collect 7 Living Rot. Use the Mortar and Pestle to combine them into Coagulated Rot before the Living Rot expires after 10 minutes.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-6022-1-hate-shrieker",
        },
        {
            complete = { questObjective = { count = 5, id = 5542, index = 2, text = "Plaguehound" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 52 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5542-demon-dogs" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5542-2-plaguehound",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Plaguehound", mapID = 1423, offMapText = "Travel to Plaguehound.", x = 0.68, y = 0.756 } },
            sourceStep = 60,
            text = "Kill 5 Plaguehound.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-5542-2-plaguehound",
        },
        {
            complete = { questObjective = { count = 20, id = 6042, index = 1, text = "Noxious Plaguebat" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-6042-un-life-s-little-annoyances" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-6042-1-noxious-plaguebat",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Noxious Plaguebat", mapID = 1423, offMapText = "Travel to Noxious Plaguebat.", x = 0.68, y = 0.756 },
            },
            sourceStep = 60,
            text = "Kill 20 Noxious Plaguebat.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-6042-1-noxious-plaguebat",
        },
        {
            complete = { quest = { id = 5241, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5241-uncle-carlin" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5241-uncle-carlin",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5149 } } },
            route = {
                {
                    label = "Carlin Redpath",
                    mapID = 1423,
                    offMapText = "Travel to Carlin Redpath in Eastern Plaguelands.",
                    x = 0.8152,
                    y = 0.5977,
                },
            },
            sourceStep = 62,
            text = "Turn in Uncle Carlin to Carlin Redpath.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "turnin-5241-uncle-carlin",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5241, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5241, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 5149, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5211, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5211-defenders-of-darrowshire",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Carlin Redpath",
                    mapID = 1423,
                    offMapText = "Travel to Carlin Redpath in Eastern Plaguelands.",
                    x = 0.8152,
                    y = 0.5977,
                },
            },
            sourceStep = 62,
            text = "Accept Defenders of Darrowshire from Carlin Redpath.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5211-defenders-of-darrowshire",
        },
        {
            complete = { quest = { id = 6021, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-6021-zaeldarr-the-outcast",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Caretaker Alen",
                    mapID = 1423,
                    offMapText = "Travel to Caretaker Alen in Eastern Plaguelands.",
                    x = 0.7954,
                    y = 0.6377,
                },
            },
            sourceStep = 63,
            text = "Accept Zaeldarr the Outcast from Caretaker Alen.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-6021-zaeldarr-the-outcast",
        },
        {
            complete = { quest = { id = 6164, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-6164-augustus-receipt-book",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Augustus the Touched",
                    mapID = 1423,
                    offMapText = "Travel to Augustus the Touched in Eastern Plaguelands.",
                    x = 0.1445,
                    y = 0.3348,
                },
            },
            sourceStep = 68,
            text = "Accept Augustus' Receipt Book from Augustus the Touched.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-6164-augustus-receipt-book",
        },
        {
            complete = { questObjective = { count = 1, id = 6164, index = 1, text = "Augustus' Receipt Book" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-6164-augustus-receipt-book" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-6164-1-augustus-receipt-book",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Augustus' Receipt Book",
                    mapID = 1423,
                    offMapText = "Travel to Augustus' Receipt Book.",
                    x = 0.1743,
                    y = 0.3109,
                },
            },
            sourceStep = 69,
            text = "Collect 1 Augustus' Receipt Book.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-6164-1-augustus-receipt-book",
        },
        {
            complete = { quest = { id = 6164, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {
                "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-6164-augustus-receipt-book",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-6164-1-augustus-receipt-book",
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-6164-augustus-receipt-book",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Augustus the Touched",
                    mapID = 1423,
                    offMapText = "Travel to Augustus the Touched in Eastern Plaguelands.",
                    x = 0.1445,
                    y = 0.3348,
                },
            },
            sourceStep = 70,
            text = "Turn in Augustus' Receipt Book to Augustus the Touched.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "turnin-6164-augustus-receipt-book",
        },
        {
            complete = { questObjective = { count = 5, id = 5542, index = 3, text = "Frenzied Plaguehound" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 52 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5542-demon-dogs" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5542-3-frenzied-plaguehound",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Frenzied Plaguehound", mapID = 1423, offMapText = "Travel to Frenzied Plaguehound.", x = 0.45, y = 0.386 },
            },
            sourceStep = 71,
            text = "Kill 5 Frenzied Plaguehound.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-5542-3-frenzied-plaguehound",
        },
        {
            complete = { questObjective = { count = 10, id = 6042, index = 2, text = "Monstrous Plaguebat" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-6042-un-life-s-little-annoyances" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-6042-2-monstrous-plaguebat",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Monstrous Plaguebat", mapID = 1423, offMapText = "Travel to Monstrous Plaguebat.", x = 0.45, y = 0.386 },
            },
            sourceStep = 71,
            text = "Kill 10 Monstrous Plaguebat.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-6042-2-monstrous-plaguebat",
        },
        {
            complete = { questObjective = { count = 1, id = 6021, index = 1, text = "Zaeldarr the Outcast" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-6021-zaeldarr-the-outcast" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-6021-1-zaeldarr-the-outcast",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Zaeldarr the Outcast", mapID = 1423, offMapText = "Travel to Zaeldarr the Outcast.", x = 0.2786, y = 0.8548 },
            },
            sourceStep = 73,
            text = "Collect 1 Zaeldarr's Head.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-6021-1-zaeldarr-the-outcast",
        },
        {
            complete = { quest = { id = 6022, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-6022-to-kill-with-purpose",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-6022-1-hate-shrieker",
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-6022-to-kill-with-purpose",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Nathanos Blightcaller",
                    mapID = 1423,
                    offMapText = "Travel to Nathanos Blightcaller in Eastern Plaguelands.",
                    x = 0.2654,
                    y = 0.7474,
                },
            },
            sourceStep = 74,
            text = "Turn in To Kill With Purpose to Nathanos Blightcaller.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "turnin-6022-to-kill-with-purpose",
        },
        {
            complete = { quest = { id = 6042, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-6042-un-life-s-little-annoyances",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-6042-1-noxious-plaguebat",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-6042-2-monstrous-plaguebat",
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-6042-un-life-s-little-annoyances",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Nathanos Blightcaller",
                    mapID = 1423,
                    offMapText = "Travel to Nathanos Blightcaller in Eastern Plaguelands.",
                    x = 0.2654,
                    y = 0.7474,
                },
            },
            sourceStep = 74,
            text = "Turn in Un-Life's Little Annoyances to Nathanos Blightcaller.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "turnin-6042-un-life-s-little-annoyances",
        },
        {
            complete = { quest = { id = 5542, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 52 } } } },
            dependsOn = {
                "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5542-demon-dogs",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5542-1-plaguehound-runt",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5542-2-plaguehound",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5542-3-frenzied-plaguehound",
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5542-demon-dogs",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Tirion Fordring",
                    mapID = 1423,
                    offMapText = "Travel to Tirion Fordring in Eastern Plaguelands.",
                    x = 0.0757,
                    y = 0.437,
                },
            },
            sourceStep = 75,
            text = "Turn in Demon Dogs to Tirion Fordring.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "turnin-5542-demon-dogs",
        },
        {
            complete = { quest = { id = 5543, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 52 } } } },
            dependsOn = {
                "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5543-blood-tinged-skies",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5543-1-plaguebat",
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5543-blood-tinged-skies",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Tirion Fordring",
                    mapID = 1423,
                    offMapText = "Travel to Tirion Fordring in Eastern Plaguelands.",
                    x = 0.0757,
                    y = 0.437,
                },
            },
            sourceStep = 75,
            text = "Turn in Blood Tinged Skies to Tirion Fordring.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "turnin-5543-blood-tinged-skies",
        },
        {
            complete = { quest = { id = 5544, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 52 } } } },
            dependsOn = {
                "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5544-carrion-grubbage",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5544-1-slab-of-carrion-worm-meat",
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5544-carrion-grubbage",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Tirion Fordring",
                    mapID = 1423,
                    offMapText = "Travel to Tirion Fordring in Eastern Plaguelands.",
                    x = 0.0757,
                    y = 0.437,
                },
            },
            sourceStep = 75,
            text = "Turn in Carrion Grubbage to Tirion Fordring.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "turnin-5544-carrion-grubbage",
        },
        {
            complete = { quest = { id = 5742, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 52 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5742-redemption",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "all", quests = { 5542, 5543, 5544 } } },
            route = {
                {
                    label = "Tirion Fordring",
                    mapID = 1423,
                    offMapText = "Travel to Tirion Fordring in Eastern Plaguelands.",
                    x = 0.0757,
                    y = 0.437,
                },
            },
            sourceStep = 75,
            text = "Accept Redemption from Tirion Fordring.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5742-redemption",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5742, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5742, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            all = {
                                                { any = { { quest = { id = 5542, state = "activeOrCompleted" } }, { all = {} } } },
                                                { any = { { quest = { id = 5543, state = "activeOrCompleted" } }, { all = {} } } },
                                                { any = { { quest = { id = 5544, state = "activeOrCompleted" } }, { all = {} } } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5742, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 52 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5742-redemption" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5742-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "all", quests = { 5542, 5543, 5544 } } },
            sourceStep = 77,
            text = "For Redemption: Listen to what Tirion Fordring has to say.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-5742-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5742, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5742, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            all = {
                                                { any = { { quest = { id = 5542, state = "activeOrCompleted" } }, { all = {} } } },
                                                { any = { { quest = { id = 5543, state = "activeOrCompleted" } }, { all = {} } } },
                                                { any = { { quest = { id = 5544, state = "activeOrCompleted" } }, { all = {} } } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5742, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 52 } } } },
            dependsOn = {
                "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5742-redemption",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5742-quest-work",
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5742-redemption",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "all", quests = { 5542, 5543, 5544 } } },
            route = {
                {
                    label = "Tirion Fordring",
                    mapID = 1423,
                    offMapText = "Travel to Tirion Fordring in Eastern Plaguelands.",
                    x = 0.0757,
                    y = 0.437,
                },
            },
            sourceStep = 77,
            text = "Turn in Redemption to Tirion Fordring.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "turnin-5742-redemption",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5742, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5742, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            all = {
                                                { any = { { quest = { id = 5542, state = "activeOrCompleted" } }, { all = {} } } },
                                                { any = { { quest = { id = 5543, state = "activeOrCompleted" } }, { all = {} } } },
                                                { any = { { quest = { id = 5544, state = "activeOrCompleted" } }, { all = {} } } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5152, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5152-auntie-marlene" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5152-auntie-marlene",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5149 } } },
            route = {
                {
                    label = "Marlene Redpath",
                    mapID = 1422,
                    offMapText = "Travel to Marlene Redpath in Western Plaguelands.",
                    x = 0.4917,
                    y = 0.7858,
                },
            },
            sourceStep = 80,
            text = "Turn in Auntie Marlene to Marlene Redpath.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "turnin-5152-auntie-marlene",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5152, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5152, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 5149, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5153, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5153-a-strange-historian",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5152 } } },
            route = {
                {
                    label = "Marlene Redpath",
                    mapID = 1422,
                    offMapText = "Travel to Marlene Redpath in Western Plaguelands.",
                    x = 0.4917,
                    y = 0.7858,
                },
            },
            sourceStep = 80,
            text = "Accept A Strange Historian from Marlene Redpath.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5153-a-strange-historian",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5153, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5153, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5152, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 5149, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 5153, index = 1, text = "Joseph's Wedding Ring" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5153-a-strange-historian" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5153-1-joseph-s-wedding-ring",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5152 } } },
            route = {
                {
                    label = "Joseph's Wedding Ring",
                    mapID = 1422,
                    offMapText = "Travel to Joseph's Wedding Ring.",
                    x = 0.4968,
                    y = 0.7677,
                },
            },
            sourceStep = 81,
            text = "Collect 1 Joseph's Wedding Ring.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-5153-1-joseph-s-wedding-ring",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5153, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5153, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5152, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 5149, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5153, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {
                "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5153-a-strange-historian",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5153-1-joseph-s-wedding-ring",
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5153-a-strange-historian",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5152 } } },
            route = {
                { label = "Chromie", mapID = 1422, offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945, y = 0.6676 },
            },
            sourceStep = 82,
            text = "Turn in A Strange Historian to Chromie.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "turnin-5153-a-strange-historian",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5153, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5153, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5152, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 5149, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5154, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5154-the-annals-of-darrowshire",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5153 } } },
            route = {
                { label = "Chromie", mapID = 1422, offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945, y = 0.6676 },
            },
            sourceStep = 82,
            text = "Accept The Annals of Darrowshire from Chromie.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5154-the-annals-of-darrowshire",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5154, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5154, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5153, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5152, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 5149, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 5154, index = 1, text = "Annals of Darrowshire" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5154-the-annals-of-darrowshire" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5154-1-annals-of-darrowshire",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5153 } } },
            route = {
                {
                    label = "Annals of Darrowshire",
                    mapID = 1422,
                    offMapText = "Travel to Annals of Darrowshire.",
                    x = 0.4352,
                    y = 0.6955,
                },
            },
            sourceStep = 84,
            text = "Collect 1 Annals of Darrowshire.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-5154-1-annals-of-darrowshire",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5154, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5154, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5153, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5152, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 5149, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5154, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {
                "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5154-the-annals-of-darrowshire",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5154-1-annals-of-darrowshire",
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5154-the-annals-of-darrowshire",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5153 } } },
            route = {
                { label = "Chromie", mapID = 1422, offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945, y = 0.6676 },
            },
            sourceStep = 85,
            text = "Turn in The Annals of Darrowshire to Chromie.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "turnin-5154-the-annals-of-darrowshire",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5154, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5154, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5153, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5152, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 5149, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5210, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5210-brother-carlin",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5154 } } },
            route = {
                { label = "Chromie", mapID = 1422, offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945, y = 0.6676 },
            },
            sourceStep = 85,
            text = "Accept Brother Carlin from Chromie.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5210-brother-carlin",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5210, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5210, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5154, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5153, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5152, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 5149, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 6021, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {
                "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-6021-zaeldarr-the-outcast",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-6021-1-zaeldarr-the-outcast",
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-6021-zaeldarr-the-outcast",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Caretaker Alen",
                    mapID = 1423,
                    offMapText = "Travel to Caretaker Alen in Eastern Plaguelands.",
                    x = 0.7954,
                    y = 0.6377,
                },
            },
            sourceStep = 99,
            text = "Turn in Zaeldarr the Outcast to Caretaker Alen.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "turnin-6021-zaeldarr-the-outcast",
        },
        {
            complete = { quest = { id = 5210, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5210-brother-carlin" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5210-brother-carlin",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5154 } } },
            route = {
                {
                    label = "Carlin Redpath",
                    mapID = 1423,
                    offMapText = "Travel to Carlin Redpath in Eastern Plaguelands.",
                    x = 0.8152,
                    y = 0.5976,
                },
            },
            sourceStep = 100,
            text = "Turn in Brother Carlin to Carlin Redpath.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "turnin-5210-brother-carlin",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5210, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5210, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5154, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5153, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5152, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 5149, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5181, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5181-villains-of-darrowshire",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5210 } } },
            route = {
                {
                    label = "Carlin Redpath",
                    mapID = 1423,
                    offMapText = "Travel to Carlin Redpath in Eastern Plaguelands.",
                    x = 0.8152,
                    y = 0.5976,
                },
            },
            sourceStep = 100,
            text = "Accept Villains of Darrowshire from Carlin Redpath.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5181-villains-of-darrowshire",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5181, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5181, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5210, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5154, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5153, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5152, state = "activeOrCompleted" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 5149, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5211, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5211-defenders-of-darrowshire" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5211-quest-work",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Defenders of Darrowshire",
                    mapID = 1423,
                    offMapText = "Travel to Defenders of Darrowshire.",
                    x = 0.67,
                    y = 0.408,
                },
            },
            sourceStep = 100,
            text = "Kill Cannibal Ghouls, Diseased Flayers and Gibbering Ghouls in Eastern Plaguelands. Speak with the Darrowshire Spirits that appear at their corpses to free them. Continue until the quest log reports enough freed spirits.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-5211-quest-work",
        },
        {
            complete = { quest = { id = 5211, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {
                "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5211-defenders-of-darrowshire",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5211-quest-work",
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5211-defenders-of-darrowshire",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Carlin Redpath",
                    mapID = 1423,
                    offMapText = "Travel to Carlin Redpath in Eastern Plaguelands.",
                    x = 0.8152,
                    y = 0.5976,
                },
            },
            sourceStep = 100,
            text = "Turn in Defenders of Darrowshire to Carlin Redpath.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "turnin-5211-defenders-of-darrowshire",
        },
        {
            complete = { questObjective = { count = 1, id = 5181, index = 1, text = "Horgus' Skull" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5181-villains-of-darrowshire" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5181-1-horgus-skull",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5210 } } },
            route = { { label = "Horgus' Skull", mapID = 1423, offMapText = "Travel to Horgus' Skull.", x = 0.5111, y = 0.4993 } },
            sourceStep = 101,
            text = "Collect 1 Skull of Horgus.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-5181-1-horgus-skull",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5181, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5181, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5210, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5154, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5153, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5152, state = "activeOrCompleted" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 5149, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 5181, index = 2, text = "Shattered Sword of Marduk" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5181-villains-of-darrowshire" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5181-2-shattered-sword-of-marduk",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5210 } } },
            route = {
                {
                    label = "Shattered Sword of Marduk",
                    mapID = 1423,
                    offMapText = "Travel to Shattered Sword of Marduk.",
                    x = 0.5391,
                    y = 0.6576,
                },
            },
            sourceStep = 102,
            text = "Collect 1 Shattered Sword of Marduk.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-5181-2-shattered-sword-of-marduk",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5181, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5181, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5210, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5154, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5153, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5152, state = "activeOrCompleted" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 5149, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5181, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {
                "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5181-villains-of-darrowshire",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5181-1-horgus-skull",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5181-2-shattered-sword-of-marduk",
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5181-villains-of-darrowshire",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5210 } } },
            route = {
                {
                    label = "Carlin Redpath",
                    mapID = 1423,
                    offMapText = "Travel to Carlin Redpath in Eastern Plaguelands.",
                    x = 0.8152,
                    y = 0.5976,
                },
            },
            sourceStep = 115,
            text = "Turn in Villains of Darrowshire to Carlin Redpath.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "turnin-5181-villains-of-darrowshire",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5181, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5181, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5210, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5154, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5153, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5152, state = "activeOrCompleted" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 5149, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-5961-level",
            kind = "note",
            checkpointQuest = 5961,
            text = "Reach level 56 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 56 } },
            requiredLevel = 56,
        },
        {
            id = "horde-extra-5961-accept",
            kind = "accept",
            text = "Accept The Champion of the Banshee Queen from Lady Sylvanas Windrunner.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            route = {
                {
                    mapID = 1458,
                    x = 0.578,
                    y = 0.9179999999999999,
                    label = "Lady Sylvanas Windrunner",
                    offMapText = "Travel to Lady Sylvanas Windrunner in Undercity.",
                },
            },
            complete = { quest = { id = 5961, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-5961-level" },
        },
        {
            id = "horde-extra-5961-objective",
            kind = "objective",
            text = "Speak with Nathanos Blightcaller in the Eastern Plaguelands. He is said to have taken up residence at the Marris Stead. Follow the quest log for the destination.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            route = {},
            complete = { quest = { id = 5961, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-5961-accept" },
            useClientPin = true,
        },
        {
            id = "horde-extra-5961-turnin",
            kind = "turnin",
            text = "Turn in The Champion of the Banshee Queen to Nathanos Blightcaller.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            route = {
                {
                    mapID = 1423,
                    x = 0.266,
                    y = 0.748,
                    label = "Nathanos Blightcaller",
                    offMapText = "Travel to Nathanos Blightcaller in Eastern Plaguelands.",
                },
            },
            complete = { quest = { id = 5961, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-5961-objective" },
        },
        {
            id = "horde-extra-6024-level",
            kind = "note",
            checkpointQuest = 6024,
            text = "Reach level 60 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 60 } },
            requiredLevel = 60,
        },
        {
            id = "horde-extra-6024-accept",
            kind = "accept",
            text = "Accept Hameya's Plea from Torn Scroll.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            route = {
                {
                    mapID = 1423,
                    x = 0.273,
                    y = 0.853,
                    label = "Torn Scroll",
                    offMapText = "Travel to Torn Scroll in Eastern Plaguelands.",
                },
            },
            complete = { quest = { id = 6024, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-6024-level" },
        },
        {
            id = "horde-extra-6024-objective",
            kind = "objective",
            text = "Defeat Infiltrator Hameya and loot Hameya's Key.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            route = {
                {
                    mapID = 1423,
                    x = 0.698,
                    y = 0.18,
                    label = "Infiltrator Hameya",
                    offMapText = "Travel to Infiltrator Hameya in Eastern Plaguelands.",
                },
            },
            complete = { quest = { id = 6024, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-6024-accept" },
        },
        {
            id = "horde-extra-6024-turnin",
            kind = "turnin",
            text = "Use Hameya's Key on the Mound of Dirt behind the Undercroft to complete Hameya's Plea.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            route = {
                {
                    mapID = 1423,
                    x = 0.281,
                    y = 0.861,
                    label = "Mound of Dirt",
                    offMapText = "Travel to Mound of Dirt in Eastern Plaguelands.",
                },
            },
            complete = { quest = { id = 6024, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-6024-objective" },
        },
    },
})
