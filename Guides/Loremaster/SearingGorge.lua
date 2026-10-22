local _, ns = ...

-- Source decisions: docs/loremaster/searing-gorge.json.
-- Coordinates require a Forever client walkthrough.
ns:RegisterGuide({
    id = "loremaster-searing-gorge",
    title = "Searing Gorge",
    category = "Loremaster Guides",
    revision = 2,
    routeMode = "ordered",
    loremasterExpanded = true,
    goals = {
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
            complete = { item = { minCount = 15, name = "Silk Cloth" } },
            conditions = { faction = "Alliance" },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stranglethorn-vale-part-4-collect-before-pickup-objective-4449-1-silk-cloth",
            kind = "note",
            referenceQuest = 4449,
            requiredQuests = {},
            route = { { label = "Silk Cloth", mapID = 1434, offMapText = "Travel to Silk Cloth.", x = 0.2654, y = 0.7657 } },
            text = "Collect 15 Silk Cloth. Keep 15 Silk Cloth for the later quest pickup.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stranglethorn-vale-part-4",
            sourceActionID = "collect-before-pickup-objective-4449-1-silk-cloth",
        },
        {
            checkpointQuest = 7701,
            complete = { level = { min = 45 } },
            conditions = { all = { { faction = "Alliance" } } },
            id = "alliance-extra-7701-level",
            kind = "note",
            requiredLevel = 45,
            text = "Reach level 45 before this visit.",
        },
        {
            id = "alliance-extra-7701-accept",
            kind = "accept",
            text = "Accept WANTED: Overseer Maltorius from Wanted/Missing/Lost & Found.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            route = {
                {
                    mapID = 1427,
                    x = 0.376,
                    y = 0.266,
                    label = "Wanted/Missing/Lost & Found",
                    offMapText = "Travel to Wanted/Missing/Lost & Found in Searing Gorge.",
                },
            },
            complete = { quest = { id = 7701, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-7701-level" },
        },
        {
            checkpointQuest = 7722,
            complete = { level = { min = 45 } },
            conditions = { all = { { faction = "Alliance" } } },
            id = "alliance-extra-7722-level",
            kind = "note",
            requiredLevel = 45,
            text = "Reach level 45 before this visit.",
        },
        {
            id = "alliance-extra-7722-accept",
            kind = "accept",
            text = "Accept What the Flux? from Master Smith Burninate.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            route = {
                {
                    mapID = 1427,
                    x = 0.386,
                    y = 0.284,
                    label = "Master Smith Burninate",
                    offMapText = "Travel to Master Smith Burninate in Searing Gorge.",
                },
            },
            complete = { quest = { id = 7722, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-7722-level" },
        },
        {
            complete = { quest = { id = 7701, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-extra-7701-accept" },
            id = "alliance-extra-7701-objective",
            kind = "objective",
            questPrerequisites = {},
            requiredQuests = {},
            route = {
                {
                    label = "Overseer Maltorius",
                    mapID = 1427,
                    offMapText = "Travel to Overseer Maltorius in Searing Gorge.",
                    x = 0.41,
                    y = 0.356,
                },
            },
            text = "Slay Overseer Maltorius in the Slag Pit of the Cauldron and loot his head. This is an elite. Bring a group.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 7722, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-extra-7722-accept" },
            id = "alliance-extra-7722-objective",
            kind = "objective",
            questPrerequisites = {},
            requiredQuests = {},
            route = {
                {
                    mapID = 1427,
                    x = 0.406,
                    y = 0.35700000000000004,
                    label = "Secret Plans: Fiery Flux",
                    offMapText = "Travel to Secret Plans: Fiery Flux in Searing Gorge.",
                },
            },
            text = "Loot Secret Plans: Fiery Flux in the Slag Pit of the Cauldron.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 7701, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-extra-7701-objective" },
            id = "alliance-extra-7701-turnin",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Lookout Captain Lolo Longstriker",
                    mapID = 1427,
                    offMapText = "Travel to Lookout Captain Lolo Longstriker in Searing Gorge.",
                    x = 0.376,
                    y = 0.266,
                },
            },
            text = "Turn in WANTED: Overseer Maltorius to Lookout Captain Lolo Longstriker.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 7722, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-extra-7722-objective" },
            id = "alliance-extra-7722-turnin",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Master Smith Burninate",
                    mapID = 1427,
                    offMapText = "Travel to Master Smith Burninate in Searing Gorge.",
                    x = 0.386,
                    y = 0.284,
                },
            },
            text = "Turn in What the Flux? to Master Smith Burninate.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            id = "visit-entry-leveling-era-alliance-searing-gorge",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-searing-gorge",
            text = "Reach level 50 before the Searing Gorge visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 50 } },
            requiredLevel = 50,
        },
        {
            checkpointQuest = 7723,
            complete = { level = { min = 45 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-searing-gorge-level-before-accept-7723-curse-these-fat-fingers",
            kind = "note",
            requiredLevel = 45,
            requiredQuests = {},
            text = "Reach level 45 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "level-before-accept-7723-curse-these-fat-fingers",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 7723, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-searing-gorge-accept-7723-curse-these-fat-fingers",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Hansel Heavyhands",
                    mapID = 1427,
                    offMapText = "Travel to Hansel Heavyhands in Searing Gorge.",
                    x = 0.3857,
                    y = 0.278,
                },
            },
            sourceStep = 2,
            text = "Accept Curse These Fat Fingers from Hansel Heavyhands.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "accept-7723-curse-these-fat-fingers",
        },
        {
            complete = { quest = { id = 7724, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-searing-gorge-accept-7724-fiery-menace",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Hansel Heavyhands",
                    mapID = 1427,
                    offMapText = "Travel to Hansel Heavyhands in Searing Gorge.",
                    x = 0.3857,
                    y = 0.278,
                },
            },
            sourceStep = 2,
            text = "Accept Fiery Menace! from Hansel Heavyhands.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "accept-7724-fiery-menace",
        },
        {
            complete = { quest = { id = 7727, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-searing-gorge-accept-7727-incendosaurs-whateverosaur-is-more-like-",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Hansel Heavyhands",
                    mapID = 1427,
                    offMapText = "Travel to Hansel Heavyhands in Searing Gorge.",
                    x = 0.3857,
                    y = 0.278,
                },
            },
            sourceStep = 2,
            text = "Accept Incendosaurs? Whateverosaur is More Like It from Hansel Heavyhands.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "accept-7727-incendosaurs-whateverosaur-is-more-like-",
        },
        {
            complete = { quest = { id = 7728, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-searing-gorge-accept-7728-stolen-smithing-tuyere-and-lookout-s-spy",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "STOLEN: Smithing Tuyere and Lookout's Spyglass",
                    mapID = 1427,
                    offMapText = "Travel to STOLEN: Smithing Tuyere and Lookout's Spyglass.",
                    x = 0.3763,
                    y = 0.2653,
                },
            },
            sourceStep = 3,
            text = "Accept STOLEN: Smithing Tuyere and Lookout's Spyglass.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "accept-7728-stolen-smithing-tuyere-and-lookout-s-spy",
        },
        {
            complete = { quest = { id = 7729, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-searing-gorge-accept-7729-job-opportunity-culling-the-competition",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "JOB OPPORTUNITY: Culling the Competition",
                    mapID = 1427,
                    offMapText = "Travel to JOB OPPORTUNITY: Culling the Competition.",
                    x = 0.3763,
                    y = 0.2653,
                },
            },
            sourceStep = 3,
            text = "Accept JOB OPPORTUNITY: Culling the Competition.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "accept-7729-job-opportunity-culling-the-competition",
        },
        {
            complete = { quest = { id = 3441, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-searing-gorge-accept-3441-divine-retribution",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceStep = 4,
            text = "Accept Divine Retribution from Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "accept-3441-divine-retribution",
        },
        {
            complete = { quest = { id = 3441, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-3441-divine-retribution" },
            id = "alliance-leveling-era-alliance-searing-gorge-objective-3441-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 6,
            text = "Speak with Kalaran Windblade and ask what drives his vengeance. Follow his story until the quest is ready to turn in.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "objective-3441-quest-work",
        },
        {
            complete = { quest = { id = 3441, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-searing-gorge-accept-3441-divine-retribution",
                "alliance-leveling-era-alliance-searing-gorge-objective-3441-quest-work",
            },
            id = "alliance-leveling-era-alliance-searing-gorge-turnin-3441-divine-retribution",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceActionID = "turnin-3441-divine-retribution",
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceStep = 6,
            text = "Turn in Divine Retribution to Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 3442, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-searing-gorge-accept-3442-the-flawless-flame",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3441 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceStep = 6,
            text = "Accept The Flawless Flame from Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "accept-3442-the-flawless-flame",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3442, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3442, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 7728, index = 1, text = "Dark Iron Steamsmith" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-7728-stolen-smithing-tuyere-and-lookout-s-spy" },
            id = "alliance-leveling-era-alliance-searing-gorge-objective-7728-1-dark-iron-steamsmith",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Dark Iron Steamsmith", mapID = 1427, offMapText = "Travel to Dark Iron Steamsmith.", x = 0.392, y = 0.494 },
            },
            sourceStep = 7,
            text = "Collect 1 Smithing Tuyere.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "objective-7728-1-dark-iron-steamsmith",
        },
        {
            complete = { questObjective = { count = 4, id = 3442, index = 1, text = "Heart of Flame" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-3442-the-flawless-flame" },
            id = "alliance-leveling-era-alliance-searing-gorge-objective-3442-1-heart-of-flame",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3441 } } },
            route = { { label = "Heart of Flame", mapID = 1427, offMapText = "Travel to Heart of Flame.", x = 0.4258, y = 0.3858 } },
            sourceStep = 8,
            text = "Collect 4 Heart of Flame.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "objective-3442-1-heart-of-flame",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3442, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3442, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 4, id = 3442, index = 2, text = "Golem Oil" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-3442-the-flawless-flame" },
            id = "alliance-leveling-era-alliance-searing-gorge-objective-3442-2-golem-oil",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3441 } } },
            route = { { label = "Golem Oil", mapID = 1427, offMapText = "Travel to Golem Oil.", x = 0.392, y = 0.434 } },
            sourceStep = 9,
            text = "Collect 4 Golem Oil.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "objective-3442-2-golem-oil",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3442, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3442, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3442, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-searing-gorge-accept-3442-the-flawless-flame",
                "alliance-leveling-era-alliance-searing-gorge-objective-3442-1-heart-of-flame",
                "alliance-leveling-era-alliance-searing-gorge-objective-3442-2-golem-oil",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3442, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3442, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-searing-gorge-turnin-3442-the-flawless-flame",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3441 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceActionID = "turnin-3442-the-flawless-flame",
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceStep = 10,
            text = "Turn in The Flawless Flame to Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 3443, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-searing-gorge-accept-3443-forging-the-shaft",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3442 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceStep = 10,
            text = "Accept Forging the Shaft from Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "accept-3443-forging-the-shaft",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3443, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3443, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3442, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 20, id = 7727, index = 1, text = "Incendosaur" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-7727-incendosaurs-whateverosaur-is-more-like-" },
            id = "alliance-leveling-era-alliance-searing-gorge-objective-7727-1-incendosaur",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Incendosaur", mapID = 1427, offMapText = "Travel to Incendosaur.", x = 0.514, y = 0.36 } },
            sourceStep = 12,
            text = "Kill 20 Incendosaur.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "objective-7727-1-incendosaur",
        },
        {
            complete = { quest = { id = 4451, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 43 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-searing-gorge-accept-4451-the-key-to-freedom",
            kind = "accept",
            requiredQuests = {},
            sourceStep = 15,
            text = "Use the Grimesilt Outhouse Key to accept The Key to Freedom.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "accept-4451-the-key-to-freedom",
        },
        {
            complete = { questObjective = { count = 8, id = 3443, index = 1, text = "Thorium Plated Dagger" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-3443-forging-the-shaft" },
            id = "alliance-leveling-era-alliance-searing-gorge-objective-3443-1-thorium-plated-dagger",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3442 } } },
            route = {
                { label = "Thorium Plated Dagger", mapID = 1427, offMapText = "Travel to Thorium Plated Dagger.", x = 0.446, y = 0.374 },
            },
            sourceStep = 16,
            text = "Collect 8 Thorium Plated Dagger.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "objective-3443-1-thorium-plated-dagger",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3443, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3443, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3442, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 15, id = 7729, index = 1, text = "Dark Iron Taskmaster" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-7729-job-opportunity-culling-the-competition" },
            id = "alliance-leveling-era-alliance-searing-gorge-objective-7729-1-dark-iron-taskmaster",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Dark Iron Taskmaster", mapID = 1427, offMapText = "Travel to Dark Iron Taskmaster.", x = 0.446, y = 0.374 },
            },
            sourceStep = 17,
            text = "Kill 15 Dark Iron Taskmaster.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "objective-7729-1-dark-iron-taskmaster",
        },
        {
            complete = { questObjective = { count = 15, id = 7729, index = 2, text = "Dark Iron Slaver" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-7729-job-opportunity-culling-the-competition" },
            id = "alliance-leveling-era-alliance-searing-gorge-objective-7729-2-dark-iron-slaver",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Dark Iron Slaver", mapID = 1427, offMapText = "Travel to Dark Iron Slaver.", x = 0.446, y = 0.374 },
            },
            sourceStep = 17,
            text = "Kill 15 Dark Iron Slaver.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "objective-7729-2-dark-iron-slaver",
        },
        {
            complete = { quest = { id = 3443, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-searing-gorge-accept-3443-forging-the-shaft",
                "alliance-leveling-era-alliance-searing-gorge-objective-3443-1-thorium-plated-dagger",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3443, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3443, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3442, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-searing-gorge-turnin-3443-forging-the-shaft",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3442 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3906,
                    y = 0.3899,
                },
            },
            sourceActionID = "turnin-3443-forging-the-shaft",
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceStep = 18,
            text = "Turn in Forging the Shaft to Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 3452, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-searing-gorge-accept-3452-the-flame-s-casing",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3443 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3906,
                    y = 0.3899,
                },
            },
            sourceStep = 18,
            text = "Accept The Flame's Casing from Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "accept-3452-the-flame-s-casing",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3452, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3452, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3443, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 3452, index = 1, text = "Twilight Dark Shaman" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-3452-the-flame-s-casing" },
            id = "alliance-leveling-era-alliance-searing-gorge-objective-3452-1-twilight-dark-shaman",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3443 } } },
            route = {
                { label = "Twilight Dark Shaman", mapID = 1427, offMapText = "Travel to Twilight Dark Shaman.", x = 0.25, y = 0.364 },
            },
            sourceStep = 19,
            text = "Collect 1 Symbol of Ragnaros.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "objective-3452-1-twilight-dark-shaman",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3452, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3452, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3443, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3452, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-searing-gorge-accept-3452-the-flame-s-casing",
                "alliance-leveling-era-alliance-searing-gorge-objective-3452-1-twilight-dark-shaman",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3452, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3452, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3443, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-searing-gorge-turnin-3452-the-flame-s-casing",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3443 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceActionID = "turnin-3452-the-flame-s-casing",
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceStep = 20,
            text = "Turn in The Flame's Casing to Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 3453, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-searing-gorge-accept-3453-the-torch-of-retribution",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3452 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceStep = 20,
            text = "Accept The Torch of Retribution from Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "accept-3453-the-torch-of-retribution",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3453, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3453, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3452, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3443, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3442, state = "completed" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3453, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-3453-the-torch-of-retribution" },
            id = "alliance-leveling-era-alliance-searing-gorge-objective-3453-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3452 } } },
            sourceStep = 22,
            text = "For The Torch of Retribution: Wait for Kalaran Windblade to complete the Torch of Retribution.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "objective-3453-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3453, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3453, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3452, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3443, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3442, state = "completed" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3453, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-searing-gorge-accept-3453-the-torch-of-retribution",
                "alliance-leveling-era-alliance-searing-gorge-objective-3453-quest-work",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3453, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3453, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3452, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3443, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3442, state = "completed" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-searing-gorge-turnin-3453-the-torch-of-retribution",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3452 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceActionID = "turnin-3453-the-torch-of-retribution",
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceStep = 22,
            text = "Turn in The Torch of Retribution to Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 3454, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-searing-gorge-accept-3454-the-torch-of-retribution",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3453 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceStep = 22,
            text = "Accept The Torch of Retribution from Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "accept-3454-the-torch-of-retribution",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3454, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3454, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3453, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3454, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-3454-the-torch-of-retribution" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3454, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3454, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3453, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-searing-gorge-turnin-3454-the-torch-of-retribution",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3453 } } },
            route = {
                {
                    label = "The Torch of Retribution",
                    mapID = 1427,
                    offMapText = "Travel to The Torch of Retribution.",
                    x = 0.3906,
                    y = 0.3906,
                },
            },
            sourceActionID = "turnin-3454-the-torch-of-retribution",
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceStep = 23,
            text = "Turn in The Torch of Retribution.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 3462, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-searing-gorge-accept-3462-squire-maltrake",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3454 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.39,
                },
            },
            sourceStep = 24,
            text = "Accept Squire Maltrake from Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "accept-3462-squire-maltrake",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3462, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3462, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3454, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3453, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3452, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3443, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3442, state = "completed" } },
                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3462, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-3462-squire-maltrake" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3462, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3462, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3454, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3453, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3452, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3443, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3442, state = "completed" } },
                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-searing-gorge-turnin-3462-squire-maltrake",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3454 } } },
            route = {
                {
                    label = "Squire Maltrake",
                    mapID = 1427,
                    offMapText = "Travel to Squire Maltrake in Searing Gorge.",
                    x = 0.3916,
                    y = 0.3899,
                },
            },
            sourceActionID = "turnin-3462-squire-maltrake",
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceStep = 25,
            text = "Turn in Squire Maltrake to Squire Maltrake.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 3463, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-searing-gorge-accept-3463-set-them-ablaze",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3462 } } },
            route = {
                {
                    label = "Squire Maltrake",
                    mapID = 1427,
                    offMapText = "Travel to Squire Maltrake in Searing Gorge.",
                    x = 0.3916,
                    y = 0.3899,
                },
            },
            sourceStep = 25,
            text = "Accept Set Them Ablaze! from Squire Maltrake.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "accept-3463-set-them-ablaze",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3463, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3463, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3462, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 4451, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 43 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-4451-the-key-to-freedom" },
            id = "alliance-leveling-era-alliance-searing-gorge-turnin-4451-the-key-to-freedom",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "The Key to Freedom", mapID = 1427, offMapText = "Travel to The Key to Freedom.", x = 0.6553, y = 0.6223 },
            },
            sourceActionID = "turnin-4451-the-key-to-freedom",
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceStep = 34,
            text = "Turn in The Key to Freedom.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 4449, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 43 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-searing-gorge-accept-4449-caught",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Caught!", mapID = 1427, offMapText = "Travel to Caught!.", x = 0.6553, y = 0.6223 } },
            sourceStep = 34,
            text = "Accept Caught!.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "accept-4449-caught",
        },
        {
            complete = { questObjective = { count = 8, id = 4449, index = 1, text = "Dark Iron Geologist" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 43 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-4449-caught" },
            id = "alliance-leveling-era-alliance-searing-gorge-objective-4449-1-dark-iron-geologist",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Dark Iron Geologist", mapID = 1427, offMapText = "Travel to Dark Iron Geologist.", x = 0.634, y = 0.614 },
            },
            sourceStep = 35,
            text = "Kill 8 Dark Iron Geologist.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "objective-4449-1-dark-iron-geologist",
        },
        {
            checkpointQuest = 3181,
            complete = { level = { min = 40 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-searing-gorge-level-before-note-3181-margol-loot",
            kind = "note",
            requiredLevel = 40,
            requiredQuests = {},
            text = "Reach level 40 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "level-before-note-3181-margol-loot",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 3181, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-searing-gorge-accept-3181-the-horn-of-the-beast",
            kind = "accept",
            requiredQuests = {},
            sourceStep = 37,
            text = "Use the Margol's Horn to accept The Horn of the Beast.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "accept-3181-the-horn-of-the-beast",
        },
        {
            complete = { item = { minCount = 15, name = "Silk Cloth" } },
            conditions = { faction = "Alliance" },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-searing-gorge-collect-before-pickup-objective-4449-2-silk-cloth",
            kind = "note",
            referenceQuest = 4449,
            requiredQuests = {},
            route = { { label = "Silk Cloth", mapID = 1427, offMapText = "Travel to Silk Cloth.", x = 0.634, y = 0.614 } },
            sourceStep = 39,
            text = "Collect 15 Silk Cloth. Keep 15 Silk Cloth for the later quest pickup.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "collect-before-pickup-objective-4449-2-silk-cloth",
        },
        {
            complete = { quest = { id = 4449, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 43 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-searing-gorge-accept-4449-caught",
                "alliance-leveling-era-alliance-searing-gorge-objective-4449-1-dark-iron-geologist",
            },
            id = "alliance-leveling-era-alliance-searing-gorge-turnin-4449-caught",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Caught!", mapID = 1427, offMapText = "Travel to Caught!.", x = 0.6554, y = 0.6224 } },
            sourceActionID = "turnin-4449-caught",
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceStep = 40,
            text = "Turn in Caught!.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 3367, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-searing-gorge-accept-3367-suntara-stones",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Dorius Stonetender",
                    mapID = 1427,
                    offMapText = "Travel to Dorius Stonetender in Searing Gorge.",
                    x = 0.6392,
                    y = 0.6098,
                },
            },
            sourceStep = 41,
            text = "Accept Suntara Stones from Dorius Stonetender.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "accept-3367-suntara-stones",
        },
        {
            complete = { quest = { id = 3367, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-3367-suntara-stones" },
            id = "alliance-leveling-era-alliance-searing-gorge-objective-3367-reviewed-escort",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Escort destination", mapID = 1427, offMapText = "Travel to Escort destination.", x = 0.7442, y = 0.1941 },
            },
            sourceStep = 42,
            text = "Follow and protect Dorius Stonetender until he escapes the excavation.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "objective-3367-reviewed-escort",
        },
        {
            complete = { quest = { id = 3367, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-searing-gorge-accept-3367-suntara-stones",
                "alliance-leveling-era-alliance-searing-gorge-objective-3367-reviewed-escort",
            },
            id = "alliance-leveling-era-alliance-searing-gorge-turnin-3367-suntara-stones",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Suntara Stones", mapID = 1427, offMapText = "Travel to Suntara Stones.", x = 0.7445, y = 0.1929 } },
            sourceActionID = "turnin-3367-suntara-stones",
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceStep = 43,
            text = "Turn in Suntara Stones.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 3368, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-searing-gorge-accept-3368-suntara-stones",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3367 } } },
            route = { { label = "Suntara Stones", mapID = 1427, offMapText = "Travel to Suntara Stones.", x = 0.7445, y = 0.1929 } },
            sourceStep = 43,
            text = "Accept Suntara Stones.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "accept-3368-suntara-stones",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3368, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3368, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 3367, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 3463, index = 4 } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-3463-set-them-ablaze" },
            id = "alliance-leveling-era-alliance-searing-gorge-objective-3463-4-authored-Northern-Tower",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3462 } } },
            route = { { label = "Northern-Tower", mapID = 1427, offMapText = "Travel to Northern-Tower.", x = 0.3331, y = 0.5449 } },
            text = "Climb the northern sentry tower. Equip the Torch of Retribution and light its Sentry Brazier. Reequip your normal weapon afterward.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "objective-3463-4-authored-Northern-Tower",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3463, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3463, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3462, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 3463, index = 1 } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-3463-set-them-ablaze" },
            id = "alliance-leveling-era-alliance-searing-gorge-objective-3463-1-authored-Western-Tower",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3462 } } },
            route = { { label = "Western-Tower", mapID = 1427, offMapText = "Travel to Western-Tower.", x = 0.3567, y = 0.6068 } },
            text = "Climb the western sentry tower. Equip the Torch of Retribution and light its Sentry Brazier. Reequip your normal weapon afterward.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "objective-3463-1-authored-Western-Tower",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3463, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3463, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3462, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 3463, index = 2 } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-3463-set-them-ablaze" },
            id = "alliance-leveling-era-alliance-searing-gorge-objective-3463-2-authored-Southern-Tower",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3462 } } },
            route = { { label = "Southern-Tower", mapID = 1427, offMapText = "Travel to Southern-Tower.", x = 0.4403, y = 0.6091 } },
            text = "Climb the southern sentry tower. Equip the Torch of Retribution and light its Sentry Brazier. Reequip your normal weapon afterward.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "objective-3463-2-authored-Southern-Tower",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3463, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3463, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3462, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 3463, index = 3 } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-3463-set-them-ablaze" },
            id = "alliance-leveling-era-alliance-searing-gorge-objective-3463-3-authored-Eastern-Tower",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3462 } } },
            route = { { label = "Eastern-Tower", mapID = 1427, offMapText = "Travel to Eastern-Tower.", x = 0.5006, y = 0.5474 } },
            text = "Cross the hanging bridge at Searing Gorge 52.48,57.95 and climb the eastern sentry tower. Equip the Torch of Retribution and light its Sentry Brazier. Reequip your normal weapon afterward.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "objective-3463-3-authored-Eastern-Tower",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3463, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3463, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3462, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3463, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-searing-gorge-accept-3463-set-them-ablaze",
                "alliance-leveling-era-alliance-searing-gorge-objective-3463-4-authored-Northern-Tower",
                "alliance-leveling-era-alliance-searing-gorge-objective-3463-1-authored-Western-Tower",
                "alliance-leveling-era-alliance-searing-gorge-objective-3463-2-authored-Southern-Tower",
                "alliance-leveling-era-alliance-searing-gorge-objective-3463-3-authored-Eastern-Tower",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3463, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3463, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3462, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-searing-gorge-turnin-3463-set-them-ablaze",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3462 } } },
            route = {
                {
                    label = "Squire Maltrake",
                    mapID = 1427,
                    offMapText = "Travel to Squire Maltrake in Searing Gorge.",
                    x = 0.3917,
                    y = 0.39,
                },
            },
            sourceActionID = "turnin-3463-set-them-ablaze",
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceStep = 44,
            text = "Turn in Set Them Ablaze! to Squire Maltrake.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 3481, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-searing-gorge-accept-3481-trinkets",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3463 } } },
            route = { { label = "Trinkets..", mapID = 1427, offMapText = "Travel to Trinkets....", x = 0.3886, y = 0.3899 } },
            sourceStep = 46,
            text = "Accept Trinkets...",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "accept-3481-trinkets",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3481, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3481, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3463, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3462, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3454, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3453, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3452, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3443, state = "completed" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3481, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-3481-trinkets" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3481, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3481, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3463, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3462, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3454, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3453, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3452, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3443, state = "completed" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-searing-gorge-turnin-3481-trinkets",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3463 } } },
            route = { { label = "Trinkets..", mapID = 1427, offMapText = "Travel to Trinkets....", x = 0.3886, y = 0.3899 } },
            sourceActionID = "turnin-3481-trinkets",
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceStep = 47,
            text = "Turn in Trinkets...",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 1, id = 7728, index = 2, text = "Lookout's Spyglass" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-7728-stolen-smithing-tuyere-and-lookout-s-spy" },
            id = "alliance-leveling-era-alliance-searing-gorge-objective-7728-2-lookout-s-spyglass",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Lookout's Spyglass", mapID = 1427, offMapText = "Travel to Lookout's Spyglass.", x = 0.332, y = 0.536 },
            },
            sourceStep = 49,
            text = "Collect 1 Lookout's Spyglass.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "objective-7728-2-lookout-s-spyglass",
        },
        {
            complete = { questObjective = { count = 20, id = 7724, index = 1, text = "Greater Lava Spider" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-7724-fiery-menace" },
            id = "alliance-leveling-era-alliance-searing-gorge-objective-7724-1-greater-lava-spider",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Greater Lava Spider", mapID = 1427, offMapText = "Travel to Greater Lava Spider.", x = 0.326, y = 0.426 },
            },
            sourceStep = 50,
            text = "Kill 20 Greater Lava Spider.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "objective-7724-1-greater-lava-spider",
        },
        {
            complete = { questObjective = { count = 20, id = 7723, index = 1, text = "Heavy War Golem" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-7723-curse-these-fat-fingers" },
            id = "alliance-leveling-era-alliance-searing-gorge-objective-7723-1-heavy-war-golem",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Heavy War Golem", mapID = 1427, offMapText = "Travel to Heavy War Golem.", x = 0.392, y = 0.434 } },
            sourceStep = 51,
            text = "Kill 20 Heavy War Golem.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceActionID = "objective-7723-1-heavy-war-golem",
        },
        {
            complete = { quest = { id = 7723, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-searing-gorge-accept-7723-curse-these-fat-fingers",
                "alliance-leveling-era-alliance-searing-gorge-objective-7723-1-heavy-war-golem",
            },
            id = "alliance-leveling-era-alliance-searing-gorge-turnin-7723-curse-these-fat-fingers",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Hansel Heavyhands",
                    mapID = 1427,
                    offMapText = "Travel to Hansel Heavyhands in Searing Gorge.",
                    x = 0.3859,
                    y = 0.2781,
                },
            },
            sourceActionID = "turnin-7723-curse-these-fat-fingers",
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceStep = 53,
            text = "Turn in Curse These Fat Fingers to Hansel Heavyhands.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 7724, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-searing-gorge-accept-7724-fiery-menace",
                "alliance-leveling-era-alliance-searing-gorge-objective-7724-1-greater-lava-spider",
            },
            id = "alliance-leveling-era-alliance-searing-gorge-turnin-7724-fiery-menace",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Hansel Heavyhands",
                    mapID = 1427,
                    offMapText = "Travel to Hansel Heavyhands in Searing Gorge.",
                    x = 0.3859,
                    y = 0.2781,
                },
            },
            sourceActionID = "turnin-7724-fiery-menace",
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceStep = 53,
            text = "Turn in Fiery Menace! to Hansel Heavyhands.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 7727, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-searing-gorge-accept-7727-incendosaurs-whateverosaur-is-more-like-",
                "alliance-leveling-era-alliance-searing-gorge-objective-7727-1-incendosaur",
            },
            id = "alliance-leveling-era-alliance-searing-gorge-turnin-7727-incendosaurs-whateverosaur-is-more-like-",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Hansel Heavyhands",
                    mapID = 1427,
                    offMapText = "Travel to Hansel Heavyhands in Searing Gorge.",
                    x = 0.3859,
                    y = 0.2781,
                },
            },
            sourceActionID = "turnin-7727-incendosaurs-whateverosaur-is-more-like-",
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceStep = 53,
            text = "Turn in Incendosaurs? Whateverosaur is More Like It to Hansel Heavyhands.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 7728, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-searing-gorge-accept-7728-stolen-smithing-tuyere-and-lookout-s-spy",
                "alliance-leveling-era-alliance-searing-gorge-objective-7728-1-dark-iron-steamsmith",
                "alliance-leveling-era-alliance-searing-gorge-objective-7728-2-lookout-s-spyglass",
            },
            id = "alliance-leveling-era-alliance-searing-gorge-turnin-7728-stolen-smithing-tuyere-and-lookout-s-spy",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Taskmaster Scrange",
                    mapID = 1427,
                    offMapText = "Travel to Taskmaster Scrange in Searing Gorge.",
                    x = 0.3898,
                    y = 0.2751,
                },
            },
            sourceActionID = "turnin-7728-stolen-smithing-tuyere-and-lookout-s-spy",
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceStep = 54,
            text = "Turn in STOLEN: Smithing Tuyere and Lookout's Spyglass to Taskmaster Scrange.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 7729, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 45 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-searing-gorge-accept-7729-job-opportunity-culling-the-competition",
                "alliance-leveling-era-alliance-searing-gorge-objective-7729-1-dark-iron-taskmaster",
                "alliance-leveling-era-alliance-searing-gorge-objective-7729-2-dark-iron-slaver",
            },
            id = "alliance-leveling-era-alliance-searing-gorge-turnin-7729-job-opportunity-culling-the-competition",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Taskmaster Scrange",
                    mapID = 1427,
                    offMapText = "Travel to Taskmaster Scrange in Searing Gorge.",
                    x = 0.3898,
                    y = 0.2751,
                },
            },
            sourceActionID = "turnin-7729-job-opportunity-culling-the-competition",
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceStep = 54,
            text = "Turn in JOB OPPORTUNITY: Culling the Competition to Taskmaster Scrange.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 3181, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-searing-gorge-accept-3181-the-horn-of-the-beast" },
            id = "alliance-leveling-era-alliance-searing-gorge-turnin-3181-the-horn-of-the-beast",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Mountaineer Pebblebitty",
                    mapID = 1432,
                    offMapText = "Travel to Mountaineer Pebblebitty in Loch Modan.",
                    x = 0.1819,
                    y = 0.84,
                },
            },
            sourceActionID = "turnin-3181-the-horn-of-the-beast",
            sourceGuide = "leveling-era-alliance-searing-gorge",
            sourceStep = 57,
            text = "Turn in The Horn of the Beast to Mountaineer Pebblebitty.",
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
            complete = { quest = { id = 3368, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 40 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3368, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3368, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 3367, state = "completed" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-blasted-lands-and-burning-steppes-turnin-3368-suntara-stones",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3367 } } },
            route = {
                { label = "Curator Thorius", mapID = 1455, offMapText = "Travel to Curator Thorius in Ironforge.", x = 0.712, y = 0.148 },
            },
            sourceActionID = "turnin-3368-suntara-stones",
            sourceGuide = "leveling-era-alliance-blasted-lands-and-burning-steppes",
            sourceStep = 24,
            text = "Turn in Suntara Stones to Curator Thorius.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
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
            complete = { item = { minCount = 15, name = "Silk Cloth" } },
            conditions = { faction = "Horde" },
            dependsOn = {},
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2-collect-before-pickup-objective-4449-1-silk-cloth",
            kind = "note",
            referenceQuest = 4449,
            requiredQuests = {},
            route = { { label = "Silk Cloth", mapID = 1413, offMapText = "Travel to Silk Cloth.", x = 0.6264, y = 0.3742 } },
            text = "Collect 15 Silk Cloth. Keep 15 Silk Cloth for the later quest pickup.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2",
            sourceActionID = "collect-before-pickup-objective-4449-1-silk-cloth",
        },
        {
            checkpointQuest = 7701,
            complete = { level = { min = 45 } },
            conditions = { all = { { faction = "Horde" } } },
            id = "horde-extra-7701-level",
            kind = "note",
            requiredLevel = 45,
            text = "Reach level 45 before this visit.",
        },
        {
            id = "horde-extra-7701-accept",
            kind = "accept",
            text = "Accept WANTED: Overseer Maltorius from Wanted/Missing/Lost & Found.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            route = {
                {
                    mapID = 1427,
                    x = 0.376,
                    y = 0.266,
                    label = "Wanted/Missing/Lost & Found",
                    offMapText = "Travel to Wanted/Missing/Lost & Found in Searing Gorge.",
                },
            },
            complete = { quest = { id = 7701, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-7701-level" },
        },
        {
            checkpointQuest = 7722,
            complete = { level = { min = 45 } },
            conditions = { all = { { faction = "Horde" } } },
            id = "horde-extra-7722-level",
            kind = "note",
            requiredLevel = 45,
            text = "Reach level 45 before this visit.",
        },
        {
            id = "horde-extra-7722-accept",
            kind = "accept",
            text = "Accept What the Flux? from Master Smith Burninate.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            route = {
                {
                    mapID = 1427,
                    x = 0.386,
                    y = 0.284,
                    label = "Master Smith Burninate",
                    offMapText = "Travel to Master Smith Burninate in Searing Gorge.",
                },
            },
            complete = { quest = { id = 7722, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-7722-level" },
        },
        {
            complete = { quest = { id = 7701, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-extra-7701-accept" },
            id = "horde-extra-7701-objective",
            kind = "objective",
            questPrerequisites = {},
            requiredQuests = {},
            route = {
                {
                    label = "Overseer Maltorius",
                    mapID = 1427,
                    offMapText = "Travel to Overseer Maltorius in Searing Gorge.",
                    x = 0.41,
                    y = 0.356,
                },
            },
            text = "Slay Overseer Maltorius in the Slag Pit of the Cauldron and loot his head. This is an elite. Bring a group.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 7722, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-extra-7722-accept" },
            id = "horde-extra-7722-objective",
            kind = "objective",
            questPrerequisites = {},
            requiredQuests = {},
            route = {
                {
                    mapID = 1427,
                    x = 0.406,
                    y = 0.35700000000000004,
                    label = "Secret Plans: Fiery Flux",
                    offMapText = "Travel to Secret Plans: Fiery Flux in Searing Gorge.",
                },
            },
            text = "Loot Secret Plans: Fiery Flux in the Slag Pit of the Cauldron.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 7701, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-extra-7701-objective" },
            id = "horde-extra-7701-turnin",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Lookout Captain Lolo Longstriker",
                    mapID = 1427,
                    offMapText = "Travel to Lookout Captain Lolo Longstriker in Searing Gorge.",
                    x = 0.376,
                    y = 0.266,
                },
            },
            text = "Turn in WANTED: Overseer Maltorius to Lookout Captain Lolo Longstriker.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 7722, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-extra-7722-objective" },
            id = "horde-extra-7722-turnin",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Master Smith Burninate",
                    mapID = 1427,
                    offMapText = "Travel to Master Smith Burninate in Searing Gorge.",
                    x = 0.386,
                    y = 0.284,
                },
            },
            text = "Turn in What the Flux? to Master Smith Burninate.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            id = "visit-entry-leveling-era-horde-searing-gorge",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-searing-gorge",
            text = "Reach level 51 before the Searing Gorge visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 51 } },
            requiredLevel = 51,
        },
        {
            checkpointQuest = 4449,
            complete = { level = { min = 43 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-searing-gorge-level-before-accept-4449-caught",
            kind = "note",
            requiredLevel = 43,
            requiredQuests = {},
            text = "Reach level 43 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "level-before-accept-4449-caught",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 4449, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 43 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-searing-gorge-accept-4449-caught",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Caught!", mapID = 1427, offMapText = "Travel to Caught!.", x = 0.6554, y = 0.6224 } },
            sourceStep = 2,
            text = "Accept Caught!.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "accept-4449-caught",
        },
        {
            complete = { questObjective = { count = 8, id = 4449, index = 1, text = "Dark Iron Geologist" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 43 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-4449-caught" },
            id = "horde-leveling-era-horde-searing-gorge-objective-4449-1-dark-iron-geologist",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Dark Iron Geologist", mapID = 1427, offMapText = "Travel to Dark Iron Geologist.", x = 0.634, y = 0.614 },
            },
            sourceStep = 3,
            text = "Kill 8 Dark Iron Geologist.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "objective-4449-1-dark-iron-geologist",
        },
        {
            complete = { item = { minCount = 15, name = "Silk Cloth" } },
            conditions = { faction = "Horde" },
            dependsOn = {},
            id = "horde-leveling-era-horde-searing-gorge-collect-before-pickup-objective-4449-2-silk-cloth",
            kind = "note",
            referenceQuest = 4449,
            requiredQuests = {},
            route = { { label = "Silk Cloth", mapID = 1427, offMapText = "Travel to Silk Cloth.", x = 0.634, y = 0.614 } },
            sourceStep = 4,
            text = "Collect 15 Silk Cloth. Keep 15 Silk Cloth for the later quest pickup.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "collect-before-pickup-objective-4449-2-silk-cloth",
        },
        {
            complete = { quest = { id = 4449, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 43 } } } },
            dependsOn = {
                "horde-leveling-era-horde-searing-gorge-accept-4449-caught",
                "horde-leveling-era-horde-searing-gorge-objective-4449-1-dark-iron-geologist",
            },
            id = "horde-leveling-era-horde-searing-gorge-turnin-4449-caught",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Caught!", mapID = 1427, offMapText = "Travel to Caught!.", x = 0.6554, y = 0.6224 } },
            sourceActionID = "turnin-4449-caught",
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceStep = 5,
            text = "Turn in Caught!.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 3441, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-searing-gorge-accept-3441-divine-retribution",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceStep = 6,
            text = "Accept Divine Retribution from Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "accept-3441-divine-retribution",
        },
        {
            complete = { quest = { id = 3441, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-3441-divine-retribution" },
            id = "horde-leveling-era-horde-searing-gorge-objective-3441-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 8,
            text = "For Divine Retribution: Listen as Kalaran Windblade tells his story.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "objective-3441-quest-work",
        },
        {
            complete = { quest = { id = 3441, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {
                "horde-leveling-era-horde-searing-gorge-accept-3441-divine-retribution",
                "horde-leveling-era-horde-searing-gorge-objective-3441-quest-work",
            },
            id = "horde-leveling-era-horde-searing-gorge-turnin-3441-divine-retribution",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceActionID = "turnin-3441-divine-retribution",
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceStep = 8,
            text = "Turn in Divine Retribution to Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 3442, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-searing-gorge-accept-3442-the-flawless-flame",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3441 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceStep = 8,
            text = "Accept The Flawless Flame from Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "accept-3442-the-flawless-flame",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3442, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3442, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 7728,
            complete = { level = { min = 45 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-searing-gorge-level-before-accept-7728-stolen-smithing-tuyere-and-lookout-s-spy",
            kind = "note",
            requiredLevel = 45,
            requiredQuests = {},
            text = "Reach level 45 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "level-before-accept-7728-stolen-smithing-tuyere-and-lookout-s-spy",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 7728, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-searing-gorge-accept-7728-stolen-smithing-tuyere-and-lookout-s-spy",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "STOLEN: Smithing Tuyere and Lookout's Spyglass",
                    mapID = 1427,
                    offMapText = "Travel to STOLEN: Smithing Tuyere and Lookout's Spyglass.",
                    x = 0.3763,
                    y = 0.2653,
                },
            },
            sourceStep = 10,
            text = "Accept STOLEN: Smithing Tuyere and Lookout's Spyglass.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "accept-7728-stolen-smithing-tuyere-and-lookout-s-spy",
        },
        {
            complete = { quest = { id = 7729, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-searing-gorge-accept-7729-job-opportunity-culling-the-competition",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "JOB OPPORTUNITY: Culling the Competition",
                    mapID = 1427,
                    offMapText = "Travel to JOB OPPORTUNITY: Culling the Competition.",
                    x = 0.3763,
                    y = 0.2653,
                },
            },
            sourceStep = 10,
            text = "Accept JOB OPPORTUNITY: Culling the Competition.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "accept-7729-job-opportunity-culling-the-competition",
        },
        {
            complete = { quest = { id = 7723, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-searing-gorge-accept-7723-curse-these-fat-fingers",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Hansel Heavyhands",
                    mapID = 1427,
                    offMapText = "Travel to Hansel Heavyhands in Searing Gorge.",
                    x = 0.3857,
                    y = 0.278,
                },
            },
            sourceStep = 11,
            text = "Accept Curse These Fat Fingers from Hansel Heavyhands.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "accept-7723-curse-these-fat-fingers",
        },
        {
            complete = { quest = { id = 7724, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-searing-gorge-accept-7724-fiery-menace",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Hansel Heavyhands",
                    mapID = 1427,
                    offMapText = "Travel to Hansel Heavyhands in Searing Gorge.",
                    x = 0.3857,
                    y = 0.278,
                },
            },
            sourceStep = 11,
            text = "Accept Fiery Menace! from Hansel Heavyhands.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "accept-7724-fiery-menace",
        },
        {
            complete = { quest = { id = 7727, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-searing-gorge-accept-7727-incendosaurs-whateverosaur-is-more-like-",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Hansel Heavyhands",
                    mapID = 1427,
                    offMapText = "Travel to Hansel Heavyhands in Searing Gorge.",
                    x = 0.3857,
                    y = 0.278,
                },
            },
            sourceStep = 11,
            text = "Accept Incendosaurs? Whateverosaur is More Like It from Hansel Heavyhands.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "accept-7727-incendosaurs-whateverosaur-is-more-like-",
        },
        {
            complete = { questObjective = { count = 1, id = 7728, index = 1, text = "Dark Iron Steamsmith" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-7728-stolen-smithing-tuyere-and-lookout-s-spy" },
            id = "horde-leveling-era-horde-searing-gorge-objective-7728-1-dark-iron-steamsmith",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Dark Iron Steamsmith", mapID = 1427, offMapText = "Travel to Dark Iron Steamsmith.", x = 0.392, y = 0.494 },
            },
            sourceStep = 12,
            text = "Collect 1 Smithing Tuyere.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "objective-7728-1-dark-iron-steamsmith",
        },
        {
            complete = { questObjective = { count = 4, id = 3442, index = 1, text = "Heart of Flame" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-3442-the-flawless-flame" },
            id = "horde-leveling-era-horde-searing-gorge-objective-3442-1-heart-of-flame",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3441 } } },
            route = { { label = "Heart of Flame", mapID = 1427, offMapText = "Travel to Heart of Flame.", x = 0.4258, y = 0.3858 } },
            sourceStep = 13,
            text = "Collect 4 Heart of Flame.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "objective-3442-1-heart-of-flame",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3442, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3442, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 4, id = 3442, index = 2, text = "Golem Oil" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-3442-the-flawless-flame" },
            id = "horde-leveling-era-horde-searing-gorge-objective-3442-2-golem-oil",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3441 } } },
            route = { { label = "Golem Oil", mapID = 1427, offMapText = "Travel to Golem Oil.", x = 0.392, y = 0.434 } },
            sourceStep = 14,
            text = "Collect 4 Golem Oil.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "objective-3442-2-golem-oil",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3442, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3442, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3442, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {
                "horde-leveling-era-horde-searing-gorge-accept-3442-the-flawless-flame",
                "horde-leveling-era-horde-searing-gorge-objective-3442-1-heart-of-flame",
                "horde-leveling-era-horde-searing-gorge-objective-3442-2-golem-oil",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3442, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3442, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-searing-gorge-turnin-3442-the-flawless-flame",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3441 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceActionID = "turnin-3442-the-flawless-flame",
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceStep = 15,
            text = "Turn in The Flawless Flame to Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 3443, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-searing-gorge-accept-3443-forging-the-shaft",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3442 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceStep = 15,
            text = "Accept Forging the Shaft from Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "accept-3443-forging-the-shaft",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3443, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3443, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3442, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 20, id = 7727, index = 1, text = "Incendosaur" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-7727-incendosaurs-whateverosaur-is-more-like-" },
            id = "horde-leveling-era-horde-searing-gorge-objective-7727-1-incendosaur",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Incendosaur", mapID = 1427, offMapText = "Travel to Incendosaur.", x = 0.514, y = 0.36 } },
            sourceStep = 17,
            text = "Kill 20 Incendosaur.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "objective-7727-1-incendosaur",
        },
        {
            complete = { quest = { id = 4451, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 43 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-searing-gorge-accept-4451-the-key-to-freedom",
            kind = "accept",
            requiredQuests = {},
            sourceStep = 20,
            text = "Use the Grimesilt Outhouse Key to accept The Key to Freedom.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "accept-4451-the-key-to-freedom",
        },
        {
            complete = { questObjective = { count = 8, id = 3443, index = 1, text = "Thorium Plated Dagger" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-3443-forging-the-shaft" },
            id = "horde-leveling-era-horde-searing-gorge-objective-3443-1-thorium-plated-dagger",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3442 } } },
            route = {
                { label = "Thorium Plated Dagger", mapID = 1427, offMapText = "Travel to Thorium Plated Dagger.", x = 0.446, y = 0.374 },
            },
            sourceStep = 21,
            text = "Collect 8 Thorium Plated Dagger.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "objective-3443-1-thorium-plated-dagger",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3443, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3443, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3442, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 15, id = 7729, index = 1, text = "Dark Iron Taskmaster" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-7729-job-opportunity-culling-the-competition" },
            id = "horde-leveling-era-horde-searing-gorge-objective-7729-1-dark-iron-taskmaster",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Dark Iron Taskmaster", mapID = 1427, offMapText = "Travel to Dark Iron Taskmaster.", x = 0.446, y = 0.374 },
            },
            sourceStep = 22,
            text = "Kill 15 Dark Iron Taskmaster.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "objective-7729-1-dark-iron-taskmaster",
        },
        {
            complete = { questObjective = { count = 15, id = 7729, index = 2, text = "Dark Iron Slaver" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-7729-job-opportunity-culling-the-competition" },
            id = "horde-leveling-era-horde-searing-gorge-objective-7729-2-dark-iron-slaver",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Dark Iron Slaver", mapID = 1427, offMapText = "Travel to Dark Iron Slaver.", x = 0.446, y = 0.374 },
            },
            sourceStep = 22,
            text = "Kill 15 Dark Iron Slaver.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "objective-7729-2-dark-iron-slaver",
        },
        {
            complete = { quest = { id = 3443, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {
                "horde-leveling-era-horde-searing-gorge-accept-3443-forging-the-shaft",
                "horde-leveling-era-horde-searing-gorge-objective-3443-1-thorium-plated-dagger",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3443, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3443, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3442, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-searing-gorge-turnin-3443-forging-the-shaft",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3442 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3906,
                    y = 0.3899,
                },
            },
            sourceActionID = "turnin-3443-forging-the-shaft",
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceStep = 23,
            text = "Turn in Forging the Shaft to Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 3452, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-searing-gorge-accept-3452-the-flame-s-casing",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3443 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3906,
                    y = 0.3899,
                },
            },
            sourceStep = 23,
            text = "Accept The Flame's Casing from Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "accept-3452-the-flame-s-casing",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3452, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3452, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3443, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 3452, index = 1, text = "Twilight Dark Shaman" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-3452-the-flame-s-casing" },
            id = "horde-leveling-era-horde-searing-gorge-objective-3452-1-twilight-dark-shaman",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3443 } } },
            route = {
                { label = "Twilight Dark Shaman", mapID = 1427, offMapText = "Travel to Twilight Dark Shaman.", x = 0.25, y = 0.364 },
            },
            sourceStep = 24,
            text = "Collect 1 Symbol of Ragnaros.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "objective-3452-1-twilight-dark-shaman",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3452, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3452, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3443, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3452, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {
                "horde-leveling-era-horde-searing-gorge-accept-3452-the-flame-s-casing",
                "horde-leveling-era-horde-searing-gorge-objective-3452-1-twilight-dark-shaman",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3452, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3452, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3443, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-searing-gorge-turnin-3452-the-flame-s-casing",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3443 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceActionID = "turnin-3452-the-flame-s-casing",
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceStep = 25,
            text = "Turn in The Flame's Casing to Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 3453, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-searing-gorge-accept-3453-the-torch-of-retribution",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3452 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceStep = 25,
            text = "Accept The Torch of Retribution from Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "accept-3453-the-torch-of-retribution",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3453, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3453, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3452, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3443, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3442, state = "completed" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3453, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-3453-the-torch-of-retribution" },
            id = "horde-leveling-era-horde-searing-gorge-objective-3453-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3452 } } },
            sourceStep = 27,
            text = "For The Torch of Retribution: Wait for Kalaran Windblade to complete the Torch of Retribution.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "objective-3453-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3453, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3453, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3452, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3443, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3442, state = "completed" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3453, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {
                "horde-leveling-era-horde-searing-gorge-accept-3453-the-torch-of-retribution",
                "horde-leveling-era-horde-searing-gorge-objective-3453-quest-work",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3453, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3453, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3452, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3443, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3442, state = "completed" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-searing-gorge-turnin-3453-the-torch-of-retribution",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3452 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceActionID = "turnin-3453-the-torch-of-retribution",
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceStep = 27,
            text = "Turn in The Torch of Retribution to Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 3454, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-searing-gorge-accept-3454-the-torch-of-retribution",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3453 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.3899,
                },
            },
            sourceStep = 27,
            text = "Accept The Torch of Retribution from Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "accept-3454-the-torch-of-retribution",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3454, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3454, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3453, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3454, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-3454-the-torch-of-retribution" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3454, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3454, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3453, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-searing-gorge-turnin-3454-the-torch-of-retribution",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3453 } } },
            route = {
                {
                    label = "The Torch of Retribution",
                    mapID = 1427,
                    offMapText = "Travel to The Torch of Retribution.",
                    x = 0.3906,
                    y = 0.3906,
                },
            },
            sourceActionID = "turnin-3454-the-torch-of-retribution",
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceStep = 28,
            text = "Turn in The Torch of Retribution.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 3462, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-searing-gorge-accept-3462-squire-maltrake",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3454 } } },
            route = {
                {
                    label = "Velarok Windblade",
                    mapID = 1427,
                    offMapText = "Travel to Velarok Windblade in Searing Gorge.",
                    x = 0.3905,
                    y = 0.39,
                },
            },
            sourceStep = 29,
            text = "Accept Squire Maltrake from Velarok Windblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "accept-3462-squire-maltrake",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3462, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3462, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3454, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3453, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3452, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3443, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3442, state = "completed" } },
                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3462, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-3462-squire-maltrake" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3462, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3462, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3454, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3453, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3452, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3443, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3442, state = "completed" } },
                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-searing-gorge-turnin-3462-squire-maltrake",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3454 } } },
            route = {
                {
                    label = "Squire Maltrake",
                    mapID = 1427,
                    offMapText = "Travel to Squire Maltrake in Searing Gorge.",
                    x = 0.3916,
                    y = 0.3899,
                },
            },
            sourceActionID = "turnin-3462-squire-maltrake",
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceStep = 30,
            text = "Turn in Squire Maltrake to Squire Maltrake.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 3463, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-searing-gorge-accept-3463-set-them-ablaze",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3462 } } },
            route = {
                {
                    label = "Squire Maltrake",
                    mapID = 1427,
                    offMapText = "Travel to Squire Maltrake in Searing Gorge.",
                    x = 0.3916,
                    y = 0.3899,
                },
            },
            sourceStep = 30,
            text = "Accept Set Them Ablaze! from Squire Maltrake.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "accept-3463-set-them-ablaze",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3463, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3463, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3462, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 4451, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 43 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-4451-the-key-to-freedom" },
            id = "horde-leveling-era-horde-searing-gorge-turnin-4451-the-key-to-freedom",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "The Key to Freedom", mapID = 1427, offMapText = "Travel to The Key to Freedom.", x = 0.6553, y = 0.6223 },
            },
            sourceActionID = "turnin-4451-the-key-to-freedom",
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceStep = 39,
            text = "Turn in The Key to Freedom.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 1, id = 3463, index = 4 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-3463-set-them-ablaze" },
            id = "horde-leveling-era-horde-searing-gorge-objective-3463-4-authored-Northern-Tower",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3462 } } },
            route = { { label = "Northern-Tower", mapID = 1427, offMapText = "Travel to Northern-Tower.", x = 0.3331, y = 0.5449 } },
            text = "Climb the northern sentry tower. Equip the Torch of Retribution and light its Sentry Brazier. Reequip your normal weapon afterward.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "objective-3463-4-authored-Northern-Tower",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3463, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3463, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3462, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 3463, index = 1 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-3463-set-them-ablaze" },
            id = "horde-leveling-era-horde-searing-gorge-objective-3463-1-authored-Western-Tower",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3462 } } },
            route = { { label = "Western-Tower", mapID = 1427, offMapText = "Travel to Western-Tower.", x = 0.3567, y = 0.6068 } },
            text = "Climb the western sentry tower. Equip the Torch of Retribution and light its Sentry Brazier. Reequip your normal weapon afterward.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "objective-3463-1-authored-Western-Tower",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3463, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3463, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3462, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 3463, index = 2 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-3463-set-them-ablaze" },
            id = "horde-leveling-era-horde-searing-gorge-objective-3463-2-authored-Southern-Tower",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3462 } } },
            route = { { label = "Southern-Tower", mapID = 1427, offMapText = "Travel to Southern-Tower.", x = 0.4403, y = 0.6091 } },
            text = "Climb the southern sentry tower. Equip the Torch of Retribution and light its Sentry Brazier. Reequip your normal weapon afterward.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "objective-3463-2-authored-Southern-Tower",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3463, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3463, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3462, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 3463, index = 3 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-3463-set-them-ablaze" },
            id = "horde-leveling-era-horde-searing-gorge-objective-3463-3-authored-Eastern-Tower",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3462 } } },
            route = { { label = "Eastern-Tower", mapID = 1427, offMapText = "Travel to Eastern-Tower.", x = 0.5006, y = 0.5474 } },
            text = "Cross the hanging bridge at Searing Gorge 52.48,57.95 and climb the eastern sentry tower. Equip the Torch of Retribution and light its Sentry Brazier. Reequip your normal weapon afterward.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "objective-3463-3-authored-Eastern-Tower",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3463, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3463, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3462, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3463, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {
                "horde-leveling-era-horde-searing-gorge-accept-3463-set-them-ablaze",
                "horde-leveling-era-horde-searing-gorge-objective-3463-4-authored-Northern-Tower",
                "horde-leveling-era-horde-searing-gorge-objective-3463-1-authored-Western-Tower",
                "horde-leveling-era-horde-searing-gorge-objective-3463-2-authored-Southern-Tower",
                "horde-leveling-era-horde-searing-gorge-objective-3463-3-authored-Eastern-Tower",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3463, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3463, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3462, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3454, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3453, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3452, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3443, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-searing-gorge-turnin-3463-set-them-ablaze",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3462 } } },
            route = {
                {
                    label = "Squire Maltrake",
                    mapID = 1427,
                    offMapText = "Travel to Squire Maltrake in Searing Gorge.",
                    x = 0.3917,
                    y = 0.39,
                },
            },
            sourceActionID = "turnin-3463-set-them-ablaze",
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceStep = 40,
            text = "Turn in Set Them Ablaze! to Squire Maltrake.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 3481, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-searing-gorge-accept-3481-trinkets",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3463 } } },
            route = { { label = "Trinkets..", mapID = 1427, offMapText = "Travel to Trinkets....", x = 0.3886, y = 0.3899 } },
            sourceStep = 42,
            text = "Accept Trinkets...",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "accept-3481-trinkets",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3481, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3481, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3463, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3462, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3454, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3453, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3452, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3443, state = "completed" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3481, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 40 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-3481-trinkets" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3481, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3481, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3463, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3462, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 3454, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 3453, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 3452, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 3443, state = "completed" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 3442, state = "completed" } },
                                                                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 3441, state = "completed" } }, { all = {} } } } } } } },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-searing-gorge-turnin-3481-trinkets",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3463 } } },
            route = { { label = "Trinkets..", mapID = 1427, offMapText = "Travel to Trinkets....", x = 0.3886, y = 0.3899 } },
            sourceActionID = "turnin-3481-trinkets",
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceStep = 43,
            text = "Turn in Trinkets...",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 1, id = 7728, index = 2, text = "Lookout's Spyglass" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-7728-stolen-smithing-tuyere-and-lookout-s-spy" },
            id = "horde-leveling-era-horde-searing-gorge-objective-7728-2-lookout-s-spyglass",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Lookout's Spyglass", mapID = 1427, offMapText = "Travel to Lookout's Spyglass.", x = 0.332, y = 0.536 },
            },
            sourceStep = 45,
            text = "Collect 1 Lookout's Spyglass.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "objective-7728-2-lookout-s-spyglass",
        },
        {
            complete = { questObjective = { count = 20, id = 7724, index = 1, text = "Greater Lava Spider" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-7724-fiery-menace" },
            id = "horde-leveling-era-horde-searing-gorge-objective-7724-1-greater-lava-spider",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Greater Lava Spider", mapID = 1427, offMapText = "Travel to Greater Lava Spider.", x = 0.326, y = 0.426 },
            },
            sourceStep = 46,
            text = "Kill 20 Greater Lava Spider.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "objective-7724-1-greater-lava-spider",
        },
        {
            complete = { questObjective = { count = 20, id = 7723, index = 1, text = "Heavy War Golem" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = { "horde-leveling-era-horde-searing-gorge-accept-7723-curse-these-fat-fingers" },
            id = "horde-leveling-era-horde-searing-gorge-objective-7723-1-heavy-war-golem",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Heavy War Golem", mapID = 1427, offMapText = "Travel to Heavy War Golem.", x = 0.392, y = 0.434 } },
            sourceStep = 47,
            text = "Kill 20 Heavy War Golem.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceActionID = "objective-7723-1-heavy-war-golem",
        },
        {
            complete = { quest = { id = 7723, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {
                "horde-leveling-era-horde-searing-gorge-accept-7723-curse-these-fat-fingers",
                "horde-leveling-era-horde-searing-gorge-objective-7723-1-heavy-war-golem",
            },
            id = "horde-leveling-era-horde-searing-gorge-turnin-7723-curse-these-fat-fingers",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Hansel Heavyhands",
                    mapID = 1427,
                    offMapText = "Travel to Hansel Heavyhands in Searing Gorge.",
                    x = 0.3859,
                    y = 0.2781,
                },
            },
            sourceActionID = "turnin-7723-curse-these-fat-fingers",
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceStep = 48,
            text = "Turn in Curse These Fat Fingers to Hansel Heavyhands.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 7724, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {
                "horde-leveling-era-horde-searing-gorge-accept-7724-fiery-menace",
                "horde-leveling-era-horde-searing-gorge-objective-7724-1-greater-lava-spider",
            },
            id = "horde-leveling-era-horde-searing-gorge-turnin-7724-fiery-menace",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Hansel Heavyhands",
                    mapID = 1427,
                    offMapText = "Travel to Hansel Heavyhands in Searing Gorge.",
                    x = 0.3859,
                    y = 0.2781,
                },
            },
            sourceActionID = "turnin-7724-fiery-menace",
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceStep = 48,
            text = "Turn in Fiery Menace! to Hansel Heavyhands.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 7727, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {
                "horde-leveling-era-horde-searing-gorge-accept-7727-incendosaurs-whateverosaur-is-more-like-",
                "horde-leveling-era-horde-searing-gorge-objective-7727-1-incendosaur",
            },
            id = "horde-leveling-era-horde-searing-gorge-turnin-7727-incendosaurs-whateverosaur-is-more-like-",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Hansel Heavyhands",
                    mapID = 1427,
                    offMapText = "Travel to Hansel Heavyhands in Searing Gorge.",
                    x = 0.3859,
                    y = 0.2781,
                },
            },
            sourceActionID = "turnin-7727-incendosaurs-whateverosaur-is-more-like-",
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceStep = 48,
            text = "Turn in Incendosaurs? Whateverosaur is More Like It to Hansel Heavyhands.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 7728, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {
                "horde-leveling-era-horde-searing-gorge-accept-7728-stolen-smithing-tuyere-and-lookout-s-spy",
                "horde-leveling-era-horde-searing-gorge-objective-7728-1-dark-iron-steamsmith",
                "horde-leveling-era-horde-searing-gorge-objective-7728-2-lookout-s-spyglass",
            },
            id = "horde-leveling-era-horde-searing-gorge-turnin-7728-stolen-smithing-tuyere-and-lookout-s-spy",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Taskmaster Scrange",
                    mapID = 1427,
                    offMapText = "Travel to Taskmaster Scrange in Searing Gorge.",
                    x = 0.3898,
                    y = 0.2751,
                },
            },
            sourceActionID = "turnin-7728-stolen-smithing-tuyere-and-lookout-s-spy",
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceStep = 49,
            text = "Turn in STOLEN: Smithing Tuyere and Lookout's Spyglass to Taskmaster Scrange.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 7729, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 45 } } } },
            dependsOn = {
                "horde-leveling-era-horde-searing-gorge-accept-7729-job-opportunity-culling-the-competition",
                "horde-leveling-era-horde-searing-gorge-objective-7729-1-dark-iron-taskmaster",
                "horde-leveling-era-horde-searing-gorge-objective-7729-2-dark-iron-slaver",
            },
            id = "horde-leveling-era-horde-searing-gorge-turnin-7729-job-opportunity-culling-the-competition",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Taskmaster Scrange",
                    mapID = 1427,
                    offMapText = "Travel to Taskmaster Scrange in Searing Gorge.",
                    x = 0.3898,
                    y = 0.2751,
                },
            },
            sourceActionID = "turnin-7729-job-opportunity-culling-the-competition",
            sourceGuide = "leveling-era-horde-searing-gorge",
            sourceStep = 49,
            text = "Turn in JOB OPPORTUNITY: Culling the Competition to Taskmaster Scrange.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
    },
})
