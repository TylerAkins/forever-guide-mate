local _, ns = ...

-- Source decisions: docs/loremaster/moonglade.json.
-- Coordinates require a Forever client walkthrough.
ns:RegisterGuide({
    id = "loremaster-moonglade",
    title = "Moonglade",
    category = "Loremaster Guides",
    revision = 2,
    routeMode = "ordered",
    loremasterExpanded = true,
    goals = {
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
            alternativeQuests = { 1015, 1019 },
            checkpointQuest = 1047,
            complete = { level = { min = 54 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-ungoro-crater-part-2-level-before-accept-1047-the-new-frontier",
            kind = "note",
            requiredLevel = 54,
            requiredQuests = {},
            text = "Reach level 54 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ungoro-crater-part-2",
            sourceActionID = "level-before-accept-1047-the-new-frontier",
            dependsOn = {},
        },
        {
            alternativeQuests = { 1015, 1019 },
            complete = { quest = { id = 1047, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ungoro-crater-part-2-accept-1047-the-new-frontier",
            kind = "accept",
            requiredQuests = {},
            sourceStep = 74,
            text = "Accept The New Frontier from Herald Moonstalker.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ungoro-crater-part-2",
            sourceActionID = "accept-1047-the-new-frontier",
        },
        {
            alternativeQuests = { 1015, 1019 },
            complete = { quest = { id = 1047, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ungoro-crater-part-2-accept-1047-the-new-frontier" },
            id = "alliance-leveling-era-alliance-ungoro-crater-part-2-turnin-1047-the-new-frontier",
            kind = "turnin",
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
            sourceActionID = "turnin-1047-the-new-frontier",
            sourceGuide = "leveling-era-alliance-ungoro-crater-part-2",
            sourceStep = 79,
            text = "Turn in The New Frontier to Arch Druid Fandral Staghelm.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 1019,
            complete = { level = { min = 54 } },
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = {
                any = { { quest = { id = 1015, state = "activeOrCompleted" } }, { quest = { id = 1047, state = "activeOrCompleted" } } },
            },
            id = "alliance-extra-1019-level",
            kind = "note",
            requiredLevel = 54,
            text = "Reach level 54 before this visit.",
        },
        {
            id = "alliance-extra-1019-accept",
            kind = "accept",
            text = "Accept The New Frontier from Courier Hammerfall.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            route = {
                {
                    mapID = 1455,
                    x = 0.316,
                    y = 0.67,
                    label = "Courier Hammerfall",
                    offMapText = "Travel to Courier Hammerfall in Ironforge.",
                },
            },
            complete = { quest = { id = 1019, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            excludeWhen = {
                any = { { quest = { id = 1015, state = "activeOrCompleted" } }, { quest = { id = 1047, state = "activeOrCompleted" } } },
            },
            dependsOn = { "alliance-extra-1019-level" },
        },
        {
            checkpointQuest = 1015,
            complete = { level = { min = 54 } },
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = {
                any = { { quest = { id = 1047, state = "activeOrCompleted" } }, { quest = { id = 1019, state = "activeOrCompleted" } } },
            },
            id = "alliance-extra-1015-level",
            kind = "note",
            requiredLevel = 54,
            text = "Reach level 54 before this visit.",
        },
        {
            id = "alliance-extra-1015-accept",
            kind = "accept",
            text = "Accept The New Frontier from Crier Goodman.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            route = {
                { mapID = 1453, x = 0.55, y = 0.628, label = "Crier Goodman", offMapText = "Travel to Crier Goodman in Stormwind City." },
            },
            complete = { quest = { id = 1015, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            excludeWhen = {
                any = { { quest = { id = 1047, state = "activeOrCompleted" } }, { quest = { id = 1019, state = "activeOrCompleted" } } },
            },
            dependsOn = { "alliance-extra-1015-level" },
        },
        {
            id = "alliance-extra-1015-objective",
            kind = "objective",
            text = "Speak with Arch Druid Fandral Staghelm at the Cenarion Enclave of Darnassus about the Cenarion Circle's call to explore the frontiers of Kalimdor. Follow the quest log for the destination.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            route = {},
            complete = { quest = { id = 1015, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            excludeWhen = {
                any = { { quest = { id = 1047, state = "activeOrCompleted" } }, { quest = { id = 1019, state = "activeOrCompleted" } } },
            },
            dependsOn = { "alliance-extra-1015-accept" },
            useClientPin = true,
        },
        {
            complete = { quest = { id = 1015, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = { "alliance-extra-1015-objective" },
            excludeWhen = {
                any = { { quest = { id = 1047, state = "activeOrCompleted" } }, { quest = { id = 1019, state = "activeOrCompleted" } } },
            },
            id = "alliance-extra-1015-turnin",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Arch Druid Fandral Staghelm",
                    mapID = 1457,
                    offMapText = "Travel to Arch Druid Fandral Staghelm in Darnassus.",
                    x = 0.348,
                    y = 0.088,
                },
            },
            text = "Turn in The New Frontier to Arch Druid Fandral Staghelm.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            id = "alliance-extra-1019-objective",
            kind = "objective",
            text = "Speak with Arch Druid Fandral Staghelm at the Cenarion Enclave of Darnassus about the Cenarion Circle's call to explore the frontiers of Kalimdor. Follow the quest log for the destination.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            route = {},
            complete = { quest = { id = 1019, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            excludeWhen = {
                any = { { quest = { id = 1015, state = "activeOrCompleted" } }, { quest = { id = 1047, state = "activeOrCompleted" } } },
            },
            dependsOn = { "alliance-extra-1019-accept" },
            useClientPin = true,
        },
        {
            complete = { quest = { id = 1019, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = { "alliance-extra-1019-objective" },
            excludeWhen = {
                any = { { quest = { id = 1015, state = "activeOrCompleted" } }, { quest = { id = 1047, state = "activeOrCompleted" } } },
            },
            id = "alliance-extra-1019-turnin",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Arch Druid Fandral Staghelm",
                    mapID = 1457,
                    offMapText = "Travel to Arch Druid Fandral Staghelm in Darnassus.",
                    x = 0.348,
                    y = 0.088,
                },
            },
            text = "Turn in The New Frontier to Arch Druid Fandral Staghelm.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 6761, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ungoro-crater-part-2-turnin-1047-the-new-frontier" },
            id = "alliance-leveling-era-alliance-ungoro-crater-part-2-accept-6761-the-new-frontier",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1015, 1019, 1047 } } },
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
            text = "Accept The New Frontier from Arch Druid Fandral Staghelm.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ungoro-crater-part-2",
            sourceActionID = "accept-6761-the-new-frontier",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6761, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6761, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                { any = { { quest = { id = 1015, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } },
                                                { any = { { quest = { id = 1019, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } },
                                                { any = { { quest = { id = 1047, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 6761, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ungoro-crater-part-2-accept-6761-the-new-frontier" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6761, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6761, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                { any = { { quest = { id = 1015, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } },
                                                { any = { { quest = { id = 1019, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } },
                                                { any = { { quest = { id = 1047, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-ungoro-crater-part-2-turnin-6761-the-new-frontier",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1015, 1019, 1047 } } },
            route = {
                {
                    label = "Mathrengyl Bearwalker",
                    mapID = 1457,
                    offMapText = "Travel to Mathrengyl Bearwalker in Darnassus.",
                    x = 0.354,
                    y = 0.0842,
                },
            },
            sourceActionID = "turnin-6761-the-new-frontier",
            sourceGuide = "leveling-era-alliance-ungoro-crater-part-2",
            sourceStep = 80,
            text = "Turn in The New Frontier to Mathrengyl Bearwalker.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 6762, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ungoro-crater-part-2-accept-6762-rabine-saturna",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6761 } } },
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
            text = "Accept Rabine Saturna from Mathrengyl Bearwalker.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ungoro-crater-part-2",
            sourceActionID = "accept-6762-rabine-saturna",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6762, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6762, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 6761, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        { any = { { quest = { id = 1015, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } },
                                                                        { any = { { quest = { id = 1019, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } },
                                                                        { any = { { quest = { id = 1047, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
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
            checkpointQuest = 6762,
            complete = { level = { min = 54 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-winterspring-level-before-turnin-6762-rabine-saturna",
            kind = "note",
            requiredLevel = 54,
            requiredQuests = {},
            text = "Reach level 54 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-winterspring",
            sourceActionID = "level-before-turnin-6762-rabine-saturna",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6762, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6762, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 6761, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        { any = { { quest = { id = 1015, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } },
                                                                        { any = { { quest = { id = 1019, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } },
                                                                        { any = { { quest = { id = 1047, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 6762, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6762, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6762, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 6761, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        { any = { { quest = { id = 1015, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } },
                                                                        { any = { { quest = { id = 1019, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } },
                                                                        { any = { { quest = { id = 1047, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-winterspring-turnin-6762-rabine-saturna",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6761 } } },
            route = {
                { label = "Rabine Saturna", mapID = 1450, offMapText = "Travel to Rabine Saturna in Moonglade.", x = 0.5168, y = 0.4509 },
            },
            sourceActionID = "turnin-6762-rabine-saturna",
            sourceGuide = "leveling-era-alliance-winterspring",
            sourceStep = 22,
            text = "Turn in Rabine Saturna to Rabine Saturna.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 1124,
            complete = { level = { min = 54 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-winterspring-level-before-accept-1124-wasteland",
            kind = "note",
            requiredLevel = 54,
            requiredQuests = {},
            text = "Reach level 54 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-winterspring",
            sourceActionID = "level-before-accept-1124-wasteland",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1124, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1124, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                { quest = { id = 1123, state = "completed" } },
                                                {
                                                    any = {
                                                        { quest = { id = 6762, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 6761, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                { any = { { quest = { id = 1015, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } },
                                                                                                { any = { { quest = { id = 1019, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } },
                                                                                                { any = { { quest = { id = 1047, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 1123 },
        },
        {
            complete = { quest = { id = 1124, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-winterspring-accept-1124-wasteland",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1123, 6762 } } },
            route = {
                { label = "Rabine Saturna", mapID = 1450, offMapText = "Travel to Rabine Saturna in Moonglade.", x = 0.5168, y = 0.4509 },
            },
            sourceStep = 22,
            text = "Accept Wasteland from Rabine Saturna.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-winterspring",
            sourceActionID = "accept-1124-wasteland",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1124, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1124, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                { quest = { id = 1123, state = "completed" } },
                                                {
                                                    any = {
                                                        { quest = { id = 6762, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 6761, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                { any = { { quest = { id = 1015, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } },
                                                                                                { any = { { quest = { id = 1019, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } },
                                                                                                { any = { { quest = { id = 1047, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 1123 },
        },
        {
            checkpointQuest = 5527,
            complete = { level = { min = 56 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-winterspring-level-before-accept-5527-a-reliquary-of-purity",
            kind = "note",
            requiredLevel = 56,
            requiredQuests = {},
            text = "Reach level 56 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-winterspring",
            sourceActionID = "level-before-accept-5527-a-reliquary-of-purity",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 5527, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 56 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-winterspring-accept-5527-a-reliquary-of-purity",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Rabine Saturna", mapID = 1450, offMapText = "Travel to Rabine Saturna in Moonglade.", x = 0.5168, y = 0.4509 },
            },
            sourceStep = 24,
            text = "Accept A Reliquary of Purity from Rabine Saturna.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-winterspring",
            sourceActionID = "accept-5527-a-reliquary-of-purity",
        },
        {
            id = "visit-entry-leveling-era-alliance-silithus",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-silithus",
            text = "Reach level 59 before the Silithus visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 59 } },
            requiredLevel = 59,
        },
        {
            checkpointQuest = 1124,
            complete = { level = { min = 54 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-silithus-level-before-turnin-1124-wasteland",
            kind = "note",
            requiredLevel = 54,
            requiredQuests = {},
            text = "Reach level 54 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "level-before-turnin-1124-wasteland",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1124, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1124, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                { quest = { id = 1123, state = "completed" } },
                                                {
                                                    any = {
                                                        { quest = { id = 6762, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 6761, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                { any = { { quest = { id = 1015, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } },
                                                                                                { any = { { quest = { id = 1019, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } },
                                                                                                { any = { { quest = { id = 1047, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 1123 },
        },
        {
            complete = { quest = { id = 1124, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1124, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1124, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                { quest = { id = 1123, state = "completed" } },
                                                {
                                                    any = {
                                                        { quest = { id = 6762, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 6761, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                { any = { { quest = { id = 1015, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } },
                                                                                                { any = { { quest = { id = 1019, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } },
                                                                                                { any = { { quest = { id = 1047, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-silithus-turnin-1124-wasteland",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1123, 6762 } } },
            route = {
                {
                    label = "Layo Starstrike",
                    mapID = 1451,
                    offMapText = "Travel to Layo Starstrike in Silithus.",
                    x = 0.8187,
                    y = 0.1893,
                },
            },
            sourceActionID = "turnin-1124-wasteland",
            sourceGuide = "leveling-era-alliance-silithus",
            sourceStep = 1,
            text = "Turn in Wasteland to Layo Starstrike.",
            unresolvedPrerequisites = { 1123 },
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 1, id = 5527, index = 1, text = "Reliquary of Purity" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 56 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-silithus-objective-5527-1-reliquary-of-purity",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Reliquary of Purity", mapID = 1451, offMapText = "Travel to Reliquary of Purity.", x = 0.6323, y = 0.5535 },
            },
            sourceStep = 8,
            text = "Collect 1 Reliquary of Purity.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "objective-5527-1-reliquary-of-purity",
        },
        {
            complete = { quest = { id = 5527, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 56 } } } },
            dependsOn = { "alliance-leveling-era-alliance-silithus-objective-5527-1-reliquary-of-purity" },
            id = "alliance-leveling-era-alliance-silithus-turnin-5527-a-reliquary-of-purity",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Rabine Saturna", mapID = 1450, offMapText = "Travel to Rabine Saturna in Moonglade.", x = 0.5168, y = 0.4508 },
            },
            sourceActionID = "turnin-5527-a-reliquary-of-purity",
            sourceGuide = "leveling-era-alliance-silithus",
            sourceStep = 37,
            text = "Turn in A Reliquary of Purity to Rabine Saturna.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
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
            alternativeQuests = { 1004, 1018 },
            checkpointQuest = 1000,
            complete = { level = { min = 54 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-ungoro-crater-level-before-accept-1000-the-new-frontier",
            kind = "note",
            requiredLevel = 54,
            requiredQuests = {},
            text = "Reach level 54 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ungoro-crater",
            sourceActionID = "level-before-accept-1000-the-new-frontier",
            dependsOn = {},
        },
        {
            alternativeQuests = { 1004, 1018 },
            complete = { quest = { id = 1000, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-ungoro-crater-accept-1000-the-new-frontier",
            kind = "accept",
            requiredQuests = {},
            sourceStep = 70,
            text = "Accept The New Frontier from Bluff Runner Windstrider.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ungoro-crater",
            sourceActionID = "accept-1000-the-new-frontier",
        },
        {
            alternativeQuests = { 1004, 1018 },
            complete = { quest = { id = 1000, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-ungoro-crater-accept-1000-the-new-frontier" },
            id = "horde-leveling-era-horde-ungoro-crater-turnin-1000-the-new-frontier",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Arch Druid Hamuul Runetotem",
                    mapID = 1456,
                    offMapText = "Travel to Arch Druid Hamuul Runetotem in Thunder Bluff.",
                    x = 0.7859,
                    y = 0.2857,
                },
            },
            sourceActionID = "turnin-1000-the-new-frontier",
            sourceGuide = "leveling-era-horde-ungoro-crater",
            sourceStep = 72,
            text = "Turn in The New Frontier to Arch Druid Hamuul Runetotem.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 1018,
            complete = { level = { min = 54 } },
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = {
                any = { { quest = { id = 1000, state = "activeOrCompleted" } }, { quest = { id = 1004, state = "activeOrCompleted" } } },
            },
            id = "horde-extra-1018-level",
            kind = "note",
            requiredLevel = 54,
            text = "Reach level 54 before this visit.",
        },
        {
            id = "horde-extra-1018-accept",
            kind = "accept",
            text = "Accept The New Frontier from Warcaller Gorlach.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            route = {
                {
                    mapID = 1454,
                    x = 0.466,
                    y = 0.6459999999999999,
                    label = "Warcaller Gorlach",
                    offMapText = "Travel to Warcaller Gorlach in Orgrimmar.",
                },
            },
            complete = { quest = { id = 1018, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            excludeWhen = {
                any = { { quest = { id = 1000, state = "activeOrCompleted" } }, { quest = { id = 1004, state = "activeOrCompleted" } } },
            },
            dependsOn = { "horde-extra-1018-level" },
        },
        {
            checkpointQuest = 1004,
            complete = { level = { min = 54 } },
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = {
                any = { { quest = { id = 1000, state = "activeOrCompleted" } }, { quest = { id = 1018, state = "activeOrCompleted" } } },
            },
            id = "horde-extra-1004-level",
            kind = "note",
            requiredLevel = 54,
            text = "Reach level 54 before this visit.",
        },
        {
            id = "horde-extra-1004-accept",
            kind = "accept",
            text = "Accept The New Frontier from Harbinger Balthazad.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            route = {
                {
                    mapID = 1458,
                    x = 0.682,
                    y = 0.47600000000000003,
                    label = "Harbinger Balthazad",
                    offMapText = "Travel to Harbinger Balthazad in Undercity.",
                },
            },
            complete = { quest = { id = 1004, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            excludeWhen = {
                any = { { quest = { id = 1000, state = "activeOrCompleted" } }, { quest = { id = 1018, state = "activeOrCompleted" } } },
            },
            dependsOn = { "horde-extra-1004-level" },
        },
        {
            id = "horde-extra-1004-objective",
            kind = "objective",
            text = "Speak with Arch Druid Hamuul Runetotem on the Elder Rise of Thunder Bluff about the Cenarion Circle's call to explore the frontiers of Kalimdor. Follow the quest log for the destination.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            route = {},
            complete = { quest = { id = 1004, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            excludeWhen = {
                any = { { quest = { id = 1000, state = "activeOrCompleted" } }, { quest = { id = 1018, state = "activeOrCompleted" } } },
            },
            dependsOn = { "horde-extra-1004-accept" },
            useClientPin = true,
        },
        {
            complete = { quest = { id = 1004, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = { "horde-extra-1004-objective" },
            excludeWhen = {
                any = { { quest = { id = 1000, state = "activeOrCompleted" } }, { quest = { id = 1018, state = "activeOrCompleted" } } },
            },
            id = "horde-extra-1004-turnin",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Arch Druid Hamuul Runetotem",
                    mapID = 1456,
                    offMapText = "Travel to Arch Druid Hamuul Runetotem in Thunder Bluff.",
                    x = 0.782,
                    y = 0.284,
                },
            },
            text = "Turn in The New Frontier to Arch Druid Hamuul Runetotem.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            id = "horde-extra-1018-objective",
            kind = "objective",
            text = "Speak with Arch Druid Hamuul Runetotem on the Elder Rise of Thunder Bluff about the Cenarion Circle's call to explore the frontiers of Kalimdor. Follow the quest log for the destination.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            route = {},
            complete = { quest = { id = 1018, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            excludeWhen = {
                any = { { quest = { id = 1000, state = "activeOrCompleted" } }, { quest = { id = 1004, state = "activeOrCompleted" } } },
            },
            dependsOn = { "horde-extra-1018-accept" },
            useClientPin = true,
        },
        {
            complete = { quest = { id = 1018, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = { "horde-extra-1018-objective" },
            excludeWhen = {
                any = { { quest = { id = 1000, state = "activeOrCompleted" } }, { quest = { id = 1004, state = "activeOrCompleted" } } },
            },
            id = "horde-extra-1018-turnin",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Arch Druid Hamuul Runetotem",
                    mapID = 1456,
                    offMapText = "Travel to Arch Druid Hamuul Runetotem in Thunder Bluff.",
                    x = 0.782,
                    y = 0.284,
                },
            },
            text = "Turn in The New Frontier to Arch Druid Hamuul Runetotem.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1123, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-ungoro-crater-accept-1123-rabine-saturna",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1000, 1004, 1018 } } },
            route = {
                {
                    label = "Arch Druid Hamuul Runetotem",
                    mapID = 1456,
                    offMapText = "Travel to Arch Druid Hamuul Runetotem in Thunder Bluff.",
                    x = 0.7859,
                    y = 0.2857,
                },
            },
            sourceStep = 72,
            text = "Accept Rabine Saturna from Arch Druid Hamuul Runetotem.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ungoro-crater",
            sourceActionID = "accept-1123-rabine-saturna",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1123, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1123, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                { any = { { quest = { id = 1000, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } },
                                                { any = { { quest = { id = 1004, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } },
                                                { any = { { quest = { id = 1018, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-horde-winterspring",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-winterspring",
            text = "Reach level 58 before the Winterspring visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 58 } },
            requiredLevel = 58,
        },
        {
            checkpointQuest = 1123,
            complete = { level = { min = 54 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-winterspring-level-before-turnin-1123-rabine-saturna",
            kind = "note",
            requiredLevel = 54,
            requiredQuests = {},
            text = "Reach level 54 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-winterspring",
            sourceActionID = "level-before-turnin-1123-rabine-saturna",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1123, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1123, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                { any = { { quest = { id = 1000, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } },
                                                { any = { { quest = { id = 1004, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } },
                                                { any = { { quest = { id = 1018, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1123, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1123, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1123, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                { any = { { quest = { id = 1000, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } },
                                                { any = { { quest = { id = 1004, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } },
                                                { any = { { quest = { id = 1018, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-winterspring-turnin-1123-rabine-saturna",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1000, 1004, 1018 } } },
            route = {
                { label = "Rabine Saturna", mapID = 1450, offMapText = "Travel to Rabine Saturna in Moonglade.", x = 0.5168, y = 0.4509 },
            },
            sourceActionID = "turnin-1123-rabine-saturna",
            sourceGuide = "leveling-era-horde-winterspring",
            sourceStep = 25,
            text = "Turn in Rabine Saturna to Rabine Saturna.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 1124,
            complete = { level = { min = 54 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-winterspring-level-before-accept-1124-wasteland",
            kind = "note",
            requiredLevel = 54,
            requiredQuests = {},
            text = "Reach level 54 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-winterspring",
            sourceActionID = "level-before-accept-1124-wasteland",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1124, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1124, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1123, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        { any = { { quest = { id = 1000, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } },
                                                                        { any = { { quest = { id = 1004, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } },
                                                                        { any = { { quest = { id = 1018, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                                { quest = { id = 6762, state = "completed" } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 6762 },
        },
        {
            complete = { quest = { id = 1124, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-winterspring-accept-1124-wasteland",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1123, 6762 } } },
            route = {
                { label = "Rabine Saturna", mapID = 1450, offMapText = "Travel to Rabine Saturna in Moonglade.", x = 0.5168, y = 0.4509 },
            },
            sourceStep = 25,
            text = "Accept Wasteland from Rabine Saturna.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-winterspring",
            sourceActionID = "accept-1124-wasteland",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1124, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1124, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1123, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        { any = { { quest = { id = 1000, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } },
                                                                        { any = { { quest = { id = 1004, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } },
                                                                        { any = { { quest = { id = 1018, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                                { quest = { id = 6762, state = "completed" } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 6762 },
        },
        {
            checkpointQuest = 5527,
            complete = { level = { min = 56 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-winterspring-level-before-accept-5527-a-reliquary-of-purity",
            kind = "note",
            requiredLevel = 56,
            requiredQuests = {},
            text = "Reach level 56 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-winterspring",
            sourceActionID = "level-before-accept-5527-a-reliquary-of-purity",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 5527, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 56 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-winterspring-accept-5527-a-reliquary-of-purity",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Rabine Saturna", mapID = 1450, offMapText = "Travel to Rabine Saturna in Moonglade.", x = 0.5168, y = 0.4509 },
            },
            sourceStep = 27,
            text = "Accept A Reliquary of Purity from Rabine Saturna.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-winterspring",
            sourceActionID = "accept-5527-a-reliquary-of-purity",
        },
        {
            id = "visit-entry-leveling-era-horde-silithus",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-silithus",
            text = "Reach level 59 before the Silithus visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 59 } },
            requiredLevel = 59,
        },
        {
            checkpointQuest = 1124,
            complete = { level = { min = 54 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-silithus-level-before-turnin-1124-wasteland",
            kind = "note",
            requiredLevel = 54,
            requiredQuests = {},
            text = "Reach level 54 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "level-before-turnin-1124-wasteland",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1124, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1124, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1123, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        { any = { { quest = { id = 1000, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } },
                                                                        { any = { { quest = { id = 1004, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } },
                                                                        { any = { { quest = { id = 1018, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                                { quest = { id = 6762, state = "completed" } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 6762 },
        },
        {
            complete = { quest = { id = 1124, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1124, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1124, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1123, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        { any = { { quest = { id = 1000, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } },
                                                                        { any = { { quest = { id = 1004, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } },
                                                                        { any = { { quest = { id = 1018, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                                { quest = { id = 6762, state = "completed" } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-silithus-turnin-1124-wasteland",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1123, 6762 } } },
            route = {
                {
                    label = "Layo Starstrike",
                    mapID = 1451,
                    offMapText = "Travel to Layo Starstrike in Silithus.",
                    x = 0.8187,
                    y = 0.1893,
                },
            },
            sourceActionID = "turnin-1124-wasteland",
            sourceGuide = "leveling-era-horde-silithus",
            sourceStep = 1,
            text = "Turn in Wasteland to Layo Starstrike.",
            unresolvedPrerequisites = { 6762 },
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 1, id = 5527, index = 1, text = "Reliquary of Purity" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 56 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-silithus-objective-5527-1-reliquary-of-purity",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Reliquary of Purity", mapID = 1451, offMapText = "Travel to Reliquary of Purity.", x = 0.6323, y = 0.5535 },
            },
            sourceStep = 8,
            text = "Collect 1 Reliquary of Purity.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "objective-5527-1-reliquary-of-purity",
        },
        {
            complete = { quest = { id = 5527, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 56 } } } },
            dependsOn = { "horde-leveling-era-horde-silithus-objective-5527-1-reliquary-of-purity" },
            id = "horde-leveling-era-horde-silithus-turnin-5527-a-reliquary-of-purity",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Rabine Saturna", mapID = 1450, offMapText = "Travel to Rabine Saturna in Moonglade.", x = 0.5168, y = 0.4508 },
            },
            sourceActionID = "turnin-5527-a-reliquary-of-purity",
            sourceGuide = "leveling-era-horde-silithus",
            sourceStep = 37,
            text = "Turn in A Reliquary of Purity to Rabine Saturna.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
    },
})
