local _, ns = ...

-- Source decisions: docs/loremaster/blasted-lands.json.
-- Coordinates require a Forever client walkthrough.
ns:RegisterGuide({
    id = "loremaster-blasted-lands",
    title = "Blasted Lands",
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
            checkpointQuest = 1363,
            complete = { level = { min = 37 } },
            conditions = { all = { { class = { 8 } }, { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-level-before-accept-1363-mazen-s-behest",
            kind = "note",
            requiredLevel = 37,
            requiredQuests = {},
            text = "Reach level 37 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "level-before-accept-1363-mazen-s-behest",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 1363, state = "activeOrCompleted" } },
            conditions = {
                all = { { class = { 8 } }, { faction = "Alliance" }, { level = { min = 37 } }, { race = { 1, 3, 4, 7, 95 } } },
            },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-accept-1363-mazen-s-behest",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Mazen Mac'Nadir",
                    mapID = 1453,
                    offMapText = "Travel to Mazen Mac'Nadir in Stormwind City.",
                    x = 0.518,
                    y = 0.743,
                },
            },
            sourceStep = 3,
            text = "Accept Mazen's Behest from Mazen Mac'Nadir.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "accept-1363-mazen-s-behest",
        },
        {
            complete = { quest = { id = 1363, state = "completed" } },
            conditions = {
                all = { { class = { 8 } }, { faction = "Alliance" }, { level = { min = 37 } }, { race = { 1, 3, 4, 7, 95 } } },
            },
            dependsOn = { "alliance-leveling-era-alliance-swamp-of-sorrows-accept-1363-mazen-s-behest" },
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-turnin-1363-mazen-s-behest",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Acolyte Dellis",
                    mapID = 1453,
                    offMapText = "Travel to Acolyte Dellis in Stormwind City.",
                    x = 0.4097,
                    y = 0.6383,
                },
            },
            sourceStep = 4,
            text = "Turn in Mazen's Behest to Acolyte Dellis.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "turnin-1363-mazen-s-behest",
        },
        {
            complete = { quest = { id = 1364, state = "activeOrCompleted" } },
            conditions = {
                all = { { class = { 8 } }, { faction = "Alliance" }, { level = { min = 37 } }, { race = { 1, 3, 4, 7, 95 } } },
            },
            dependsOn = { "alliance-leveling-era-alliance-swamp-of-sorrows-turnin-1363-mazen-s-behest" },
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-accept-1364-mazen-s-behest",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1363 } } },
            route = {
                {
                    label = "Acolyte Dellis",
                    mapID = 1453,
                    offMapText = "Travel to Acolyte Dellis in Stormwind City.",
                    x = 0.514,
                    y = 0.738,
                },
            },
            sourceStep = 4,
            text = "Accept Mazen's Behest from Acolyte Dellis.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "accept-1364-mazen-s-behest",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1364, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1364, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1363, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 1363,
            complete = { level = { min = 37 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-level-before-accept-1363-mazen-s-behest-2",
            kind = "note",
            requiredLevel = 37,
            requiredQuests = {},
            text = "Reach level 37 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "level-before-accept-1363-mazen-s-behest-2",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 1363, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 37 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-accept-1363-mazen-s-behest-2",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Mazen Mac'Nadir",
                    mapID = 1453,
                    offMapText = "Travel to Mazen Mac'Nadir in Stormwind City.",
                    x = 0.518,
                    y = 0.743,
                },
            },
            sourceStep = 5,
            text = "Accept Mazen's Behest from Mazen Mac'Nadir.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "accept-1363-mazen-s-behest-2",
        },
        {
            complete = { quest = { id = 1363, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 37 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-swamp-of-sorrows-accept-1363-mazen-s-behest-2",
                "alliance-leveling-era-alliance-swamp-of-sorrows-accept-1363-mazen-s-behest",
            },
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-turnin-1363-mazen-s-behest-2",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Acolyte Dellis",
                    mapID = 1453,
                    offMapText = "Travel to Acolyte Dellis in Stormwind City.",
                    x = 0.4097,
                    y = 0.6383,
                },
            },
            sourceStep = 6,
            text = "Turn in Mazen's Behest to Acolyte Dellis.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "turnin-1363-mazen-s-behest-2",
        },
        {
            id = "visit-entry-leveling-era-alliance-stranglethorn-vale-part-3",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-stranglethorn-vale-part-3",
            text = "Reach level 42 before the Stranglethorn Vale visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 42 } },
            requiredLevel = 42,
        },
        {
            complete = { quest = { id = 1364, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 37 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stranglethorn-vale-part-3-accept-1364-mazen-s-behest",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1363 } } },
            route = {
                {
                    label = "Acolyte Dellis",
                    mapID = 1453,
                    offMapText = "Travel to Acolyte Dellis in Stormwind City.",
                    x = 0.514,
                    y = 0.738,
                },
            },
            sourceStep = 6,
            text = "Accept Mazen's Behest from Acolyte Dellis.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stranglethorn-vale-part-3",
            sourceActionID = "accept-1364-mazen-s-behest",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1364, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1364, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1363, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
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
            complete = { questObjective = { count = 1, id = 1364, index = 1, text = "Khadgar's Essays on Dimensional Convergence" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 37 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-part-2-objective-1364-1-khadgar-s-essays-on-dimensional-converge",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1363 } } },
            sourceStep = 6,
            text = "Collect 1 Khadgar's Essays on Dimensional Convergence.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows-part-2",
            sourceActionID = "objective-1364-1-khadgar-s-essays-on-dimensional-converge",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1364, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1364, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1363, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 1364, index = 1, text = "Khadgar's Essays on Dimensional Convergence" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 37 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-part-2-objective-1364-1-khadgar-s-essays-on-dimensional-converge-2",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1363 } } },
            route = {
                {
                    label = "Khadgar's Essays on Dimensional Convergence",
                    mapID = 1435,
                    offMapText = "Travel to Khadgar's Essays on Dimensional Convergence.",
                    x = 0.134,
                    y = 0.374,
                },
            },
            sourceStep = 7,
            text = "Collect 1 Khadgar's Essays on Dimensional Convergence.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows-part-2",
            sourceActionID = "objective-1364-1-khadgar-s-essays-on-dimensional-converge-2",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1364, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1364, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1363, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1364, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 37 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-swamp-of-sorrows-part-2-objective-1364-1-khadgar-s-essays-on-dimensional-converge",
                "alliance-leveling-era-alliance-swamp-of-sorrows-part-2-objective-1364-1-khadgar-s-essays-on-dimensional-converge-2",
            },
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-part-2-turnin-1364-mazen-s-behest",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1363 } } },
            route = {
                {
                    label = "Watcher Mahar Ba",
                    mapID = 1419,
                    offMapText = "Travel to Watcher Mahar Ba in Blasted Lands.",
                    x = 0.6765,
                    y = 0.1916,
                },
            },
            sourceStep = 9,
            text = "Turn in Mazen's Behest to Watcher Mahar Ba.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows-part-2",
            sourceActionID = "turnin-1364-mazen-s-behest",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1364, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1364, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1363, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
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
            checkpointQuest = 2783,
            complete = { level = { min = 50 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-level-before-accept-2783-petty-squabbles",
            kind = "note",
            requiredLevel = 50,
            requiredQuests = {},
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "level-before-accept-2783-petty-squabbles",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 2783, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-2783-petty-squabbles",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Ambassador Ardalan",
                    mapID = 1419,
                    offMapText = "Travel to Ambassador Ardalan in Blasted Lands.",
                    x = 0.6757,
                    y = 0.1929,
                },
            },
            sourceStep = 1,
            text = "Accept Petty Squabbles from Ambassador Ardalan.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "accept-2783-petty-squabbles",
        },
        {
            complete = { quest = { id = 2783, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-2783-petty-squabbles" },
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-turnin-2783-petty-squabbles",
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
            sourceStep = 2,
            text = "Turn in Petty Squabbles to Fallen Hero of the Horde.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "turnin-2783-petty-squabbles",
        },
        {
            checkpointQuest = 2801,
            complete = { level = { min = 45 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-level-before-accept-2801-a-tale-of-sorrow",
            kind = "note",
            requiredLevel = 45,
            requiredQuests = {},
            text = "Reach level 45 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "level-before-accept-2801-a-tale-of-sorrow",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2801, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2801, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                { quest = { id = 2623, state = "completed" } },
                                                { any = { { quest = { id = 2783, state = "completed" } }, { all = { { faction = "Alliance" } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 2623 },
        },
        {
            complete = { quest = { id = 2801, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-2801-a-tale-of-sorrow",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2623, 2783 } } },
            route = {
                {
                    label = "Fallen Hero of the Horde",
                    mapID = 1435,
                    offMapText = "Travel to Fallen Hero of the Horde in Swamp of Sorrows.",
                    x = 0.3429,
                    y = 0.6613,
                },
            },
            sourceStep = 2,
            text = "Accept A Tale of Sorrow from Fallen Hero of the Horde.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "accept-2801-a-tale-of-sorrow",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2801, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2801, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                { quest = { id = 2623, state = "completed" } },
                                                { any = { { quest = { id = 2783, state = "completed" } }, { all = { { faction = "Alliance" } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 2623 },
        },
        {
            complete = { quest = { id = 2801, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-2801-a-tale-of-sorrow" },
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-objective-2801-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2623, 2783 } } },
            sourceStep = 4,
            text = "Speak with the Fallen Hero of the Horde and ask him to continue his story. Follow the conversation until the quest is ready to turn in.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "objective-2801-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2801, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2801, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                { quest = { id = 2623, state = "completed" } },
                                                { any = { { quest = { id = 2783, state = "completed" } }, { all = { { faction = "Alliance" } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 2623 },
        },
        {
            complete = { quest = { id = 2801, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-2801-a-tale-of-sorrow",
                "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-objective-2801-quest-work",
            },
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-turnin-2801-a-tale-of-sorrow",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2623, 2783 } } },
            route = {
                {
                    label = "Fallen Hero of the Horde",
                    mapID = 1435,
                    offMapText = "Travel to Fallen Hero of the Horde in Swamp of Sorrows.",
                    x = 0.3429,
                    y = 0.6613,
                },
            },
            sourceStep = 4,
            text = "Turn in A Tale of Sorrow to Fallen Hero of the Horde.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "turnin-2801-a-tale-of-sorrow",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2801, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2801, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                { quest = { id = 2623, state = "completed" } },
                                                { any = { { quest = { id = 2783, state = "completed" } }, { all = { { faction = "Alliance" } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 2623 },
        },
        {
            complete = { quest = { id = 2581, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-2581-snickerfang-jowls",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Bloodmage Drazial",
                    mapID = 1419,
                    offMapText = "Travel to Bloodmage Drazial in Blasted Lands.",
                    x = 0.5055,
                    y = 0.1421,
                },
            },
            sourceStep = 6,
            text = "Accept Snickerfang Jowls from Bloodmage Drazial.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "accept-2581-snickerfang-jowls",
        },
        {
            complete = { quest = { id = 2583, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-2583-a-boar-s-vitality",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Bloodmage Drazial",
                    mapID = 1419,
                    offMapText = "Travel to Bloodmage Drazial in Blasted Lands.",
                    x = 0.5055,
                    y = 0.1421,
                },
            },
            sourceStep = 6,
            text = "Accept A Boar's Vitality from Bloodmage Drazial.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "accept-2583-a-boar-s-vitality",
        },
        {
            complete = { quest = { id = 2585, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-2585-the-decisive-striker",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Bloodmage Drazial",
                    mapID = 1419,
                    offMapText = "Travel to Bloodmage Drazial in Blasted Lands.",
                    x = 0.5055,
                    y = 0.1421,
                },
            },
            sourceStep = 6,
            text = "Accept The Decisive Striker from Bloodmage Drazial.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "accept-2585-the-decisive-striker",
        },
        {
            complete = { quest = { id = 2601, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-2601-the-basilisk-s-bite",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Bloodmage Lynnore",
                    mapID = 1419,
                    offMapText = "Travel to Bloodmage Lynnore in Blasted Lands.",
                    x = 0.5064,
                    y = 0.143,
                },
            },
            sourceStep = 7,
            text = "Accept The Basilisk's Bite from Bloodmage Lynnore.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "accept-2601-the-basilisk-s-bite",
        },
        {
            complete = { quest = { id = 2603, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-2603-vulture-s-vigor",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Bloodmage Lynnore",
                    mapID = 1419,
                    offMapText = "Travel to Bloodmage Lynnore in Blasted Lands.",
                    x = 0.5064,
                    y = 0.143,
                },
            },
            sourceStep = 7,
            text = "Accept Vulture's Vigor from Bloodmage Lynnore.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "accept-2603-vulture-s-vigor",
        },
        {
            complete = { quest = { id = 3501, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-3501-everything-counts-in-large-amounts",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Kum'isha the Collector",
                    mapID = 1419,
                    offMapText = "Travel to Kum'isha the Collector in Blasted Lands.",
                    x = 0.518,
                    y = 0.3564,
                },
            },
            sourceStep = 13,
            text = "Accept Everything Counts In Large Amounts from Kum'isha the Collector.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "accept-3501-everything-counts-in-large-amounts",
        },
        {
            complete = { quest = { id = 2521, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-2521-to-serve-kum-isha",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Kum'isha the Collector",
                    mapID = 1419,
                    offMapText = "Travel to Kum'isha the Collector in Blasted Lands.",
                    x = 0.518,
                    y = 0.3564,
                },
            },
            sourceStep = 13,
            text = "Accept To Serve Kum'isha from Kum'isha the Collector.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "accept-2521-to-serve-kum-isha",
        },
        {
            complete = { quest = { id = 3501, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-3501-everything-counts-in-large-amounts",
            },
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-objective-3501-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 14,
            text = "For Everything Counts In Large Amounts: Bring Kum'isha Imperfect Draenethyst Fragments and be rewarded for each one you turn in.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "objective-3501-quest-work",
        },
        {
            complete = { quest = { id = 3501, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-3501-everything-counts-in-large-amounts",
                "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-objective-3501-quest-work",
            },
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-turnin-3501-everything-counts-in-large-amounts",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Kum'isha the Collector",
                    mapID = 1419,
                    offMapText = "Travel to Kum'isha the Collector in Blasted Lands.",
                    x = 0.518,
                    y = 0.3564,
                },
            },
            sourceStep = 14,
            text = "Turn in Everything Counts In Large Amounts to Kum'isha the Collector.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "turnin-3501-everything-counts-in-large-amounts",
        },
        {
            complete = { quest = { id = 2521, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-2521-to-serve-kum-isha" },
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-objective-2521-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 14,
            text = "For To Serve Kum'isha: In your journeys throughout the Blasted Lands, should you ever come across a Flawless Draenethyst Sphere, take the item back to Kum'isha the Collector. Be warned, this gem is one of the most rare crystals in all of Azeroth. Any creature in these lands could be holding a Flawless Draenethyst Sphere. You will be rewarded for each Flawless Draenethyst Sphere you have collected.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "objective-2521-quest-work",
        },
        {
            complete = { quest = { id = 2521, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-2521-to-serve-kum-isha",
                "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-objective-2521-quest-work",
            },
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-turnin-2521-to-serve-kum-isha",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Kum'isha the Collector",
                    mapID = 1419,
                    offMapText = "Travel to Kum'isha the Collector in Blasted Lands.",
                    x = 0.518,
                    y = 0.3564,
                },
            },
            sourceStep = 14,
            text = "Turn in To Serve Kum'isha to Kum'isha the Collector.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "turnin-2521-to-serve-kum-isha",
        },
        {
            complete = { quest = { id = 2601, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-2601-the-basilisk-s-bite" },
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-objective-2601-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 15,
            text = "For The Basilisk's Bite: Bring ten Basilisk Brains and two Vulture Gizzards to Bloodmage Lynnore.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "objective-2601-quest-work",
        },
        {
            complete = { quest = { id = 2601, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-2601-the-basilisk-s-bite",
                "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-objective-2601-quest-work",
            },
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-turnin-2601-the-basilisk-s-bite",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Bloodmage Lynnore",
                    mapID = 1419,
                    offMapText = "Travel to Bloodmage Lynnore in Blasted Lands.",
                    x = 0.5064,
                    y = 0.143,
                },
            },
            sourceStep = 15,
            text = "Turn in The Basilisk's Bite to Bloodmage Lynnore.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "turnin-2601-the-basilisk-s-bite",
        },
        {
            complete = { quest = { id = 2603, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-2603-vulture-s-vigor" },
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-objective-2603-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 15,
            text = "For Vulture's Vigor: Bring ten Vulture Gizzards and two Snickerfang Jowls to Bloodmage Lynnore.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "objective-2603-quest-work",
        },
        {
            complete = { quest = { id = 2603, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-2603-vulture-s-vigor",
                "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-objective-2603-quest-work",
            },
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-turnin-2603-vulture-s-vigor",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Bloodmage Lynnore",
                    mapID = 1419,
                    offMapText = "Travel to Bloodmage Lynnore in Blasted Lands.",
                    x = 0.5064,
                    y = 0.143,
                },
            },
            sourceStep = 15,
            text = "Turn in Vulture's Vigor to Bloodmage Lynnore.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "turnin-2603-vulture-s-vigor",
        },
        {
            complete = { quest = { id = 2581, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-2581-snickerfang-jowls" },
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-objective-2581-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 16,
            text = "For Snickerfang Jowls: Bring three Snickerfang Jowls, two Blasted Boar Lungs, and one Scorpok Pincer to Bloodmage Drazial.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "objective-2581-quest-work",
        },
        {
            complete = { quest = { id = 2581, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-2581-snickerfang-jowls",
                "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-objective-2581-quest-work",
            },
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-turnin-2581-snickerfang-jowls",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Bloodmage Drazial",
                    mapID = 1419,
                    offMapText = "Travel to Bloodmage Drazial in Blasted Lands.",
                    x = 0.5055,
                    y = 0.1421,
                },
            },
            sourceStep = 16,
            text = "Turn in Snickerfang Jowls to Bloodmage Drazial.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "turnin-2581-snickerfang-jowls",
        },
        {
            complete = { quest = { id = 2583, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-2583-a-boar-s-vitality" },
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-objective-2583-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 16,
            text = "For A Boar's Vitality: Bring three Blasted Boar Lungs, two Scorpok Pincers, and one Basilisk Brain to Bloodmage Drazial.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "objective-2583-quest-work",
        },
        {
            complete = { quest = { id = 2583, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-2583-a-boar-s-vitality",
                "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-objective-2583-quest-work",
            },
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-turnin-2583-a-boar-s-vitality",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Bloodmage Drazial",
                    mapID = 1419,
                    offMapText = "Travel to Bloodmage Drazial in Blasted Lands.",
                    x = 0.5055,
                    y = 0.1421,
                },
            },
            sourceStep = 16,
            text = "Turn in A Boar's Vitality to Bloodmage Drazial.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "turnin-2583-a-boar-s-vitality",
        },
        {
            complete = { quest = { id = 2585, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-2585-the-decisive-striker" },
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-objective-2585-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 16,
            text = "For The Decisive Striker: Bring three Scorpok Pincers, two Vulture Gizzards, and one Blasted Boar Lung to Bloodmage Drazial.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "objective-2585-quest-work",
        },
        {
            complete = { quest = { id = 2585, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-2585-the-decisive-striker",
                "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-objective-2585-quest-work",
            },
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-turnin-2585-the-decisive-striker",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Bloodmage Drazial",
                    mapID = 1419,
                    offMapText = "Travel to Bloodmage Drazial in Blasted Lands.",
                    x = 0.5055,
                    y = 0.1421,
                },
            },
            sourceStep = 16,
            text = "Turn in The Decisive Striker to Bloodmage Drazial.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "turnin-2585-the-decisive-striker",
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
            complete = { quest = { id = 2801, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2-accept-2801-a-tale-of-sorrow",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2623, 2783 } } },
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
            text = "Accept A Tale of Sorrow from Fallen Hero of the Horde.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2",
            sourceActionID = "accept-2801-a-tale-of-sorrow",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2801, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2801, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
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
                                                { quest = { id = 2783, state = "completed" } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 2783 },
        },
        {
            complete = { quest = { id = 2801, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2-accept-2801-a-tale-of-sorrow" },
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2-objective-2801-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2623, 2783 } } },
            sourceStep = 33,
            text = "For A Tale of Sorrow: Listen to the Fallen Hero of the Horde tell his story.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2",
            sourceActionID = "objective-2801-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2801, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2801, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
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
                                                { quest = { id = 2783, state = "completed" } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 2783 },
        },
        {
            complete = { quest = { id = 2801, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {
                "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2-accept-2801-a-tale-of-sorrow",
                "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2-objective-2801-quest-work",
            },
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2-turnin-2801-a-tale-of-sorrow",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 2623, 2783 } } },
            route = {
                {
                    label = "Fallen Hero of the Horde",
                    mapID = 1435,
                    offMapText = "Travel to Fallen Hero of the Horde in Swamp of Sorrows.",
                    x = 0.3429,
                    y = 0.6613,
                },
            },
            sourceStep = 33,
            text = "Turn in A Tale of Sorrow to Fallen Hero of the Horde.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2",
            sourceActionID = "turnin-2801-a-tale-of-sorrow",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2801, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2801, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
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
                                                { quest = { id = 2783, state = "completed" } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 2783 },
        },
        {
            id = "visit-entry-leveling-era-horde-blasted-lands",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-blasted-lands",
            text = "Reach level 50 before the Blasted Lands visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 50 } },
            requiredLevel = 50,
        },
        {
            checkpointQuest = 2581,
            complete = { level = { min = 45 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-blasted-lands-level-before-accept-2581-snickerfang-jowls",
            kind = "note",
            requiredLevel = 45,
            requiredQuests = {},
            text = "Reach level 45 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-blasted-lands",
            sourceActionID = "level-before-accept-2581-snickerfang-jowls",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 2581, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-blasted-lands-accept-2581-snickerfang-jowls",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Bloodmage Drazial",
                    mapID = 1419,
                    offMapText = "Travel to Bloodmage Drazial in Blasted Lands.",
                    x = 0.5055,
                    y = 0.1421,
                },
            },
            sourceStep = 2,
            text = "Accept Snickerfang Jowls from Bloodmage Drazial.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-blasted-lands",
            sourceActionID = "accept-2581-snickerfang-jowls",
        },
        {
            complete = { quest = { id = 2583, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-blasted-lands-accept-2583-a-boar-s-vitality",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Bloodmage Drazial",
                    mapID = 1419,
                    offMapText = "Travel to Bloodmage Drazial in Blasted Lands.",
                    x = 0.5055,
                    y = 0.1421,
                },
            },
            sourceStep = 2,
            text = "Accept A Boar's Vitality from Bloodmage Drazial.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-blasted-lands",
            sourceActionID = "accept-2583-a-boar-s-vitality",
        },
        {
            complete = { quest = { id = 2585, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-blasted-lands-accept-2585-the-decisive-striker",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Bloodmage Drazial",
                    mapID = 1419,
                    offMapText = "Travel to Bloodmage Drazial in Blasted Lands.",
                    x = 0.5055,
                    y = 0.1421,
                },
            },
            sourceStep = 2,
            text = "Accept The Decisive Striker from Bloodmage Drazial.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-blasted-lands",
            sourceActionID = "accept-2585-the-decisive-striker",
        },
        {
            complete = { quest = { id = 2601, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-blasted-lands-accept-2601-the-basilisk-s-bite",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Bloodmage Lynnore",
                    mapID = 1419,
                    offMapText = "Travel to Bloodmage Lynnore in Blasted Lands.",
                    x = 0.5064,
                    y = 0.143,
                },
            },
            sourceStep = 3,
            text = "Accept The Basilisk's Bite from Bloodmage Lynnore.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-blasted-lands",
            sourceActionID = "accept-2601-the-basilisk-s-bite",
        },
        {
            complete = { quest = { id = 2603, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-blasted-lands-accept-2603-vulture-s-vigor",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Bloodmage Lynnore",
                    mapID = 1419,
                    offMapText = "Travel to Bloodmage Lynnore in Blasted Lands.",
                    x = 0.5064,
                    y = 0.143,
                },
            },
            sourceStep = 3,
            text = "Accept Vulture's Vigor from Bloodmage Lynnore.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-blasted-lands",
            sourceActionID = "accept-2603-vulture-s-vigor",
        },
        {
            complete = { quest = { id = 3501, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-blasted-lands-accept-3501-everything-counts-in-large-amounts",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Kum'isha the Collector",
                    mapID = 1419,
                    offMapText = "Travel to Kum'isha the Collector in Blasted Lands.",
                    x = 0.518,
                    y = 0.3564,
                },
            },
            sourceStep = 9,
            text = "Accept Everything Counts In Large Amounts from Kum'isha the Collector.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-blasted-lands",
            sourceActionID = "accept-3501-everything-counts-in-large-amounts",
        },
        {
            complete = { quest = { id = 2521, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-blasted-lands-accept-2521-to-serve-kum-isha",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Kum'isha the Collector",
                    mapID = 1419,
                    offMapText = "Travel to Kum'isha the Collector in Blasted Lands.",
                    x = 0.518,
                    y = 0.3564,
                },
            },
            sourceStep = 9,
            text = "Accept To Serve Kum'isha from Kum'isha the Collector.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-blasted-lands",
            sourceActionID = "accept-2521-to-serve-kum-isha",
        },
        {
            complete = { quest = { id = 3501, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-blasted-lands-accept-3501-everything-counts-in-large-amounts" },
            id = "horde-leveling-era-horde-blasted-lands-objective-3501-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 10,
            text = "For Everything Counts In Large Amounts: Bring Kum'isha Imperfect Draenethyst Fragments and be rewarded for each one you turn in.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-blasted-lands",
            sourceActionID = "objective-3501-quest-work",
        },
        {
            complete = { quest = { id = 3501, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {
                "horde-leveling-era-horde-blasted-lands-accept-3501-everything-counts-in-large-amounts",
                "horde-leveling-era-horde-blasted-lands-objective-3501-quest-work",
            },
            id = "horde-leveling-era-horde-blasted-lands-turnin-3501-everything-counts-in-large-amounts",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Kum'isha the Collector",
                    mapID = 1419,
                    offMapText = "Travel to Kum'isha the Collector in Blasted Lands.",
                    x = 0.518,
                    y = 0.3564,
                },
            },
            sourceStep = 10,
            text = "Turn in Everything Counts In Large Amounts to Kum'isha the Collector.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-blasted-lands",
            sourceActionID = "turnin-3501-everything-counts-in-large-amounts",
        },
        {
            complete = { quest = { id = 2521, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-blasted-lands-accept-2521-to-serve-kum-isha" },
            id = "horde-leveling-era-horde-blasted-lands-objective-2521-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 10,
            text = "For To Serve Kum'isha: In your journeys throughout the Blasted Lands, should you ever come across a Flawless Draenethyst Sphere, take the item back to Kum'isha the Collector. Be warned, this gem is one of the most rare crystals in all of Azeroth. Any creature in these lands could be holding a Flawless Draenethyst Sphere. You will be rewarded for each Flawless Draenethyst Sphere you have collected.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-blasted-lands",
            sourceActionID = "objective-2521-quest-work",
        },
        {
            complete = { quest = { id = 2521, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {
                "horde-leveling-era-horde-blasted-lands-accept-2521-to-serve-kum-isha",
                "horde-leveling-era-horde-blasted-lands-objective-2521-quest-work",
            },
            id = "horde-leveling-era-horde-blasted-lands-turnin-2521-to-serve-kum-isha",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Kum'isha the Collector",
                    mapID = 1419,
                    offMapText = "Travel to Kum'isha the Collector in Blasted Lands.",
                    x = 0.518,
                    y = 0.3564,
                },
            },
            sourceStep = 10,
            text = "Turn in To Serve Kum'isha to Kum'isha the Collector.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-blasted-lands",
            sourceActionID = "turnin-2521-to-serve-kum-isha",
        },
        {
            complete = { quest = { id = 2601, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-blasted-lands-accept-2601-the-basilisk-s-bite" },
            id = "horde-leveling-era-horde-blasted-lands-objective-2601-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 11,
            text = "For The Basilisk's Bite: Bring ten Basilisk Brains and two Vulture Gizzards to Bloodmage Lynnore.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-blasted-lands",
            sourceActionID = "objective-2601-quest-work",
        },
        {
            complete = { quest = { id = 2601, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {
                "horde-leveling-era-horde-blasted-lands-accept-2601-the-basilisk-s-bite",
                "horde-leveling-era-horde-blasted-lands-objective-2601-quest-work",
            },
            id = "horde-leveling-era-horde-blasted-lands-turnin-2601-the-basilisk-s-bite",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Bloodmage Lynnore",
                    mapID = 1419,
                    offMapText = "Travel to Bloodmage Lynnore in Blasted Lands.",
                    x = 0.5064,
                    y = 0.143,
                },
            },
            sourceStep = 11,
            text = "Turn in The Basilisk's Bite to Bloodmage Lynnore.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-blasted-lands",
            sourceActionID = "turnin-2601-the-basilisk-s-bite",
        },
        {
            complete = { quest = { id = 2603, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-blasted-lands-accept-2603-vulture-s-vigor" },
            id = "horde-leveling-era-horde-blasted-lands-objective-2603-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 11,
            text = "For Vulture's Vigor: Bring ten Vulture Gizzards and two Snickerfang Jowls to Bloodmage Lynnore.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-blasted-lands",
            sourceActionID = "objective-2603-quest-work",
        },
        {
            complete = { quest = { id = 2603, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {
                "horde-leveling-era-horde-blasted-lands-accept-2603-vulture-s-vigor",
                "horde-leveling-era-horde-blasted-lands-objective-2603-quest-work",
            },
            id = "horde-leveling-era-horde-blasted-lands-turnin-2603-vulture-s-vigor",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Bloodmage Lynnore",
                    mapID = 1419,
                    offMapText = "Travel to Bloodmage Lynnore in Blasted Lands.",
                    x = 0.5064,
                    y = 0.143,
                },
            },
            sourceStep = 11,
            text = "Turn in Vulture's Vigor to Bloodmage Lynnore.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-blasted-lands",
            sourceActionID = "turnin-2603-vulture-s-vigor",
        },
        {
            complete = { quest = { id = 2581, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-blasted-lands-accept-2581-snickerfang-jowls" },
            id = "horde-leveling-era-horde-blasted-lands-objective-2581-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 12,
            text = "For Snickerfang Jowls: Bring three Snickerfang Jowls, two Blasted Boar Lungs, and one Scorpok Pincer to Bloodmage Drazial.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-blasted-lands",
            sourceActionID = "objective-2581-quest-work",
        },
        {
            complete = { quest = { id = 2581, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {
                "horde-leveling-era-horde-blasted-lands-accept-2581-snickerfang-jowls",
                "horde-leveling-era-horde-blasted-lands-objective-2581-quest-work",
            },
            id = "horde-leveling-era-horde-blasted-lands-turnin-2581-snickerfang-jowls",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Bloodmage Drazial",
                    mapID = 1419,
                    offMapText = "Travel to Bloodmage Drazial in Blasted Lands.",
                    x = 0.5055,
                    y = 0.1421,
                },
            },
            sourceStep = 12,
            text = "Turn in Snickerfang Jowls to Bloodmage Drazial.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-blasted-lands",
            sourceActionID = "turnin-2581-snickerfang-jowls",
        },
        {
            complete = { quest = { id = 2583, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-blasted-lands-accept-2583-a-boar-s-vitality" },
            id = "horde-leveling-era-horde-blasted-lands-objective-2583-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 12,
            text = "For A Boar's Vitality: Bring three Blasted Boar Lungs, two Scorpok Pincers, and one Basilisk Brain to Bloodmage Drazial.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-blasted-lands",
            sourceActionID = "objective-2583-quest-work",
        },
        {
            complete = { quest = { id = 2583, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {
                "horde-leveling-era-horde-blasted-lands-accept-2583-a-boar-s-vitality",
                "horde-leveling-era-horde-blasted-lands-objective-2583-quest-work",
            },
            id = "horde-leveling-era-horde-blasted-lands-turnin-2583-a-boar-s-vitality",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Bloodmage Drazial",
                    mapID = 1419,
                    offMapText = "Travel to Bloodmage Drazial in Blasted Lands.",
                    x = 0.5055,
                    y = 0.1421,
                },
            },
            sourceStep = 12,
            text = "Turn in A Boar's Vitality to Bloodmage Drazial.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-blasted-lands",
            sourceActionID = "turnin-2583-a-boar-s-vitality",
        },
        {
            complete = { quest = { id = 2585, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-blasted-lands-accept-2585-the-decisive-striker" },
            id = "horde-leveling-era-horde-blasted-lands-objective-2585-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 12,
            text = "For The Decisive Striker: Bring three Scorpok Pincers, two Vulture Gizzards, and one Blasted Boar Lung to Bloodmage Drazial.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-blasted-lands",
            sourceActionID = "objective-2585-quest-work",
        },
        {
            complete = { quest = { id = 2585, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {
                "horde-leveling-era-horde-blasted-lands-accept-2585-the-decisive-striker",
                "horde-leveling-era-horde-blasted-lands-objective-2585-quest-work",
            },
            id = "horde-leveling-era-horde-blasted-lands-turnin-2585-the-decisive-striker",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Bloodmage Drazial",
                    mapID = 1419,
                    offMapText = "Travel to Bloodmage Drazial in Blasted Lands.",
                    x = 0.5055,
                    y = 0.1421,
                },
            },
            sourceStep = 12,
            text = "Turn in The Decisive Striker to Bloodmage Drazial.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-blasted-lands",
            sourceActionID = "turnin-2585-the-decisive-striker",
        },
    },
})
