local _, ns = ...

-- Source decisions: docs/loremaster/silithus.json.
-- Coordinates require a Forever client walkthrough.
ns:RegisterGuide({
    id = "loremaster-silithus",
    title = "Silithus",
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
            complete = { quest = { id = 8275, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-8275-taking-back-silithus",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Cenarion Emissary Jademoon",
                    mapID = 1455,
                    offMapText = "Travel to Cenarion Emissary Jademoon in Ironforge.",
                    x = 0.5854,
                    y = 0.4732,
                },
            },
            sourceStep = 108,
            text = "Accept Taking Back Silithus from Cenarion Emissary Jademoon.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-8275-taking-back-silithus",
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
            checkpointQuest = 8283,
            complete = { level = { min = 54 } },
            conditions = { all = { { faction = "Alliance" } } },
            id = "alliance-extra-8283-level",
            kind = "note",
            requiredLevel = 54,
            text = "Reach level 54 before this visit.",
        },
        {
            id = "alliance-extra-8283-accept",
            kind = "accept",
            text = "Accept Wanted - Deathclasp, Terror of the Sands from Wanted Poster: Deathclasp.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            route = {
                {
                    mapID = 1451,
                    x = 0.513,
                    y = 0.382,
                    label = "Wanted Poster: Deathclasp",
                    offMapText = "Travel to Wanted Poster: Deathclasp in Silithus.",
                },
            },
            complete = { quest = { id = 8283, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-8283-level" },
        },
        {
            id = "alliance-extra-8283-objective",
            kind = "objective",
            text = "Defeat Deathclasp and loot the Deathclasp's Pincer. Bring Deathclasp's Pincer to Vish Kozus, Captain of the Guard. This is an elite. Bring a group.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            route = {
                {
                    mapID = 1451,
                    x = 0.44799999999999995,
                    y = 0.9079999999999999,
                    label = "Deathclasp",
                    offMapText = "Travel to Deathclasp in Silithus.",
                },
            },
            complete = { quest = { id = 8283, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-8283-accept" },
        },
        {
            complete = { quest = { id = 8283, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = { "alliance-extra-8283-objective" },
            id = "alliance-extra-8283-turnin",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Vish Kozus", mapID = 1451, offMapText = "Travel to Vish Kozus in Silithus.", x = 0.508, y = 0.336 },
            },
            text = "Turn in Wanted - Deathclasp, Terror of the Sands to Vish Kozus.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
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
            complete = { quest = { id = 1125, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-silithus-accept-1125-the-spirits-of-southwind",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1124 } } },
            route = {
                {
                    label = "Layo Starstrike",
                    mapID = 1451,
                    offMapText = "Travel to Layo Starstrike in Silithus.",
                    x = 0.8187,
                    y = 0.1893,
                },
            },
            sourceStep = 1,
            text = "Accept The Spirits of Southwind from Layo Starstrike.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "accept-1125-the-spirits-of-southwind",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1125, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1125, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
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
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 8277, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-silithus-accept-8277-deadly-desert-venom",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Beetix Ficklespragg",
                    mapID = 1451,
                    offMapText = "Travel to Beetix Ficklespragg in Silithus.",
                    x = 0.5171,
                    y = 0.3858,
                },
            },
            sourceStep = 2,
            text = "Accept Deadly Desert Venom from Beetix Ficklespragg.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "accept-8277-deadly-desert-venom",
        },
        {
            checkpointQuest = 8275,
            complete = { level = { min = 54 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-silithus-level-before-turnin-8275-taking-back-silithus",
            kind = "note",
            requiredLevel = 54,
            requiredQuests = {},
            text = "Reach level 54 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "level-before-turnin-8275-taking-back-silithus",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 8275, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-silithus-turnin-8275-taking-back-silithus",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Windcaller Proudhorn",
                    mapID = 1451,
                    offMapText = "Travel to Windcaller Proudhorn in Silithus.",
                    x = 0.5115,
                    y = 0.3829,
                },
            },
            sourceActionID = "turnin-8275-taking-back-silithus",
            sourceGuide = "leveling-era-alliance-silithus",
            sourceStep = 3,
            text = "Turn in Taking Back Silithus to Windcaller Proudhorn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 8280, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-silithus-accept-8280-securing-the-supply-lines",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Windcaller Proudhorn",
                    mapID = 1451,
                    offMapText = "Travel to Windcaller Proudhorn in Silithus.",
                    x = 0.5115,
                    y = 0.3829,
                },
            },
            sourceStep = 3,
            text = "Accept Securing the Supply Lines from Windcaller Proudhorn.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "accept-8280-securing-the-supply-lines",
        },
        {
            complete = { quest = { id = 8284, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-silithus-accept-8284-the-twilight-mystery",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Geologist Larksbane",
                    mapID = 1451,
                    offMapText = "Travel to Geologist Larksbane in Silithus.",
                    x = 0.4967,
                    y = 0.3746,
                },
            },
            sourceStep = 5,
            text = "Accept The Twilight Mystery from Geologist Larksbane.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "accept-8284-the-twilight-mystery",
        },
        {
            checkpointQuest = 8320,
            complete = { level = { min = 60 } },
            conditions = { all = { { faction = "Alliance" } } },
            id = "alliance-extra-8320-level",
            kind = "note",
            requiredLevel = 60,
            text = "Reach level 60 before this visit.",
        },
        {
            id = "alliance-extra-8320-accept",
            kind = "accept",
            text = "Accept Twilight Geolords from Huum Wildmane.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 60 } } } },
            route = {
                { mapID = 1451, x = 0.486, y = 0.376, label = "Huum Wildmane", offMapText = "Travel to Huum Wildmane in Silithus." },
            },
            complete = { quest = { id = 8320, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-8320-level" },
        },
        {
            checkpointQuest = 8318,
            complete = { level = { min = 57 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-silithus-level-before-accept-8318-secret-communication",
            kind = "note",
            requiredLevel = 57,
            requiredQuests = {},
            text = "Reach level 57 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "level-before-accept-8318-secret-communication",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 8318, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 57 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-silithus-accept-8318-secret-communication",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Bor Wildmane", mapID = 1451, offMapText = "Travel to Bor Wildmane in Silithus.", x = 0.4857, y = 0.3778 },
            },
            sourceStep = 6,
            text = "Accept Secret Communication from Bor Wildmane.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "accept-8318-secret-communication",
        },
        {
            checkpointQuest = 8304,
            complete = { level = { min = 58 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-silithus-level-before-accept-8304-dearest-natalia",
            kind = "note",
            requiredLevel = 58,
            requiredQuests = {},
            text = "Reach level 58 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "level-before-accept-8304-dearest-natalia",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 8304, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 58 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-silithus-accept-8304-dearest-natalia",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Commander Mar'alith",
                    mapID = 1451,
                    offMapText = "Travel to Commander Mar'alith in Silithus.",
                    x = 0.4919,
                    y = 0.3418,
                },
            },
            sourceStep = 7,
            text = "Accept Dearest Natalia from Commander Mar'alith.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "accept-8304-dearest-natalia",
        },
        {
            complete = { questObjective = { count = 8, id = 1125, index = 1, text = "Tortured Druid" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = { "alliance-leveling-era-alliance-silithus-accept-1125-the-spirits-of-southwind" },
            id = "alliance-leveling-era-alliance-silithus-objective-1125-1-tortured-druid",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1124 } } },
            route = { { label = "Tortured Druid", mapID = 1451, offMapText = "Travel to Tortured Druid.", x = 0.608, y = 0.494 } },
            sourceStep = 9,
            text = "Kill 8 Tortured Druid.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "objective-1125-1-tortured-druid",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1125, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1125, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
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
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 8, id = 1125, index = 2, text = "Tortured Sentinel" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = { "alliance-leveling-era-alliance-silithus-accept-1125-the-spirits-of-southwind" },
            id = "alliance-leveling-era-alliance-silithus-objective-1125-2-tortured-sentinel",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1124 } } },
            route = {
                { label = "Tortured Sentinel", mapID = 1451, offMapText = "Travel to Tortured Sentinel.", x = 0.608, y = 0.494 },
            },
            sourceStep = 9,
            text = "Kill 8 Tortured Sentinel.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "objective-1125-2-tortured-sentinel",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1125, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1125, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
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
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 9415,
            complete = { level = { min = 1 } },
            conditions = { all = { { faction = "Alliance" } } },
            id = "alliance-extra-9415-level",
            kind = "note",
            requiredLevel = 1,
            text = "Reach level 1 before this visit.",
        },
        {
            id = "alliance-extra-9415-accept",
            kind = "accept",
            text = "Accept Report to Marshal Bluewall from Rifleman Torrig.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 1 } } } },
            route = {
                {
                    mapID = 1451,
                    x = 0.506,
                    y = 0.34600000000000003,
                    label = "Rifleman Torrig",
                    offMapText = "Travel to Rifleman Torrig in Silithus.",
                },
            },
            complete = { quest = { id = 9415, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-9415-level" },
        },
        {
            complete = { quest = { id = 8308, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 58 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-silithus-accept-8308-brann-bronzebeard-s-lost-letter",
            kind = "accept",
            requiredQuests = {},
            sourceStep = 10,
            text = "Use the Brann Bronzebeard's Lost Letter to accept Brann Bronzebeard's Lost Letter.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "accept-8308-brann-bronzebeard-s-lost-letter",
        },
        {
            complete = { quest = { id = 1125, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-silithus-accept-1125-the-spirits-of-southwind",
                "alliance-leveling-era-alliance-silithus-objective-1125-1-tortured-druid",
                "alliance-leveling-era-alliance-silithus-objective-1125-2-tortured-sentinel",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1125, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1125, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
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
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-silithus-turnin-1125-the-spirits-of-southwind",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1124 } } },
            route = {
                {
                    label = "Layo Starstrike",
                    mapID = 1451,
                    offMapText = "Travel to Layo Starstrike in Silithus.",
                    x = 0.8187,
                    y = 0.1893,
                },
            },
            sourceActionID = "turnin-1125-the-spirits-of-southwind",
            sourceGuide = "leveling-era-alliance-silithus",
            sourceStep = 11,
            text = "Turn in The Spirits of Southwind to Layo Starstrike.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 8, id = 8277, index = 1, text = "Stonelash Scorpid Stinger" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = { "alliance-leveling-era-alliance-silithus-accept-8277-deadly-desert-venom" },
            id = "alliance-leveling-era-alliance-silithus-objective-8277-1-stonelash-scorpid-stinger",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Stonelash Scorpid Stinger",
                    mapID = 1451,
                    offMapText = "Travel to Stonelash Scorpid Stinger.",
                    x = 0.55,
                    y = 0.346,
                },
            },
            sourceStep = 12,
            text = "Collect 8 Stonelash Scorpid Stinger.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "objective-8277-1-stonelash-scorpid-stinger",
        },
        {
            complete = { questObjective = { count = 8, id = 8277, index = 2, text = "Sand Skitterer Fang" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = { "alliance-leveling-era-alliance-silithus-accept-8277-deadly-desert-venom" },
            id = "alliance-leveling-era-alliance-silithus-objective-8277-2-sand-skitterer-fang",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Sand Skitterer Fang", mapID = 1451, offMapText = "Travel to Sand Skitterer Fang.", x = 0.55, y = 0.346 },
            },
            sourceStep = 13,
            text = "Collect 8 Sand Skitterer Fang.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "objective-8277-2-sand-skitterer-fang",
        },
        {
            complete = { questObjective = { count = 15, id = 8280, index = 1, text = "Dredge Striker" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = { "alliance-leveling-era-alliance-silithus-accept-8280-securing-the-supply-lines" },
            id = "alliance-leveling-era-alliance-silithus-objective-8280-1-dredge-striker",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Dredge Striker", mapID = 1451, offMapText = "Travel to Dredge Striker.", x = 0.55, y = 0.346 } },
            sourceStep = 14,
            text = "Kill 15 Dredge Striker.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "objective-8280-1-dredge-striker",
        },
        {
            id = "alliance-extra-8320-objective",
            kind = "objective",
            text = "Kill 10 Twilight Geolords.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 60 } } } },
            route = {
                {
                    mapID = 1451,
                    x = 0.37799999999999995,
                    y = 0.444,
                    label = "Twilight Geolord",
                    offMapText = "Travel to Twilight Geolord in Silithus.",
                },
            },
            complete = { quest = { id = 8320, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-8320-accept" },
        },
        {
            complete = { quest = { id = 8320, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 60 } } } },
            dependsOn = { "alliance-extra-8320-objective" },
            id = "alliance-extra-8320-turnin",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Huum Wildmane", mapID = 1451, offMapText = "Travel to Huum Wildmane in Silithus.", x = 0.486, y = 0.376 },
            },
            text = "Turn in Twilight Geolords to Huum Wildmane.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 8321,
            complete = { level = { min = 60 } },
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8321, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8321, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8320, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-8321-level",
            kind = "note",
            requiredLevel = 60,
            text = "Reach level 60 before this visit.",
        },
        {
            complete = { quest = { id = 8321, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 60 } } } },
            dependsOn = { "alliance-extra-8321-level" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 8321, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8321, state = "activeOrCompleted" } },
                                                { all = { { any = { { any = { { quest = { id = 8320, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 8321, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8321, state = "activeOrCompleted" } },
                                                { all = { { any = { { any = { { quest = { id = 8320, state = "activeOrCompleted" } }, { all = {} } } } } } } },
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
                                { quest = { id = 8321, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8321, state = "activeOrCompleted" } },
                                        { all = { { any = { { any = { { quest = { id = 8320, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-8321-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 8320 } } },
            route = {
                { label = "Huum Wildmane", mapID = 1451, offMapText = "Travel to Huum Wildmane in Silithus.", x = 0.486, y = 0.376 },
            },
            text = "Accept Vyral the Vile from Huum Wildmane.",
            useClientText = false,
        },
        {
            complete = { quest = { id = 8277, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-silithus-accept-8277-deadly-desert-venom",
                "alliance-leveling-era-alliance-silithus-objective-8277-1-stonelash-scorpid-stinger",
                "alliance-leveling-era-alliance-silithus-objective-8277-2-sand-skitterer-fang",
            },
            id = "alliance-leveling-era-alliance-silithus-turnin-8277-deadly-desert-venom",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Beetix Ficklespragg",
                    mapID = 1451,
                    offMapText = "Travel to Beetix Ficklespragg in Silithus.",
                    x = 0.5171,
                    y = 0.3858,
                },
            },
            sourceActionID = "turnin-8277-deadly-desert-venom",
            sourceGuide = "leveling-era-alliance-silithus",
            sourceStep = 15,
            text = "Turn in Deadly Desert Venom to Beetix Ficklespragg.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 8278, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-silithus-accept-8278-noggle-s-last-hope",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8277 } } },
            route = {
                {
                    label = "Beetix Ficklespragg",
                    mapID = 1451,
                    offMapText = "Travel to Beetix Ficklespragg in Silithus.",
                    x = 0.5171,
                    y = 0.3858,
                },
            },
            sourceStep = 15,
            text = "Accept Noggle's Last Hope from Beetix Ficklespragg.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "accept-8278-noggle-s-last-hope",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8278, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8278, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8277, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 8280, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-silithus-accept-8280-securing-the-supply-lines",
                "alliance-leveling-era-alliance-silithus-objective-8280-1-dredge-striker",
            },
            id = "alliance-leveling-era-alliance-silithus-turnin-8280-securing-the-supply-lines",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Windcaller Proudhorn",
                    mapID = 1451,
                    offMapText = "Travel to Windcaller Proudhorn in Silithus.",
                    x = 0.5115,
                    y = 0.3829,
                },
            },
            sourceActionID = "turnin-8280-securing-the-supply-lines",
            sourceGuide = "leveling-era-alliance-silithus",
            sourceStep = 16,
            text = "Turn in Securing the Supply Lines to Windcaller Proudhorn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 8281, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-silithus-accept-8281-stepping-up-security",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8280 } } },
            route = {
                {
                    label = "Windcaller Proudhorn",
                    mapID = 1451,
                    offMapText = "Travel to Windcaller Proudhorn in Silithus.",
                    x = 0.5115,
                    y = 0.3829,
                },
            },
            sourceStep = 16,
            text = "Accept Stepping Up Security from Windcaller Proudhorn.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "accept-8281-stepping-up-security",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8281, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8281, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8280, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 8, id = 8284, index = 1, text = "Twilight Tablet Fragment" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = { "alliance-leveling-era-alliance-silithus-accept-8284-the-twilight-mystery" },
            id = "alliance-leveling-era-alliance-silithus-objective-8284-1-twilight-tablet-fragment",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Twilight Tablet Fragment",
                    mapID = 1451,
                    offMapText = "Travel to Twilight Tablet Fragment.",
                    x = 0.264,
                    y = 0.158,
                },
            },
            sourceStep = 17,
            text = "Collect 8 Twilight Tablet Fragment.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "objective-8284-1-twilight-tablet-fragment",
        },
        {
            complete = { quest = { id = 8284, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-silithus-accept-8284-the-twilight-mystery",
                "alliance-leveling-era-alliance-silithus-objective-8284-1-twilight-tablet-fragment",
            },
            id = "alliance-leveling-era-alliance-silithus-turnin-8284-the-twilight-mystery",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Geologist Larksbane",
                    mapID = 1451,
                    offMapText = "Travel to Geologist Larksbane in Silithus.",
                    x = 0.4968,
                    y = 0.3746,
                },
            },
            sourceActionID = "turnin-8284-the-twilight-mystery",
            sourceGuide = "leveling-era-alliance-silithus",
            sourceStep = 18,
            text = "Turn in The Twilight Mystery to Geologist Larksbane.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 8285, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-silithus-accept-8285-the-deserter",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8284 } } },
            route = {
                {
                    label = "Geologist Larksbane",
                    mapID = 1451,
                    offMapText = "Travel to Geologist Larksbane in Silithus.",
                    x = 0.4968,
                    y = 0.3746,
                },
            },
            sourceStep = 18,
            text = "Accept The Deserter from Geologist Larksbane.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "accept-8285-the-deserter",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8285, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8285, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 8321, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 60 } } } },
            dependsOn = { "alliance-extra-8321-accept" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 8321, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8321, state = "activeOrCompleted" } },
                                                { all = { { any = { { any = { { quest = { id = 8320, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 8321, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8321, state = "activeOrCompleted" } },
                                                { all = { { any = { { any = { { quest = { id = 8320, state = "activeOrCompleted" } }, { all = {} } } } } } } },
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
                                { quest = { id = 8321, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8321, state = "activeOrCompleted" } },
                                        { all = { { any = { { any = { { quest = { id = 8320, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-8321-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 8320 } } },
            route = {
                { label = "Vyral the Vile", mapID = 1451, offMapText = "Travel to Vyral the Vile in Silithus.", x = 0.73, y = 0.148 },
            },
            text = "Defeat Vyral the Vile and loot the Vyral's Signet Ring. Bring Vyral's Signet Ring to Huum Wildmane in Cenarion Hold.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 8285, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = { "alliance-leveling-era-alliance-silithus-accept-8285-the-deserter" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8285, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8285, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-silithus-turnin-8285-the-deserter",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8284 } } },
            route = {
                { label = "Hermit Ortell", mapID = 1451, offMapText = "Travel to Hermit Ortell in Silithus.", x = 0.6719, y = 0.6976 },
            },
            sourceActionID = "turnin-8285-the-deserter",
            sourceGuide = "leveling-era-alliance-silithus",
            sourceStep = 19,
            text = "Turn in The Deserter to Hermit Ortell.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 8279, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-silithus-accept-8279-the-twilight-lexicon",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8285 } } },
            route = {
                { label = "Hermit Ortell", mapID = 1451, offMapText = "Travel to Hermit Ortell in Silithus.", x = 0.6719, y = 0.6976 },
            },
            sourceStep = 19,
            text = "Accept The Twilight Lexicon from Hermit Ortell.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "accept-8279-the-twilight-lexicon",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8279, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8279, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 8285, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 8321, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 60 } } } },
            dependsOn = { "alliance-extra-8321-objective" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 8321, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8321, state = "activeOrCompleted" } },
                                                { all = { { any = { { any = { { quest = { id = 8320, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 8321, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8321, state = "activeOrCompleted" } },
                                                { all = { { any = { { any = { { quest = { id = 8320, state = "activeOrCompleted" } }, { all = {} } } } } } } },
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
                                { quest = { id = 8321, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8321, state = "activeOrCompleted" } },
                                        { all = { { any = { { any = { { quest = { id = 8320, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-8321-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 8320 } } },
            route = {
                { label = "Huum Wildmane", mapID = 1451, offMapText = "Travel to Huum Wildmane in Silithus.", x = 0.486, y = 0.376 },
            },
            text = "Turn in Vyral the Vile to Huum Wildmane.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 1, id = 8279, index = 2, text = "Twilight Keeper Exeter" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = { "alliance-leveling-era-alliance-silithus-accept-8279-the-twilight-lexicon" },
            id = "alliance-leveling-era-alliance-silithus-objective-8279-2-twilight-keeper-exeter",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8285 } } },
            route = {
                {
                    label = "Twilight Keeper Exeter",
                    mapID = 1451,
                    offMapText = "Travel to Twilight Keeper Exeter.",
                    x = 0.154,
                    y = 0.862,
                },
            },
            sourceStep = 22,
            text = "Collect 1 Twilight Lexicon - Chapter 2.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "objective-8279-2-twilight-keeper-exeter",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8279, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8279, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 8285, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 3, id = 8278, index = 1, text = "Stonelash Flayer Stinger" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = { "alliance-leveling-era-alliance-silithus-accept-8278-noggle-s-last-hope" },
            id = "alliance-leveling-era-alliance-silithus-objective-8278-1-stonelash-flayer-stinger",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8277 } } },
            route = {
                {
                    label = "Stonelash Flayer Stinger",
                    mapID = 1451,
                    offMapText = "Travel to Stonelash Flayer Stinger.",
                    x = 0.362,
                    y = 0.816,
                },
            },
            sourceStep = 23,
            text = "Collect 3 Stonelash Flayer Stinger.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "objective-8278-1-stonelash-flayer-stinger",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8278, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8278, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8277, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 3, id = 8278, index = 3, text = "Rock Stalker Fang" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = { "alliance-leveling-era-alliance-silithus-accept-8278-noggle-s-last-hope" },
            id = "alliance-leveling-era-alliance-silithus-objective-8278-3-rock-stalker-fang",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8277 } } },
            route = {
                { label = "Rock Stalker Fang", mapID = 1451, offMapText = "Travel to Rock Stalker Fang.", x = 0.362, y = 0.816 },
            },
            sourceStep = 24,
            text = "Collect 3 Rock Stalker Fang.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "objective-8278-3-rock-stalker-fang",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8278, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8278, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8277, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 8279, index = 3, text = "Twilight Keeper Havunth" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = { "alliance-leveling-era-alliance-silithus-accept-8279-the-twilight-lexicon" },
            id = "alliance-leveling-era-alliance-silithus-objective-8279-3-twilight-keeper-havunth",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8285 } } },
            route = {
                {
                    label = "Twilight Keeper Havunth",
                    mapID = 1451,
                    offMapText = "Travel to Twilight Keeper Havunth.",
                    x = 0.4043,
                    y = 0.4199,
                },
            },
            sourceStep = 25,
            text = "Collect 1 Twilight Lexicon - Chapter 3.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "objective-8279-3-twilight-keeper-havunth",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8279, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8279, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 8285, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 8279, index = 1, text = "Twilight Keeper Mayna" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = { "alliance-leveling-era-alliance-silithus-accept-8279-the-twilight-lexicon" },
            id = "alliance-leveling-era-alliance-silithus-objective-8279-1-twilight-keeper-mayna",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8285 } } },
            route = {
                {
                    label = "Twilight Keeper Mayna",
                    mapID = 1451,
                    offMapText = "Travel to Twilight Keeper Mayna.",
                    x = 0.2662,
                    y = 0.3633,
                },
            },
            sourceStep = 26,
            text = "Collect 1 Twilight Lexicon - Chapter 1.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "objective-8279-1-twilight-keeper-mayna",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8279, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8279, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 8285, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 8318, index = 1, text = "Encrypted Twilight Text" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 57 } } } },
            dependsOn = { "alliance-leveling-era-alliance-silithus-accept-8318-secret-communication" },
            id = "alliance-leveling-era-alliance-silithus-objective-8318-1-encrypted-twilight-text",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Encrypted Twilight Text",
                    mapID = 1451,
                    offMapText = "Travel to Encrypted Twilight Text.",
                    x = 0.262,
                    y = 0.356,
                },
            },
            sourceStep = 27,
            text = "Collect 10 Encrypted Twilight Text.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "objective-8318-1-encrypted-twilight-text",
        },
        {
            complete = { quest = { id = 8279, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-silithus-accept-8279-the-twilight-lexicon",
                "alliance-leveling-era-alliance-silithus-objective-8279-2-twilight-keeper-exeter",
                "alliance-leveling-era-alliance-silithus-objective-8279-3-twilight-keeper-havunth",
                "alliance-leveling-era-alliance-silithus-objective-8279-1-twilight-keeper-mayna",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8279, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8279, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 8285, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-silithus-turnin-8279-the-twilight-lexicon",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8285 } } },
            route = {
                { label = "Hermit Ortell", mapID = 1451, offMapText = "Travel to Hermit Ortell in Silithus.", x = 0.6719, y = 0.6976 },
            },
            sourceActionID = "turnin-8279-the-twilight-lexicon",
            sourceGuide = "leveling-era-alliance-silithus",
            sourceStep = 28,
            text = "Turn in The Twilight Lexicon to Hermit Ortell.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 8287, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-silithus-accept-8287-a-terrible-purpose",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8279 } } },
            route = {
                { label = "Hermit Ortell", mapID = 1451, offMapText = "Travel to Hermit Ortell in Silithus.", x = 0.6719, y = 0.6976 },
            },
            sourceStep = 28,
            text = "Accept A Terrible Purpose from Hermit Ortell.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "accept-8287-a-terrible-purpose",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8287, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8287, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 8279, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 8285, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 3, id = 8278, index = 2, text = "Stonelash Pincer Stinger" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = { "alliance-leveling-era-alliance-silithus-accept-8278-noggle-s-last-hope" },
            id = "alliance-leveling-era-alliance-silithus-objective-8278-2-stonelash-pincer-stinger",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8277 } } },
            route = {
                {
                    label = "Stonelash Pincer Stinger",
                    mapID = 1451,
                    offMapText = "Travel to Stonelash Pincer Stinger.",
                    x = 0.564,
                    y = 0.602,
                },
            },
            sourceStep = 30,
            text = "Collect 3 Stonelash Pincer Stinger.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "objective-8278-2-stonelash-pincer-stinger",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8278, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8278, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8277, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 20, id = 8281, index = 1, text = "Dredge Crusher" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = { "alliance-leveling-era-alliance-silithus-accept-8281-stepping-up-security" },
            id = "alliance-leveling-era-alliance-silithus-objective-8281-1-dredge-crusher",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8280 } } },
            route = { { label = "Dredge Crusher", mapID = 1451, offMapText = "Travel to Dredge Crusher.", x = 0.564, y = 0.602 } },
            sourceStep = 31,
            text = "Kill 20 Dredge Crusher.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "objective-8281-1-dredge-crusher",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8281, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8281, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8280, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 8281, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-silithus-accept-8281-stepping-up-security",
                "alliance-leveling-era-alliance-silithus-objective-8281-1-dredge-crusher",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8281, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8281, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8280, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-silithus-turnin-8281-stepping-up-security",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8280 } } },
            route = {
                {
                    label = "Windcaller Proudhorn",
                    mapID = 1451,
                    offMapText = "Travel to Windcaller Proudhorn in Silithus.",
                    x = 0.5115,
                    y = 0.3829,
                },
            },
            sourceActionID = "turnin-8281-stepping-up-security",
            sourceGuide = "leveling-era-alliance-silithus",
            sourceStep = 32,
            text = "Turn in Stepping Up Security to Windcaller Proudhorn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 8278, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-silithus-accept-8278-noggle-s-last-hope",
                "alliance-leveling-era-alliance-silithus-objective-8278-1-stonelash-flayer-stinger",
                "alliance-leveling-era-alliance-silithus-objective-8278-3-rock-stalker-fang",
                "alliance-leveling-era-alliance-silithus-objective-8278-2-stonelash-pincer-stinger",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8278, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8278, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8277, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-silithus-turnin-8278-noggle-s-last-hope",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8277 } } },
            route = {
                {
                    label = "Beetix Ficklespragg",
                    mapID = 1451,
                    offMapText = "Travel to Beetix Ficklespragg in Silithus.",
                    x = 0.5171,
                    y = 0.3858,
                },
            },
            sourceActionID = "turnin-8278-noggle-s-last-hope",
            sourceGuide = "leveling-era-alliance-silithus",
            sourceStep = 33,
            text = "Turn in Noggle's Last Hope to Beetix Ficklespragg.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 8282,
            complete = { level = { min = 54 } },
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8282, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8282, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 8278, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 8277, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-8282-level",
            kind = "note",
            requiredLevel = 54,
            text = "Reach level 54 before this visit.",
        },
        {
            complete = { quest = { id = 8282, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = { "alliance-extra-8282-level" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 8282, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8282, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 8278, state = "activeOrCompleted" } },
                                                                { all = { { any = { { any = { { quest = { id = 8277, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 8282, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8282, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 8278, state = "activeOrCompleted" } },
                                                                { all = { { any = { { any = { { quest = { id = 8277, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-8282-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 8278 } } },
            route = {
                {
                    label = "Noggle Ficklespragg",
                    mapID = 1451,
                    offMapText = "Travel to Noggle Ficklespragg in Silithus.",
                    x = 0.516,
                    y = 0.386,
                },
            },
            text = "Accept Noggle's Lost Satchel from Noggle Ficklespragg.",
            useClientText = false,
        },
        {
            complete = { quest = { id = 8282, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = { "alliance-extra-8282-accept" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 8282, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8282, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 8278, state = "activeOrCompleted" } },
                                                                { all = { { any = { { any = { { quest = { id = 8277, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 8282, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8282, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 8278, state = "activeOrCompleted" } },
                                                                { all = { { any = { { any = { { quest = { id = 8277, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-8282-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 8278 } } },
            route = {
                {
                    label = "Noggle's Satchel",
                    mapID = 1451,
                    offMapText = "Travel to Noggle's Satchel in Silithus.",
                    x = 0.446,
                    y = 0.913,
                },
            },
            text = "Collect Noggle's Satchel from the marked object.",
            useClientPin = true,
            useClientText = false,
        },
        {
            checkpointQuest = 8323,
            complete = { level = { min = 54 } },
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8323, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8323, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 8279, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 8285, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-8323-level",
            kind = "note",
            requiredLevel = 54,
            text = "Reach level 54 before this visit.",
        },
        {
            complete = { quest = { id = 8323, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = { "alliance-extra-8323-level" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 8323, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8323, state = "activeOrCompleted" } },
                                                {
                                                    all = {
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 8279, state = "activeOrCompleted" } },
                                                                        {
                                                                            all = {
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 8285, state = "activeOrCompleted" } },
                                                                                                { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
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
                                        { quest = { id = 8323, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8323, state = "activeOrCompleted" } },
                                                {
                                                    all = {
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 8279, state = "activeOrCompleted" } },
                                                                        {
                                                                            all = {
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 8285, state = "activeOrCompleted" } },
                                                                                                { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 8323, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8323, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 8279, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 8285, state = "activeOrCompleted" } },
                                                                                        { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-8323-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 8279 } } },
            route = {
                { label = "Hermit Ortell", mapID = 1451, offMapText = "Travel to Hermit Ortell in Silithus.", x = 0.67, y = 0.696 },
            },
            text = "Accept True Believers from Hermit Ortell.",
            useClientText = false,
        },
        {
            complete = { quest = { id = 8282, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = { "alliance-extra-8282-objective" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 8282, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8282, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 8278, state = "activeOrCompleted" } },
                                                                { all = { { any = { { any = { { quest = { id = 8277, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 8282, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8282, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 8278, state = "activeOrCompleted" } },
                                                                { all = { { any = { { any = { { quest = { id = 8277, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-8282-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 8278 } } },
            route = {
                {
                    label = "Noggle Ficklespragg",
                    mapID = 1451,
                    offMapText = "Travel to Noggle Ficklespragg in Silithus.",
                    x = 0.516,
                    y = 0.386,
                },
            },
            text = "Turn in Noggle's Lost Satchel to Noggle Ficklespragg.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 8287, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = { "alliance-leveling-era-alliance-silithus-accept-8287-a-terrible-purpose" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8287, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8287, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 8279, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 8285, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-silithus-turnin-8287-a-terrible-purpose",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8279 } } },
            route = {
                {
                    label = "Commander Mar'alith",
                    mapID = 1451,
                    offMapText = "Travel to Commander Mar'alith in Silithus.",
                    x = 0.4919,
                    y = 0.3418,
                },
            },
            sourceActionID = "turnin-8287-a-terrible-purpose",
            sourceGuide = "leveling-era-alliance-silithus",
            sourceStep = 34,
            text = "Turn in A Terrible Purpose to Commander Mar'alith.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 8323, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = { "alliance-extra-8323-accept" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 8323, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8323, state = "activeOrCompleted" } },
                                                {
                                                    all = {
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 8279, state = "activeOrCompleted" } },
                                                                        {
                                                                            all = {
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 8285, state = "activeOrCompleted" } },
                                                                                                { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
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
                                        { quest = { id = 8323, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8323, state = "activeOrCompleted" } },
                                                {
                                                    all = {
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 8279, state = "activeOrCompleted" } },
                                                                        {
                                                                            all = {
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 8285, state = "activeOrCompleted" } },
                                                                                                { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 8323, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8323, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 8279, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 8285, state = "activeOrCompleted" } },
                                                                                        { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-8323-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 8279 } } },
            route = {
                { label = "Twilight Avenger", mapID = 1451, offMapText = "Travel to Twilight Avenger in Silithus.", x = 0.38, y = 0.446 },
            },
            text = "Defeat Twilight Avenger and loot the Encrypted Twilight Text. Hermit Ortell wants you to bring him 10 Encrypted Twilight Texts.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 8323, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 54 } } } },
            dependsOn = { "alliance-extra-8323-objective" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 8323, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8323, state = "activeOrCompleted" } },
                                                {
                                                    all = {
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 8279, state = "activeOrCompleted" } },
                                                                        {
                                                                            all = {
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 8285, state = "activeOrCompleted" } },
                                                                                                { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
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
                                        { quest = { id = 8323, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8323, state = "activeOrCompleted" } },
                                                {
                                                    all = {
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 8279, state = "activeOrCompleted" } },
                                                                        {
                                                                            all = {
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 8285, state = "activeOrCompleted" } },
                                                                                                { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 8323, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8323, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 8279, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 8285, state = "activeOrCompleted" } },
                                                                                        { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-8323-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 8279 } } },
            route = {
                { label = "Hermit Ortell", mapID = 1451, offMapText = "Travel to Hermit Ortell in Silithus.", x = 0.67, y = 0.696 },
            },
            text = "Turn in True Believers to Hermit Ortell.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { id = 8304, index = 2, text = "Rutgar Glyphshaper" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 58 } } } },
            dependsOn = { "alliance-leveling-era-alliance-silithus-accept-8304-dearest-natalia" },
            id = "alliance-leveling-era-alliance-silithus-objective-8304-question-2",
            kind = "gossip",
            requiredQuests = {},
            route = {
                { label = "Rutgar Glyphshaper", mapID = 1451, offMapText = "Travel to Rutgar Glyphshaper.", x = 0.4128, y = 0.8845 },
            },
            sourceStep = 20,
            text = "Speak with Rutgar Glyphshaper at Bronzebeard's Encampment. Ask about Natalia and follow the conversation until your quest log credits his information.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "objective-8304-question-2",
        },
        {
            complete = { questObjective = { id = 8304, index = 1, text = "Frankal Stonebridge" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 58 } } } },
            dependsOn = { "alliance-leveling-era-alliance-silithus-accept-8304-dearest-natalia" },
            id = "alliance-leveling-era-alliance-silithus-objective-8304-question-1",
            kind = "gossip",
            requiredQuests = {},
            route = {
                { label = "Frankal Stonebridge", mapID = 1451, offMapText = "Travel to Frankal Stonebridge.", x = 0.4082, y = 0.8885 },
            },
            sourceStep = 21,
            text = "Speak with Frankal Stonebridge at Bronzebeard's Encampment. Ask about Natalia and follow the conversation until your quest log credits his information.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-silithus",
            sourceActionID = "objective-8304-question-1",
        },
        {
            complete = { quest = { id = 8304, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 58 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-silithus-accept-8304-dearest-natalia",
                "alliance-leveling-era-alliance-silithus-objective-8304-question-2",
                "alliance-leveling-era-alliance-silithus-objective-8304-question-1",
            },
            id = "alliance-leveling-era-alliance-silithus-turnin-8304-dearest-natalia",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Commander Mar'alith",
                    mapID = 1451,
                    offMapText = "Travel to Commander Mar'alith in Silithus.",
                    x = 0.4919,
                    y = 0.3418,
                },
            },
            sourceActionID = "turnin-8304-dearest-natalia",
            sourceGuide = "leveling-era-alliance-silithus",
            sourceStep = 34,
            text = "Turn in Dearest Natalia to Commander Mar'alith.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 8318, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 57 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-silithus-accept-8318-secret-communication",
                "alliance-leveling-era-alliance-silithus-objective-8318-1-encrypted-twilight-text",
            },
            id = "alliance-leveling-era-alliance-silithus-turnin-8318-secret-communication",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Bor Wildmane", mapID = 1451, offMapText = "Travel to Bor Wildmane in Silithus.", x = 0.4858, y = 0.3778 },
            },
            sourceActionID = "turnin-8318-secret-communication",
            sourceGuide = "leveling-era-alliance-silithus",
            sourceStep = 35,
            text = "Turn in Secret Communication to Bor Wildmane.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 8306,
            complete = { level = { min = 58 } },
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8306, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8306, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-8306-level",
            kind = "note",
            requiredLevel = 58,
            text = "Reach level 58 before this visit.",
        },
        {
            complete = { quest = { id = 8306, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 58 } } } },
            dependsOn = { "alliance-extra-8306-level" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 8306, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8306, state = "activeOrCompleted" } },
                                                { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 8306, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8306, state = "activeOrCompleted" } },
                                                { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
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
                                { quest = { id = 8306, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8306, state = "activeOrCompleted" } },
                                        { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-8306-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 8304 } } },
            route = {
                {
                    label = "Commander Mar'alith",
                    mapID = 1451,
                    offMapText = "Travel to Commander Mar'alith in Silithus.",
                    x = 0.492,
                    y = 0.342,
                },
            },
            text = "Accept Into The Maw of Madness from Commander Mar'alith.",
            useClientText = false,
        },
        {
            complete = { quest = { id = 8306, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 58 } } } },
            dependsOn = { "alliance-extra-8306-accept" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 8306, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8306, state = "activeOrCompleted" } },
                                                { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 8306, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8306, state = "activeOrCompleted" } },
                                                { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
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
                                { quest = { id = 8306, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8306, state = "activeOrCompleted" } },
                                        { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-8306-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 8304 } } },
            route = {
                {
                    label = "Mistress Natalia Mar'alith",
                    mapID = 1451,
                    offMapText = "Travel to Mistress Natalia Mar'alith in Silithus.",
                    x = 0.518,
                    y = 0.994,
                },
            },
            text = "Defeat Mistress Natalia Mar'alith until the quest log marks the objective complete. Commander Mar'alith at Cenarion Hold in Silithus wants you to find his beloved Natalia. The information that you gathered points to Hive'Regal in the south as being the area in which you may find Mistress Natalia Mar'alith.  Do not forget to visit the dwarves at Bronzebeard's camp before venturing into the hive. They might have some additional work and advice for you.  And <Name>, remember the Commander's words: \"Do what you must...\". This is an elite. Bring a group.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 8306, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 58 } } } },
            dependsOn = { "alliance-extra-8306-objective" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 8306, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8306, state = "activeOrCompleted" } },
                                                { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 8306, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8306, state = "activeOrCompleted" } },
                                                { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
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
                                { quest = { id = 8306, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8306, state = "activeOrCompleted" } },
                                        { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-8306-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 8304 } } },
            route = {
                {
                    label = "Commander Mar'alith",
                    mapID = 1451,
                    offMapText = "Travel to Commander Mar'alith in Silithus.",
                    x = 0.492,
                    y = 0.342,
                },
            },
            text = "Turn in Into The Maw of Madness to Commander Mar'alith.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 8800,
            complete = { level = { min = 60 } },
            conditions = { all = { { faction = "Alliance" } } },
            id = "alliance-extra-8800-level",
            kind = "note",
            requiredLevel = 60,
            text = "Reach level 60 before this visit.",
        },
        {
            id = "alliance-extra-8800-accept",
            kind = "accept",
            text = "Accept Cenarion Battlegear from Windcaller Kaldon.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 60 } } } },
            route = {
                {
                    mapID = 1451,
                    x = 0.5,
                    y = 0.364,
                    label = "Windcaller Kaldon",
                    offMapText = "Travel to Windcaller Kaldon in Silithus.",
                },
            },
            complete = { quest = { id = 8800, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-8800-level" },
        },
        {
            id = "alliance-extra-8800-objective",
            kind = "objective",
            text = "Talk to Vargus at Cenarion Hold in Silithus. Follow the quest log for the destination.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 60 } } } },
            route = {},
            complete = { quest = { id = 8800, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-8800-accept" },
            useClientPin = true,
        },
        {
            complete = { quest = { id = 8800, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 60 } } } },
            dependsOn = { "alliance-extra-8800-objective" },
            id = "alliance-extra-8800-turnin",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Vargus", mapID = 1451, offMapText = "Travel to Vargus in Silithus.", x = 0.512, y = 0.388 } },
            text = "Turn in Cenarion Battlegear to Vargus.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            id = "alliance-extra-9415-objective",
            kind = "objective",
            text = "Speak with Marshal Bluewall at the Alliance encampment near Hive'Zora. Follow the quest log for the destination.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 1 } } } },
            route = {},
            complete = { quest = { id = 9415, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-9415-accept" },
            useClientPin = true,
        },
        {
            complete = { quest = { id = 9415, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 1 } } } },
            dependsOn = { "alliance-extra-9415-objective" },
            id = "alliance-extra-9415-turnin",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Marshal Bluewall", mapID = 1451, offMapText = "Travel to Marshal Bluewall in Silithus.", x = 0.332, y = 0.51 },
            },
            text = "Turn in Report to Marshal Bluewall to Marshal Bluewall.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 8310,
            complete = { level = { min = 58 } },
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8310, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8310, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-8310-level",
            kind = "note",
            requiredLevel = 58,
            text = "Reach level 58 before this visit.",
        },
        {
            complete = { quest = { id = 8310, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 58 } } } },
            dependsOn = { "alliance-extra-8310-level" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 8310, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8310, state = "activeOrCompleted" } },
                                        { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 8310, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8310, state = "activeOrCompleted" } },
                                        { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-8310-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 8304 } } },
            route = {
                {
                    label = "Frankal Stonebridge",
                    mapID = 1451,
                    offMapText = "Travel to Frankal Stonebridge in Silithus.",
                    x = 0.408,
                    y = 0.886,
                },
            },
            text = "Accept Breaking the Code from Frankal Stonebridge.",
            useClientText = false,
        },
        {
            complete = { questObjective = { count = 1, id = 8310, index = 1, text = "Hive'Ashi Silithid Brain" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 58 } } } },
            dependsOn = { "alliance-extra-8310-accept" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 8310, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8310, state = "activeOrCompleted" } },
                                        { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 8310, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8310, state = "activeOrCompleted" } },
                                        { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-8310-objective-1",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 8304 } } },
            route = {
                {
                    label = "Hive'Ashi Stinger",
                    mapID = 1451,
                    offMapText = "Travel to Hive'Ashi Stinger in Silithus.",
                    x = 0.456,
                    y = 0.284,
                },
            },
            text = "Defeat Hive'Ashi Stinger and loot Hive'Ashi Silithid Brain. This is an elite. Bring a group.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 1, id = 8310, index = 2, text = "Hive'Zora Silithid Brain" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 58 } } } },
            dependsOn = { "alliance-extra-8310-accept" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 8310, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8310, state = "activeOrCompleted" } },
                                        { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 8310, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8310, state = "activeOrCompleted" } },
                                        { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-8310-objective-2",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 8304 } } },
            route = {
                {
                    label = "Hive'Zora Waywatcher",
                    mapID = 1451,
                    offMapText = "Travel to Hive'Zora Waywatcher in Silithus.",
                    x = 0.262,
                    y = 0.55,
                },
            },
            text = "Defeat Hive'Zora Waywatcher and loot Hive'Zora Silithid Brain. This is an elite. Bring a group.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 1, id = 8310, index = 3, text = "Hive'Regal Silithid Brain" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 58 } } } },
            dependsOn = { "alliance-extra-8310-accept" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 8310, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8310, state = "activeOrCompleted" } },
                                        { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 8310, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8310, state = "activeOrCompleted" } },
                                        { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-8310-objective-3",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 8304 } } },
            route = {
                {
                    label = "Hive'Regal Ambusher",
                    mapID = 1451,
                    offMapText = "Travel to Hive'Regal Ambusher in Silithus.",
                    x = 0.542,
                    y = 0.882,
                },
            },
            text = "Defeat Hive'Regal Ambusher and loot Hive'Regal Silithid Brain. This is an elite. Bring a group.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 8310, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 58 } } } },
            dependsOn = { "alliance-extra-8310-objective-1", "alliance-extra-8310-objective-2", "alliance-extra-8310-objective-3" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 8310, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8310, state = "activeOrCompleted" } },
                                        { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 8310, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8310, state = "activeOrCompleted" } },
                                        { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-8310-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 8304 } } },
            route = {
                {
                    label = "Frankal Stonebridge",
                    mapID = 1451,
                    offMapText = "Travel to Frankal Stonebridge in Silithus.",
                    x = 0.408,
                    y = 0.886,
                },
            },
            text = "Turn in Breaking the Code to Frankal Stonebridge.",
            useClientPin = true,
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
            complete = { quest = { id = 8276, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-8276-taking-back-silithus",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Cenarion Emissary Blackhoof",
                    mapID = 1454,
                    offMapText = "Travel to Cenarion Emissary Blackhoof in Orgrimmar.",
                    x = 0.4764,
                    y = 0.6577,
                },
            },
            sourceStep = 133,
            text = "Accept Taking Back Silithus from Cenarion Emissary Blackhoof.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-8276-taking-back-silithus",
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
            complete = { quest = { id = 1125, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-silithus-accept-1125-the-spirits-of-southwind",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1124 } } },
            route = {
                {
                    label = "Layo Starstrike",
                    mapID = 1451,
                    offMapText = "Travel to Layo Starstrike in Silithus.",
                    x = 0.8187,
                    y = 0.1893,
                },
            },
            sourceStep = 1,
            text = "Accept The Spirits of Southwind from Layo Starstrike.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "accept-1125-the-spirits-of-southwind",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1125, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1125, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
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
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 8277, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-silithus-accept-8277-deadly-desert-venom",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Beetix Ficklespragg",
                    mapID = 1451,
                    offMapText = "Travel to Beetix Ficklespragg in Silithus.",
                    x = 0.5171,
                    y = 0.3858,
                },
            },
            sourceStep = 2,
            text = "Accept Deadly Desert Venom from Beetix Ficklespragg.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "accept-8277-deadly-desert-venom",
        },
        {
            checkpointQuest = 8276,
            complete = { level = { min = 54 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-silithus-level-before-turnin-8276-taking-back-silithus",
            kind = "note",
            requiredLevel = 54,
            requiredQuests = {},
            text = "Reach level 54 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "level-before-turnin-8276-taking-back-silithus",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 8276, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-silithus-turnin-8276-taking-back-silithus",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Windcaller Proudhorn",
                    mapID = 1451,
                    offMapText = "Travel to Windcaller Proudhorn in Silithus.",
                    x = 0.5115,
                    y = 0.3829,
                },
            },
            sourceActionID = "turnin-8276-taking-back-silithus",
            sourceGuide = "leveling-era-horde-silithus",
            sourceStep = 3,
            text = "Turn in Taking Back Silithus to Windcaller Proudhorn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 8280, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-silithus-accept-8280-securing-the-supply-lines",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Windcaller Proudhorn",
                    mapID = 1451,
                    offMapText = "Travel to Windcaller Proudhorn in Silithus.",
                    x = 0.5115,
                    y = 0.3829,
                },
            },
            sourceStep = 3,
            text = "Accept Securing the Supply Lines from Windcaller Proudhorn.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "accept-8280-securing-the-supply-lines",
        },
        {
            complete = { quest = { id = 8284, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-silithus-accept-8284-the-twilight-mystery",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Geologist Larksbane",
                    mapID = 1451,
                    offMapText = "Travel to Geologist Larksbane in Silithus.",
                    x = 0.4967,
                    y = 0.3746,
                },
            },
            sourceStep = 4,
            text = "Accept The Twilight Mystery from Geologist Larksbane.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "accept-8284-the-twilight-mystery",
        },
        {
            checkpointQuest = 8318,
            complete = { level = { min = 57 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-silithus-level-before-accept-8318-secret-communication",
            kind = "note",
            requiredLevel = 57,
            requiredQuests = {},
            text = "Reach level 57 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "level-before-accept-8318-secret-communication",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 8318, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 57 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-silithus-accept-8318-secret-communication",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Bor Wildmane", mapID = 1451, offMapText = "Travel to Bor Wildmane in Silithus.", x = 0.4857, y = 0.3778 },
            },
            sourceStep = 5,
            text = "Accept Secret Communication from Bor Wildmane.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "accept-8318-secret-communication",
        },
        {
            checkpointQuest = 8304,
            complete = { level = { min = 58 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-silithus-level-before-accept-8304-dearest-natalia",
            kind = "note",
            requiredLevel = 58,
            requiredQuests = {},
            text = "Reach level 58 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "level-before-accept-8304-dearest-natalia",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 8304, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 58 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-silithus-accept-8304-dearest-natalia",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Commander Mar'alith",
                    mapID = 1451,
                    offMapText = "Travel to Commander Mar'alith in Silithus.",
                    x = 0.4919,
                    y = 0.3418,
                },
            },
            sourceStep = 7,
            text = "Accept Dearest Natalia from Commander Mar'alith.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "accept-8304-dearest-natalia",
        },
        {
            complete = { questObjective = { count = 8, id = 1125, index = 1, text = "Tortured Druid" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = { "horde-leveling-era-horde-silithus-accept-1125-the-spirits-of-southwind" },
            id = "horde-leveling-era-horde-silithus-objective-1125-1-tortured-druid",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1124 } } },
            route = { { label = "Tortured Druid", mapID = 1451, offMapText = "Travel to Tortured Druid.", x = 0.608, y = 0.494 } },
            sourceStep = 9,
            text = "Kill 8 Tortured Druid.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "objective-1125-1-tortured-druid",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1125, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1125, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
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
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 8, id = 1125, index = 2, text = "Tortured Sentinel" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = { "horde-leveling-era-horde-silithus-accept-1125-the-spirits-of-southwind" },
            id = "horde-leveling-era-horde-silithus-objective-1125-2-tortured-sentinel",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1124 } } },
            route = {
                { label = "Tortured Sentinel", mapID = 1451, offMapText = "Travel to Tortured Sentinel.", x = 0.608, y = 0.494 },
            },
            sourceStep = 9,
            text = "Kill 8 Tortured Sentinel.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "objective-1125-2-tortured-sentinel",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1125, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1125, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
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
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 8308, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 58 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-silithus-accept-8308-brann-bronzebeard-s-lost-letter",
            kind = "accept",
            requiredQuests = {},
            sourceStep = 10,
            text = "Use the Brann Bronzebeard's Lost Letter to accept Brann Bronzebeard's Lost Letter.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "accept-8308-brann-bronzebeard-s-lost-letter",
        },
        {
            complete = { quest = { id = 1125, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = {
                "horde-leveling-era-horde-silithus-accept-1125-the-spirits-of-southwind",
                "horde-leveling-era-horde-silithus-objective-1125-1-tortured-druid",
                "horde-leveling-era-horde-silithus-objective-1125-2-tortured-sentinel",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1125, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1125, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
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
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-silithus-turnin-1125-the-spirits-of-southwind",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1124 } } },
            route = {
                {
                    label = "Layo Starstrike",
                    mapID = 1451,
                    offMapText = "Travel to Layo Starstrike in Silithus.",
                    x = 0.8187,
                    y = 0.1893,
                },
            },
            sourceActionID = "turnin-1125-the-spirits-of-southwind",
            sourceGuide = "leveling-era-horde-silithus",
            sourceStep = 11,
            text = "Turn in The Spirits of Southwind to Layo Starstrike.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 8, id = 8277, index = 1, text = "Stonelash Scorpid Stinger" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = { "horde-leveling-era-horde-silithus-accept-8277-deadly-desert-venom" },
            id = "horde-leveling-era-horde-silithus-objective-8277-1-stonelash-scorpid-stinger",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Stonelash Scorpid Stinger",
                    mapID = 1451,
                    offMapText = "Travel to Stonelash Scorpid Stinger.",
                    x = 0.55,
                    y = 0.346,
                },
            },
            sourceStep = 12,
            text = "Collect 8 Stonelash Scorpid Stinger.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "objective-8277-1-stonelash-scorpid-stinger",
        },
        {
            complete = { questObjective = { count = 8, id = 8277, index = 2, text = "Sand Skitterer Fang" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = { "horde-leveling-era-horde-silithus-accept-8277-deadly-desert-venom" },
            id = "horde-leveling-era-horde-silithus-objective-8277-2-sand-skitterer-fang",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Sand Skitterer Fang", mapID = 1451, offMapText = "Travel to Sand Skitterer Fang.", x = 0.55, y = 0.346 },
            },
            sourceStep = 13,
            text = "Collect 8 Sand Skitterer Fang.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "objective-8277-2-sand-skitterer-fang",
        },
        {
            complete = { questObjective = { count = 15, id = 8280, index = 1, text = "Dredge Striker" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = { "horde-leveling-era-horde-silithus-accept-8280-securing-the-supply-lines" },
            id = "horde-leveling-era-horde-silithus-objective-8280-1-dredge-striker",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Dredge Striker", mapID = 1451, offMapText = "Travel to Dredge Striker.", x = 0.55, y = 0.346 } },
            sourceStep = 14,
            text = "Kill 15 Dredge Striker.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "objective-8280-1-dredge-striker",
        },
        {
            complete = { quest = { id = 8277, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = {
                "horde-leveling-era-horde-silithus-accept-8277-deadly-desert-venom",
                "horde-leveling-era-horde-silithus-objective-8277-1-stonelash-scorpid-stinger",
                "horde-leveling-era-horde-silithus-objective-8277-2-sand-skitterer-fang",
            },
            id = "horde-leveling-era-horde-silithus-turnin-8277-deadly-desert-venom",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Beetix Ficklespragg",
                    mapID = 1451,
                    offMapText = "Travel to Beetix Ficklespragg in Silithus.",
                    x = 0.5171,
                    y = 0.3858,
                },
            },
            sourceActionID = "turnin-8277-deadly-desert-venom",
            sourceGuide = "leveling-era-horde-silithus",
            sourceStep = 15,
            text = "Turn in Deadly Desert Venom to Beetix Ficklespragg.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 8278, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-silithus-accept-8278-noggle-s-last-hope",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8277 } } },
            route = {
                {
                    label = "Beetix Ficklespragg",
                    mapID = 1451,
                    offMapText = "Travel to Beetix Ficklespragg in Silithus.",
                    x = 0.5171,
                    y = 0.3858,
                },
            },
            sourceStep = 15,
            text = "Accept Noggle's Last Hope from Beetix Ficklespragg.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "accept-8278-noggle-s-last-hope",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8278, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8278, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8277, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 8280, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = {
                "horde-leveling-era-horde-silithus-accept-8280-securing-the-supply-lines",
                "horde-leveling-era-horde-silithus-objective-8280-1-dredge-striker",
            },
            id = "horde-leveling-era-horde-silithus-turnin-8280-securing-the-supply-lines",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Windcaller Proudhorn",
                    mapID = 1451,
                    offMapText = "Travel to Windcaller Proudhorn in Silithus.",
                    x = 0.5115,
                    y = 0.3829,
                },
            },
            sourceActionID = "turnin-8280-securing-the-supply-lines",
            sourceGuide = "leveling-era-horde-silithus",
            sourceStep = 16,
            text = "Turn in Securing the Supply Lines to Windcaller Proudhorn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 8281, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-silithus-accept-8281-stepping-up-security",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8280 } } },
            route = {
                {
                    label = "Windcaller Proudhorn",
                    mapID = 1451,
                    offMapText = "Travel to Windcaller Proudhorn in Silithus.",
                    x = 0.5115,
                    y = 0.3829,
                },
            },
            sourceStep = 16,
            text = "Accept Stepping Up Security from Windcaller Proudhorn.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "accept-8281-stepping-up-security",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8281, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8281, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8280, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 8, id = 8284, index = 1, text = "Twilight Tablet Fragment" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = { "horde-leveling-era-horde-silithus-accept-8284-the-twilight-mystery" },
            id = "horde-leveling-era-horde-silithus-objective-8284-1-twilight-tablet-fragment",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Twilight Tablet Fragment",
                    mapID = 1451,
                    offMapText = "Travel to Twilight Tablet Fragment.",
                    x = 0.264,
                    y = 0.158,
                },
            },
            sourceStep = 17,
            text = "Collect 8 Twilight Tablet Fragment.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "objective-8284-1-twilight-tablet-fragment",
        },
        {
            complete = { quest = { id = 8284, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = {
                "horde-leveling-era-horde-silithus-accept-8284-the-twilight-mystery",
                "horde-leveling-era-horde-silithus-objective-8284-1-twilight-tablet-fragment",
            },
            id = "horde-leveling-era-horde-silithus-turnin-8284-the-twilight-mystery",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Geologist Larksbane",
                    mapID = 1451,
                    offMapText = "Travel to Geologist Larksbane in Silithus.",
                    x = 0.4968,
                    y = 0.3746,
                },
            },
            sourceActionID = "turnin-8284-the-twilight-mystery",
            sourceGuide = "leveling-era-horde-silithus",
            sourceStep = 18,
            text = "Turn in The Twilight Mystery to Geologist Larksbane.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 8285, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-silithus-accept-8285-the-deserter",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8284 } } },
            route = {
                {
                    label = "Geologist Larksbane",
                    mapID = 1451,
                    offMapText = "Travel to Geologist Larksbane in Silithus.",
                    x = 0.4968,
                    y = 0.3746,
                },
            },
            sourceStep = 18,
            text = "Accept The Deserter from Geologist Larksbane.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "accept-8285-the-deserter",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8285, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8285, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 8285, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = { "horde-leveling-era-horde-silithus-accept-8285-the-deserter" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8285, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8285, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-silithus-turnin-8285-the-deserter",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8284 } } },
            route = {
                { label = "Hermit Ortell", mapID = 1451, offMapText = "Travel to Hermit Ortell in Silithus.", x = 0.6719, y = 0.6976 },
            },
            sourceActionID = "turnin-8285-the-deserter",
            sourceGuide = "leveling-era-horde-silithus",
            sourceStep = 19,
            text = "Turn in The Deserter to Hermit Ortell.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 8279, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-silithus-accept-8279-the-twilight-lexicon",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8285 } } },
            route = {
                { label = "Hermit Ortell", mapID = 1451, offMapText = "Travel to Hermit Ortell in Silithus.", x = 0.6719, y = 0.6976 },
            },
            sourceStep = 19,
            text = "Accept The Twilight Lexicon from Hermit Ortell.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "accept-8279-the-twilight-lexicon",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8279, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8279, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 8285, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 8279, index = 2, text = "Twilight Keeper Exeter" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = { "horde-leveling-era-horde-silithus-accept-8279-the-twilight-lexicon" },
            id = "horde-leveling-era-horde-silithus-objective-8279-2-twilight-keeper-exeter",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8285 } } },
            route = {
                {
                    label = "Twilight Keeper Exeter",
                    mapID = 1451,
                    offMapText = "Travel to Twilight Keeper Exeter.",
                    x = 0.154,
                    y = 0.862,
                },
            },
            sourceStep = 22,
            text = "Collect 1 Twilight Lexicon - Chapter 2.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "objective-8279-2-twilight-keeper-exeter",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8279, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8279, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 8285, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 3, id = 8278, index = 1, text = "Stonelash Flayer Stinger" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = { "horde-leveling-era-horde-silithus-accept-8278-noggle-s-last-hope" },
            id = "horde-leveling-era-horde-silithus-objective-8278-1-stonelash-flayer-stinger",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8277 } } },
            route = {
                {
                    label = "Stonelash Flayer Stinger",
                    mapID = 1451,
                    offMapText = "Travel to Stonelash Flayer Stinger.",
                    x = 0.362,
                    y = 0.816,
                },
            },
            sourceStep = 23,
            text = "Collect 3 Stonelash Flayer Stinger.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "objective-8278-1-stonelash-flayer-stinger",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8278, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8278, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8277, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 3, id = 8278, index = 3, text = "Rock Stalker Fang" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = { "horde-leveling-era-horde-silithus-accept-8278-noggle-s-last-hope" },
            id = "horde-leveling-era-horde-silithus-objective-8278-3-rock-stalker-fang",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8277 } } },
            route = {
                { label = "Rock Stalker Fang", mapID = 1451, offMapText = "Travel to Rock Stalker Fang.", x = 0.362, y = 0.816 },
            },
            sourceStep = 24,
            text = "Collect 3 Rock Stalker Fang.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "objective-8278-3-rock-stalker-fang",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8278, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8278, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8277, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 8279, index = 3, text = "Twilight Keeper Havunth" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = { "horde-leveling-era-horde-silithus-accept-8279-the-twilight-lexicon" },
            id = "horde-leveling-era-horde-silithus-objective-8279-3-twilight-keeper-havunth",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8285 } } },
            route = {
                {
                    label = "Twilight Keeper Havunth",
                    mapID = 1451,
                    offMapText = "Travel to Twilight Keeper Havunth.",
                    x = 0.4043,
                    y = 0.4199,
                },
            },
            sourceStep = 25,
            text = "Collect 1 Twilight Lexicon - Chapter 3.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "objective-8279-3-twilight-keeper-havunth",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8279, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8279, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 8285, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 8279, index = 1, text = "Twilight Keeper Mayna" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = { "horde-leveling-era-horde-silithus-accept-8279-the-twilight-lexicon" },
            id = "horde-leveling-era-horde-silithus-objective-8279-1-twilight-keeper-mayna",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8285 } } },
            route = {
                {
                    label = "Twilight Keeper Mayna",
                    mapID = 1451,
                    offMapText = "Travel to Twilight Keeper Mayna.",
                    x = 0.2662,
                    y = 0.3633,
                },
            },
            sourceStep = 26,
            text = "Collect 1 Twilight Lexicon - Chapter 1.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "objective-8279-1-twilight-keeper-mayna",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8279, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8279, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 8285, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 8318, index = 1, text = "Encrypted Twilight Text" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 57 } } } },
            dependsOn = { "horde-leveling-era-horde-silithus-accept-8318-secret-communication" },
            id = "horde-leveling-era-horde-silithus-objective-8318-1-encrypted-twilight-text",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Encrypted Twilight Text",
                    mapID = 1451,
                    offMapText = "Travel to Encrypted Twilight Text.",
                    x = 0.262,
                    y = 0.356,
                },
            },
            sourceStep = 27,
            text = "Collect 10 Encrypted Twilight Text.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "objective-8318-1-encrypted-twilight-text",
        },
        {
            complete = { quest = { id = 8279, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = {
                "horde-leveling-era-horde-silithus-accept-8279-the-twilight-lexicon",
                "horde-leveling-era-horde-silithus-objective-8279-2-twilight-keeper-exeter",
                "horde-leveling-era-horde-silithus-objective-8279-3-twilight-keeper-havunth",
                "horde-leveling-era-horde-silithus-objective-8279-1-twilight-keeper-mayna",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8279, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8279, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 8285, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-silithus-turnin-8279-the-twilight-lexicon",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8285 } } },
            route = {
                { label = "Hermit Ortell", mapID = 1451, offMapText = "Travel to Hermit Ortell in Silithus.", x = 0.6719, y = 0.6976 },
            },
            sourceActionID = "turnin-8279-the-twilight-lexicon",
            sourceGuide = "leveling-era-horde-silithus",
            sourceStep = 28,
            text = "Turn in The Twilight Lexicon to Hermit Ortell.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 8287, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-silithus-accept-8287-a-terrible-purpose",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8279 } } },
            route = {
                { label = "Hermit Ortell", mapID = 1451, offMapText = "Travel to Hermit Ortell in Silithus.", x = 0.6719, y = 0.6976 },
            },
            sourceStep = 28,
            text = "Accept A Terrible Purpose from Hermit Ortell.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "accept-8287-a-terrible-purpose",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8287, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8287, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 8279, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 8285, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 3, id = 8278, index = 2, text = "Stonelash Pincer Stinger" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = { "horde-leveling-era-horde-silithus-accept-8278-noggle-s-last-hope" },
            id = "horde-leveling-era-horde-silithus-objective-8278-2-stonelash-pincer-stinger",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8277 } } },
            route = {
                {
                    label = "Stonelash Pincer Stinger",
                    mapID = 1451,
                    offMapText = "Travel to Stonelash Pincer Stinger.",
                    x = 0.564,
                    y = 0.602,
                },
            },
            sourceStep = 30,
            text = "Collect 3 Stonelash Pincer Stinger.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "objective-8278-2-stonelash-pincer-stinger",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8278, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8278, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8277, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 20, id = 8281, index = 1, text = "Dredge Crusher" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = { "horde-leveling-era-horde-silithus-accept-8281-stepping-up-security" },
            id = "horde-leveling-era-horde-silithus-objective-8281-1-dredge-crusher",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8280 } } },
            route = { { label = "Dredge Crusher", mapID = 1451, offMapText = "Travel to Dredge Crusher.", x = 0.564, y = 0.602 } },
            sourceStep = 31,
            text = "Kill 20 Dredge Crusher.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "objective-8281-1-dredge-crusher",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8281, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8281, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8280, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 8281, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = {
                "horde-leveling-era-horde-silithus-accept-8281-stepping-up-security",
                "horde-leveling-era-horde-silithus-objective-8281-1-dredge-crusher",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8281, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8281, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8280, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-silithus-turnin-8281-stepping-up-security",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8280 } } },
            route = {
                {
                    label = "Windcaller Proudhorn",
                    mapID = 1451,
                    offMapText = "Travel to Windcaller Proudhorn in Silithus.",
                    x = 0.5115,
                    y = 0.3829,
                },
            },
            sourceActionID = "turnin-8281-stepping-up-security",
            sourceGuide = "leveling-era-horde-silithus",
            sourceStep = 32,
            text = "Turn in Stepping Up Security to Windcaller Proudhorn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 8278, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = {
                "horde-leveling-era-horde-silithus-accept-8278-noggle-s-last-hope",
                "horde-leveling-era-horde-silithus-objective-8278-1-stonelash-flayer-stinger",
                "horde-leveling-era-horde-silithus-objective-8278-3-rock-stalker-fang",
                "horde-leveling-era-horde-silithus-objective-8278-2-stonelash-pincer-stinger",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8278, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8278, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8277, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-silithus-turnin-8278-noggle-s-last-hope",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8277 } } },
            route = {
                {
                    label = "Beetix Ficklespragg",
                    mapID = 1451,
                    offMapText = "Travel to Beetix Ficklespragg in Silithus.",
                    x = 0.5171,
                    y = 0.3858,
                },
            },
            sourceActionID = "turnin-8278-noggle-s-last-hope",
            sourceGuide = "leveling-era-horde-silithus",
            sourceStep = 33,
            text = "Turn in Noggle's Last Hope to Beetix Ficklespragg.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 8287, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = { "horde-leveling-era-horde-silithus-accept-8287-a-terrible-purpose" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8287, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8287, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 8279, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 8285, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-silithus-turnin-8287-a-terrible-purpose",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 8279 } } },
            route = {
                {
                    label = "Commander Mar'alith",
                    mapID = 1451,
                    offMapText = "Travel to Commander Mar'alith in Silithus.",
                    x = 0.4919,
                    y = 0.3418,
                },
            },
            sourceActionID = "turnin-8287-a-terrible-purpose",
            sourceGuide = "leveling-era-horde-silithus",
            sourceStep = 34,
            text = "Turn in A Terrible Purpose to Commander Mar'alith.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 1, id = 8304, index = 2 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 58 } } } },
            dependsOn = { "horde-leveling-era-horde-silithus-accept-8304-dearest-natalia" },
            id = "horde-leveling-era-horde-silithus-objective-8304-2-authored-Rutgar-Glyphshaper",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Rutgar-Glyphshaper", mapID = 1451, offMapText = "Travel to Rutgar-Glyphshaper.", x = 0.4128, y = 0.8845 },
            },
            text = "Speak with Rutgar Glyphshaper at Bronzebeard's Encampment. Ask about the Commander's missing wife, then follow each question about Natalia until he finishes the account.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "objective-8304-2-authored-Rutgar-Glyphshaper",
        },
        {
            complete = { questObjective = { count = 1, id = 8304, index = 1 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 58 } } } },
            dependsOn = { "horde-leveling-era-horde-silithus-accept-8304-dearest-natalia" },
            id = "horde-leveling-era-horde-silithus-objective-8304-1-authored-Frankal-Stonebridge",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Frankal-Stonebridge", mapID = 1451, offMapText = "Travel to Frankal-Stonebridge.", x = 0.4082, y = 0.8885 },
            },
            text = "Speak with Frankal Stonebridge beside Rutgar. Ask about Mistress Natalia, then follow each question through his account of Hive'Regal until he finishes.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-silithus",
            sourceActionID = "objective-8304-1-authored-Frankal-Stonebridge",
        },
        {
            complete = { quest = { id = 8304, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 58 } } } },
            dependsOn = {
                "horde-leveling-era-horde-silithus-accept-8304-dearest-natalia",
                "horde-leveling-era-horde-silithus-objective-8304-2-authored-Rutgar-Glyphshaper",
                "horde-leveling-era-horde-silithus-objective-8304-1-authored-Frankal-Stonebridge",
            },
            id = "horde-leveling-era-horde-silithus-turnin-8304-dearest-natalia",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Commander Mar'alith",
                    mapID = 1451,
                    offMapText = "Travel to Commander Mar'alith in Silithus.",
                    x = 0.4919,
                    y = 0.3418,
                },
            },
            sourceActionID = "turnin-8304-dearest-natalia",
            sourceGuide = "leveling-era-horde-silithus",
            sourceStep = 34,
            text = "Turn in Dearest Natalia to Commander Mar'alith.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 8318, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 57 } } } },
            dependsOn = {
                "horde-leveling-era-horde-silithus-accept-8318-secret-communication",
                "horde-leveling-era-horde-silithus-objective-8318-1-encrypted-twilight-text",
            },
            id = "horde-leveling-era-horde-silithus-turnin-8318-secret-communication",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Bor Wildmane", mapID = 1451, offMapText = "Travel to Bor Wildmane in Silithus.", x = 0.4858, y = 0.3778 },
            },
            sourceActionID = "turnin-8318-secret-communication",
            sourceGuide = "leveling-era-horde-silithus",
            sourceStep = 35,
            text = "Turn in Secret Communication to Bor Wildmane.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 8283,
            complete = { level = { min = 54 } },
            conditions = { all = { { faction = "Horde" } } },
            id = "horde-extra-8283-level",
            kind = "note",
            requiredLevel = 54,
            text = "Reach level 54 before this visit.",
        },
        {
            id = "horde-extra-8283-accept",
            kind = "accept",
            text = "Accept Wanted - Deathclasp, Terror of the Sands from Wanted Poster: Deathclasp.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            route = {
                {
                    mapID = 1451,
                    x = 0.513,
                    y = 0.382,
                    label = "Wanted Poster: Deathclasp",
                    offMapText = "Travel to Wanted Poster: Deathclasp in Silithus.",
                },
            },
            complete = { quest = { id = 8283, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-8283-level" },
        },
        {
            id = "horde-extra-8283-objective",
            kind = "objective",
            text = "Defeat Deathclasp and loot the Deathclasp's Pincer. Bring Deathclasp's Pincer to Vish Kozus, Captain of the Guard. This is an elite. Bring a group.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            route = {
                {
                    mapID = 1451,
                    x = 0.44799999999999995,
                    y = 0.9079999999999999,
                    label = "Deathclasp",
                    offMapText = "Travel to Deathclasp in Silithus.",
                },
            },
            complete = { quest = { id = 8283, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-8283-accept" },
        },
        {
            complete = { quest = { id = 8283, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = { "horde-extra-8283-objective" },
            id = "horde-extra-8283-turnin",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Vish Kozus", mapID = 1451, offMapText = "Travel to Vish Kozus in Silithus.", x = 0.508, y = 0.336 },
            },
            text = "Turn in Wanted - Deathclasp, Terror of the Sands to Vish Kozus.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 8306,
            complete = { level = { min = 58 } },
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8306, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8306, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-8306-level",
            kind = "note",
            requiredLevel = 58,
            text = "Reach level 58 before this visit.",
        },
        {
            complete = { quest = { id = 8306, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 58 } } } },
            dependsOn = { "horde-extra-8306-level" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 8306, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8306, state = "activeOrCompleted" } },
                                                { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 8306, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8306, state = "activeOrCompleted" } },
                                                { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
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
                                { quest = { id = 8306, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8306, state = "activeOrCompleted" } },
                                        { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-8306-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 8304 } } },
            route = {
                {
                    label = "Commander Mar'alith",
                    mapID = 1451,
                    offMapText = "Travel to Commander Mar'alith in Silithus.",
                    x = 0.492,
                    y = 0.342,
                },
            },
            text = "Accept Into The Maw of Madness from Commander Mar'alith.",
            useClientText = false,
        },
        {
            complete = { quest = { id = 8306, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 58 } } } },
            dependsOn = { "horde-extra-8306-accept" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 8306, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8306, state = "activeOrCompleted" } },
                                                { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 8306, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8306, state = "activeOrCompleted" } },
                                                { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
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
                                { quest = { id = 8306, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8306, state = "activeOrCompleted" } },
                                        { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-8306-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 8304 } } },
            route = {
                {
                    label = "Mistress Natalia Mar'alith",
                    mapID = 1451,
                    offMapText = "Travel to Mistress Natalia Mar'alith in Silithus.",
                    x = 0.518,
                    y = 0.994,
                },
            },
            text = "Defeat Mistress Natalia Mar'alith until the quest log marks the objective complete. Commander Mar'alith at Cenarion Hold in Silithus wants you to find his beloved Natalia. The information that you gathered points to Hive'Regal in the south as being the area in which you may find Mistress Natalia Mar'alith.  Do not forget to visit the dwarves at Bronzebeard's camp before venturing into the hive. They might have some additional work and advice for you.  And <Name>, remember the Commander's words: \"Do what you must...\". This is an elite. Bring a group.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 8306, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 58 } } } },
            dependsOn = { "horde-extra-8306-objective" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 8306, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8306, state = "activeOrCompleted" } },
                                                { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 8306, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8306, state = "activeOrCompleted" } },
                                                { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
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
                                { quest = { id = 8306, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8306, state = "activeOrCompleted" } },
                                        { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-8306-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 8304 } } },
            route = {
                {
                    label = "Commander Mar'alith",
                    mapID = 1451,
                    offMapText = "Travel to Commander Mar'alith in Silithus.",
                    x = 0.492,
                    y = 0.342,
                },
            },
            text = "Turn in Into The Maw of Madness to Commander Mar'alith.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 8320,
            complete = { level = { min = 60 } },
            conditions = { all = { { faction = "Horde" } } },
            id = "horde-extra-8320-level",
            kind = "note",
            requiredLevel = 60,
            text = "Reach level 60 before this visit.",
        },
        {
            id = "horde-extra-8320-accept",
            kind = "accept",
            text = "Accept Twilight Geolords from Huum Wildmane.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 60 } } } },
            route = {
                { mapID = 1451, x = 0.486, y = 0.376, label = "Huum Wildmane", offMapText = "Travel to Huum Wildmane in Silithus." },
            },
            complete = { quest = { id = 8320, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-8320-level" },
        },
        {
            id = "horde-extra-8320-objective",
            kind = "objective",
            text = "Kill 10 Twilight Geolords.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 60 } } } },
            route = {
                {
                    mapID = 1451,
                    x = 0.37799999999999995,
                    y = 0.444,
                    label = "Twilight Geolord",
                    offMapText = "Travel to Twilight Geolord in Silithus.",
                },
            },
            complete = { quest = { id = 8320, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-8320-accept" },
        },
        {
            complete = { quest = { id = 8320, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 60 } } } },
            dependsOn = { "horde-extra-8320-objective" },
            id = "horde-extra-8320-turnin",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Huum Wildmane", mapID = 1451, offMapText = "Travel to Huum Wildmane in Silithus.", x = 0.486, y = 0.376 },
            },
            text = "Turn in Twilight Geolords to Huum Wildmane.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 8321,
            complete = { level = { min = 60 } },
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8321, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8321, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8320, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-8321-level",
            kind = "note",
            requiredLevel = 60,
            text = "Reach level 60 before this visit.",
        },
        {
            complete = { quest = { id = 8321, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 60 } } } },
            dependsOn = { "horde-extra-8321-level" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 8321, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8321, state = "activeOrCompleted" } },
                                                { all = { { any = { { any = { { quest = { id = 8320, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 8321, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8321, state = "activeOrCompleted" } },
                                                { all = { { any = { { any = { { quest = { id = 8320, state = "activeOrCompleted" } }, { all = {} } } } } } } },
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
                                { quest = { id = 8321, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8321, state = "activeOrCompleted" } },
                                        { all = { { any = { { any = { { quest = { id = 8320, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-8321-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 8320 } } },
            route = {
                { label = "Huum Wildmane", mapID = 1451, offMapText = "Travel to Huum Wildmane in Silithus.", x = 0.486, y = 0.376 },
            },
            text = "Accept Vyral the Vile from Huum Wildmane.",
            useClientText = false,
        },
        {
            complete = { quest = { id = 8321, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 60 } } } },
            dependsOn = { "horde-extra-8321-accept" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 8321, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8321, state = "activeOrCompleted" } },
                                                { all = { { any = { { any = { { quest = { id = 8320, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 8321, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8321, state = "activeOrCompleted" } },
                                                { all = { { any = { { any = { { quest = { id = 8320, state = "activeOrCompleted" } }, { all = {} } } } } } } },
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
                                { quest = { id = 8321, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8321, state = "activeOrCompleted" } },
                                        { all = { { any = { { any = { { quest = { id = 8320, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-8321-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 8320 } } },
            route = {
                { label = "Vyral the Vile", mapID = 1451, offMapText = "Travel to Vyral the Vile in Silithus.", x = 0.73, y = 0.148 },
            },
            text = "Defeat Vyral the Vile and loot the Vyral's Signet Ring. Bring Vyral's Signet Ring to Huum Wildmane in Cenarion Hold.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 8321, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 60 } } } },
            dependsOn = { "horde-extra-8321-objective" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 8321, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8321, state = "activeOrCompleted" } },
                                                { all = { { any = { { any = { { quest = { id = 8320, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                            },
                                        },
                                    },
                                },
                            },
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 8321, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8321, state = "activeOrCompleted" } },
                                                { all = { { any = { { any = { { quest = { id = 8320, state = "activeOrCompleted" } }, { all = {} } } } } } } },
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
                                { quest = { id = 8321, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8321, state = "activeOrCompleted" } },
                                        { all = { { any = { { any = { { quest = { id = 8320, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-8321-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 8320 } } },
            route = {
                { label = "Huum Wildmane", mapID = 1451, offMapText = "Travel to Huum Wildmane in Silithus.", x = 0.486, y = 0.376 },
            },
            text = "Turn in Vyral the Vile to Huum Wildmane.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 8323,
            complete = { level = { min = 54 } },
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8323, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8323, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 8279, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 8285, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-8323-level",
            kind = "note",
            requiredLevel = 54,
            text = "Reach level 54 before this visit.",
        },
        {
            complete = { quest = { id = 8323, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = { "horde-extra-8323-level" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 8323, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8323, state = "activeOrCompleted" } },
                                                {
                                                    all = {
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 8279, state = "activeOrCompleted" } },
                                                                        {
                                                                            all = {
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 8285, state = "activeOrCompleted" } },
                                                                                                { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
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
                                        { quest = { id = 8323, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8323, state = "activeOrCompleted" } },
                                                {
                                                    all = {
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 8279, state = "activeOrCompleted" } },
                                                                        {
                                                                            all = {
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 8285, state = "activeOrCompleted" } },
                                                                                                { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 8323, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8323, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 8279, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 8285, state = "activeOrCompleted" } },
                                                                                        { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-8323-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 8279 } } },
            route = {
                { label = "Hermit Ortell", mapID = 1451, offMapText = "Travel to Hermit Ortell in Silithus.", x = 0.67, y = 0.696 },
            },
            text = "Accept True Believers from Hermit Ortell.",
            useClientText = false,
        },
        {
            complete = { quest = { id = 8323, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = { "horde-extra-8323-accept" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 8323, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8323, state = "activeOrCompleted" } },
                                                {
                                                    all = {
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 8279, state = "activeOrCompleted" } },
                                                                        {
                                                                            all = {
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 8285, state = "activeOrCompleted" } },
                                                                                                { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
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
                                        { quest = { id = 8323, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8323, state = "activeOrCompleted" } },
                                                {
                                                    all = {
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 8279, state = "activeOrCompleted" } },
                                                                        {
                                                                            all = {
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 8285, state = "activeOrCompleted" } },
                                                                                                { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 8323, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8323, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 8279, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 8285, state = "activeOrCompleted" } },
                                                                                        { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-8323-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 8279 } } },
            route = {
                { label = "Twilight Avenger", mapID = 1451, offMapText = "Travel to Twilight Avenger in Silithus.", x = 0.38, y = 0.446 },
            },
            text = "Defeat Twilight Avenger and loot the Encrypted Twilight Text. Hermit Ortell wants you to bring him 10 Encrypted Twilight Texts.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 8323, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = { "horde-extra-8323-objective" },
            excludeWhen = {
                any = {
                    {
                        any = {
                            {
                                ["not"] = {
                                    any = {
                                        { quest = { id = 8323, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8323, state = "activeOrCompleted" } },
                                                {
                                                    all = {
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 8279, state = "activeOrCompleted" } },
                                                                        {
                                                                            all = {
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 8285, state = "activeOrCompleted" } },
                                                                                                { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
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
                                        { quest = { id = 8323, state = "activeOrCompleted" } },
                                        {
                                            any = {
                                                { quest = { id = 8323, state = "activeOrCompleted" } },
                                                {
                                                    all = {
                                                        {
                                                            any = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 8279, state = "activeOrCompleted" } },
                                                                        {
                                                                            all = {
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 8285, state = "activeOrCompleted" } },
                                                                                                { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 8323, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8323, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 8279, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 8285, state = "activeOrCompleted" } },
                                                                                        { all = { { any = { { any = { { quest = { id = 8284, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-8323-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 8279 } } },
            route = {
                { label = "Hermit Ortell", mapID = 1451, offMapText = "Travel to Hermit Ortell in Silithus.", x = 0.67, y = 0.696 },
            },
            text = "Turn in True Believers to Hermit Ortell.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 8800,
            complete = { level = { min = 60 } },
            conditions = { all = { { faction = "Horde" } } },
            id = "horde-extra-8800-level",
            kind = "note",
            requiredLevel = 60,
            text = "Reach level 60 before this visit.",
        },
        {
            id = "horde-extra-8800-accept",
            kind = "accept",
            text = "Accept Cenarion Battlegear from Windcaller Kaldon.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 60 } } } },
            route = {
                {
                    mapID = 1451,
                    x = 0.5,
                    y = 0.364,
                    label = "Windcaller Kaldon",
                    offMapText = "Travel to Windcaller Kaldon in Silithus.",
                },
            },
            complete = { quest = { id = 8800, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-8800-level" },
        },
        {
            id = "horde-extra-8800-objective",
            kind = "objective",
            text = "Talk to Vargus at Cenarion Hold in Silithus. Follow the quest log for the destination.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 60 } } } },
            route = {},
            complete = { quest = { id = 8800, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-8800-accept" },
            useClientPin = true,
        },
        {
            complete = { quest = { id = 8800, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 60 } } } },
            dependsOn = { "horde-extra-8800-objective" },
            id = "horde-extra-8800-turnin",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Vargus", mapID = 1451, offMapText = "Travel to Vargus in Silithus.", x = 0.512, y = 0.388 } },
            text = "Turn in Cenarion Battlegear to Vargus.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 9416,
            complete = { level = { min = 1 } },
            conditions = { all = { { faction = "Horde" } } },
            id = "horde-extra-9416-level",
            kind = "note",
            requiredLevel = 1,
            text = "Reach level 1 before this visit.",
        },
        {
            id = "horde-extra-9416-accept",
            kind = "accept",
            text = "Accept Report to General Kirika from Scout Bloodfist.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 1 } } } },
            route = {
                { mapID = 1451, x = 0.488, y = 0.366, label = "Scout Bloodfist", offMapText = "Travel to Scout Bloodfist in Silithus." },
            },
            complete = { quest = { id = 9416, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-9416-level" },
        },
        {
            id = "horde-extra-9416-objective",
            kind = "objective",
            text = "Speak with General Kirika at the Horde encampment near Hive'Regal. Follow the quest log for the destination.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 1 } } } },
            route = {},
            complete = { quest = { id = 9416, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-9416-accept" },
            useClientPin = true,
        },
        {
            complete = { quest = { id = 9416, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 1 } } } },
            dependsOn = { "horde-extra-9416-objective" },
            id = "horde-extra-9416-turnin",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "General Kirika", mapID = 1451, offMapText = "Travel to General Kirika in Silithus.", x = 0.508, y = 0.696 },
            },
            text = "Turn in Report to General Kirika to General Kirika.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 8282,
            complete = { level = { min = 54 } },
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8282, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8282, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 8278, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 8277, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-8282-level",
            kind = "note",
            requiredLevel = 54,
            text = "Reach level 54 before this visit.",
        },
        {
            complete = { quest = { id = 8282, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = { "horde-extra-8282-level" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 8282, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8282, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 8278, state = "activeOrCompleted" } },
                                                                { all = { { any = { { any = { { quest = { id = 8277, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 8282, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8282, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 8278, state = "activeOrCompleted" } },
                                                                { all = { { any = { { any = { { quest = { id = 8277, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-8282-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 8278 } } },
            route = {
                {
                    label = "Noggle Ficklespragg",
                    mapID = 1451,
                    offMapText = "Travel to Noggle Ficklespragg in Silithus.",
                    x = 0.516,
                    y = 0.386,
                },
            },
            text = "Accept Noggle's Lost Satchel from Noggle Ficklespragg.",
            useClientText = false,
        },
        {
            complete = { quest = { id = 8282, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = { "horde-extra-8282-accept" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 8282, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8282, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 8278, state = "activeOrCompleted" } },
                                                                { all = { { any = { { any = { { quest = { id = 8277, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 8282, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8282, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 8278, state = "activeOrCompleted" } },
                                                                { all = { { any = { { any = { { quest = { id = 8277, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-8282-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 8278 } } },
            route = {
                {
                    label = "Noggle's Satchel",
                    mapID = 1451,
                    offMapText = "Travel to Noggle's Satchel in Silithus.",
                    x = 0.446,
                    y = 0.913,
                },
            },
            text = "Collect Noggle's Satchel from the marked object.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 8282, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 54 } } } },
            dependsOn = { "horde-extra-8282-objective" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 8282, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8282, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 8278, state = "activeOrCompleted" } },
                                                                { all = { { any = { { any = { { quest = { id = 8277, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 8282, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8282, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 8278, state = "activeOrCompleted" } },
                                                                { all = { { any = { { any = { { quest = { id = 8277, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-8282-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 8278 } } },
            route = {
                {
                    label = "Noggle Ficklespragg",
                    mapID = 1451,
                    offMapText = "Travel to Noggle Ficklespragg in Silithus.",
                    x = 0.516,
                    y = 0.386,
                },
            },
            text = "Turn in Noggle's Lost Satchel to Noggle Ficklespragg.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 8310,
            complete = { level = { min = 58 } },
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 8310, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 8310, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-8310-level",
            kind = "note",
            requiredLevel = 58,
            text = "Reach level 58 before this visit.",
        },
        {
            complete = { quest = { id = 8310, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 58 } } } },
            dependsOn = { "horde-extra-8310-level" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 8310, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8310, state = "activeOrCompleted" } },
                                        { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 8310, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8310, state = "activeOrCompleted" } },
                                        { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-8310-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 8304 } } },
            route = {
                {
                    label = "Frankal Stonebridge",
                    mapID = 1451,
                    offMapText = "Travel to Frankal Stonebridge in Silithus.",
                    x = 0.408,
                    y = 0.886,
                },
            },
            text = "Accept Breaking the Code from Frankal Stonebridge.",
            useClientText = false,
        },
        {
            complete = { questObjective = { count = 1, id = 8310, index = 1, text = "Hive'Ashi Silithid Brain" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 58 } } } },
            dependsOn = { "horde-extra-8310-accept" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 8310, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8310, state = "activeOrCompleted" } },
                                        { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 8310, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8310, state = "activeOrCompleted" } },
                                        { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-8310-objective-1",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 8304 } } },
            route = {
                {
                    label = "Hive'Ashi Stinger",
                    mapID = 1451,
                    offMapText = "Travel to Hive'Ashi Stinger in Silithus.",
                    x = 0.456,
                    y = 0.284,
                },
            },
            text = "Defeat Hive'Ashi Stinger and loot Hive'Ashi Silithid Brain. This is an elite. Bring a group.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 1, id = 8310, index = 2, text = "Hive'Zora Silithid Brain" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 58 } } } },
            dependsOn = { "horde-extra-8310-accept" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 8310, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8310, state = "activeOrCompleted" } },
                                        { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 8310, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8310, state = "activeOrCompleted" } },
                                        { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-8310-objective-2",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 8304 } } },
            route = {
                {
                    label = "Hive'Zora Waywatcher",
                    mapID = 1451,
                    offMapText = "Travel to Hive'Zora Waywatcher in Silithus.",
                    x = 0.262,
                    y = 0.55,
                },
            },
            text = "Defeat Hive'Zora Waywatcher and loot Hive'Zora Silithid Brain. This is an elite. Bring a group.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 1, id = 8310, index = 3, text = "Hive'Regal Silithid Brain" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 58 } } } },
            dependsOn = { "horde-extra-8310-accept" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 8310, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8310, state = "activeOrCompleted" } },
                                        { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 8310, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8310, state = "activeOrCompleted" } },
                                        { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-8310-objective-3",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 8304 } } },
            route = {
                {
                    label = "Hive'Regal Ambusher",
                    mapID = 1451,
                    offMapText = "Travel to Hive'Regal Ambusher in Silithus.",
                    x = 0.542,
                    y = 0.882,
                },
            },
            text = "Defeat Hive'Regal Ambusher and loot Hive'Regal Silithid Brain. This is an elite. Bring a group.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 8310, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 58 } } } },
            dependsOn = { "horde-extra-8310-objective-1", "horde-extra-8310-objective-2", "horde-extra-8310-objective-3" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 8310, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8310, state = "activeOrCompleted" } },
                                        { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 8310, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 8310, state = "activeOrCompleted" } },
                                        { all = { { any = { { any = { { quest = { id = 8304, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-8310-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 8304 } } },
            route = {
                {
                    label = "Frankal Stonebridge",
                    mapID = 1451,
                    offMapText = "Travel to Frankal Stonebridge in Silithus.",
                    x = 0.408,
                    y = 0.886,
                },
            },
            text = "Turn in Breaking the Code to Frankal Stonebridge.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
    },
})
