local _, ns = ...

-- Source decisions: docs/loremaster/western-plaguelands.json.
-- Coordinates require a Forever client walkthrough.
ns:RegisterGuide({
    id = "loremaster-western-plaguelands",
    title = "Western Plaguelands",
    category = "Loremaster Guides",
    revision = 2,
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
            alternativeQuests = { 5066, 5091 },
            complete = { quest = { id = 5090, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-accept-5090-a-call-to-arms-the-plaguelands",
            kind = "accept",
            requiredQuests = {},
            sourceStep = 43,
            text = "Accept A Call to Arms: The Plaguelands! from Courier Hammerfall.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceActionID = "accept-5090-a-call-to-arms-the-plaguelands",
        },
        {
            id = "visit-entry-leveling-era-alliance-western-plaguelands",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-western-plaguelands",
            text = "Reach level 51 before the Western Plaguelands visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 51 } },
            requiredLevel = 51,
        },
        {
            alternativeQuests = { 5090, 5091 },
            checkpointQuest = 5066,
            complete = { level = { min = 50 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-western-plaguelands-level-before-accept-5066-verified-pickup",
            kind = "note",
            requiredLevel = 50,
            requiredQuests = {},
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-plaguelands",
            sourceActionID = "level-before-accept-5066-verified-pickup",
            dependsOn = {},
        },
        {
            alternativeQuests = { 5090, 5091 },
            complete = { quest = { id = 5066, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-plaguelands-accept-5066-verified-pickup",
            kind = "accept",
            requiredQuests = {},
            text = "Accept A Call to Arms: The Plaguelands! from Crier Goodman in Stormwind City.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-plaguelands",
            sourceActionID = "accept-5066-verified-pickup",
        },
        {
            alternativeQuests = { 5090, 5091 },
            complete = { quest = { id = 5066, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-plaguelands-accept-5066-verified-pickup" },
            id = "alliance-leveling-era-alliance-western-plaguelands-turnin-5066-a-call-to-arms-the-plaguelands",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Commander Ashlam Valorfist",
                    mapID = 1422,
                    offMapText = "Travel to Commander Ashlam Valorfist in Western Plaguelands.",
                    x = 0.427,
                    y = 0.8403,
                },
            },
            sourceActionID = "turnin-5066-a-call-to-arms-the-plaguelands",
            sourceGuide = "leveling-era-alliance-western-plaguelands",
            sourceStep = 1,
            text = "Turn in A Call to Arms: The Plaguelands! to Commander Ashlam Valorfist.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            alternativeQuests = { 5066, 5091 },
            complete = { quest = { id = 5090, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-plaguelands-turnin-5090-a-call-to-arms-the-plaguelands",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Commander Ashlam Valorfist",
                    mapID = 1422,
                    offMapText = "Travel to Commander Ashlam Valorfist in Western Plaguelands.",
                    x = 0.427,
                    y = 0.8403,
                },
            },
            sourceActionID = "turnin-5090-a-call-to-arms-the-plaguelands",
            sourceGuide = "leveling-era-alliance-western-plaguelands",
            sourceStep = 1,
            text = "Turn in A Call to Arms: The Plaguelands! to Commander Ashlam Valorfist.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            alternativeQuests = { 5066, 5090 },
            complete = { quest = { id = 5091, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-plaguelands-accept-5091-verified-pickup",
            kind = "accept",
            requiredQuests = {},
            text = "Accept A Call to Arms: The Plaguelands! from Herald Moonstalker in Darnassus.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-plaguelands",
            sourceActionID = "accept-5091-verified-pickup",
        },
        {
            alternativeQuests = { 5066, 5090 },
            complete = { quest = { id = 5091, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-plaguelands-accept-5091-verified-pickup" },
            id = "alliance-leveling-era-alliance-western-plaguelands-turnin-5091-a-call-to-arms-the-plaguelands",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Commander Ashlam Valorfist",
                    mapID = 1422,
                    offMapText = "Travel to Commander Ashlam Valorfist in Western Plaguelands.",
                    x = 0.427,
                    y = 0.8403,
                },
            },
            sourceActionID = "turnin-5091-a-call-to-arms-the-plaguelands",
            sourceGuide = "leveling-era-alliance-western-plaguelands",
            sourceStep = 1,
            text = "Turn in A Call to Arms: The Plaguelands! to Commander Ashlam Valorfist.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5092, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-plaguelands-accept-5092-clear-the-way",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Commander Ashlam Valorfist",
                    mapID = 1422,
                    offMapText = "Travel to Commander Ashlam Valorfist in Western Plaguelands.",
                    x = 0.427,
                    y = 0.8403,
                },
            },
            sourceStep = 1,
            text = "Accept Clear the Way from Commander Ashlam Valorfist.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-plaguelands",
            sourceActionID = "accept-5092-clear-the-way",
        },
        {
            alternativeQuests = { 5405, 5503 },
            checkpointQuest = 5401,
            complete = { level = { min = 50 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-western-plaguelands-level-before-accept-5401-argent-dawn-commission",
            kind = "note",
            requiredLevel = 50,
            requiredQuests = {},
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-plaguelands",
            sourceActionID = "level-before-accept-5401-argent-dawn-commission",
            dependsOn = {},
        },
        {
            alternativeQuests = { 5405, 5503 },
            complete = { quest = { id = 5401, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-plaguelands-accept-5401-argent-dawn-commission",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Argent Officer Pureheart",
                    mapID = 1422,
                    offMapText = "Travel to Argent Officer Pureheart in Western Plaguelands.",
                    x = 0.4297,
                    y = 0.8355,
                },
            },
            sourceStep = 2,
            text = "Accept Argent Dawn Commission from Argent Officer Pureheart.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-plaguelands",
            sourceActionID = "accept-5401-argent-dawn-commission",
        },
        {
            complete = { questObjective = { count = 10, id = 5092, index = 1, text = "Skeletal Flayer" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-plaguelands-accept-5092-clear-the-way" },
            id = "alliance-leveling-era-alliance-western-plaguelands-objective-5092-1-skeletal-flayer",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Skeletal Flayer", mapID = 1422, offMapText = "Travel to Skeletal Flayer.", x = 0.508, y = 0.794 } },
            sourceStep = 4,
            text = "Kill 10 Skeletal Flayer.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-plaguelands",
            sourceActionID = "objective-5092-1-skeletal-flayer",
        },
        {
            complete = { questObjective = { count = 10, id = 5092, index = 2, text = "Slavering Ghoul" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-plaguelands-accept-5092-clear-the-way" },
            id = "alliance-leveling-era-alliance-western-plaguelands-objective-5092-2-slavering-ghoul",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Slavering Ghoul", mapID = 1422, offMapText = "Travel to Slavering Ghoul.", x = 0.508, y = 0.794 } },
            sourceStep = 4,
            text = "Kill 10 Slavering Ghoul.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-plaguelands",
            sourceActionID = "objective-5092-2-slavering-ghoul",
        },
        {
            complete = { quest = { id = 5092, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-western-plaguelands-accept-5092-clear-the-way",
                "alliance-leveling-era-alliance-western-plaguelands-objective-5092-1-skeletal-flayer",
                "alliance-leveling-era-alliance-western-plaguelands-objective-5092-2-slavering-ghoul",
            },
            id = "alliance-leveling-era-alliance-western-plaguelands-turnin-5092-clear-the-way",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Commander Ashlam Valorfist",
                    mapID = 1422,
                    offMapText = "Travel to Commander Ashlam Valorfist in Western Plaguelands.",
                    x = 0.427,
                    y = 0.8403,
                },
            },
            sourceActionID = "turnin-5092-clear-the-way",
            sourceGuide = "leveling-era-alliance-western-plaguelands",
            sourceStep = 6,
            text = "Turn in Clear the Way to Commander Ashlam Valorfist.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5215, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-plaguelands-accept-5215-the-scourge-cauldrons",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5092 } } },
            route = {
                {
                    label = "Commander Ashlam Valorfist",
                    mapID = 1422,
                    offMapText = "Travel to Commander Ashlam Valorfist in Western Plaguelands.",
                    x = 0.427,
                    y = 0.8403,
                },
            },
            sourceStep = 6,
            text = "Accept The Scourge Cauldrons from Commander Ashlam Valorfist.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-plaguelands",
            sourceActionID = "accept-5215-the-scourge-cauldrons",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5215, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5215, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5215, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-plaguelands-accept-5215-the-scourge-cauldrons" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5215, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5215, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-western-plaguelands-turnin-5215-the-scourge-cauldrons",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5092 } } },
            route = {
                {
                    label = "High Priestess MacDonnell",
                    mapID = 1422,
                    offMapText = "Travel to High Priestess MacDonnell in Western Plaguelands.",
                    x = 0.4297,
                    y = 0.845,
                },
            },
            sourceActionID = "turnin-5215-the-scourge-cauldrons",
            sourceGuide = "leveling-era-alliance-western-plaguelands",
            sourceStep = 7,
            text = "Turn in The Scourge Cauldrons to High Priestess MacDonnell.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5216, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-plaguelands-accept-5216-target-felstone-field",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5215 } } },
            route = {
                {
                    label = "High Priestess MacDonnell",
                    mapID = 1422,
                    offMapText = "Travel to High Priestess MacDonnell in Western Plaguelands.",
                    x = 0.4297,
                    y = 0.845,
                },
            },
            sourceStep = 7,
            text = "Accept Target: Felstone Field from High Priestess MacDonnell.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-plaguelands",
            sourceActionID = "accept-5216-target-felstone-field",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5216, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5216, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5215, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 5216, index = 1, text = "Cauldron Lord Bilemaw" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-plaguelands-accept-5216-target-felstone-field" },
            id = "alliance-leveling-era-alliance-western-plaguelands-objective-5216-1-cauldron-lord-bilemaw",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5215 } } },
            route = {
                {
                    label = "Cauldron Lord Bilemaw",
                    mapID = 1422,
                    offMapText = "Travel to Cauldron Lord Bilemaw.",
                    x = 0.3703,
                    y = 0.5711,
                },
            },
            sourceStep = 8,
            text = "Collect 1 Felstone Field Cauldron Key.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-plaguelands",
            sourceActionID = "objective-5216-1-cauldron-lord-bilemaw",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5216, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5216, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5215, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5216, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-western-plaguelands-accept-5216-target-felstone-field",
                "alliance-leveling-era-alliance-western-plaguelands-objective-5216-1-cauldron-lord-bilemaw",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5216, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5216, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5215, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-western-plaguelands-turnin-5216-target-felstone-field",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5215 } } },
            route = {
                {
                    label = "Target: Felstone Field",
                    mapID = 1422,
                    offMapText = "Travel to Target: Felstone Field.",
                    x = 0.3719,
                    y = 0.5687,
                },
            },
            sourceActionID = "turnin-5216-target-felstone-field",
            sourceGuide = "leveling-era-alliance-western-plaguelands",
            sourceStep = 9,
            text = "Turn in Target: Felstone Field.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5217, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-plaguelands-accept-5217-return-to-chillwind-camp",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5216 } } },
            route = {
                { label = "Return to Chillwind Camp", mapID = 1422, offMapText = "Travel to Chillwind Camp.", x = 0.3719, y = 0.5687 },
            },
            sourceStep = 9,
            text = "Accept Return to Chillwind Camp.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-plaguelands",
            sourceActionID = "accept-5217-return-to-chillwind-camp",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5217, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5217, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5216, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5215, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5021, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-plaguelands-accept-5021-better-late-than-never",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Janice Felstone",
                    mapID = 1422,
                    offMapText = "Travel to Janice Felstone in Western Plaguelands.",
                    x = 0.384,
                    y = 0.5405,
                },
            },
            sourceStep = 10,
            text = "Accept Better Late Than Never from Janice Felstone.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-plaguelands",
            sourceActionID = "accept-5021-better-late-than-never",
        },
        {
            complete = { quest = { id = 5021, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-plaguelands-accept-5021-better-late-than-never" },
            id = "alliance-leveling-era-alliance-western-plaguelands-turnin-5021-better-late-than-never",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Better Late Than Never",
                    mapID = 1422,
                    offMapText = "Travel to Better Late Than Never.",
                    x = 0.3873,
                    y = 0.5524,
                },
            },
            sourceActionID = "turnin-5021-better-late-than-never",
            sourceGuide = "leveling-era-alliance-western-plaguelands",
            sourceStep = 11,
            text = "Turn in Better Late Than Never.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5022, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-plaguelands-accept-5022-better-late-than-never",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5021 } } },
            route = {
                {
                    label = "Better Late Than Never",
                    mapID = 1422,
                    offMapText = "Travel to Better Late Than Never.",
                    x = 0.3873,
                    y = 0.5524,
                },
            },
            sourceStep = 11,
            text = "Accept Better Late Than Never.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-plaguelands",
            sourceActionID = "accept-5022-better-late-than-never",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5022, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5022, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 5021, state = "activeOrCompleted" } }, { all = {} } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5217, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-plaguelands-accept-5217-return-to-chillwind-camp" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5217, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5217, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5216, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5215, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-western-plaguelands-turnin-5217-return-to-chillwind-camp",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5216 } } },
            route = {
                {
                    label = "High Priestess MacDonnell",
                    mapID = 1422,
                    offMapText = "Travel to High Priestess MacDonnell in Western Plaguelands.",
                    x = 0.4297,
                    y = 0.845,
                },
            },
            sourceActionID = "turnin-5217-return-to-chillwind-camp",
            sourceGuide = "leveling-era-alliance-western-plaguelands",
            sourceStep = 12,
            text = "Turn in Return to Chillwind Camp to High Priestess MacDonnell.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
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
            sourceActionID = "turnin-6182-the-first-and-the-last",
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceStep = 36,
            text = "Turn in The First and the Last to Master Mathias Shaw.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
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
            sourceActionID = "turnin-6183-honor-the-dead",
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceStep = 37,
            text = "Turn in Honor the Dead to Master Mathias Shaw.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
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
            complete = { quest = { id = 5022, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5022, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5022, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 5021, state = "activeOrCompleted" } }, { all = {} } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-burning-steppes-turnin-5022-better-late-than-never",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5021 } } },
            route = {
                {
                    label = "Royal Factor Bathrilor",
                    mapID = 1453,
                    offMapText = "Travel to Royal Factor Bathrilor in Stormwind City.",
                    x = 0.4847,
                    y = 0.3055,
                },
            },
            sourceActionID = "turnin-5022-better-late-than-never",
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceStep = 38,
            text = "Turn in Better Late Than Never to Royal Factor Bathrilor.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5048, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-burning-steppes-accept-5048-good-natured-emma",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5022 } } },
            route = {
                {
                    label = "Royal Factor Bathrilor",
                    mapID = 1453,
                    offMapText = "Travel to Royal Factor Bathrilor in Stormwind City.",
                    x = 0.4847,
                    y = 0.3055,
                },
            },
            sourceStep = 38,
            text = "Accept Good Natured Emma from Royal Factor Bathrilor.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "accept-5048-good-natured-emma",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5048, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5048, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5022, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 5021, state = "activeOrCompleted" } }, { all = {} } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5048, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-burning-steppes-accept-5048-good-natured-emma" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5048, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5048, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5022, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 5021, state = "activeOrCompleted" } }, { all = {} } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-burning-steppes-turnin-5048-good-natured-emma",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5022 } } },
            sourceActionID = "turnin-5048-good-natured-emma",
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceStep = 39,
            text = "Turn in Good Natured Emma to Ol' Emma.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5050, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-burning-steppes-accept-5050-good-luck-charm",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5048, 5049 } } },
            route = { { label = "Ol' Emma", mapID = 1453, offMapText = "Travel to Ol' Emma in Stormwind.", x = 0.524, y = 0.418 } },
            sourceStep = 39,
            text = "Accept Good Luck Charm from Ol' Emma in Stormwind.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-burning-steppes",
            sourceActionID = "accept-5050-good-luck-charm",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5050, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5050, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5048, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5022, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 5021, state = "activeOrCompleted" } }, { all = {} } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                                { quest = { id = 5049, state = "completed" } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 5049 },
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
            complete = { quest = { id = 5219, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5219-target-dalson-s-tears",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5217 } } },
            route = {
                {
                    label = "High Priestess MacDonnell",
                    mapID = 1422,
                    offMapText = "Travel to High Priestess MacDonnell in Western Plaguelands.",
                    x = 0.4297,
                    y = 0.845,
                },
            },
            sourceStep = 7,
            text = "Accept Target: Dalson's Tears from High Priestess MacDonnell.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-5219-target-dalson-s-tears",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5219, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5219, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5217, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5216, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5215, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5097, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5097-all-along-the-watchtowers",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5092 } } },
            route = {
                {
                    label = "Commander Ashlam Valorfist",
                    mapID = 1422,
                    offMapText = "Travel to Commander Ashlam Valorfist in Western Plaguelands.",
                    x = 0.427,
                    y = 0.8403,
                },
            },
            sourceStep = 8,
            text = "Accept All Along the Watchtowers from Commander Ashlam Valorfist.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-5097-all-along-the-watchtowers",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5097, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5097, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
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
            sourceActionID = "turnin-6184-flint-shadowmore",
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceStep = 10,
            text = "Turn in Flint Shadowmore to Flint Shadowmore.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { id = 5097, index = 4, text = "Beacon Torch" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5097-all-along-the-watchtowers" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5097-4-beacon-torch",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5092 } } },
            route = { { label = "Beacon Torch", mapID = 1422, offMapText = "Travel to Beacon Torch.", x = 0.467, y = 0.711 } },
            text = "Use Beacon Torch.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-5097-4-beacon-torch",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5097, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5097, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 4984,
            complete = { level = { min = 51 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-level-before-accept-4984-the-wildlife-suffers-too",
            kind = "note",
            requiredLevel = 51,
            requiredQuests = {},
            text = "Reach level 51 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "level-before-accept-4984-the-wildlife-suffers-too",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 4984, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 51 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-4984-the-wildlife-suffers-too",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Mulgris Deepriver",
                    mapID = 1422,
                    offMapText = "Travel to Mulgris Deepriver in Western Plaguelands.",
                    x = 0.5372,
                    y = 0.6467,
                },
            },
            sourceStep = 13,
            text = "Accept The Wildlife Suffers Too from Mulgris Deepriver.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-4984-the-wildlife-suffers-too",
        },
        {
            complete = { questObjective = { count = 8, id = 4984, index = 1, text = "Diseased Wolf" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 51 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-4984-the-wildlife-suffers-too" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-4984-1-diseased-wolf",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Diseased Wolf", mapID = 1422, offMapText = "Travel to Diseased Wolf.", x = 0.442, y = 0.596 } },
            sourceStep = 15,
            text = "Kill 8 Diseased Wolf.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-4984-1-diseased-wolf",
        },
        {
            complete = { questObjective = { id = 5097, index = 3, text = "Beacon Torch" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5097-all-along-the-watchtowers" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5097-3-beacon-torch",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5092 } } },
            route = { { label = "Beacon Torch", mapID = 1422, offMapText = "Travel to Beacon Torch.", x = 0.4422, y = 0.6337 } },
            text = "Use Beacon Torch.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-5097-3-beacon-torch",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5097, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5097, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 5058,
            complete = { level = { min = 52 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-level-before-accept-5058-mrs-dalson-s-diary",
            kind = "note",
            requiredLevel = 52,
            requiredQuests = {},
            text = "Reach level 52 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "level-before-accept-5058-mrs-dalson-s-diary",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 5058, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 52 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5058-mrs-dalson-s-diary",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Mrs. Dalson's Diary", mapID = 1422, offMapText = "Travel to Mrs. Dalson's Diary.", x = 0.4779, y = 0.5067 },
            },
            sourceStep = 16,
            text = "Accept Mrs. Dalson's Diary.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-5058-mrs-dalson-s-diary",
        },
        {
            complete = { quest = { id = 5058, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 52 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5058-mrs-dalson-s-diary" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-5058-mrs-dalson-s-diary",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Mrs. Dalson's Diary",
                    mapID = 1422,
                    offMapText = "Travel to Mrs. Dalson's Diary at Dalson's Tears.",
                    x = 0.4779,
                    y = 0.5067,
                },
            },
            sourceActionID = "turnin-5058-mrs-dalson-s-diary",
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceStep = 16,
            text = "Finish reading Mrs. Dalson's Diary.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5060, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 52 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5060-locked-away",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Locked Away", mapID = 1422, offMapText = "Travel to Locked Away.", x = 0.4737, y = 0.4965 } },
            sourceStep = 19,
            text = "Accept Locked Away.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-5060-locked-away",
        },
        {
            complete = { quest = { id = 5060, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 52 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5060-locked-away" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-5060-locked-away",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Locked Cabinet",
                    mapID = 1422,
                    offMapText = "Travel to Locked Cabinet at Dalson's Tears.",
                    x = 0.4737,
                    y = 0.4965,
                },
            },
            sourceActionID = "turnin-5060-locked-away",
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceStep = 19,
            text = "Complete Locked Away at the Locked Cabinet.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 1, id = 5219, index = 1, text = "Cauldron Lord Malvinious" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5219-target-dalson-s-tears" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5219-1-cauldron-lord-malvinious",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5217 } } },
            route = {
                {
                    label = "Cauldron Lord Malvinious",
                    mapID = 1422,
                    offMapText = "Travel to Cauldron Lord Malvinious.",
                    x = 0.4618,
                    y = 0.5238,
                },
            },
            sourceStep = 20,
            text = "Collect 1 Dalson's Tears Cauldron Key.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-5219-1-cauldron-lord-malvinious",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5219, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5219, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5217, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5216, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5215, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5219, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5219-target-dalson-s-tears",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5219-1-cauldron-lord-malvinious",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5219, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5219, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5217, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5216, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5215, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-5219-target-dalson-s-tears",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5217 } } },
            route = {
                {
                    label = "Target: Dalson's Tears",
                    mapID = 1422,
                    offMapText = "Travel to Target: Dalson's Tears.",
                    x = 0.4618,
                    y = 0.5202,
                },
            },
            sourceActionID = "turnin-5219-target-dalson-s-tears",
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceStep = 21,
            text = "Turn in Target: Dalson's Tears.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5220, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5220-return-to-chillwind-camp",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5219 } } },
            route = {
                { label = "Return to Chillwind Camp", mapID = 1422, offMapText = "Travel to Chillwind Camp.", x = 0.4618, y = 0.5202 },
            },
            sourceStep = 21,
            text = "Accept Return to Chillwind Camp.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-5220-return-to-chillwind-camp",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5220, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5220, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5219, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5217, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5216, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5215, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5050, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5050, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5050, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5048, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5022, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        { any = { { any = { { quest = { id = 5021, state = "activeOrCompleted" } }, { all = {} } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                                { quest = { id = 5049, state = "completed" } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-5050-good-luck-charm",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5048, 5049 } } },
            route = {
                {
                    label = "Janice Felstone",
                    mapID = 1422,
                    offMapText = "Travel to Janice Felstone in Western Plaguelands.",
                    x = 0.384,
                    y = 0.5405,
                },
            },
            sourceActionID = "turnin-5050-good-luck-charm",
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceStep = 22,
            text = "Turn in Good Luck Charm to Janice Felstone.",
            unresolvedPrerequisites = { 5049 },
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5051, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5051-two-halves-become-one",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5050 } } },
            route = {
                {
                    label = "Janice Felstone",
                    mapID = 1422,
                    offMapText = "Travel to Janice Felstone in Western Plaguelands.",
                    x = 0.384,
                    y = 0.5405,
                },
            },
            sourceStep = 22,
            text = "Accept Two Halves Become One from Janice Felstone.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-5051-two-halves-become-one",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5051, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5051, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5050, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5048, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5022, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                { any = { { any = { { quest = { id = 5021, state = "activeOrCompleted" } }, { all = {} } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                        { quest = { id = 5049, state = "completed" } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 5051, index = 1 } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5051-two-halves-become-one" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5051-1-jabbering-ghoul",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5050 } } },
            route = {
                { label = "Jabbering Ghouls", mapID = 1422, offMapText = "Travel to Jabbering Ghouls.", x = 0.378, y = 0.576 },
            },
            sourceStep = 23,
            text = "Kill Jabbering Ghouls around the ruined fields of Andorhal. Loot the Good Luck Other-Half-Charm, then use it to assemble the Good Luck Charm.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-5051-1-jabbering-ghoul",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5051, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5051, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5050, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5048, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5022, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                { any = { { any = { { quest = { id = 5021, state = "activeOrCompleted" } }, { all = {} } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                        { quest = { id = 5049, state = "completed" } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5051, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5051-two-halves-become-one",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5051-1-jabbering-ghoul",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5051, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5051, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5050, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5048, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5022, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                { any = { { any = { { quest = { id = 5021, state = "activeOrCompleted" } }, { all = {} } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                        { quest = { id = 5049, state = "completed" } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-5051-two-halves-become-one",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5050 } } },
            route = {
                {
                    label = "Janice Felstone",
                    mapID = 1422,
                    offMapText = "Travel to Janice Felstone in Western Plaguelands.",
                    x = 0.384,
                    y = 0.5405,
                },
            },
            sourceActionID = "turnin-5051-two-halves-become-one",
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceStep = 24,
            text = "Turn in Two Halves Become One to Janice Felstone.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { id = 5097, index = 2, text = "Beacon Torch" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5097-all-along-the-watchtowers" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5097-2-beacon-torch",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5092 } } },
            route = { { label = "Beacon Torch", mapID = 1422, offMapText = "Travel to Beacon Torch.", x = 0.4244, y = 0.6627 } },
            text = "Use Beacon Torch.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-5097-2-beacon-torch",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5097, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5097, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { id = 5097, index = 1, text = "Beacon Torch" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5097-all-along-the-watchtowers" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5097-1-beacon-torch",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5092 } } },
            route = { { label = "Beacon Torch", mapID = 1422, offMapText = "Travel to Beacon Torch.", x = 0.4013, y = 0.7152 } },
            text = "Use Beacon Torch.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-5097-1-beacon-torch",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5097, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5097, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5097, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5097-all-along-the-watchtowers",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5097-4-beacon-torch",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5097-3-beacon-torch",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5097-2-beacon-torch",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5097-1-beacon-torch",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5097, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5097, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-5097-all-along-the-watchtowers",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5092 } } },
            route = {
                {
                    label = "Commander Ashlam Valorfist",
                    mapID = 1422,
                    offMapText = "Travel to Commander Ashlam Valorfist in Western Plaguelands.",
                    x = 0.427,
                    y = 0.8403,
                },
            },
            sourceActionID = "turnin-5097-all-along-the-watchtowers",
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceStep = 27,
            text = "Turn in All Along the Watchtowers to Commander Ashlam Valorfist.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5533, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 55 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5533-scholomance",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5097 } } },
            route = {
                {
                    label = "Commander Ashlam Valorfist",
                    mapID = 1422,
                    offMapText = "Travel to Commander Ashlam Valorfist in Western Plaguelands.",
                    x = 0.427,
                    y = 0.8403,
                },
            },
            sourceStep = 27,
            text = "Accept Scholomance from Commander Ashlam Valorfist.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-5533-scholomance",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5533, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5533, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5097, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5533, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 55 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5533-scholomance" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5533, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5533, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5097, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-5533-scholomance",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5097 } } },
            route = {
                {
                    label = "Alchemist Arbington",
                    mapID = 1422,
                    offMapText = "Travel to Alchemist Arbington in Western Plaguelands.",
                    x = 0.4266,
                    y = 0.8377,
                },
            },
            sourceActionID = "turnin-5533-scholomance",
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceStep = 29,
            text = "Turn in Scholomance to Alchemist Arbington.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5220, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5220-return-to-chillwind-camp" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5220, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5220, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5219, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5217, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5216, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5215, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-5220-return-to-chillwind-camp",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5219 } } },
            route = {
                {
                    label = "High Priestess MacDonnell",
                    mapID = 1422,
                    offMapText = "Travel to High Priestess MacDonnell in Western Plaguelands.",
                    x = 0.4297,
                    y = 0.845,
                },
            },
            sourceActionID = "turnin-5220-return-to-chillwind-camp",
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceStep = 30,
            text = "Turn in Return to Chillwind Camp to High Priestess MacDonnell.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5222, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5222-target-writhing-haunt",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5220 } } },
            route = {
                {
                    label = "High Priestess MacDonnell",
                    mapID = 1422,
                    offMapText = "Travel to High Priestess MacDonnell in Western Plaguelands.",
                    x = 0.4297,
                    y = 0.845,
                },
            },
            sourceStep = 30,
            text = "Accept Target: Writhing Haunt from High Priestess MacDonnell.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-5222-target-writhing-haunt",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5222, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5222, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5220, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5219, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5217, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5216, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 5215, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5903, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5903-a-plague-upon-thee",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Nathaniel Dumah",
                    mapID = 1422,
                    offMapText = "Travel to Nathaniel Dumah in Western Plaguelands.",
                    x = 0.4342,
                    y = 0.8484,
                },
            },
            sourceStep = 31,
            text = "Accept A Plague Upon Thee from Nathaniel Dumah.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-5903-a-plague-upon-thee",
        },
        {
            complete = { questObjective = { count = 1, id = 5222, index = 1, text = "Cauldron Lord Razarch" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5222-target-writhing-haunt" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5222-1-cauldron-lord-razarch",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5220 } } },
            route = {
                {
                    label = "Cauldron Lord Razarch",
                    mapID = 1422,
                    offMapText = "Travel to Cauldron Lord Razarch.",
                    x = 0.5302,
                    y = 0.6606,
                },
            },
            sourceStep = 33,
            text = "Collect 1 Writhing Haunt Cauldron Key.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-5222-1-cauldron-lord-razarch",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5222, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5222, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5220, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5219, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5217, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5216, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 5215, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5222, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5222-target-writhing-haunt",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5222-1-cauldron-lord-razarch",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5222, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5222, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5220, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5219, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5217, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5216, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 5215, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-5222-target-writhing-haunt",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5220 } } },
            route = {
                {
                    label = "Target: Writhing Haunt",
                    mapID = 1422,
                    offMapText = "Travel to Target: Writhing Haunt.",
                    x = 0.5302,
                    y = 0.6572,
                },
            },
            sourceActionID = "turnin-5222-target-writhing-haunt",
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceStep = 34,
            text = "Turn in Target: Writhing Haunt.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5223, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5223-return-to-chillwind-camp",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5222 } } },
            route = {
                { label = "Return to Chillwind Camp", mapID = 1422, offMapText = "Travel to Chillwind Camp.", x = 0.5302, y = 0.6572 },
            },
            sourceStep = 34,
            text = "Accept Return to Chillwind Camp.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-5223-return-to-chillwind-camp",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5223, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5223, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5222, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5220, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5219, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5217, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 5216, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 5215, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 4984, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 51 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-4984-the-wildlife-suffers-too",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-4984-1-diseased-wolf",
            },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-4984-the-wildlife-suffers-too",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Mulgris Deepriver",
                    mapID = 1422,
                    offMapText = "Travel to Mulgris Deepriver in Western Plaguelands.",
                    x = 0.5372,
                    y = 0.6467,
                },
            },
            sourceActionID = "turnin-4984-the-wildlife-suffers-too",
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceStep = 35,
            text = "Turn in The Wildlife Suffers Too to Mulgris Deepriver.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 4985, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 51 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-4985-the-wildlife-suffers-too",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4984 } } },
            route = {
                {
                    label = "Mulgris Deepriver",
                    mapID = 1422,
                    offMapText = "Travel to Mulgris Deepriver in Western Plaguelands.",
                    x = 0.5372,
                    y = 0.6467,
                },
            },
            sourceStep = 35,
            text = "Accept The Wildlife Suffers Too from Mulgris Deepriver.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-4985-the-wildlife-suffers-too",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4985, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4985, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 4984, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
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
            sourceActionID = "turnin-5149-pamela-s-doll",
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceStep = 46,
            text = "Turn in Pamela's Doll to Pamela Redpath.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
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
            complete = { questObjective = { count = 100, id = 5903, index = 1, text = "Large Termite Mound" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5903-a-plague-upon-thee" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5903-1-large-termite-mound",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Large Termite Mound", mapID = 1423, offMapText = "Travel to Large Termite Mound.", x = 0.459, y = 0.341 },
            },
            sourceStep = 57,
            text = "Collect 100 Plagueland Termites.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-5903-1-large-termite-mound",
        },
        {
            complete = { quest = { id = 5223, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5223-return-to-chillwind-camp" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5223, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5223, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5222, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5220, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5219, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5217, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 5216, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 5215, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-5223-return-to-chillwind-camp",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5222 } } },
            route = {
                {
                    label = "High Priestess MacDonnell",
                    mapID = 1422,
                    offMapText = "Travel to High Priestess MacDonnell in Western Plaguelands.",
                    x = 0.4297,
                    y = 0.845,
                },
            },
            sourceActionID = "turnin-5223-return-to-chillwind-camp",
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceStep = 69,
            text = "Turn in Return to Chillwind Camp to High Priestess MacDonnell.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5225, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5225-target-gahrron-s-withering",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5223 } } },
            route = {
                {
                    label = "High Priestess MacDonnell",
                    mapID = 1422,
                    offMapText = "Travel to High Priestess MacDonnell in Western Plaguelands.",
                    x = 0.4297,
                    y = 0.845,
                },
            },
            sourceStep = 69,
            text = "Accept Target: Gahrron's Withering from High Priestess MacDonnell.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-5225-target-gahrron-s-withering",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5225, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5225, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5223, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5222, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5220, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5219, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 5217, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 5216, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 5215, state = "activeOrCompleted" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5537, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 55 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5537-skeletal-fragments",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5533 } } },
            route = {
                {
                    label = "Alchemist Arbington",
                    mapID = 1422,
                    offMapText = "Travel to Alchemist Arbington in Western Plaguelands.",
                    x = 0.4266,
                    y = 0.8377,
                },
            },
            sourceStep = 70,
            text = "Accept Skeletal Fragments from Alchemist Arbington.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-5537-skeletal-fragments",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5537, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5537, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5533, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5097, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5903, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5903-a-plague-upon-thee",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5903-1-large-termite-mound",
            },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-5903-a-plague-upon-thee",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Nathaniel Dumah",
                    mapID = 1422,
                    offMapText = "Travel to Nathaniel Dumah in Western Plaguelands.",
                    x = 0.4342,
                    y = 0.8484,
                },
            },
            sourceActionID = "turnin-5903-a-plague-upon-thee",
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceStep = 72,
            text = "Turn in A Plague Upon Thee to Nathaniel Dumah.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5904, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5904-a-plague-upon-thee",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5903 } } },
            route = {
                {
                    label = "Nathaniel Dumah",
                    mapID = 1422,
                    offMapText = "Travel to Nathaniel Dumah in Western Plaguelands.",
                    x = 0.4342,
                    y = 0.8484,
                },
            },
            sourceStep = 72,
            text = "Accept A Plague Upon Thee from Nathaniel Dumah.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-5904-a-plague-upon-thee",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5904, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5904, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 5903, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
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
            sourceActionID = "turnin-5152-auntie-marlene",
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceStep = 74,
            text = "Turn in Auntie Marlene to Marlene Redpath.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
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
            complete = { questObjective = { count = 15, id = 5537, index = 1, text = "Skeletal Fragments" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 55 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5537-skeletal-fragments" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5537-1-skeletal-fragments",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5533 } } },
            route = {
                { label = "Skeletal Fragments", mapID = 1422, offMapText = "Travel to Skeletal Fragments.", x = 0.508, y = 0.794 },
            },
            sourceStep = 76,
            text = "Collect 15 Skeletal Fragments.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-5537-1-skeletal-fragments",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5537, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5537, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5533, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5097, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
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
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-5153-a-strange-historian",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5152 } } },
            route = {
                { label = "Chromie", mapID = 1422, offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945, y = 0.6676 },
            },
            sourceActionID = "turnin-5153-a-strange-historian",
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceStep = 77,
            text = "Turn in A Strange Historian to Chromie.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
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
            complete = { quest = { id = 4971, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 53 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-4971-a-matter-of-time",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Chromie", mapID = 1422, offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945, y = 0.6676 },
            },
            sourceStep = 77,
            text = "Accept A Matter of Time from Chromie.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-4971-a-matter-of-time",
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
            complete = { questObjective = { count = 10, id = 4971, index = 1 } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 53 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-4971-a-matter-of-time" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-4971-1-temporal-displacer",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Temporal Displacer", mapID = 1422, offMapText = "Travel to Temporal Displacer.", x = 0.45, y = 0.63 },
            },
            sourceStep = 80,
            text = "Use the Temporal Displacer beside the ruined silos in Andorhal to reveal Temporal Parasites. Kill 10 Temporal Parasites.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-4971-1-temporal-displacer",
        },
        {
            complete = { quest = { id = 5154, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5154-the-annals-of-darrowshire",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5154-1-annals-of-darrowshire",
            },
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
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-5154-the-annals-of-darrowshire",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5153 } } },
            route = {
                { label = "Chromie", mapID = 1422, offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945, y = 0.6676 },
            },
            sourceActionID = "turnin-5154-the-annals-of-darrowshire",
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceStep = 81,
            text = "Turn in The Annals of Darrowshire to Chromie.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 4971, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 53 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-4971-a-matter-of-time",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-4971-1-temporal-displacer",
            },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-4971-a-matter-of-time",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Chromie", mapID = 1422, offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945, y = 0.6676 },
            },
            sourceActionID = "turnin-4971-a-matter-of-time",
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceStep = 81,
            text = "Turn in A Matter of Time to Chromie.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 4972, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 53 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-4972-counting-out-time",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4971 } } },
            route = {
                { label = "Chromie", mapID = 1422, offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945, y = 0.6676 },
            },
            sourceStep = 81,
            text = "Accept Counting Out Time from Chromie.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-4972-counting-out-time",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4972, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4972, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 4971, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 5, id = 4972, index = 1, text = "Andorhal Watch" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 53 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-4972-counting-out-time" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-4972-1-andorhal-watch",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4971 } } },
            route = { { label = "Andorhal Watch", mapID = 1422, offMapText = "Travel to Andorhal Watch.", x = 0.423, y = 0.688 } },
            sourceStep = 83,
            text = "Collect 5 Andorhal Watch.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-4972-1-andorhal-watch",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4972, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4972, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 4971, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 4972, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 53 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-4972-counting-out-time",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-4972-1-andorhal-watch",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4972, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4972, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 4971, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-4972-counting-out-time",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4971 } } },
            route = {
                { label = "Chromie", mapID = 1422, offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945, y = 0.6676 },
            },
            sourceActionID = "turnin-4972-counting-out-time",
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceStep = 84,
            text = "Turn in Counting Out Time to Chromie.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5537, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 55 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5537-skeletal-fragments",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5537-1-skeletal-fragments",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5537, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5537, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5533, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5097, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-5537-skeletal-fragments",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5533 } } },
            route = {
                {
                    label = "Alchemist Arbington",
                    mapID = 1422,
                    offMapText = "Travel to Alchemist Arbington in Western Plaguelands.",
                    x = 0.4266,
                    y = 0.8377,
                },
            },
            sourceActionID = "turnin-5537-skeletal-fragments",
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceStep = 85,
            text = "Turn in Skeletal Fragments to Alchemist Arbington.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 1, id = 5225, index = 1, text = "Cauldron Lord Soulwrath" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5225-target-gahrron-s-withering" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5225-1-cauldron-lord-soulwrath",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5223 } } },
            route = {
                {
                    label = "Cauldron Lord Soulwrath",
                    mapID = 1422,
                    offMapText = "Travel to Cauldron Lord Soulwrath.",
                    x = 0.6278,
                    y = 0.5875,
                },
            },
            sourceStep = 91,
            text = "Collect 1 Gahrron's Withering Cauldron Key.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-5225-1-cauldron-lord-soulwrath",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5225, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5225, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5223, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5222, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5220, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5219, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 5217, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 5216, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 5215, state = "activeOrCompleted" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5225, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5225-target-gahrron-s-withering",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-5225-1-cauldron-lord-soulwrath",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5225, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5225, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5223, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5222, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5220, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5219, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 5217, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 5216, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 5215, state = "activeOrCompleted" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-5225-target-gahrron-s-withering",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5223 } } },
            route = {
                {
                    label = "Target: Gahrron's Withering",
                    mapID = 1422,
                    offMapText = "Travel to Target: Gahrron's Withering.",
                    x = 0.6256,
                    y = 0.5857,
                },
            },
            sourceActionID = "turnin-5225-target-gahrron-s-withering",
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceStep = 92,
            text = "Turn in Target: Gahrron's Withering.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5226, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5226-return-to-chillwind-point",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5225 } } },
            route = {
                { label = "Return to Chillwind Point", mapID = 1422, offMapText = "Travel to Chillwind Point.", x = 0.6256, y = 0.5857 },
            },
            sourceStep = 92,
            text = "Accept Return to Chillwind Point.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-5226-return-to-chillwind-point",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5226, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5226, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5225, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5223, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5222, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5220, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 5219, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 5217, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 5216, state = "activeOrCompleted" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 5215, state = "activeOrCompleted" } },
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    all = {
                                                                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                            any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 8, id = 4985, index = 1, text = "Diseased Grizzly" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 51 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-4985-the-wildlife-suffers-too" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-4985-1-diseased-grizzly",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4984 } } },
            route = {
                { label = "Diseased Grizzly", mapID = 1422, offMapText = "Travel to Diseased Grizzly.", x = 0.598, y = 0.602 },
            },
            sourceStep = 93,
            text = "Kill 8 Diseased Grizzly.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-4985-1-diseased-grizzly",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4985, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4985, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 4984, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 4985, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 51 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-4985-the-wildlife-suffers-too",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-4985-1-diseased-grizzly",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4985, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4985, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 4984, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-4985-the-wildlife-suffers-too",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4984 } } },
            route = {
                {
                    label = "Mulgris Deepriver",
                    mapID = 1422,
                    offMapText = "Travel to Mulgris Deepriver in Western Plaguelands.",
                    x = 0.5372,
                    y = 0.6467,
                },
            },
            sourceActionID = "turnin-4985-the-wildlife-suffers-too",
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceStep = 94,
            text = "Turn in The Wildlife Suffers Too to Mulgris Deepriver.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 4986, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 51 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-4986-glyphed-oaken-branch",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4985 } } },
            route = {
                {
                    label = "Mulgris Deepriver",
                    mapID = 1422,
                    offMapText = "Travel to Mulgris Deepriver in Western Plaguelands.",
                    x = 0.5372,
                    y = 0.6467,
                },
            },
            sourceStep = 94,
            text = "Accept Glyphed Oaken Branch from Mulgris Deepriver.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-4986-glyphed-oaken-branch",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4986, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4986, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4985, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 4984, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5904, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5904-a-plague-upon-thee" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5904, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5904, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 5903, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-5904-a-plague-upon-thee",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5903 } } },
            route = {
                { label = "A Plague Upon Thee", mapID = 1422, offMapText = "Travel to A Plague Upon Thee.", x = 0.4835, y = 0.32 },
            },
            sourceActionID = "turnin-5904-a-plague-upon-thee",
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceStep = 95,
            text = "Turn in A Plague Upon Thee.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 6389, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-6389-a-plague-upon-thee",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5904 } } },
            route = {
                { label = "A Plague Upon Thee", mapID = 1422, offMapText = "Travel to A Plague Upon Thee.", x = 0.4835, y = 0.32 },
            },
            sourceStep = 95,
            text = "Accept A Plague Upon Thee.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-6389-a-plague-upon-thee",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6389, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6389, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5904, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 5903, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 6004, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-6004-unfinished-business",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Kirsta Deepshadow",
                    mapID = 1422,
                    offMapText = "Travel to Kirsta Deepshadow in Western Plaguelands.",
                    x = 0.5192,
                    y = 0.2806,
                },
            },
            sourceStep = 96,
            text = "Accept Unfinished Business from Kirsta Deepshadow.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-6004-unfinished-business",
        },
        {
            complete = { questObjective = { count = 2, id = 6004, index = 3, text = "Scarlet Mage" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-6004-unfinished-business" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-6004-3-scarlet-mage",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Scarlet Mage", mapID = 1422, offMapText = "Travel to Scarlet Mage.", x = 0.5047, y = 0.4112 } },
            sourceStep = 97,
            text = "Kill 2 Scarlet Mage.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-6004-3-scarlet-mage",
        },
        {
            complete = { questObjective = { count = 2, id = 6004, index = 4, text = "Scarlet Knight" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-6004-unfinished-business" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-6004-4-scarlet-knight",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Scarlet Knight", mapID = 1422, offMapText = "Travel to Scarlet Knight.", x = 0.5047, y = 0.4112 } },
            sourceStep = 97,
            text = "Kill 2 Scarlet Knight.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-6004-4-scarlet-knight",
        },
        {
            complete = { questObjective = { count = 2, id = 6004, index = 1, text = "Scarlet Medic" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-6004-unfinished-business" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-6004-1-scarlet-medic",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Scarlet Medic", mapID = 1422, offMapText = "Travel to Scarlet Medic.", x = 0.516, y = 0.446 } },
            sourceStep = 98,
            text = "Kill 2 Scarlet Medic.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-6004-1-scarlet-medic",
        },
        {
            complete = { questObjective = { count = 2, id = 6004, index = 2, text = "Scarlet Hunter" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-6004-unfinished-business" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-6004-2-scarlet-hunter",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Scarlet Hunter", mapID = 1422, offMapText = "Travel to Scarlet Hunter.", x = 0.516, y = 0.446 } },
            sourceStep = 98,
            text = "Kill 2 Scarlet Hunter.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-6004-2-scarlet-hunter",
        },
        {
            complete = { quest = { id = 6004, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-6004-unfinished-business",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-6004-3-scarlet-mage",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-6004-4-scarlet-knight",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-6004-1-scarlet-medic",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-6004-2-scarlet-hunter",
            },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-6004-unfinished-business",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Kirsta Deepshadow",
                    mapID = 1422,
                    offMapText = "Travel to Kirsta Deepshadow in Western Plaguelands.",
                    x = 0.5192,
                    y = 0.2806,
                },
            },
            sourceActionID = "turnin-6004-unfinished-business",
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceStep = 99,
            text = "Turn in Unfinished Business to Kirsta Deepshadow.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 6023, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-6023-unfinished-business",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6004 } } },
            route = {
                {
                    label = "Kirsta Deepshadow",
                    mapID = 1422,
                    offMapText = "Travel to Kirsta Deepshadow in Western Plaguelands.",
                    x = 0.5192,
                    y = 0.2806,
                },
            },
            sourceStep = 99,
            text = "Accept Unfinished Business from Kirsta Deepshadow.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-6023-unfinished-business",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6023, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6023, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 6004, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { id = 6023, index = 1, text = "Huntsman Radley" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-6023-unfinished-business" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-6023-1-huntsman-radley",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6004 } } },
            route = {
                { label = "Huntsman Radley", mapID = 1422, offMapText = "Travel to Huntsman Radley.", x = 0.5783, y = 0.3609 },
            },
            sourceStep = 100,
            text = "Kill Huntsman Radley.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-6023-1-huntsman-radley",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6023, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6023, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 6004, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { id = 6023, index = 2, text = "Cavalier Durgen" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-6023-unfinished-business" },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-6023-2-cavalier-durgen",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6004 } } },
            route = {
                { label = "Cavalier Durgen", mapID = 1422, offMapText = "Travel to Cavalier Durgen.", x = 0.5471, y = 0.2365 },
            },
            sourceStep = 101,
            text = "Kill Cavalier Durgen.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "objective-6023-2-cavalier-durgen",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6023, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6023, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 6004, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 6023, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-6023-unfinished-business",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-6023-1-huntsman-radley",
                "alliance-leveling-era-alliance-western-and-eastern-plaguelands-objective-6023-2-cavalier-durgen",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6023, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6023, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 6004, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-6023-unfinished-business",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6004 } } },
            route = {
                {
                    label = "Kirsta Deepshadow",
                    mapID = 1422,
                    offMapText = "Travel to Kirsta Deepshadow in Western Plaguelands.",
                    x = 0.5192,
                    y = 0.2806,
                },
            },
            sourceActionID = "turnin-6023-unfinished-business",
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceStep = 102,
            text = "Turn in Unfinished Business to Kirsta Deepshadow.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 6389, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 48 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-6389-a-plague-upon-thee" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6389, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6389, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5904, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 5903, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-6389-a-plague-upon-thee",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5904 } } },
            route = {
                {
                    label = "Nathaniel Dumah",
                    mapID = 1422,
                    offMapText = "Travel to Nathaniel Dumah in Western Plaguelands.",
                    x = 0.4342,
                    y = 0.8483,
                },
            },
            sourceActionID = "turnin-6389-a-plague-upon-thee",
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceStep = 104,
            text = "Turn in A Plague Upon Thee to Nathaniel Dumah.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5226, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5226-return-to-chillwind-point" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5226, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5226, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5225, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5223, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5222, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5220, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 5219, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 5217, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 5216, state = "activeOrCompleted" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 5215, state = "activeOrCompleted" } },
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    all = {
                                                                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                            any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-turnin-5226-return-to-chillwind-camp",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5225 } } },
            route = {
                {
                    label = "High Priestess MacDonnell",
                    mapID = 1422,
                    offMapText = "Travel to High Priestess MacDonnell in Western Plaguelands.",
                    x = 0.4297,
                    y = 0.845,
                },
            },
            sourceActionID = "turnin-5226-return-to-chillwind-camp",
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceStep = 105,
            text = "Turn in Return to Chillwind Camp to High Priestess MacDonnell.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5237, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-western-and-eastern-plaguelands-accept-5237-mission-accomplished",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5226 } } },
            route = {
                {
                    label = "Commander Ashlam Valorfist",
                    mapID = 1422,
                    offMapText = "Travel to Commander Ashlam Valorfist in Western Plaguelands.",
                    x = 0.427,
                    y = 0.8403,
                },
            },
            sourceStep = 106,
            text = "Accept Mission Accomplished! from Commander Ashlam Valorfist.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-western-and-eastern-plaguelands",
            sourceActionID = "accept-5237-mission-accomplished",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5237, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5237, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5226, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5225, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5223, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5222, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 5220, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 5219, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 5217, state = "activeOrCompleted" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 5216, state = "activeOrCompleted" } },
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    all = {
                                                                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                                                        { quest = { id = 5215, state = "activeOrCompleted" } },
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                    any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
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
            complete = { quest = { id = 4986, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 51 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4986, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4986, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4985, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 4984, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-winterspring-turnin-4986-glyphed-oaken-branch",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4985 } } },
            route = {
                {
                    label = "Mathrengyl Bearwalker",
                    mapID = 1457,
                    offMapText = "Travel to Mathrengyl Bearwalker in Darnassus.",
                    x = 0.3538,
                    y = 0.0843,
                },
            },
            sourceActionID = "turnin-4986-glyphed-oaken-branch",
            sourceGuide = "leveling-era-alliance-winterspring",
            sourceStep = 26,
            text = "Turn in Glyphed Oaken Branch to Mathrengyl Bearwalker.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 211,
            complete = { level = { min = 50 } },
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 211, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 211, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5097, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-211-level",
            kind = "note",
            requiredLevel = 50,
            text = "Reach level 50 before this visit.",
        },
        {
            complete = { quest = { id = 211, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = { "alliance-extra-211-level" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 211, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 211, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 5097, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        {
                                                                            any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 211, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 211, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 5097, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { race = { 1, 3, 4, 7 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 5092, state = "activeOrCompleted" } },
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
            id = "alliance-extra-211-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 5097 } } },
            route = {
                {
                    label = "Commander Ashlam Valorfist",
                    mapID = 1422,
                    offMapText = "Travel to Commander Ashlam Valorfist in Western Plaguelands.",
                    x = 0.428,
                    y = 0.84,
                },
            },
            text = "Accept Alas, Andorhal from Commander Ashlam Valorfist.",
            useClientText = false,
        },
        {
            complete = { quest = { id = 211, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = { "alliance-extra-211-accept" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 211, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 211, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 5097, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        {
                                                                            any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 211, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 211, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 5097, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { race = { 1, 3, 4, 7 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 5092, state = "activeOrCompleted" } },
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
            id = "alliance-extra-211-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 5097 } } },
            route = {
                {
                    label = "Araj the Summoner",
                    mapID = 1422,
                    offMapText = "Travel to Araj the Summoner in Western Plaguelands.",
                    x = 0.456,
                    y = 0.692,
                },
            },
            text = "Defeat Araj the Summoner, then search Araj's Phylactery in Andorhal for Araj's Phylactery Shard. This is an elite. Bring a group.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 211, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 50 } } } },
            dependsOn = { "alliance-extra-211-objective" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 211, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 211, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 5097, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        {
                                                                            any = { { any = { { quest = { id = 5092, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 211, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 211, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 5097, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { race = { 1, 3, 4, 7 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 5092, state = "activeOrCompleted" } },
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
            id = "alliance-extra-211-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 5097 } } },
            route = {
                {
                    label = "Commander Ashlam Valorfist",
                    mapID = 1422,
                    offMapText = "Travel to Commander Ashlam Valorfist in Western Plaguelands.",
                    x = 0.428,
                    y = 0.84,
                },
            },
            text = "Turn in Alas, Andorhal to Commander Ashlam Valorfist.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
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
            alternativeQuests = { 5093, 5095 },
            checkpointQuest = 5094,
            complete = { level = { min = 50 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-level-before-accept-5094-a-call-to-arms-the-plaguelands",
            kind = "note",
            requiredLevel = 50,
            requiredQuests = {},
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "level-before-accept-5094-a-call-to-arms-the-plaguelands",
            dependsOn = {},
        },
        {
            alternativeQuests = { 5093, 5095 },
            complete = { quest = { id = 5094, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5094-a-call-to-arms-the-plaguelands",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Harbinger Balthazad",
                    mapID = 1458,
                    offMapText = "Travel to Harbinger Balthazad in Undercity.",
                    x = 0.634,
                    y = 0.44,
                },
            },
            sourceStep = 1,
            text = "Accept A Call to Arms: The Plaguelands! from Harbinger Balthazad.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5094-a-call-to-arms-the-plaguelands",
        },
        {
            alternativeQuests = { 5094, 5095 },
            complete = { quest = { id = 5093, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5093-verified-pickup",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Warcaller Gorlach", mapID = 1454, offMapText = "Travel to Warcaller Gorlach.", x = 0.466, y = 0.646 },
            },
            text = "Speak with Warcaller Gorlach to accept A Call to Arms: The Plaguelands!.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5093-verified-pickup",
        },
        {
            alternativeQuests = { 5094, 5095 },
            complete = { quest = { id = 5093, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5093-verified-pickup" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5093-a-call-to-arms-the-plaguelands",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "High Executor Derrington",
                    mapID = 1420,
                    offMapText = "Travel to High Executor Derrington in Tirisfal Glades.",
                    x = 0.8313,
                    y = 0.6893,
                },
            },
            sourceActionID = "turnin-5093-a-call-to-arms-the-plaguelands",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 3,
            text = "Turn in A Call to Arms: The Plaguelands! to High Executor Derrington.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            alternativeQuests = { 5093, 5095 },
            complete = { quest = { id = 5094, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5094-a-call-to-arms-the-plaguelands" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5094-a-call-to-arms-the-plaguelands",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "High Executor Derrington",
                    mapID = 1420,
                    offMapText = "Travel to High Executor Derrington in Tirisfal Glades.",
                    x = 0.8313,
                    y = 0.6893,
                },
            },
            sourceActionID = "turnin-5094-a-call-to-arms-the-plaguelands",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 3,
            text = "Turn in A Call to Arms: The Plaguelands! to High Executor Derrington.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            alternativeQuests = { 5093, 5094 },
            complete = { quest = { id = 5095, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5095-verified-pickup",
            kind = "accept",
            requiredQuests = {},
            text = "Accept A Call to Arms: The Plaguelands! from Bluff Runner Windstrider in Thunder Bluff.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5095-verified-pickup",
        },
        {
            alternativeQuests = { 5093, 5094 },
            complete = { quest = { id = 5095, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5095-verified-pickup" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5095-a-call-to-arms-the-plaguelands",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "High Executor Derrington",
                    mapID = 1420,
                    offMapText = "Travel to High Executor Derrington in Tirisfal Glades.",
                    x = 0.8313,
                    y = 0.6893,
                },
            },
            sourceActionID = "turnin-5095-a-call-to-arms-the-plaguelands",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 3,
            text = "Turn in A Call to Arms: The Plaguelands! to High Executor Derrington.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5096, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5096-scarlet-diversions",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "High Executor Derrington",
                    mapID = 1420,
                    offMapText = "Travel to High Executor Derrington in Tirisfal Glades.",
                    x = 0.8313,
                    y = 0.6893,
                },
            },
            sourceStep = 3,
            text = "Accept Scarlet Diversions from High Executor Derrington.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5096-scarlet-diversions",
        },
        {
            alternativeQuests = { 5401, 5503 },
            checkpointQuest = 5405,
            complete = { level = { min = 50 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-level-before-accept-5405-argent-dawn-commission",
            kind = "note",
            requiredLevel = 50,
            requiredQuests = {},
            text = "Reach level 50 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "level-before-accept-5405-argent-dawn-commission",
            dependsOn = {},
        },
        {
            alternativeQuests = { 5401, 5503 },
            complete = { quest = { id = 5405, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5405-argent-dawn-commission",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Argent Officer Garush",
                    mapID = 1420,
                    offMapText = "Travel to Argent Officer Garush in Tirisfal Glades.",
                    x = 0.8319,
                    y = 0.6845,
                },
            },
            sourceStep = 5,
            text = "Accept Argent Dawn Commission from Argent Officer Garush.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5405-argent-dawn-commission",
        },
        {
            complete = { questObjective = { id = 5096, index = 1, text = "Scourge Banner" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5096-scarlet-diversions" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5096-1-scourge-banner",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Scourge Banner", mapID = 1422, offMapText = "Travel to Scourge Banner.", x = 0.4068, y = 0.5198 } },
            text = "Use Scourge Banner.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-5096-1-scourge-banner",
        },
        {
            complete = { quest = { id = 5096, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5096-scarlet-diversions",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5096-1-scourge-banner",
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5096-scarlet-diversions",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "High Executor Derrington",
                    mapID = 1420,
                    offMapText = "Travel to High Executor Derrington in Tirisfal Glades.",
                    x = 0.8313,
                    y = 0.6893,
                },
            },
            sourceActionID = "turnin-5096-scarlet-diversions",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 8,
            text = "Turn in Scarlet Diversions to High Executor Derrington.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5098, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5098-all-along-the-watchtowers",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5096 } } },
            route = {
                {
                    label = "High Executor Derrington",
                    mapID = 1420,
                    offMapText = "Travel to High Executor Derrington in Tirisfal Glades.",
                    x = 0.8313,
                    y = 0.6893,
                },
            },
            sourceStep = 8,
            text = "Accept All Along the Watchtowers from High Executor Derrington.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5098-all-along-the-watchtowers",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5098, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5098, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5228, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5228-the-scourge-cauldrons",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5096 } } },
            route = {
                {
                    label = "High Executor Derrington",
                    mapID = 1420,
                    offMapText = "Travel to High Executor Derrington in Tirisfal Glades.",
                    x = 0.8313,
                    y = 0.6893,
                },
            },
            sourceStep = 8,
            text = "Accept The Scourge Cauldrons from High Executor Derrington.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5228-the-scourge-cauldrons",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5228, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5228, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5228, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5228-the-scourge-cauldrons" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5228, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5228, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5228-the-scourge-cauldrons",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5096 } } },
            route = {
                {
                    label = "Shadow Priestess Vandis",
                    mapID = 1420,
                    offMapText = "Travel to Shadow Priestess Vandis in Tirisfal Glades.",
                    x = 0.8303,
                    y = 0.7191,
                },
            },
            sourceActionID = "turnin-5228-the-scourge-cauldrons",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 10,
            text = "Turn in The Scourge Cauldrons to Shadow Priestess Vandis.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5229, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5229-target-felstone-field",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5228 } } },
            route = {
                {
                    label = "Shadow Priestess Vandis",
                    mapID = 1420,
                    offMapText = "Travel to Shadow Priestess Vandis in Tirisfal Glades.",
                    x = 0.8303,
                    y = 0.7191,
                },
            },
            sourceStep = 10,
            text = "Accept Target: Felstone Field from Shadow Priestess Vandis.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5229-target-felstone-field",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5229, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5229, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5228, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 5229, index = 1, text = "Cauldron Lord Bilemaw" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5229-target-felstone-field" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5229-1-cauldron-lord-bilemaw",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5228 } } },
            route = {
                {
                    label = "Cauldron Lord Bilemaw",
                    mapID = 1422,
                    offMapText = "Travel to Cauldron Lord Bilemaw.",
                    x = 0.3703,
                    y = 0.5711,
                },
            },
            sourceStep = 11,
            text = "Collect 1 Felstone Field Cauldron Key.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-5229-1-cauldron-lord-bilemaw",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5229, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5229, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5228, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5229, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5229-target-felstone-field",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5229-1-cauldron-lord-bilemaw",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5229, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5229, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5228, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5229-target-felstone-field",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5228 } } },
            route = {
                {
                    label = "Target: Felstone Field",
                    mapID = 1422,
                    offMapText = "Travel to Target: Felstone Field.",
                    x = 0.3719,
                    y = 0.5687,
                },
            },
            sourceActionID = "turnin-5229-target-felstone-field",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 12,
            text = "Turn in Target: Felstone Field.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5230, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5230-return-to-the-bulwark",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5229 } } },
            route = {
                { label = "Return to the Bulwark", mapID = 1422, offMapText = "Travel to the Bulwark.", x = 0.3719, y = 0.5687 },
            },
            sourceStep = 12,
            text = "Accept Return to the Bulwark.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5230-return-to-the-bulwark",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5230, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5230, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5229, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5228, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5021, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5021-better-late-than-never",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Janice Felstone",
                    mapID = 1422,
                    offMapText = "Travel to Janice Felstone in Western Plaguelands.",
                    x = 0.384,
                    y = 0.5405,
                },
            },
            sourceStep = 13,
            text = "Accept Better Late Than Never from Janice Felstone.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5021-better-late-than-never",
        },
        {
            complete = { quest = { id = 5021, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5021-better-late-than-never" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5021-better-late-than-never",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Better Late Than Never",
                    mapID = 1422,
                    offMapText = "Travel to Better Late Than Never.",
                    x = 0.3873,
                    y = 0.5524,
                },
            },
            sourceActionID = "turnin-5021-better-late-than-never",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 14,
            text = "Turn in Better Late Than Never.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5023, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5023-better-late-than-never",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5021 } } },
            route = {
                {
                    label = "Better Late Than Never",
                    mapID = 1422,
                    offMapText = "Travel to Better Late Than Never.",
                    x = 0.3873,
                    y = 0.5524,
                },
            },
            sourceStep = 14,
            text = "Accept Better Late Than Never.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5023-better-late-than-never",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5023, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5023, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 5021, state = "activeOrCompleted" } }, { all = {} } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5230, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5230-return-to-the-bulwark" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5230, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5230, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5229, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5228, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5230-return-to-the-bulwark",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5229 } } },
            route = {
                {
                    label = "Shadow Priestess Vandis",
                    mapID = 1420,
                    offMapText = "Travel to Shadow Priestess Vandis in Tirisfal Glades.",
                    x = 0.8304,
                    y = 0.7191,
                },
            },
            sourceActionID = "turnin-5230-return-to-the-bulwark",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 15,
            text = "Turn in Return to the Bulwark to Shadow Priestess Vandis.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5231, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5231-target-dalson-s-tears",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5230 } } },
            route = {
                {
                    label = "Shadow Priestess Vandis",
                    mapID = 1420,
                    offMapText = "Travel to Shadow Priestess Vandis in Tirisfal Glades.",
                    x = 0.8304,
                    y = 0.7191,
                },
            },
            sourceStep = 15,
            text = "Accept Target: Dalson's Tears from Shadow Priestess Vandis.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5231-target-dalson-s-tears",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5231, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5231, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5230, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5229, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5228, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 5231, index = 1, text = "Cauldron Lord Malvinious" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5231-target-dalson-s-tears" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5231-1-cauldron-lord-malvinious",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5230 } } },
            route = {
                {
                    label = "Cauldron Lord Malvinious",
                    mapID = 1422,
                    offMapText = "Travel to Cauldron Lord Malvinious.",
                    x = 0.4618,
                    y = 0.5238,
                },
            },
            sourceStep = 16,
            text = "Collect 1 Dalson's Tears Cauldron Key.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-5231-1-cauldron-lord-malvinious",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5231, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5231, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5230, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5229, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5228, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5231, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5231-target-dalson-s-tears",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5231-1-cauldron-lord-malvinious",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5231, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5231, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5230, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5229, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5228, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5231-target-dalson-s-tears",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5230 } } },
            route = {
                {
                    label = "Target: Dalson's Tears",
                    mapID = 1422,
                    offMapText = "Travel to Target: Dalson's Tears.",
                    x = 0.4618,
                    y = 0.5202,
                },
            },
            sourceActionID = "turnin-5231-target-dalson-s-tears",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 17,
            text = "Turn in Target: Dalson's Tears.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5232, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5232-return-to-the-bulwark",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5231 } } },
            route = {
                { label = "Return to the Bulwark", mapID = 1422, offMapText = "Travel to the Bulwark.", x = 0.4618, y = 0.5202 },
            },
            sourceStep = 17,
            text = "Accept Return to the Bulwark.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5232-return-to-the-bulwark",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5232, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5232, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5231, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5230, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5229, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5228, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 5058,
            complete = { level = { min = 52 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-level-before-accept-5058-mrs-dalson-s-diary",
            kind = "note",
            requiredLevel = 52,
            requiredQuests = {},
            text = "Reach level 52 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "level-before-accept-5058-mrs-dalson-s-diary",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 5058, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 52 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5058-mrs-dalson-s-diary",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Mrs. Dalson's Diary", mapID = 1422, offMapText = "Travel to Mrs. Dalson's Diary.", x = 0.4779, y = 0.5067 },
            },
            sourceStep = 18,
            text = "Accept Mrs. Dalson's Diary.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5058-mrs-dalson-s-diary",
        },
        {
            complete = { quest = { id = 5058, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 52 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5058-mrs-dalson-s-diary" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5058-mrs-dalson-s-diary",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Mrs. Dalson's Diary",
                    mapID = 1422,
                    offMapText = "Travel to Mrs. Dalson's Diary at Dalson's Tears.",
                    x = 0.4779,
                    y = 0.5067,
                },
            },
            sourceActionID = "turnin-5058-mrs-dalson-s-diary",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 18,
            text = "Finish reading Mrs. Dalson's Diary.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5060, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 52 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5060-locked-away",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Locked Away", mapID = 1422, offMapText = "Travel to Locked Away.", x = 0.4737, y = 0.4965 } },
            sourceStep = 21,
            text = "Accept Locked Away.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5060-locked-away",
        },
        {
            complete = { quest = { id = 5060, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 52 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5060-locked-away" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5060-locked-away",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Locked Cabinet",
                    mapID = 1422,
                    offMapText = "Travel to Locked Cabinet at Dalson's Tears.",
                    x = 0.4737,
                    y = 0.4965,
                },
            },
            sourceActionID = "turnin-5060-locked-away",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 21,
            text = "Complete Locked Away at the Locked Cabinet.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 4971,
            complete = { level = { min = 53 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-level-before-accept-4971-a-matter-of-time",
            kind = "note",
            requiredLevel = 53,
            requiredQuests = {},
            text = "Reach level 53 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "level-before-accept-4971-a-matter-of-time",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 4971, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 53 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-4971-a-matter-of-time",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Chromie", mapID = 1422, offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945, y = 0.6676 },
            },
            sourceStep = 22,
            text = "Accept A Matter of Time from Chromie.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-4971-a-matter-of-time",
        },
        {
            complete = { questObjective = { id = 5098, index = 1, text = "Beacon Torch" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5098-all-along-the-watchtowers" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5098-1-beacon-torch",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5096 } } },
            route = { { label = "Beacon Torch", mapID = 1422, offMapText = "Travel to Beacon Torch.", x = 0.4013, y = 0.7152 } },
            text = "Use Beacon Torch.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-5098-1-beacon-torch",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5098, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5098, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { id = 5098, index = 4, text = "Beacon Torch" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5098-all-along-the-watchtowers" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5098-4-beacon-torch",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5096 } } },
            route = { { label = "Beacon Torch", mapID = 1422, offMapText = "Travel to Beacon Torch.", x = 0.467, y = 0.711 } },
            text = "Use Beacon Torch.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-5098-4-beacon-torch",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5098, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5098, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 4971, index = 1 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 53 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-4971-a-matter-of-time" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-4971-1-temporal-displacer",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Temporal Displacer", mapID = 1422, offMapText = "Travel to Temporal Displacer.", x = 0.45, y = 0.63 },
            },
            sourceStep = 25,
            text = "Use the Temporal Displacer beside the ruined silos in Andorhal to reveal Temporal Parasites. Kill 10 Temporal Parasites.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-4971-1-temporal-displacer",
        },
        {
            complete = { questObjective = { id = 5098, index = 3, text = "Beacon Torch" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5098-all-along-the-watchtowers" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5098-3-beacon-torch",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5096 } } },
            route = { { label = "Beacon Torch", mapID = 1422, offMapText = "Travel to Beacon Torch.", x = 0.4422, y = 0.6337 } },
            text = "Use Beacon Torch.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-5098-3-beacon-torch",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5098, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5098, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { id = 5098, index = 2, text = "Beacon Torch" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5098-all-along-the-watchtowers" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5098-2-beacon-torch",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5096 } } },
            route = { { label = "Beacon Torch", mapID = 1422, offMapText = "Travel to Beacon Torch.", x = 0.4244, y = 0.6627 } },
            text = "Use Beacon Torch.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-5098-2-beacon-torch",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5098, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5098, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 4971, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 53 } } } },
            dependsOn = {
                "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-4971-a-matter-of-time",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-4971-1-temporal-displacer",
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-4971-a-matter-of-time",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Chromie", mapID = 1422, offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945, y = 0.6676 },
            },
            sourceActionID = "turnin-4971-a-matter-of-time",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 28,
            text = "Turn in A Matter of Time to Chromie.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 4972, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 53 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-4972-counting-out-time",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4971 } } },
            route = {
                { label = "Chromie", mapID = 1422, offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945, y = 0.6676 },
            },
            sourceStep = 28,
            text = "Accept Counting Out Time from Chromie.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-4972-counting-out-time",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4972, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4972, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 4971, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 5, id = 4972, index = 1, text = "Andorhal Watch" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 53 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-4972-counting-out-time" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-4972-1-andorhal-watch",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4971 } } },
            route = { { label = "Andorhal Watch", mapID = 1422, offMapText = "Travel to Andorhal Watch.", x = 0.423, y = 0.688 } },
            sourceStep = 29,
            text = "Collect 5 Andorhal Watch.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-4972-1-andorhal-watch",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4972, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4972, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 4971, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5098, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5098-all-along-the-watchtowers",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5098-1-beacon-torch",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5098-4-beacon-torch",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5098-3-beacon-torch",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5098-2-beacon-torch",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5098, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5098, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5098-all-along-the-watchtowers",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5096 } } },
            route = {
                {
                    label = "High Executor Derrington",
                    mapID = 1420,
                    offMapText = "Travel to High Executor Derrington in Tirisfal Glades.",
                    x = 0.8313,
                    y = 0.6893,
                },
            },
            sourceActionID = "turnin-5098-all-along-the-watchtowers",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 30,
            text = "Turn in All Along the Watchtowers to High Executor Derrington.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 838,
            complete = { level = { min = 55 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-level-before-accept-838-scholomance",
            kind = "note",
            requiredLevel = 55,
            requiredQuests = {},
            text = "Reach level 55 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "level-before-accept-838-scholomance",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 838, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 838, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5098, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 838, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 55 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-838-scholomance",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5098 } } },
            route = {
                {
                    label = "High Executor Derrington",
                    mapID = 1420,
                    offMapText = "Travel to High Executor Derrington in Tirisfal Glades.",
                    x = 0.8313,
                    y = 0.6893,
                },
            },
            sourceStep = 30,
            text = "Accept Scholomance from High Executor Derrington.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-838-scholomance",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 838, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 838, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5098, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 838, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 55 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-838-scholomance" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 838, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 838, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5098, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-838-scholomance",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5098 } } },
            route = {
                {
                    label = "Apothecary Dithers",
                    mapID = 1420,
                    offMapText = "Travel to Apothecary Dithers in Tirisfal Glades.",
                    x = 0.8328,
                    y = 0.6923,
                },
            },
            sourceActionID = "turnin-838-scholomance",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 32,
            text = "Turn in Scholomance to Apothecary Dithers.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 964, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 55 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-964-skeletal-fragments",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 838 } } },
            route = {
                {
                    label = "Apothecary Dithers",
                    mapID = 1420,
                    offMapText = "Travel to Apothecary Dithers in Tirisfal Glades.",
                    x = 0.8328,
                    y = 0.6923,
                },
            },
            sourceStep = 32,
            text = "Accept Skeletal Fragments from Apothecary Dithers.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-964-skeletal-fragments",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 964, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 964, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 838, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5098, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5232, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5232-return-to-the-bulwark" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5232, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5232, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5231, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5230, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5229, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5228, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5232-return-to-the-bulwark",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5231 } } },
            route = {
                {
                    label = "Shadow Priestess Vandis",
                    mapID = 1420,
                    offMapText = "Travel to Shadow Priestess Vandis in Tirisfal Glades.",
                    x = 0.8304,
                    y = 0.7191,
                },
            },
            sourceActionID = "turnin-5232-return-to-the-bulwark",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 33,
            text = "Turn in Return to the Bulwark to Shadow Priestess Vandis.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5233, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5233-target-writhing-haunt",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5232 } } },
            route = {
                {
                    label = "Shadow Priestess Vandis",
                    mapID = 1420,
                    offMapText = "Travel to Shadow Priestess Vandis in Tirisfal Glades.",
                    x = 0.8304,
                    y = 0.7191,
                },
            },
            sourceStep = 33,
            text = "Accept Target: Writhing Haunt from Shadow Priestess Vandis.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5233-target-writhing-haunt",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5233, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5233, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5232, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5231, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5230, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5229, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 5228, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5901, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5901-a-plague-upon-thee",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Mickey Levine",
                    mapID = 1420,
                    offMapText = "Travel to Mickey Levine in Tirisfal Glades.",
                    x = 0.8329,
                    y = 0.7233,
                },
            },
            sourceStep = 34,
            text = "Accept A Plague Upon Thee from Mickey Levine.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5901-a-plague-upon-thee",
        },
        {
            complete = { questObjective = { count = 15, id = 964, index = 1, text = "Skeletal Sorcerer" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 55 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-964-skeletal-fragments" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-964-1-skeletal-sorcerer",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 838 } } },
            route = {
                { label = "Skeletal Sorcerer", mapID = 1422, offMapText = "Travel to Skeletal Sorcerer.", x = 0.362, y = 0.586 },
            },
            sourceStep = 35,
            text = "Collect 15 Skeletal Fragments.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-964-1-skeletal-sorcerer",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 964, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 964, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 838, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5098, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 5233, index = 1, text = "Cauldron Lord Razarch" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5233-target-writhing-haunt" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5233-1-cauldron-lord-razarch",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5232 } } },
            route = {
                {
                    label = "Cauldron Lord Razarch",
                    mapID = 1422,
                    offMapText = "Travel to Cauldron Lord Razarch.",
                    x = 0.5302,
                    y = 0.6606,
                },
            },
            sourceStep = 36,
            text = "Collect 1 Writhing Haunt Cauldron Key.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-5233-1-cauldron-lord-razarch",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5233, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5233, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5232, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5231, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5230, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5229, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 5228, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5233, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5233-target-writhing-haunt",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5233-1-cauldron-lord-razarch",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5233, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5233, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5232, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5231, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5230, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5229, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 5228, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5233-target-writhing-haunt",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5232 } } },
            route = {
                {
                    label = "Target: Writhing Haunt",
                    mapID = 1422,
                    offMapText = "Travel to Target: Writhing Haunt.",
                    x = 0.5302,
                    y = 0.6572,
                },
            },
            sourceActionID = "turnin-5233-target-writhing-haunt",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 37,
            text = "Turn in Target: Writhing Haunt.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5234, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5234-return-to-the-bulwark",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5233 } } },
            route = {
                { label = "Return to the Bulwark", mapID = 1422, offMapText = "Travel to the Bulwark.", x = 0.5302, y = 0.6572 },
            },
            sourceStep = 37,
            text = "Accept Return to the Bulwark.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5234-return-to-the-bulwark",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5234, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5234, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5233, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5232, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5231, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5230, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 5229, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 5228, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Horde" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 4984, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 51 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-4984-the-wildlife-suffers-too",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Mulgris Deepriver",
                    mapID = 1422,
                    offMapText = "Travel to Mulgris Deepriver in Western Plaguelands.",
                    x = 0.5372,
                    y = 0.6467,
                },
            },
            sourceStep = 38,
            text = "Accept The Wildlife Suffers Too from Mulgris Deepriver.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-4984-the-wildlife-suffers-too",
        },
        {
            complete = { quest = { id = 6004, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-6004-unfinished-business",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Kirsta Deepshadow",
                    mapID = 1422,
                    offMapText = "Travel to Kirsta Deepshadow in Western Plaguelands.",
                    x = 0.5192,
                    y = 0.2806,
                },
            },
            sourceStep = 39,
            text = "Accept Unfinished Business from Kirsta Deepshadow.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-6004-unfinished-business",
        },
        {
            complete = { questObjective = { count = 2, id = 6004, index = 3, text = "Scarlet Mage" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-6004-unfinished-business" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-6004-3-scarlet-mage",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Scarlet Mage", mapID = 1422, offMapText = "Travel to Scarlet Mage.", x = 0.5047, y = 0.4112 } },
            sourceStep = 40,
            text = "Kill 2 Scarlet Mage.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-6004-3-scarlet-mage",
        },
        {
            complete = { questObjective = { count = 2, id = 6004, index = 4, text = "Scarlet Knight" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-6004-unfinished-business" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-6004-4-scarlet-knight",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Scarlet Knight", mapID = 1422, offMapText = "Travel to Scarlet Knight.", x = 0.5047, y = 0.4112 } },
            sourceStep = 40,
            text = "Kill 2 Scarlet Knight.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-6004-4-scarlet-knight",
        },
        {
            complete = { questObjective = { count = 2, id = 6004, index = 1, text = "Scarlet Medic" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-6004-unfinished-business" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-6004-1-scarlet-medic",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Scarlet Medic", mapID = 1422, offMapText = "Travel to Scarlet Medic.", x = 0.516, y = 0.446 } },
            sourceStep = 41,
            text = "Kill 2 Scarlet Medic.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-6004-1-scarlet-medic",
        },
        {
            complete = { questObjective = { count = 2, id = 6004, index = 2, text = "Scarlet Hunter" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-6004-unfinished-business" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-6004-2-scarlet-hunter",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Scarlet Hunter", mapID = 1422, offMapText = "Travel to Scarlet Hunter.", x = 0.516, y = 0.446 } },
            sourceStep = 41,
            text = "Kill 2 Scarlet Hunter.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-6004-2-scarlet-hunter",
        },
        {
            complete = { quest = { id = 6004, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {
                "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-6004-unfinished-business",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-6004-3-scarlet-mage",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-6004-4-scarlet-knight",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-6004-1-scarlet-medic",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-6004-2-scarlet-hunter",
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-6004-unfinished-business",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Kirsta Deepshadow",
                    mapID = 1422,
                    offMapText = "Travel to Kirsta Deepshadow in Western Plaguelands.",
                    x = 0.5192,
                    y = 0.2806,
                },
            },
            sourceActionID = "turnin-6004-unfinished-business",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 42,
            text = "Turn in Unfinished Business to Kirsta Deepshadow.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 6023, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-6023-unfinished-business",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6004 } } },
            route = {
                {
                    label = "Kirsta Deepshadow",
                    mapID = 1422,
                    offMapText = "Travel to Kirsta Deepshadow in Western Plaguelands.",
                    x = 0.5192,
                    y = 0.2806,
                },
            },
            sourceStep = 42,
            text = "Accept Unfinished Business from Kirsta Deepshadow.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-6023-unfinished-business",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6023, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6023, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 6004, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { id = 6023, index = 1, text = "Huntsman Radley" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-6023-unfinished-business" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-6023-1-huntsman-radley",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6004 } } },
            route = {
                { label = "Huntsman Radley", mapID = 1422, offMapText = "Travel to Huntsman Radley.", x = 0.5783, y = 0.3609 },
            },
            sourceStep = 43,
            text = "Kill Huntsman Radley.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-6023-1-huntsman-radley",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6023, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6023, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 6004, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { id = 6023, index = 2, text = "Cavalier Durgen" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-6023-unfinished-business" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-6023-2-cavalier-durgen",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6004 } } },
            route = {
                { label = "Cavalier Durgen", mapID = 1422, offMapText = "Travel to Cavalier Durgen.", x = 0.5471, y = 0.2365 },
            },
            sourceStep = 44,
            text = "Kill Cavalier Durgen.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-6023-2-cavalier-durgen",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6023, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6023, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 6004, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 6023, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {
                "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-6023-unfinished-business",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-6023-1-huntsman-radley",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-6023-2-cavalier-durgen",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6023, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6023, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 6004, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-6023-unfinished-business",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6004 } } },
            route = {
                {
                    label = "Kirsta Deepshadow",
                    mapID = 1422,
                    offMapText = "Travel to Kirsta Deepshadow in Western Plaguelands.",
                    x = 0.5192,
                    y = 0.2806,
                },
            },
            sourceActionID = "turnin-6023-unfinished-business",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 45,
            text = "Turn in Unfinished Business to Kirsta Deepshadow.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 8, id = 4984, index = 1, text = "Diseased Wolf" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 51 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-4984-the-wildlife-suffers-too" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-4984-1-diseased-wolf",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Diseased Wolf", mapID = 1422, offMapText = "Travel to Diseased Wolf.", x = 0.468, y = 0.394 } },
            sourceStep = 46,
            text = "Kill 8 Diseased Wolf.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-4984-1-diseased-wolf",
        },
        {
            complete = { quest = { id = 4984, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 51 } } } },
            dependsOn = {
                "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-4984-the-wildlife-suffers-too",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-4984-1-diseased-wolf",
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-4984-the-wildlife-suffers-too",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Mulgris Deepriver",
                    mapID = 1422,
                    offMapText = "Travel to Mulgris Deepriver in Western Plaguelands.",
                    x = 0.5372,
                    y = 0.6467,
                },
            },
            sourceActionID = "turnin-4984-the-wildlife-suffers-too",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 47,
            text = "Turn in The Wildlife Suffers Too to Mulgris Deepriver.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 4985, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 51 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-4985-the-wildlife-suffers-too",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4984 } } },
            route = {
                {
                    label = "Mulgris Deepriver",
                    mapID = 1422,
                    offMapText = "Travel to Mulgris Deepriver in Western Plaguelands.",
                    x = 0.5372,
                    y = 0.6467,
                },
            },
            sourceStep = 47,
            text = "Accept The Wildlife Suffers Too from Mulgris Deepriver.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-4985-the-wildlife-suffers-too",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4985, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4985, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 4984, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
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
            sourceActionID = "turnin-5149-pamela-s-doll",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 55,
            text = "Turn in Pamela's Doll to Pamela Redpath.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
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
            complete = { questObjective = { count = 100, id = 5901, index = 1, text = "Large Termite Mound" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5901-a-plague-upon-thee" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5901-1-large-termite-mound",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Large Termite Mound", mapID = 1423, offMapText = "Travel to Large Termite Mound.", x = 0.459, y = 0.341 },
            },
            sourceStep = 66,
            text = "Collect 100 Plagueland Termites.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-5901-1-large-termite-mound",
        },
        {
            complete = { questObjective = { count = 8, id = 4985, index = 1, text = "Diseased Grizzly" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 51 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-4985-the-wildlife-suffers-too" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-4985-1-diseased-grizzly",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4984 } } },
            route = { { label = "Diseased Grizzly", mapID = 1422, offMapText = "Travel to Diseased Grizzly.", x = 0.664, y = 0.51 } },
            sourceStep = 78,
            text = "Kill 8 Diseased Grizzly.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-4985-1-diseased-grizzly",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4985, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4985, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 4984, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 4985, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 51 } } } },
            dependsOn = {
                "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-4985-the-wildlife-suffers-too",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-4985-1-diseased-grizzly",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4985, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4985, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 4984, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-4985-the-wildlife-suffers-too",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4984 } } },
            route = {
                {
                    label = "Mulgris Deepriver",
                    mapID = 1422,
                    offMapText = "Travel to Mulgris Deepriver in Western Plaguelands.",
                    x = 0.5372,
                    y = 0.6467,
                },
            },
            sourceActionID = "turnin-4985-the-wildlife-suffers-too",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 79,
            text = "Turn in The Wildlife Suffers Too to Mulgris Deepriver.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 4987, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 51 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-4987-glyphed-oaken-branch",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4985 } } },
            route = {
                {
                    label = "Mulgris Deepriver",
                    mapID = 1422,
                    offMapText = "Travel to Mulgris Deepriver in Western Plaguelands.",
                    x = 0.5372,
                    y = 0.6467,
                },
            },
            sourceStep = 79,
            text = "Accept Glyphed Oaken Branch from Mulgris Deepriver.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-4987-glyphed-oaken-branch",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4987, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4987, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4985, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 4984, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
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
            sourceActionID = "turnin-5152-auntie-marlene",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 80,
            text = "Turn in Auntie Marlene to Marlene Redpath.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
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
            complete = { quest = { id = 4972, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 53 } } } },
            dependsOn = {
                "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-4972-counting-out-time",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-4972-1-andorhal-watch",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4972, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4972, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 4971, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-4972-counting-out-time",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4971 } } },
            route = {
                { label = "Chromie", mapID = 1422, offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945, y = 0.6676 },
            },
            sourceActionID = "turnin-4972-counting-out-time",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 82,
            text = "Turn in Counting Out Time to Chromie.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5153, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {
                "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5153-a-strange-historian",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5153-1-joseph-s-wedding-ring",
            },
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
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5153-a-strange-historian",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5152 } } },
            route = {
                { label = "Chromie", mapID = 1422, offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945, y = 0.6676 },
            },
            sourceActionID = "turnin-5153-a-strange-historian",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 82,
            text = "Turn in A Strange Historian to Chromie.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
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
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5154-the-annals-of-darrowshire",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5153 } } },
            route = {
                { label = "Chromie", mapID = 1422, offMapText = "Travel to Chromie in Western Plaguelands.", x = 0.3945, y = 0.6676 },
            },
            sourceActionID = "turnin-5154-the-annals-of-darrowshire",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 85,
            text = "Turn in The Annals of Darrowshire to Chromie.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 964, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 55 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-964-skeletal-fragments",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-964-1-skeletal-sorcerer",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 964, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 964, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 838, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5098, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-964-skeletal-fragments",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 838 } } },
            route = {
                {
                    label = "Apothecary Dithers",
                    mapID = 1420,
                    offMapText = "Travel to Apothecary Dithers in Tirisfal Glades.",
                    x = 0.8328,
                    y = 0.6923,
                },
            },
            sourceActionID = "turnin-964-skeletal-fragments",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 87,
            text = "Turn in Skeletal Fragments to Apothecary Dithers.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5234, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5234-return-to-the-bulwark" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5234, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5234, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5233, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5232, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5231, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5230, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 5229, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 5228, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Horde" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5234-return-to-the-bulwark",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5233 } } },
            route = {
                {
                    label = "Shadow Priestess Vandis",
                    mapID = 1420,
                    offMapText = "Travel to Shadow Priestess Vandis in Tirisfal Glades.",
                    x = 0.8304,
                    y = 0.7191,
                },
            },
            sourceActionID = "turnin-5234-return-to-the-bulwark",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 88,
            text = "Turn in Return to the Bulwark to Shadow Priestess Vandis.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5235, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5235-target-gahrron-s-withering",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5234 } } },
            route = {
                {
                    label = "Shadow Priestess Vandis",
                    mapID = 1420,
                    offMapText = "Travel to Shadow Priestess Vandis in Tirisfal Glades.",
                    x = 0.8304,
                    y = 0.7191,
                },
            },
            sourceStep = 88,
            text = "Accept Target: Gahrron's Withering from Shadow Priestess Vandis.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5235-target-gahrron-s-withering",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5235, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5235, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5234, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5233, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5232, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5231, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 5230, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 5229, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Horde" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 5228, state = "activeOrCompleted" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5901, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5901-a-plague-upon-thee",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5901-1-large-termite-mound",
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5901-a-plague-upon-thee",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Mickey Levine",
                    mapID = 1420,
                    offMapText = "Travel to Mickey Levine in Tirisfal Glades.",
                    x = 0.8329,
                    y = 0.7233,
                },
            },
            sourceActionID = "turnin-5901-a-plague-upon-thee",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 89,
            text = "Turn in A Plague Upon Thee to Mickey Levine.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5902, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5902-a-plague-upon-thee",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5901 } } },
            route = {
                {
                    label = "Mickey Levine",
                    mapID = 1420,
                    offMapText = "Travel to Mickey Levine in Tirisfal Glades.",
                    x = 0.8329,
                    y = 0.7233,
                },
            },
            sourceStep = 89,
            text = "Accept A Plague Upon Thee from Mickey Levine.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5902-a-plague-upon-thee",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5902, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5902, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 5901, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5023, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5023-better-late-than-never" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5023, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5023, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 5021, state = "activeOrCompleted" } }, { all = {} } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5023-better-late-than-never",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5021 } } },
            route = {
                {
                    label = "Royal Overseer Bauhaus",
                    mapID = 1458,
                    offMapText = "Travel to Royal Overseer Bauhaus in Undercity.",
                    x = 0.6978,
                    y = 0.4315,
                },
            },
            sourceActionID = "turnin-5023-better-late-than-never",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 92,
            text = "Turn in Better Late Than Never to Royal Overseer Bauhaus.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5049, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5049, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5049, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { race = { 2, 5, 6, 8 } },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5023, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { item = { minCount = 1, name = "Janice's Parcel" } },
                                                                { faction = "Horde" },
                                                                { race = { 2, 5, 6, 8 } },
                                                                { any = { { any = { { quest = { id = 5021, state = "activeOrCompleted" } }, { all = {} } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5049-the-jeremiah-blues",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5023 } } },
            route = {
                {
                    label = "Royal Overseer Bauhaus",
                    mapID = 1458,
                    offMapText = "Travel to Royal Overseer Bauhaus in Undercity.",
                    x = 0.6978,
                    y = 0.4315,
                },
            },
            sourceActionID = "accept-5049-the-jeremiah-blues",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 92,
            text = "Accept The Jeremiah Blues from Royal Overseer Bauhaus.",
            useClientPin = false,
            useClientText = false,
        },
        {
            complete = { quest = { id = 5049, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5049-the-jeremiah-blues" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5049, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5049, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { race = { 2, 5, 6, 8 } },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5023, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { item = { minCount = 1, name = "Janice's Parcel" } },
                                                                { faction = "Horde" },
                                                                { race = { 2, 5, 6, 8 } },
                                                                { any = { { any = { { quest = { id = 5021, state = "activeOrCompleted" } }, { all = {} } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5049-the-jeremiah-blues",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5023 } } },
            route = {
                {
                    label = "Jeremiah Payson",
                    mapID = 1458,
                    offMapText = "Travel to Jeremiah Payson in Undercity.",
                    x = 0.676,
                    y = 0.4416,
                },
            },
            sourceActionID = "turnin-5049-the-jeremiah-blues",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 93,
            text = "Turn in The Jeremiah Blues to Jeremiah Payson.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5050, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5050, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5050, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                { quest = { id = 5048, state = "completed" } },
                                                {
                                                    any = {
                                                        { quest = { id = 5049, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                { race = { 2, 5, 6, 8 } },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5023, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { item = { minCount = 1, name = "Janice's Parcel" } },
                                                                                        { faction = "Horde" },
                                                                                        { race = { 2, 5, 6, 8 } },
                                                                                        { any = { { any = { { quest = { id = 5021, state = "activeOrCompleted" } }, { all = {} } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5050-good-luck-charm",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5048, 5049 } } },
            route = {
                {
                    label = "Jeremiah Payson",
                    mapID = 1458,
                    offMapText = "Travel to Jeremiah Payson in Undercity.",
                    x = 0.676,
                    y = 0.4416,
                },
            },
            sourceActionID = "accept-5050-good-luck-charm",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 93,
            text = "Accept Good Luck Charm from Jeremiah Payson.",
            unresolvedPrerequisites = { 5048 },
            useClientPin = false,
            useClientText = false,
        },
        {
            complete = { quest = { id = 5235, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5235-target-gahrron-s-withering" },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5235-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5234 } } },
            sourceStep = 104,
            text = "For Target: Gahrron's Withering: Go to Gahrron's Withering in Western Plaguelands to locate and defeat the Cauldron Lord present there, and use its key to gain access to the cauldron. You must have the Empty Gahrron's Withering Bottle with you to secure a sample of the poisons used inside the cauldron.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "objective-5235-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5235, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5235, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5234, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5233, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5232, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5231, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 5230, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 5229, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Horde" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 5228, state = "activeOrCompleted" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5235, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5235-target-gahrron-s-withering",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5235-quest-work",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5235, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5235, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5234, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5233, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5232, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5231, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 5230, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 5229, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Horde" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 5228, state = "activeOrCompleted" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5235-target-gahrron-s-withering",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5234 } } },
            route = {
                {
                    label = "Target: Gahrron's Withering",
                    mapID = 1422,
                    offMapText = "Travel to Target: Gahrron's Withering.",
                    x = 0.6256,
                    y = 0.5857,
                },
            },
            sourceActionID = "turnin-5235-target-gahrron-s-withering",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 104,
            text = "Turn in Target: Gahrron's Withering.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5236, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5236-return-to-the-bulwark",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5235 } } },
            route = {
                { label = "Return to the Bulwark", mapID = 1422, offMapText = "Travel to the Bulwark.", x = 0.6256, y = 0.5857 },
            },
            sourceStep = 104,
            text = "Accept Return to the Bulwark.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5236-return-to-the-bulwark",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5236, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5236, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5235, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5234, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5233, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5232, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 5231, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 5230, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Horde" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 5229, state = "activeOrCompleted" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 5228, state = "activeOrCompleted" } },
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    all = {
                                                                                                                                                                                                                                        { faction = "Horde" },
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                            any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5902, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5902-a-plague-upon-thee" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5902, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5902, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 5901, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5902-a-plague-upon-thee",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5901 } } },
            route = {
                { label = "A Plague Upon Thee", mapID = 1422, offMapText = "Travel to A Plague Upon Thee.", x = 0.4835, y = 0.32 },
            },
            sourceActionID = "turnin-5902-a-plague-upon-thee",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 105,
            text = "Turn in A Plague Upon Thee.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 6390, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-6390-a-plague-upon-thee",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5902 } } },
            route = {
                { label = "A Plague Upon Thee", mapID = 1422, offMapText = "Travel to A Plague Upon Thee.", x = 0.4835, y = 0.32 },
            },
            sourceStep = 105,
            text = "Accept A Plague Upon Thee.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-6390-a-plague-upon-thee",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6390, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6390, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5902, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 5901, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5050, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5050-good-luck-charm" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5050, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5050, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                { quest = { id = 5048, state = "completed" } },
                                                {
                                                    any = {
                                                        { quest = { id = 5049, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                { race = { 2, 5, 6, 8 } },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5023, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { item = { minCount = 1, name = "Janice's Parcel" } },
                                                                                        { faction = "Horde" },
                                                                                        { race = { 2, 5, 6, 8 } },
                                                                                        { any = { { any = { { quest = { id = 5021, state = "activeOrCompleted" } }, { all = {} } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5050-good-luck-charm",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5048, 5049 } } },
            route = {
                {
                    label = "Janice Felstone",
                    mapID = 1422,
                    offMapText = "Travel to Janice Felstone in Western Plaguelands.",
                    x = 0.384,
                    y = 0.5405,
                },
            },
            sourceActionID = "turnin-5050-good-luck-charm",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 106,
            text = "Turn in Good Luck Charm to Janice Felstone.",
            unresolvedPrerequisites = { 5048 },
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5051, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5051, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5051, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5050, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 5048, state = "completed" } },
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5049, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        { race = { 2, 5, 6, 8 } },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5023, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { item = { minCount = 1, name = "Janice's Parcel" } },
                                                                                                                { faction = "Horde" },
                                                                                                                { race = { 2, 5, 6, 8 } },
                                                                                                                { any = { { any = { { quest = { id = 5021, state = "activeOrCompleted" } }, { all = {} } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5051-two-halves-become-one",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5050 } } },
            route = {
                {
                    label = "Janice Felstone",
                    mapID = 1422,
                    offMapText = "Travel to Janice Felstone in Western Plaguelands.",
                    x = 0.384,
                    y = 0.5405,
                },
            },
            sourceActionID = "accept-5051-two-halves-become-one",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 106,
            text = "Accept Two Halves Become One from Janice Felstone.",
            useClientPin = false,
            useClientText = false,
        },
        {
            complete = { questObjective = { count = 1, id = 5051, index = 1 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5051-two-halves-become-one" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5051, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5051, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5050, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 5048, state = "completed" } },
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5049, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        { race = { 2, 5, 6, 8 } },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5023, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { item = { minCount = 1, name = "Janice's Parcel" } },
                                                                                                                { faction = "Horde" },
                                                                                                                { race = { 2, 5, 6, 8 } },
                                                                                                                { any = { { any = { { quest = { id = 5021, state = "activeOrCompleted" } }, { all = {} } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5051-1-jabbering-ghoul",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5050 } } },
            route = {
                { label = "Jabbering Ghouls", mapID = 1422, offMapText = "Travel to Jabbering Ghouls.", x = 0.378, y = 0.576 },
            },
            sourceActionID = "objective-5051-1-jabbering-ghoul",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 108,
            text = "Kill Jabbering Ghouls around the ruined fields of Andorhal. Loot the Good Luck Other-Half-Charm, then use it to assemble the Good Luck Charm.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 1, id = 5051, index = 1 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5051-two-halves-become-one" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5051, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5051, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5050, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 5048, state = "completed" } },
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5049, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        { race = { 2, 5, 6, 8 } },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5023, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { item = { minCount = 1, name = "Janice's Parcel" } },
                                                                                                                { faction = "Horde" },
                                                                                                                { race = { 2, 5, 6, 8 } },
                                                                                                                { any = { { any = { { quest = { id = 5021, state = "activeOrCompleted" } }, { all = {} } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5051-1-good-luck-other-half-charm",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5050 } } },
            route = {
                { label = "Jabbering Ghouls", mapID = 1422, offMapText = "Travel to Jabbering Ghouls.", x = 0.378, y = 0.576 },
            },
            sourceActionID = "objective-5051-1-good-luck-other-half-charm",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            text = "Kill Jabbering Ghouls around the ruined fields of Andorhal. Loot the Good Luck Other-Half-Charm, then use it to assemble the Good Luck Charm.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5051, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = {
                "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5051-two-halves-become-one",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5051-1-jabbering-ghoul",
                "horde-leveling-era-horde-western-and-eastern-plaguelands-objective-5051-1-good-luck-other-half-charm",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5051, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5051, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5050, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 5048, state = "completed" } },
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5049, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        { race = { 2, 5, 6, 8 } },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5023, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { item = { minCount = 1, name = "Janice's Parcel" } },
                                                                                                                { faction = "Horde" },
                                                                                                                { race = { 2, 5, 6, 8 } },
                                                                                                                { any = { { any = { { quest = { id = 5021, state = "activeOrCompleted" } }, { all = {} } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5051-two-halves-become-one",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5050 } } },
            route = {
                {
                    label = "Janice Felstone",
                    mapID = 1422,
                    offMapText = "Travel to Janice Felstone in Western Plaguelands.",
                    x = 0.384,
                    y = 0.5405,
                },
            },
            sourceActionID = "turnin-5051-two-halves-become-one",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 109,
            text = "Turn in Two Halves Become One to Janice Felstone.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5236, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5236-return-to-the-bulwark" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5236, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5236, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5235, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5234, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5233, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5232, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 5231, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 5230, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Horde" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 5229, state = "activeOrCompleted" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 5228, state = "activeOrCompleted" } },
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    all = {
                                                                                                                                                                                                                                        { faction = "Horde" },
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                            any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-5236-return-to-the-bulwark",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5235 } } },
            route = {
                {
                    label = "Shadow Priestess Vandis",
                    mapID = 1420,
                    offMapText = "Travel to Shadow Priestess Vandis in Tirisfal Glades.",
                    x = 0.8303,
                    y = 0.7191,
                },
            },
            sourceActionID = "turnin-5236-return-to-the-bulwark",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 111,
            text = "Turn in Return to the Bulwark to Shadow Priestess Vandis.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 6390, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 48 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-6390-a-plague-upon-thee" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6390, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6390, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5902, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 5901, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-turnin-6390-a-plague-upon-thee",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5902 } } },
            route = {
                {
                    label = "Mickey Levine",
                    mapID = 1420,
                    offMapText = "Travel to Mickey Levine in Tirisfal Glades.",
                    x = 0.8329,
                    y = 0.7233,
                },
            },
            sourceActionID = "turnin-6390-a-plague-upon-thee",
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceStep = 112,
            text = "Turn in A Plague Upon Thee to Mickey Levine.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 5238, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-western-and-eastern-plaguelands-accept-5238-mission-accomplished",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5236 } } },
            route = {
                {
                    label = "High Executor Derrington",
                    mapID = 1420,
                    offMapText = "Travel to High Executor Derrington in Tirisfal Glades.",
                    x = 0.8313,
                    y = 0.6894,
                },
            },
            sourceStep = 113,
            text = "Accept Mission Accomplished! from High Executor Derrington.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-western-and-eastern-plaguelands",
            sourceActionID = "accept-5238-mission-accomplished",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5238, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5238, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5236, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 5235, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 5234, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 5233, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 5232, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 5231, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Horde" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 5230, state = "activeOrCompleted" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 5229, state = "activeOrCompleted" } },
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    all = {
                                                                                                                                                                                                                                        { faction = "Horde" },
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                                                        { quest = { id = 5228, state = "activeOrCompleted" } },
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                    any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
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
            complete = { quest = { id = 4987, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 51 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4987, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4987, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4985, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 4984, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-winterspring-turnin-4987-glyphed-oaken-branch",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4985 } } },
            route = {
                {
                    label = "Nara Wildmane",
                    mapID = 1456,
                    offMapText = "Travel to Nara Wildmane in Thunder Bluff.",
                    x = 0.7565,
                    y = 0.3161,
                },
            },
            sourceActionID = "turnin-4987-glyphed-oaken-branch",
            sourceGuide = "leveling-era-horde-winterspring",
            sourceStep = 43,
            text = "Turn in Glyphed Oaken Branch to Nara Wildmane.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 105,
            complete = { level = { min = 50 } },
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 105, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 105, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5098, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-105-level",
            kind = "note",
            requiredLevel = 50,
            text = "Reach level 50 before this visit.",
        },
        {
            complete = { quest = { id = 105, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = { "horde-extra-105-level" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 105, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 105, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Horde" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 5098, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 105, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 105, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Horde" },
                                                { race = { 2, 5, 6, 8 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 5098, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        { race = { 2, 5, 6, 8 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 5096, state = "activeOrCompleted" } },
                                                                                        { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8 } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-105-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 5098 } } },
            route = {
                {
                    label = "High Executor Derrington",
                    mapID = 1420,
                    offMapText = "Travel to High Executor Derrington in Tirisfal Glades.",
                    x = 0.83,
                    y = 0.69,
                },
            },
            text = "Accept Alas, Andorhal from High Executor Derrington.",
            useClientText = false,
        },
        {
            complete = { quest = { id = 105, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = { "horde-extra-105-accept" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 105, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 105, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Horde" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 5098, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 105, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 105, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Horde" },
                                                { race = { 2, 5, 6, 8 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 5098, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        { race = { 2, 5, 6, 8 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 5096, state = "activeOrCompleted" } },
                                                                                        { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8 } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-105-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 5098 } } },
            route = {
                {
                    label = "Araj the Summoner",
                    mapID = 1422,
                    offMapText = "Travel to Araj the Summoner in Western Plaguelands.",
                    x = 0.456,
                    y = 0.692,
                },
            },
            text = "Defeat Araj the Summoner, then search Araj's Phylactery in Andorhal for Araj's Phylactery Shard. This is an elite. Bring a group.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 105, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 50 } } } },
            dependsOn = { "horde-extra-105-objective" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 105, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 105, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Horde" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 5098, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = { { any = { { quest = { id = 5096, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 105, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 105, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Horde" },
                                                { race = { 2, 5, 6, 8 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 5098, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        { race = { 2, 5, 6, 8 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 5096, state = "activeOrCompleted" } },
                                                                                        { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8 } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-extra-105-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 5098 } } },
            route = {
                {
                    label = "High Executor Derrington",
                    mapID = 1420,
                    offMapText = "Travel to High Executor Derrington in Tirisfal Glades.",
                    x = 0.83,
                    y = 0.69,
                },
            },
            text = "Turn in Alas, Andorhal to High Executor Derrington.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
    },
})
