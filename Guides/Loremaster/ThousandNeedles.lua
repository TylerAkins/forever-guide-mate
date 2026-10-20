local _, ns = ...

-- Source decisions: docs/loremaster/thousand-needles.json.
-- Coordinates require a Forever client walkthrough.
ns:RegisterGuide({
    id = "loremaster-thousand-needles",
    title = "Thousand Needles",
    category = "Loremaster Guides",
    revision = 2,
    routeMode = "ordered",
    loremasterExpanded = true,
    goals = {
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
            checkpointQuest = 1179,
            complete = { level = { min = 28 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-level-before-accept-1179-the-brassbolts-brothers",
            kind = "note",
            requiredLevel = 28,
            requiredQuests = {},
            text = "Reach level 28 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "level-before-accept-1179-the-brassbolts-brothers",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 1179, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1179-the-brassbolts-brothers",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Pilot Longbeard",
                    mapID = 1455,
                    offMapText = "Travel to Pilot Longbeard in Ironforge.",
                    x = 0.7273,
                    y = 0.9401,
                },
            },
            sourceStep = 72,
            text = "Accept The Brassbolts Brothers from Pilot Longbeard.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "accept-1179-the-brassbolts-brothers",
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
            complete = { quest = { id = 1100, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-accept-1100-lonebrow-s-journal",
            kind = "accept",
            requiredQuests = {},
            sourceStep = 25,
            text = "Use the Henrig Lonebrow's Journal to accept Lonebrow's Journal.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            sourceActionID = "accept-1100-lonebrow-s-journal",
        },
        {
            complete = { quest = { id = 1100, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-accept-1100-lonebrow-s-journal" },
            id = "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-turnin-1100-lonebrow-s-journal",
            kind = "turnin",
            requiredQuests = {},
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
            text = "Turn in Lonebrow's Journal to Falfindel Waywarder.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            sourceActionID = "turnin-1100-lonebrow-s-journal",
        },
        {
            complete = { quest = { id = 1110, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-accept-1110-rocket-car-parts",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Kravel Koalbeard",
                    mapID = 1441,
                    offMapText = "Travel to Kravel Koalbeard in Thousand Needles.",
                    x = 0.788,
                    y = 0.773,
                },
            },
            sourceStep = 29,
            text = "Accept Rocket Car Parts from Kravel Koalbeard.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            sourceActionID = "accept-1110-rocket-car-parts",
        },
        {
            complete = { quest = { id = 1104, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-accept-1104-salt-flat-venom",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Fizzle Brassbolts",
                    mapID = 1441,
                    offMapText = "Travel to Fizzle Brassbolts in Thousand Needles.",
                    x = 0.7806,
                    y = 0.7713,
                },
            },
            sourceStep = 30,
            text = "Accept Salt Flat Venom from Fizzle Brassbolts.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            sourceActionID = "accept-1104-salt-flat-venom",
        },
        {
            complete = { quest = { id = 1179, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-turnin-1179-the-brassbolts-brothers",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Wizzle Brassbolts",
                    mapID = 1441,
                    offMapText = "Travel to Wizzle Brassbolts in Thousand Needles.",
                    x = 0.7814,
                    y = 0.7712,
                },
            },
            sourceStep = 31,
            text = "Turn in The Brassbolts Brothers to Wizzle Brassbolts.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            sourceActionID = "turnin-1179-the-brassbolts-brothers",
        },
        {
            complete = { quest = { id = 1105, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-accept-1105-hardened-shells",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Wizzle Brassbolts",
                    mapID = 1441,
                    offMapText = "Travel to Wizzle Brassbolts in Thousand Needles.",
                    x = 0.7814,
                    y = 0.7712,
                },
            },
            sourceStep = 31,
            text = "Accept Hardened Shells from Wizzle Brassbolts.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            sourceActionID = "accept-1105-hardened-shells",
        },
        {
            complete = { quest = { id = 1176, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-accept-1176-load-lightening",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Pozzik", mapID = 1441, offMapText = "Travel to Pozzik in Thousand Needles.", x = 0.8018, y = 0.7589 },
            },
            sourceStep = 32,
            text = "Accept Load Lightening from Pozzik.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            sourceActionID = "accept-1176-load-lightening",
        },
        {
            complete = { quest = { id = 1175, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-accept-1175-a-bump-in-the-road",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Trackmaster Zherin",
                    mapID = 1441,
                    offMapText = "Travel to Trackmaster Zherin in Thousand Needles.",
                    x = 0.8164,
                    y = 0.7795,
                },
            },
            sourceStep = 33,
            text = "Accept A Bump in the Road from Trackmaster Zherin.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            sourceActionID = "accept-1175-a-bump-in-the-road",
        },
        {
            complete = { questObjective = { count = 6, id = 1175, index = 3, text = "Saltstone Gazer" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } } } },
            dependsOn = { "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-accept-1175-a-bump-in-the-road" },
            id = "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-objective-1175-3-saltstone-gazer",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Saltstone Gazer", mapID = 1441, offMapText = "Travel to Saltstone Gazer.", x = 0.774, y = 0.88 } },
            sourceStep = 34,
            text = "Kill 6 Saltstone Gazer.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            sourceActionID = "objective-1175-3-saltstone-gazer",
        },
        {
            complete = { questObjective = { count = 10, id = 1176, index = 1, text = "Salt Flats Scavenger" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            dependsOn = { "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-accept-1176-load-lightening" },
            id = "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-objective-1176-1-salt-flats-scavenger",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Salt Flats Scavenger", mapID = 1441, offMapText = "Travel to Salt Flats Scavenger.", x = 0.88, y = 0.66 },
            },
            sourceStep = 35,
            text = "Collect 10 Hollow Vulture Bone.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            sourceActionID = "objective-1176-1-salt-flats-scavenger",
        },
        {
            complete = { questObjective = { count = 9, id = 1105, index = 1, text = "Hardened Tortoise Shell" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } } } },
            dependsOn = { "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-accept-1105-hardened-shells" },
            id = "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-objective-1105-1-hardened-tortoise-shell",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Hardened Tortoise Shell",
                    mapID = 1441,
                    offMapText = "Travel to Hardened Tortoise Shell.",
                    x = 0.828,
                    y = 0.552,
                },
            },
            sourceStep = 36,
            text = "Collect 9 Hardened Tortoise Shell.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            sourceActionID = "objective-1105-1-hardened-tortoise-shell",
        },
        {
            complete = { questObjective = { count = 6, id = 1104, index = 1, text = "Salty Scorpid Venom" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } } } },
            dependsOn = { "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-accept-1104-salt-flat-venom" },
            id = "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-objective-1104-1-salty-scorpid-venom",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Salty Scorpid Venom", mapID = 1441, offMapText = "Travel to Salty Scorpid Venom.", x = 0.824, y = 0.6 },
            },
            sourceStep = 37,
            text = "Collect 6 Salty Scorpid Venom.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            sourceActionID = "objective-1104-1-salty-scorpid-venom",
        },
        {
            complete = { questObjective = { count = 10, id = 1175, index = 1, text = "Saltstone Basilisk" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } } } },
            dependsOn = { "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-accept-1175-a-bump-in-the-road" },
            id = "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-objective-1175-1-saltstone-basilisk",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Saltstone Basilisk", mapID = 1441, offMapText = "Travel to Saltstone Basilisk.", x = 0.784, y = 0.59 },
            },
            sourceStep = 38,
            text = "Kill 10 Saltstone Basilisk.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            sourceActionID = "objective-1175-1-saltstone-basilisk",
        },
        {
            complete = { questObjective = { count = 10, id = 1175, index = 2, text = "Saltstone Crystalhide" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } } } },
            dependsOn = { "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-accept-1175-a-bump-in-the-road" },
            id = "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-objective-1175-2-saltstone-crystalhide",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Saltstone Crystalhide", mapID = 1441, offMapText = "Travel to Saltstone Crystalhide.", x = 0.788, y = 0.868 },
            },
            sourceStep = 39,
            text = "Kill 10 Saltstone Crystalhide.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            sourceActionID = "objective-1175-2-saltstone-crystalhide",
        },
        {
            complete = { questObjective = { count = 30, id = 1110, index = 1, text = "Rocket Car Parts" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } } } },
            dependsOn = { "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-accept-1110-rocket-car-parts" },
            id = "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-objective-1110-1-rocket-car-parts",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Rocket Car Parts", mapID = 1441, offMapText = "Travel to Rocket Car Parts.", x = 0.83, y = 0.646 } },
            sourceStep = 40,
            text = "Collect 30 Rocket Car Parts.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            sourceActionID = "objective-1110-1-rocket-car-parts",
        },
        {
            complete = { quest = { id = 1110, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-accept-1110-rocket-car-parts",
                "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-objective-1110-1-rocket-car-parts",
            },
            id = "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-turnin-1110-rocket-car-parts",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Kravel Koalbeard",
                    mapID = 1441,
                    offMapText = "Travel to Kravel Koalbeard in Thousand Needles.",
                    x = 0.7779,
                    y = 0.7727,
                },
            },
            sourceStep = 41,
            text = "Turn in Rocket Car Parts to Kravel Koalbeard.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            sourceActionID = "turnin-1110-rocket-car-parts",
        },
        {
            complete = { quest = { id = 1111, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-accept-1111-wharfmaster-dizzywig",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Kravel Koalbeard",
                    mapID = 1441,
                    offMapText = "Travel to Kravel Koalbeard in Thousand Needles.",
                    x = 0.788,
                    y = 0.773,
                },
            },
            sourceStep = 41,
            text = "Accept Wharfmaster Dizzywig from Kravel Koalbeard.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            sourceActionID = "accept-1111-wharfmaster-dizzywig",
        },
        {
            complete = { quest = { id = 5762, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-accept-5762-hemet-nesingwary-jr",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Kravel Koalbeard",
                    mapID = 1441,
                    offMapText = "Travel to Kravel Koalbeard in Thousand Needles.",
                    x = 0.788,
                    y = 0.773,
                },
            },
            sourceStep = 41,
            text = "Accept Hemet Nesingwary Jr. from Kravel Koalbeard.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            sourceActionID = "accept-5762-hemet-nesingwary-jr",
        },
        {
            complete = { quest = { id = 1104, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-accept-1104-salt-flat-venom",
                "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-objective-1104-1-salty-scorpid-venom",
            },
            id = "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-turnin-1104-salt-flat-venom",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Fizzle Brassbolts",
                    mapID = 1441,
                    offMapText = "Travel to Fizzle Brassbolts in Thousand Needles.",
                    x = 0.7806,
                    y = 0.7713,
                },
            },
            sourceStep = 42,
            text = "Turn in Salt Flat Venom to Fizzle Brassbolts.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            sourceActionID = "turnin-1104-salt-flat-venom",
        },
        {
            complete = { quest = { id = 1105, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-accept-1105-hardened-shells",
                "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-objective-1105-1-hardened-tortoise-shell",
            },
            id = "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-turnin-1105-hardened-shells",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Wizzle Brassbolts",
                    mapID = 1441,
                    offMapText = "Travel to Wizzle Brassbolts in Thousand Needles.",
                    x = 0.7814,
                    y = 0.7712,
                },
            },
            sourceStep = 43,
            text = "Turn in Hardened Shells to Wizzle Brassbolts.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            sourceActionID = "turnin-1105-hardened-shells",
        },
        {
            complete = { quest = { id = 1176, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-accept-1176-load-lightening",
                "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-objective-1176-1-salt-flats-scavenger",
            },
            id = "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-turnin-1176-load-lightening",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Pozzik", mapID = 1441, offMapText = "Travel to Pozzik in Thousand Needles.", x = 0.8018, y = 0.7588 },
            },
            sourceStep = 44,
            text = "Turn in Load Lightening to Pozzik.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            sourceActionID = "turnin-1176-load-lightening",
        },
        {
            complete = { quest = { id = 1178, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-accept-1178-goblin-sponsorship",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1176 } } },
            route = {
                { label = "Pozzik", mapID = 1441, offMapText = "Travel to Pozzik in Thousand Needles.", x = 0.8018, y = 0.7588 },
            },
            sourceStep = 44,
            text = "Accept Goblin Sponsorship from Pozzik.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            sourceActionID = "accept-1178-goblin-sponsorship",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1178, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1178, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1175, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-accept-1175-a-bump-in-the-road",
                "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-objective-1175-3-saltstone-gazer",
                "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-objective-1175-1-saltstone-basilisk",
                "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-objective-1175-2-saltstone-crystalhide",
            },
            id = "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-turnin-1175-a-bump-in-the-road",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Trackmaster Zherin",
                    mapID = 1441,
                    offMapText = "Travel to Trackmaster Zherin in Thousand Needles.",
                    x = 0.8163,
                    y = 0.7795,
                },
            },
            sourceStep = 45,
            text = "Turn in A Bump in the Road to Trackmaster Zherin.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            sourceActionID = "turnin-1175-a-bump-in-the-road",
        },
        {
            complete = { quest = { id = 1178, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            dependsOn = { "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-accept-1178-goblin-sponsorship" },
            id = "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-turnin-1178-goblin-sponsorship",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1176 } } },
            route = { { label = "Gazlowe", mapID = 1413, offMapText = "Travel to Gazlowe in The Barrens.", x = 0.6268, y = 0.3623 } },
            sourceStep = 56,
            text = "Turn in Goblin Sponsorship to Gazlowe.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            sourceActionID = "turnin-1178-goblin-sponsorship",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1178, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1178, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1180, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-accept-1180-goblin-sponsorship",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1178 } } },
            route = { { label = "Gazlowe", mapID = 1413, offMapText = "Travel to Gazlowe in The Barrens.", x = 0.6268, y = 0.3623 } },
            sourceStep = 56,
            text = "Accept Goblin Sponsorship from Gazlowe.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            sourceActionID = "accept-1180-goblin-sponsorship",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1180, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1180, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1178, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1111, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = { "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-accept-1111-wharfmaster-dizzywig" },
            id = "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-turnin-1111-wharfmaster-dizzywig",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Wharfmaster Dizzywig",
                    mapID = 1413,
                    offMapText = "Travel to Wharfmaster Dizzywig in The Barrens.",
                    x = 0.6335,
                    y = 0.3845,
                },
            },
            sourceStep = 61,
            text = "Turn in Wharfmaster Dizzywig to Wharfmaster Dizzywig.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            sourceActionID = "turnin-1111-wharfmaster-dizzywig",
        },
        {
            complete = { quest = { id = 1112, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-accept-1112-parts-for-kravel",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1111 } } },
            route = {
                {
                    label = "Wharfmaster Dizzywig",
                    mapID = 1413,
                    offMapText = "Travel to Wharfmaster Dizzywig in The Barrens.",
                    x = 0.6335,
                    y = 0.3845,
                },
            },
            sourceStep = 61,
            text = "Accept Parts for Kravel from Wharfmaster Dizzywig.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            sourceActionID = "accept-1112-parts-for-kravel",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1112, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1112, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-alliance-stranglethorn-vale",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-stranglethorn-vale",
            text = "Reach level 34 before the Stranglethorn Vale visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 34 } },
            requiredLevel = 34,
        },
        {
            checkpointQuest = 1180,
            complete = { level = { min = 29 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-stranglethorn-vale-level-before-turnin-1180-goblin-sponsorship",
            kind = "note",
            requiredLevel = 29,
            requiredQuests = {},
            text = "Reach level 29 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stranglethorn-vale",
            sourceActionID = "level-before-turnin-1180-goblin-sponsorship",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1180, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1180, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1178, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1180, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stranglethorn-vale-turnin-1180-goblin-sponsorship",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1178 } } },
            route = {
                {
                    label = "Wharfmaster Lozgil",
                    mapID = 1434,
                    offMapText = "Travel to Wharfmaster Lozgil in Stranglethorn Vale.",
                    x = 0.2635,
                    y = 0.7356,
                },
            },
            sourceStep = 2,
            text = "Turn in Goblin Sponsorship to Wharfmaster Lozgil.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-stranglethorn-vale",
            sourceActionID = "turnin-1180-goblin-sponsorship",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1180, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1180, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1178, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1181, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stranglethorn-vale-accept-1181-goblin-sponsorship",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1180 } } },
            route = {
                {
                    label = "Wharfmaster Lozgil",
                    mapID = 1434,
                    offMapText = "Travel to Wharfmaster Lozgil in Stranglethorn Vale.",
                    x = 0.2635,
                    y = 0.7356,
                },
            },
            sourceStep = 2,
            text = "Accept Goblin Sponsorship from Wharfmaster Lozgil.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stranglethorn-vale",
            sourceActionID = "accept-1181-goblin-sponsorship",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1181, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1181, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1180, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1181, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            dependsOn = { "alliance-leveling-era-alliance-stranglethorn-vale-accept-1181-goblin-sponsorship" },
            id = "alliance-leveling-era-alliance-stranglethorn-vale-turnin-1181-goblin-sponsorship",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1180 } } },
            route = {
                {
                    label = "Baron Revilgaz",
                    mapID = 1434,
                    offMapText = "Travel to Baron Revilgaz in Stranglethorn Vale.",
                    x = 0.2723,
                    y = 0.7687,
                },
            },
            sourceStep = 8,
            text = "Turn in Goblin Sponsorship to Baron Revilgaz.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-stranglethorn-vale",
            sourceActionID = "turnin-1181-goblin-sponsorship",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1181, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1181, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1180, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1182, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stranglethorn-vale-accept-1182-goblin-sponsorship",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1181 } } },
            route = {
                {
                    label = "Baron Revilgaz",
                    mapID = 1434,
                    offMapText = "Travel to Baron Revilgaz in Stranglethorn Vale.",
                    x = 0.2723,
                    y = 0.7687,
                },
            },
            sourceStep = 8,
            text = "Accept Goblin Sponsorship from Baron Revilgaz.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stranglethorn-vale",
            sourceActionID = "accept-1182-goblin-sponsorship",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1182, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1182, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1181, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1180, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5762, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stranglethorn-vale-turnin-5762-hemet-nesingwary",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Hemet Nesingwary",
                    mapID = 1434,
                    offMapText = "Travel to Hemet Nesingwary in Stranglethorn Vale.",
                    x = 0.3566,
                    y = 0.1081,
                },
            },
            sourceStep = 19,
            text = "Turn in Hemet Nesingwary to Hemet Nesingwary.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-stranglethorn-vale",
            sourceActionID = "turnin-5762-hemet-nesingwary",
        },
        {
            checkpointQuest = 1182,
            complete = {
                any = { { all = { { item = { minCount = 1, name = "Cozzle's Key" } } } }, { quest = { id = 1182, state = "complete" } } },
            },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            dependsOn = { "alliance-leveling-era-alliance-stranglethorn-vale-accept-1182-goblin-sponsorship" },
            id = "alliance-leveling-era-alliance-stranglethorn-vale-objective-1182-1-foreman-cozzle",
            instructionOnly = true,
            kind = "note",
            rememberPreparation = 1182,
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1181 } } },
            route = { { label = "Foreman Cozzle", mapID = 1434, offMapText = "Travel to Foreman Cozzle.", x = 0.4265, y = 0.1835 } },
            sourceInstructionIndex = 1,
            sourceInstructionStep = 30,
            text = "Kill Foreman Cozzle at the top of the Venture Co. platform and loot Cozzle's Key.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stranglethorn-vale",
            sourceActionID = "objective-1182-1-foreman-cozzle",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1182, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1182, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1181, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1180, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 1182, index = 1 } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            dependsOn = { "alliance-leveling-era-alliance-stranglethorn-vale-accept-1182-goblin-sponsorship" },
            id = "alliance-leveling-era-alliance-stranglethorn-vale-objective-1182-prepared-result",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1181 } } },
            route = {
                { label = "Cozzle's Footlocker", mapID = 1434, offMapText = "Travel to Cozzle's Footlocker.", x = 0.4334, y = 0.2034 },
            },
            sourceStep = 30,
            text = "Use Cozzle's Key to open his footlocker inside the nearby building. Collect the Fuel Regulator Blueprints.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-stranglethorn-vale",
            sourceActionID = "objective-1182-prepared-result",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1182, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1182, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1181, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1180, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1182, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-stranglethorn-vale-accept-1182-goblin-sponsorship",
                "alliance-leveling-era-alliance-stranglethorn-vale-objective-1182-1-foreman-cozzle",
                "alliance-leveling-era-alliance-stranglethorn-vale-objective-1182-prepared-result",
            },
            id = "alliance-leveling-era-alliance-stranglethorn-vale-turnin-1182-goblin-sponsorship",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1181 } } },
            route = {
                {
                    label = "Baron Revilgaz",
                    mapID = 1434,
                    offMapText = "Travel to Baron Revilgaz in Stranglethorn Vale.",
                    x = 0.2723,
                    y = 0.7687,
                },
            },
            sourceStep = 51,
            text = "Turn in Goblin Sponsorship to Baron Revilgaz.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-stranglethorn-vale",
            sourceActionID = "turnin-1182-goblin-sponsorship",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1182, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1182, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1181, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1180, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1183, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stranglethorn-vale-accept-1183-goblin-sponsorship",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1182 } } },
            route = {
                {
                    label = "Baron Revilgaz",
                    mapID = 1434,
                    offMapText = "Travel to Baron Revilgaz in Stranglethorn Vale.",
                    x = 0.2723,
                    y = 0.7687,
                },
            },
            sourceStep = 51,
            text = "Accept Goblin Sponsorship from Baron Revilgaz.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stranglethorn-vale",
            sourceActionID = "accept-1183-goblin-sponsorship",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1183, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1183, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1182, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1181, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1180, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-alliance-desolace",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-desolace",
            text = "Reach level 35 before the Desolace visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 35 } },
            requiredLevel = 35,
        },
        {
            complete = { quest = { id = 1112, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-turnin-1112-parts-for-kravel",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1111 } } },
            route = {
                {
                    label = "Kravel Koalbeard",
                    mapID = 1441,
                    offMapText = "Travel to Kravel Koalbeard in Thousand Needles.",
                    x = 0.7779,
                    y = 0.7726,
                },
            },
            sourceStep = 54,
            text = "Turn in Parts for Kravel to Kravel Koalbeard.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "turnin-1112-parts-for-kravel",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1112, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1112, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1114, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-accept-1114-delivery-to-the-gnomes",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1112 } } },
            route = {
                {
                    label = "Kravel Koalbeard",
                    mapID = 1441,
                    offMapText = "Travel to Kravel Koalbeard in Thousand Needles.",
                    x = 0.788,
                    y = 0.773,
                },
            },
            sourceStep = 55,
            text = "Accept Delivery to the Gnomes from Kravel Koalbeard.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "accept-1114-delivery-to-the-gnomes",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1114, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1114, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1112, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1114, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = { "alliance-leveling-era-alliance-desolace-accept-1114-delivery-to-the-gnomes" },
            id = "alliance-leveling-era-alliance-desolace-turnin-1114-delivery-to-the-gnomes",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1112 } } },
            route = {
                {
                    label = "Fizzle Brassbolts",
                    mapID = 1441,
                    offMapText = "Travel to Fizzle Brassbolts in Thousand Needles.",
                    x = 0.7806,
                    y = 0.7712,
                },
            },
            sourceStep = 56,
            text = "Turn in Delivery to the Gnomes to Fizzle Brassbolts.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "turnin-1114-delivery-to-the-gnomes",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1114, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1114, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1112, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1115, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-accept-1115-the-rumormonger",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1114 } } },
            route = {
                {
                    label = "Kravel Koalbeard",
                    mapID = 1441,
                    offMapText = "Travel to Kravel Koalbeard in Thousand Needles.",
                    x = 0.788,
                    y = 0.773,
                },
            },
            sourceStep = 57,
            text = "Accept The Rumormonger from Kravel Koalbeard.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "accept-1115-the-rumormonger",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1115, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1115, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1114, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1183, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-turnin-1183-goblin-sponsorship",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1182 } } },
            route = {
                { label = "Pozzik", mapID = 1441, offMapText = "Travel to Pozzik in Thousand Needles.", x = 0.8018, y = 0.7588 },
            },
            sourceStep = 58,
            text = "Turn in Goblin Sponsorship to Pozzik.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "turnin-1183-goblin-sponsorship",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1183, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1183, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1182, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1181, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1180, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1186, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-accept-1186-the-eighteenth-pilot",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1183 } } },
            route = {
                { label = "Pozzik", mapID = 1441, offMapText = "Travel to Pozzik in Thousand Needles.", x = 0.8018, y = 0.7588 },
            },
            sourceStep = 58,
            text = "Accept The Eighteenth Pilot from Pozzik.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "accept-1186-the-eighteenth-pilot",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1186, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1186, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1183, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1182, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1181, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1180, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1186, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            dependsOn = { "alliance-leveling-era-alliance-desolace-accept-1186-the-eighteenth-pilot" },
            id = "alliance-leveling-era-alliance-desolace-turnin-1186-the-eighteenth-pilot",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1183 } } },
            route = {
                { label = "Razzeric", mapID = 1441, offMapText = "Travel to Razzeric in Thousand Needles.", x = 0.8033, y = 0.7609 },
            },
            sourceStep = 59,
            text = "Turn in The Eighteenth Pilot to Razzeric.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "turnin-1186-the-eighteenth-pilot",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1186, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1186, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1183, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1182, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1181, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1180, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1187, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-accept-1187-razzeric-s-tweaking",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1186 } } },
            route = {
                { label = "Razzeric", mapID = 1441, offMapText = "Travel to Razzeric in Thousand Needles.", x = 0.8033, y = 0.7609 },
            },
            sourceStep = 59,
            text = "Accept Razzeric's Tweaking from Razzeric.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "accept-1187-razzeric-s-tweaking",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1187, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1187, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1186, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1183, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1182, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1181, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1180, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-alliance-stranglethorn-vale-part-2",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-stranglethorn-vale-part-2",
            text = "Reach level 37 before the Stranglethorn Vale visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 37 } },
            requiredLevel = 37,
        },
        {
            checkpointQuest = 1115,
            complete = { level = { min = 30 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-stranglethorn-vale-part-2-level-before-turnin-1115-the-rumormonger",
            kind = "note",
            requiredLevel = 30,
            requiredQuests = {},
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stranglethorn-vale-part-2",
            sourceActionID = "level-before-turnin-1115-the-rumormonger",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1115, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1115, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1114, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1115, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stranglethorn-vale-part-2-turnin-1115-the-rumormonger",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1114 } } },
            route = {
                { label = "Krazek", mapID = 1434, offMapText = "Travel to Krazek in Stranglethorn Vale.", x = 0.2694, y = 0.7721 },
            },
            sourceStep = 3,
            text = "Turn in The Rumormonger to Krazek.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-stranglethorn-vale-part-2",
            sourceActionID = "turnin-1115-the-rumormonger",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1115, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1115, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1114, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1116, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stranglethorn-vale-part-2-accept-1116-dream-dust-in-the-swamp",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1115 } } },
            route = {
                { label = "Krazek", mapID = 1434, offMapText = "Travel to Krazek in Stranglethorn Vale.", x = 0.2694, y = 0.7721 },
            },
            sourceStep = 52,
            text = "Accept Dream Dust in the Swamp from Krazek.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stranglethorn-vale-part-2",
            sourceActionID = "accept-1116-dream-dust-in-the-swamp",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1116, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1116, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1115, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
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
            checkpointQuest = 1116,
            complete = { level = { min = 30 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-level-before-objective-1116-1-adolescent-whelp",
            kind = "note",
            requiredLevel = 30,
            requiredQuests = {},
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "level-before-objective-1116-1-adolescent-whelp",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1116, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1116, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1115, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 1116, index = 1, text = "Adolescent Whelp" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-objective-1116-1-adolescent-whelp",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1115 } } },
            route = {
                { label = "Adolescent Whelp", mapID = 1435, offMapText = "Travel to Adolescent Whelp.", x = 0.124, y = 0.574 },
            },
            sourceStep = 18,
            text = "Collect 10 Speck of Dream Dust.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "objective-1116-1-adolescent-whelp",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1116, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1116, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1115, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 1116, index = 1, text = "Adolescent Whelp" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-objective-1116-1-adolescent-whelp-2",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1115 } } },
            route = {
                { label = "Adolescent Whelp", mapID = 1435, offMapText = "Travel to Adolescent Whelp.", x = 0.168, y = 0.584 },
            },
            sourceStep = 22,
            text = "Collect 10 Speck of Dream Dust.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "objective-1116-1-adolescent-whelp-2",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1116, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1116, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1115, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1116, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-swamp-of-sorrows-objective-1116-1-adolescent-whelp",
                "alliance-leveling-era-alliance-swamp-of-sorrows-objective-1116-1-adolescent-whelp-2",
            },
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-turnin-1116-dream-dust-in-the-swamp",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1115 } } },
            route = {
                { label = "Krazek", mapID = 1434, offMapText = "Travel to Krazek in Stranglethorn Vale.", x = 0.2694, y = 0.7721 },
            },
            sourceStep = 38,
            text = "Turn in Dream Dust in the Swamp to Krazek.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "turnin-1116-dream-dust-in-the-swamp",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1116, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1116, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1115, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1117, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-accept-1117-rumors-for-kravel",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1116 } } },
            route = {
                { label = "Krazek", mapID = 1434, offMapText = "Travel to Krazek in Stranglethorn Vale.", x = 0.2694, y = 0.7721 },
            },
            sourceStep = 39,
            text = "Accept Rumors for Kravel from Krazek.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "accept-1117-rumors-for-kravel",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1117, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1117, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1116, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1115, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-alliance-dustwallow-marsh",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-dustwallow-marsh",
            text = "Reach level 40 before the Dustwallow Marsh visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 40 } },
            requiredLevel = 40,
        },
        {
            complete = { questObjective = { count = 1, id = 1187, index = 1 } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-dustwallow-marsh-objective-1187-1-seaforium-booster",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1186 } } },
            route = {
                { label = "Razzeric's Tweaking", mapID = 1445, offMapText = "Travel to Razzeric's Tweaking.", x = 0.5407, y = 0.5649 },
            },
            sourceStep = 33,
            text = "Open the Gizmorium Shipping Crate on the Dustwallow coast and collect the Seaforium Booster.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-dustwallow-marsh",
            sourceActionID = "objective-1187-1-seaforium-booster",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1187, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1187, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1186, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1183, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1182, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1181, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1180, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-alliance-desolace-part-2",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-desolace-part-2",
            text = "Reach level 40 before the Desolace visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 40 } },
            requiredLevel = 40,
        },
        {
            complete = { quest = { id = 1117, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-part-2-turnin-1117-rumors-for-kravel",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1116 } } },
            route = {
                {
                    label = "Kravel Koalbeard",
                    mapID = 1441,
                    offMapText = "Travel to Kravel Koalbeard in Thousand Needles.",
                    x = 0.7779,
                    y = 0.7727,
                },
            },
            sourceStep = 22,
            text = "Turn in Rumors for Kravel to Kravel Koalbeard.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace-part-2",
            sourceActionID = "turnin-1117-rumors-for-kravel",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1117, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1117, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1116, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1115, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 1118,
            complete = { level = { min = 35 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-desolace-part-2-level-before-accept-1118-back-to-booty-bay",
            kind = "note",
            requiredLevel = 35,
            requiredQuests = {},
            text = "Reach level 35 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace-part-2",
            sourceActionID = "level-before-accept-1118-back-to-booty-bay",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1118, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1118, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1117, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1116, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1115, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1118, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-part-2-accept-1118-back-to-booty-bay",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1117 } } },
            route = {
                {
                    label = "Kravel Koalbeard",
                    mapID = 1441,
                    offMapText = "Travel to Kravel Koalbeard in Thousand Needles.",
                    x = 0.788,
                    y = 0.773,
                },
            },
            sourceStep = 23,
            text = "Accept Back to Booty Bay from Kravel Koalbeard.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace-part-2",
            sourceActionID = "accept-1118-back-to-booty-bay",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1118, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1118, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1117, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1116, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1115, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1106, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 26 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-part-2-accept-1106-martek-the-exiled",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "all", quests = { 1104, 1105 } } },
            route = {
                {
                    label = "Fizzle Brassbolts",
                    mapID = 1441,
                    offMapText = "Travel to Fizzle Brassbolts in Thousand Needles.",
                    x = 0.7806,
                    y = 0.7712,
                },
            },
            sourceStep = 24,
            text = "Accept Martek the Exiled from Fizzle Brassbolts.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace-part-2",
            sourceActionID = "accept-1106-martek-the-exiled",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1106, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1106, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            all = {
                                                { any = { { quest = { id = 1104, state = "activeOrCompleted" } }, { all = {} } } },
                                                { any = { { quest = { id = 1105, state = "activeOrCompleted" } }, { all = {} } } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 1187, index = 1 } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-part-2-objective-1187-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1186 } } },
            route = {
                { label = "Razzeric's Tweaking", mapID = 1445, offMapText = "Travel to Razzeric's Tweaking.", x = 0.5407, y = 0.5649 },
            },
            sourceStep = 25,
            text = "Open the Gizmorium Shipping Crate on the Dustwallow coast and collect the Seaforium Booster.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace-part-2",
            sourceActionID = "objective-1187-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1187, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1187, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1186, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1183, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1182, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1181, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1180, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1187, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-desolace-part-2-objective-1187-quest-work",
                "alliance-leveling-era-alliance-dustwallow-marsh-objective-1187-1-seaforium-booster",
            },
            id = "alliance-leveling-era-alliance-desolace-part-2-turnin-1187-razzeric-s-tweaking",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1186 } } },
            route = {
                { label = "Razzeric", mapID = 1441, offMapText = "Travel to Razzeric in Thousand Needles.", x = 0.8033, y = 0.761 },
            },
            sourceStep = 25,
            text = "Turn in Razzeric's Tweaking to Razzeric.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace-part-2",
            sourceActionID = "turnin-1187-razzeric-s-tweaking",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1187, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1187, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1186, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1183, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1182, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1181, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1180, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1188, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-part-2-accept-1188-safety-first",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1187 } } },
            route = {
                { label = "Razzeric", mapID = 1441, offMapText = "Travel to Razzeric in Thousand Needles.", x = 0.8033, y = 0.761 },
            },
            sourceStep = 25,
            text = "Accept Safety First from Razzeric.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace-part-2",
            sourceActionID = "accept-1188-safety-first",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1188, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1188, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1187, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1186, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1183, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1182, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1181, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1180, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-alliance-badlands",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-badlands",
            text = "Reach level 41 before the Badlands visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 41 } },
            requiredLevel = 41,
        },
        {
            complete = { quest = { id = 1106, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 26 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-badlands-turnin-1106-martek-the-exiled",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "all", quests = { 1104, 1105 } } },
            route = {
                {
                    label = "Martek the Exiled",
                    mapID = 1418,
                    offMapText = "Travel to Martek the Exiled in Badlands.",
                    x = 0.4222,
                    y = 0.5269,
                },
            },
            sourceStep = 21,
            text = "Turn in Martek the Exiled to Martek the Exiled.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "turnin-1106-martek-the-exiled",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1106, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1106, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            all = {
                                                { any = { { quest = { id = 1104, state = "activeOrCompleted" } }, { all = {} } } },
                                                { any = { { quest = { id = 1105, state = "activeOrCompleted" } }, { all = {} } } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1108, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-badlands-accept-1108-indurium",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1106 } } },
            route = {
                {
                    label = "Martek the Exiled",
                    mapID = 1418,
                    offMapText = "Travel to Martek the Exiled in Badlands.",
                    x = 0.4222,
                    y = 0.5269,
                },
            },
            sourceStep = 21,
            text = "Accept Indurium from Martek the Exiled.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "accept-1108-indurium",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1108, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1108, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1106, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    all = {
                                                                        { any = { { quest = { id = 1104, state = "activeOrCompleted" } }, { all = {} } } },
                                                                        { any = { { quest = { id = 1105, state = "activeOrCompleted" } }, { all = {} } } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 1108, index = 1, text = "Indurium Flake" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } } } },
            dependsOn = { "alliance-leveling-era-alliance-badlands-accept-1108-indurium" },
            id = "alliance-leveling-era-alliance-badlands-objective-1108-1-indurium-flake",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1106 } } },
            route = { { label = "Indurium Flake", mapID = 1418, offMapText = "Travel to Indurium Flake.", x = 0.504, y = 0.686 } },
            sourceStep = 24,
            text = "Collect 10 Indurium Flake.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "objective-1108-1-indurium-flake",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1108, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1108, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1106, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    all = {
                                                                        { any = { { quest = { id = 1104, state = "activeOrCompleted" } }, { all = {} } } },
                                                                        { any = { { quest = { id = 1105, state = "activeOrCompleted" } }, { all = {} } } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1108, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-badlands-accept-1108-indurium",
                "alliance-leveling-era-alliance-badlands-objective-1108-1-indurium-flake",
            },
            id = "alliance-leveling-era-alliance-badlands-turnin-1108-indurium",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1106 } } },
            route = {
                {
                    label = "Martek the Exiled",
                    mapID = 1418,
                    offMapText = "Travel to Martek the Exiled in Badlands.",
                    x = 0.4221,
                    y = 0.527,
                },
            },
            sourceStep = 27,
            text = "Turn in Indurium to Martek the Exiled.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "turnin-1108-indurium",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1108, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1108, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1106, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    all = {
                                                                        { any = { { quest = { id = 1104, state = "activeOrCompleted" } }, { all = {} } } },
                                                                        { any = { { quest = { id = 1105, state = "activeOrCompleted" } }, { all = {} } } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1137, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-badlands-accept-1137-news-for-fizzle",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1108 } } },
            route = {
                {
                    label = "Martek the Exiled",
                    mapID = 1418,
                    offMapText = "Travel to Martek the Exiled in Badlands.",
                    x = 0.4221,
                    y = 0.527,
                },
            },
            sourceStep = 28,
            text = "Accept News for Fizzle from Martek the Exiled.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "accept-1137-news-for-fizzle",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1137, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1137, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1108, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1106, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            all = {
                                                                                                { any = { { quest = { id = 1104, state = "activeOrCompleted" } }, { all = {} } } },
                                                                                                { any = { { quest = { id = 1105, state = "activeOrCompleted" } }, { all = {} } } },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
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
            complete = { quest = { id = 1118, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stranglethorn-vale-part-3-turnin-1118-back-to-booty-bay",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1117 } } },
            route = {
                {
                    label = "Crank Fizzlebub",
                    mapID = 1434,
                    offMapText = "Travel to Crank Fizzlebub in Stranglethorn Vale.",
                    x = 0.2712,
                    y = 0.7721,
                },
            },
            sourceStep = 12,
            text = "Turn in Back to Booty Bay to Crank Fizzlebub.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-stranglethorn-vale-part-3",
            sourceActionID = "turnin-1118-back-to-booty-bay",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1118, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1118, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1117, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1116, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1115, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 621, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stranglethorn-vale-part-3-accept-621-zanzil-s-secret",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Crank Fizzlebub",
                    mapID = 1434,
                    offMapText = "Travel to Crank Fizzlebub in Stranglethorn Vale.",
                    x = 0.2712,
                    y = 0.7721,
                },
            },
            sourceStep = 13,
            text = "Accept Zanzil's Secret from Crank Fizzlebub.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stranglethorn-vale-part-3",
            sourceActionID = "accept-621-zanzil-s-secret",
        },
        {
            complete = { questObjective = { count = 12, id = 621, index = 1, text = "Zanzil's Mixture" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = { "alliance-leveling-era-alliance-stranglethorn-vale-part-3-accept-621-zanzil-s-secret" },
            id = "alliance-leveling-era-alliance-stranglethorn-vale-part-3-objective-621-1-zanzil-s-mixture",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Zanzil's Mixture", mapID = 1434, offMapText = "Travel to Zanzil's Mixture.", x = 0.398, y = 0.572 },
            },
            sourceStep = 30,
            text = "Collect 12 Zanzil's Mixture.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-stranglethorn-vale-part-3",
            sourceActionID = "objective-621-1-zanzil-s-mixture",
        },
        {
            complete = { quest = { id = 621, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-stranglethorn-vale-part-3-accept-621-zanzil-s-secret",
                "alliance-leveling-era-alliance-stranglethorn-vale-part-3-objective-621-1-zanzil-s-mixture",
            },
            id = "alliance-leveling-era-alliance-stranglethorn-vale-part-3-turnin-621-zanzil-s-secret",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Crank Fizzlebub",
                    mapID = 1434,
                    offMapText = "Travel to Crank Fizzlebub in Stranglethorn Vale.",
                    x = 0.2712,
                    y = 0.7721,
                },
            },
            sourceStep = 41,
            text = "Turn in Zanzil's Secret to Crank Fizzlebub.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-stranglethorn-vale-part-3",
            sourceActionID = "turnin-621-zanzil-s-secret",
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
            complete = { quest = { id = 1119, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-part-2-accept-1119-zanzil-s-mixture-and-a-fool-s-stout",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "all", quests = { 621, 1118 } } },
            route = {
                {
                    label = "Crank Fizzlebub",
                    mapID = 1434,
                    offMapText = "Travel to Crank Fizzlebub in Stranglethorn Vale.",
                    x = 0.2712,
                    y = 0.7721,
                },
            },
            sourceStep = 16,
            text = "Accept Zanzil's Mixture and a Fool's Stout from Crank Fizzlebub.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows-part-2",
            sourceActionID = "accept-1119-zanzil-s-mixture-and-a-fool-s-stout",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1119, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1119, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            all = {
                                                { any = { { quest = { id = 621, state = "activeOrCompleted" } }, { all = {} } } },
                                                {
                                                    any = {
                                                        { quest = { id = 1118, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1117, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1116, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1115, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
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
            checkpointQuest = 1188,
            complete = { level = { min = 29 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-tanaris-level-before-turnin-1188-safety-first",
            kind = "note",
            requiredLevel = 29,
            requiredQuests = {},
            text = "Reach level 29 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris",
            sourceActionID = "level-before-turnin-1188-safety-first",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1188, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1188, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1187, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1186, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1183, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1182, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1181, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1180, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1188, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-turnin-1188-safety-first",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1187 } } },
            route = { { label = "Shreev", mapID = 1446, offMapText = "Travel to Shreev in Tanaris.", x = 0.5096, y = 0.2724 } },
            sourceStep = 3,
            text = "Turn in Safety First to Shreev.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-tanaris",
            sourceActionID = "turnin-1188-safety-first",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1188, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1188, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1187, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1186, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1183, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1182, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1181, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1180, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1189, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-accept-1189-safety-first",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1188 } } },
            route = { { label = "Shreev", mapID = 1446, offMapText = "Travel to Shreev in Tanaris.", x = 0.5096, y = 0.2724 } },
            sourceStep = 3,
            text = "Accept Safety First from Shreev.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris",
            sourceActionID = "accept-1189-safety-first",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1189, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1189, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1188, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1187, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1186, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1183, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1182, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1181, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1180, state = "activeOrCompleted" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 1119,
            complete = { level = { min = 35 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-tanaris-level-before-turnin-1119-zanzil-s-mixture-and-a-fool-s-stout",
            kind = "note",
            requiredLevel = 35,
            requiredQuests = {},
            text = "Reach level 35 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris",
            sourceActionID = "level-before-turnin-1119-zanzil-s-mixture-and-a-fool-s-stout",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1119, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1119, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            all = {
                                                { any = { { quest = { id = 621, state = "activeOrCompleted" } }, { all = {} } } },
                                                {
                                                    any = {
                                                        { quest = { id = 1118, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1117, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1116, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1115, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1119, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-turnin-1119-zanzil-s-mixture-and-a-fool-s-stout",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "all", quests = { 621, 1118 } } },
            route = {
                {
                    label = "Kravel Koalbeard",
                    mapID = 1441,
                    offMapText = "Travel to Kravel Koalbeard in Thousand Needles.",
                    x = 0.7779,
                    y = 0.7727,
                },
            },
            sourceStep = 4,
            text = "Turn in Zanzil's Mixture and a Fool's Stout to Kravel Koalbeard.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-tanaris",
            sourceActionID = "turnin-1119-zanzil-s-mixture-and-a-fool-s-stout",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1119, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1119, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            all = {
                                                { any = { { quest = { id = 621, state = "activeOrCompleted" } }, { all = {} } } },
                                                {
                                                    any = {
                                                        { quest = { id = 1118, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1117, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1116, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1115, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            alternativeQuests = { 1121 },
            complete = { quest = { id = 1120, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-accept-1120-get-the-gnomes-drunk",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1119 } } },
            route = {
                {
                    label = "Kravel Koalbeard",
                    mapID = 1441,
                    offMapText = "Travel to Kravel Koalbeard in Thousand Needles.",
                    x = 0.788,
                    y = 0.773,
                },
            },
            sourceStep = 5,
            text = "Accept Get the Gnomes Drunk from Kravel Koalbeard.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris",
            sourceActionID = "accept-1120-get-the-gnomes-drunk",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1120, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1120, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1119, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    all = {
                                                                        { any = { { quest = { id = 621, state = "activeOrCompleted" } }, { all = {} } } },
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1118, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1117, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1116, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1115, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            alternativeQuests = { 1121 },
            complete = { quest = { id = 1120, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = { "alliance-leveling-era-alliance-tanaris-accept-1120-get-the-gnomes-drunk" },
            id = "alliance-leveling-era-alliance-tanaris-turnin-1120-get-the-gnomes-drunk",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1119 } } },
            route = {
                {
                    label = "Gnome Pit Boss",
                    mapID = 1441,
                    offMapText = "Travel to Gnome Pit Boss in Thousand Needles.",
                    x = 0.7756,
                    y = 0.7694,
                },
            },
            sourceStep = 6,
            text = "Turn in Get the Gnomes Drunk to Gnome Pit Boss.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-tanaris",
            sourceActionID = "turnin-1120-get-the-gnomes-drunk",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1120, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1120, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1119, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    all = {
                                                                        { any = { { quest = { id = 621, state = "activeOrCompleted" } }, { all = {} } } },
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1118, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1117, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1116, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1115, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1122, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-accept-1122-report-back-to-fizzlebub",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1120, 1121 } } },
            route = {
                {
                    label = "Kravel Koalbeard",
                    mapID = 1441,
                    offMapText = "Travel to Kravel Koalbeard in Thousand Needles.",
                    x = 0.788,
                    y = 0.773,
                },
            },
            sourceStep = 7,
            text = "Accept Report Back to Fizzlebub from Kravel Koalbeard.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris",
            sourceActionID = "accept-1122-report-back-to-fizzlebub",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1122, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1122, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1120, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1119, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            all = {
                                                                                                { any = { { quest = { id = 621, state = "activeOrCompleted" } }, { all = {} } } },
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1118, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1117, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1116, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1115, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                                { quest = { id = 1121, state = "completed" } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 1121 },
        },
        {
            complete = { quest = { id = 1137, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 28 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-turnin-1137-news-for-fizzle",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1108 } } },
            route = {
                {
                    label = "Fizzle Brassbolts",
                    mapID = 1441,
                    offMapText = "Travel to Fizzle Brassbolts in Thousand Needles.",
                    x = 0.7806,
                    y = 0.7713,
                },
            },
            sourceStep = 8,
            text = "Turn in News for Fizzle to Fizzle Brassbolts.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-tanaris",
            sourceActionID = "turnin-1137-news-for-fizzle",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1137, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1137, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1108, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1106, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            all = {
                                                                                                { any = { { quest = { id = 1104, state = "activeOrCompleted" } }, { all = {} } } },
                                                                                                { any = { { quest = { id = 1105, state = "activeOrCompleted" } }, { all = {} } } },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1190, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-accept-1190-keeping-pace",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1137 } } },
            route = {
                { label = "Pozzik", mapID = 1441, offMapText = "Travel to Pozzik in Thousand Needles.", x = 0.8018, y = 0.7588 },
            },
            sourceStep = 9,
            text = "Accept Keeping Pace from Pozzik.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris",
            sourceActionID = "accept-1190-keeping-pace",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1190, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1190, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1137, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1108, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1106, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    all = {
                                                                                                                        { any = { { quest = { id = 1104, state = "activeOrCompleted" } }, { all = {} } } },
                                                                                                                        { any = { { quest = { id = 1105, state = "activeOrCompleted" } }, { all = {} } } },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1189, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            dependsOn = { "alliance-leveling-era-alliance-tanaris-accept-1189-safety-first" },
            id = "alliance-leveling-era-alliance-tanaris-turnin-1189-safety-first",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1188 } } },
            route = {
                { label = "Razzeric", mapID = 1441, offMapText = "Travel to Razzeric in Thousand Needles.", x = 0.8033, y = 0.761 },
            },
            sourceStep = 10,
            text = "Turn in Safety First to Razzeric.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-tanaris",
            sourceActionID = "turnin-1189-safety-first",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1189, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1189, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1188, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1187, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1186, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1183, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1182, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1181, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1180, state = "activeOrCompleted" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1191, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-accept-1191-zamek-s-distraction",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Zamek", mapID = 1441, offMapText = "Travel to Zamek in Thousand Needles.", x = 0.7981, y = 0.7702 },
            },
            sourceStep = 11,
            text = "Accept Zamek's Distraction from Zamek.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris",
            sourceActionID = "accept-1191-zamek-s-distraction",
        },
        {
            complete = { quest = { id = 1190, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            dependsOn = { "alliance-leveling-era-alliance-tanaris-accept-1190-keeping-pace" },
            id = "alliance-leveling-era-alliance-tanaris-turnin-1190-keeping-pace",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1137 } } },
            route = { { label = "Keeping Pace", mapID = 1441, offMapText = "Travel to Keeping Pace.", x = 0.7721, y = 0.7738 } },
            sourceStep = 12,
            text = "Turn in Keeping Pace.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-tanaris",
            sourceActionID = "turnin-1190-keeping-pace",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1190, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1190, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1137, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1108, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1106, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    all = {
                                                                                                                        { any = { { quest = { id = 1104, state = "activeOrCompleted" } }, { all = {} } } },
                                                                                                                        { any = { { quest = { id = 1105, state = "activeOrCompleted" } }, { all = {} } } },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1194, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-tanaris-accept-1194-rizzle-s-schematics",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1190 } } },
            route = {
                { label = "Rizzle's Schematics", mapID = 1441, offMapText = "Travel to Rizzle's Schematics.", x = 0.7721, y = 0.7738 },
            },
            sourceStep = 12,
            text = "Accept Rizzle's Schematics.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-tanaris",
            sourceActionID = "accept-1194-rizzle-s-schematics",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1194, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1194, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1190, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1137, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1108, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1106, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            all = {
                                                                                                                                                { any = { { quest = { id = 1104, state = "activeOrCompleted" } }, { all = {} } } },
                                                                                                                                                { any = { { quest = { id = 1105, state = "activeOrCompleted" } }, { all = {} } } },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1194, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 29 } } } },
            dependsOn = { "alliance-leveling-era-alliance-tanaris-accept-1194-rizzle-s-schematics" },
            id = "alliance-leveling-era-alliance-tanaris-turnin-1194-rizzle-s-schematics",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1190 } } },
            route = {
                { label = "Pozzik", mapID = 1441, offMapText = "Travel to Pozzik in Thousand Needles.", x = 0.8018, y = 0.7588 },
            },
            sourceStep = 13,
            text = "Turn in Rizzle's Schematics to Pozzik.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-tanaris",
            sourceActionID = "turnin-1194-rizzle-s-schematics",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1194, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1194, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1190, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1137, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1108, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1106, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            all = {
                                                                                                                                                { any = { { quest = { id = 1104, state = "activeOrCompleted" } }, { all = {} } } },
                                                                                                                                                { any = { { quest = { id = 1105, state = "activeOrCompleted" } }, { all = {} } } },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
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
            complete = { quest = { id = 1122, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stranglethorn-vale-part-4-turnin-1122-report-back-to-fizzlebub",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1120, 1121 } } },
            route = {
                {
                    label = "Crank Fizzlebub",
                    mapID = 1434,
                    offMapText = "Travel to Crank Fizzlebub in Stranglethorn Vale.",
                    x = 0.2712,
                    y = 0.7721,
                },
            },
            sourceStep = 4,
            text = "Turn in Report Back to Fizzlebub to Crank Fizzlebub.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-stranglethorn-vale-part-4",
            sourceActionID = "turnin-1122-report-back-to-fizzlebub",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1122, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1122, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1120, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1119, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            all = {
                                                                                                { any = { { quest = { id = 621, state = "activeOrCompleted" } }, { all = {} } } },
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1118, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1117, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1116, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1115, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                                { quest = { id = 1121, state = "completed" } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 1121 },
        },
        {
            id = "visit-entry-leveling-era-horde-the-barrens",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-the-barrens",
            text = "Reach level 24 before the The Barrens visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 24 } },
            requiredLevel = 24,
        },
        {
            checkpointQuest = 1195,
            complete = { level = { min = 20 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-the-barrens-level-before-accept-1195-the-sacred-flame",
            kind = "note",
            requiredLevel = 20,
            requiredQuests = {},
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-barrens",
            sourceActionID = "level-before-accept-1195-the-sacred-flame",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 1195, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-barrens-accept-1195-the-sacred-flame",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Zangen Stonehoof",
                    mapID = 1456,
                    offMapText = "Travel to Zangen Stonehoof in Thunder Bluff.",
                    x = 0.551,
                    y = 0.508,
                },
            },
            sourceStep = 8,
            text = "Accept The Sacred Flame from Zangen Stonehoof.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-barrens",
            sourceActionID = "accept-1195-the-sacred-flame",
        },
        {
            id = "visit-entry-leveling-era-horde-ashenvale-part-2",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-ashenvale-part-2",
            text = "Reach level 26 before the Ashenvale visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 26 } },
            requiredLevel = 26,
        },
        {
            complete = { questObjective = { count = 1, id = 1195, index = 1, text = "Etched Phial" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-ashenvale-part-2-objective-1195-1-etched-phial",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Etched Phial", mapID = 1440, offMapText = "Travel to Etched Phial.", x = 0.602, y = 0.729 } },
            sourceStep = 40,
            text = "Collect 1 Filled Etched Phial.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceActionID = "objective-1195-1-etched-phial",
        },
        {
            complete = { quest = { id = 1195, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-ashenvale-part-2-objective-1195-1-etched-phial" },
            id = "horde-leveling-era-horde-ashenvale-part-2-turnin-1195-the-sacred-flame",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Zangen Stonehoof",
                    mapID = 1456,
                    offMapText = "Travel to Zangen Stonehoof in Thunder Bluff.",
                    x = 0.551,
                    y = 0.508,
                },
            },
            sourceStep = 76,
            text = "Turn in The Sacred Flame to Zangen Stonehoof.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceActionID = "turnin-1195-the-sacred-flame",
        },
        {
            complete = { quest = { id = 1196, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-ashenvale-part-2-accept-1196-the-sacred-flame",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1195 } } },
            route = {
                {
                    label = "Zangen Stonehoof",
                    mapID = 1456,
                    offMapText = "Travel to Zangen Stonehoof in Thunder Bluff.",
                    x = 0.551,
                    y = 0.508,
                },
            },
            sourceStep = 76,
            text = "Accept The Sacred Flame from Zangen Stonehoof.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceActionID = "accept-1196-the-sacred-flame",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1196, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1196, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 1195, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
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
            complete = { quest = { id = 4542, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 23 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-accept-4542-message-to-freewind-post",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Brave Moonhorn",
                    mapID = 1441,
                    offMapText = "Travel to Brave Moonhorn in Thousand Needles.",
                    x = 0.3224,
                    y = 0.2217,
                },
            },
            sourceStep = 4,
            text = "Accept Message to Freewind Post from Brave Moonhorn.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "accept-4542-message-to-freewind-post",
        },
        {
            complete = { quest = { id = 4767, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-accept-4767-wind-rider",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Elu", mapID = 1441, offMapText = "Travel to Elu in Thousand Needles.", x = 0.4493, y = 0.4893 } },
            sourceStep = 6,
            text = "Accept Wind Rider from Elu.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "accept-4767-wind-rider",
        },
        {
            complete = { quest = { id = 4821, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 24 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-accept-4821-alien-egg",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Hagar Lightninghoof",
                    mapID = 1441,
                    offMapText = "Travel to Hagar Lightninghoof in Thousand Needles.",
                    x = 0.4464,
                    y = 0.5029,
                },
            },
            sourceStep = 7,
            text = "Accept Alien Egg from Hagar Lightninghoof.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "accept-4821-alien-egg",
        },
        {
            complete = { quest = { id = 4542, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 23 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-accept-4542-message-to-freewind-post" },
            id = "horde-leveling-era-horde-thousand-needles-turnin-4542-message-to-freewind-post",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Cliffwatcher Longhorn",
                    mapID = 1441,
                    offMapText = "Travel to Cliffwatcher Longhorn in Thousand Needles.",
                    x = 0.4565,
                    y = 0.508,
                },
            },
            sourceStep = 8,
            text = "Turn in Message to Freewind Post to Cliffwatcher Longhorn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "turnin-4542-message-to-freewind-post",
        },
        {
            complete = { quest = { id = 4841, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 23 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-accept-4841-pacify-the-centaur",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Cliffwatcher Longhorn",
                    mapID = 1441,
                    offMapText = "Travel to Cliffwatcher Longhorn in Thousand Needles.",
                    x = 0.4565,
                    y = 0.508,
                },
            },
            sourceStep = 8,
            text = "Accept Pacify the Centaur from Cliffwatcher Longhorn.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "accept-4841-pacify-the-centaur",
        },
        {
            complete = { quest = { id = 1196, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-turnin-1196-the-sacred-flame",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1195 } } },
            route = {
                {
                    label = "Rau Cliffrunner",
                    mapID = 1441,
                    offMapText = "Travel to Rau Cliffrunner in Thousand Needles.",
                    x = 0.4614,
                    y = 0.5172,
                },
            },
            sourceStep = 9,
            text = "Turn in The Sacred Flame to Rau Cliffrunner.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "turnin-1196-the-sacred-flame",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1196, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1196, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 1195, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1197, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-accept-1197-the-sacred-flame",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1196 } } },
            route = {
                {
                    label = "Rau Cliffrunner",
                    mapID = 1441,
                    offMapText = "Travel to Rau Cliffrunner in Thousand Needles.",
                    x = 0.4614,
                    y = 0.5172,
                },
            },
            sourceStep = 9,
            text = "Accept The Sacred Flame from Rau Cliffrunner.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "accept-1197-the-sacred-flame",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1197, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1197, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1196, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1195, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 1197, index = 1, text = "Cloven Hoof" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-accept-1197-the-sacred-flame" },
            id = "horde-leveling-era-horde-thousand-needles-objective-1197-1-cloven-hoof",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1196 } } },
            route = { { label = "Cloven Hoof", mapID = 1441, offMapText = "Travel to Cloven Hoof.", x = 0.4201, y = 0.3151 } },
            sourceStep = 10,
            text = "Collect 1 Cloven Hoof.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "objective-1197-1-cloven-hoof",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1197, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1197, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1196, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1195, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 6, id = 4841, index = 3, text = "Galak Windchaser" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 23 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-accept-4841-pacify-the-centaur" },
            id = "horde-leveling-era-horde-thousand-needles-objective-4841-3-galak-windchaser",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Galak Windchaser", mapID = 1441, offMapText = "Travel to Galak Windchaser.", x = 0.444, y = 0.402 },
            },
            sourceStep = 11,
            text = "Kill 6 Galak Windchaser.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "objective-4841-3-galak-windchaser",
        },
        {
            complete = { questObjective = { count = 10, id = 4841, index = 2, text = "Galak Wrangler" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 23 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-accept-4841-pacify-the-centaur" },
            id = "horde-leveling-era-horde-thousand-needles-objective-4841-2-galak-wrangler",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Galak Wrangler", mapID = 1441, offMapText = "Travel to Galak Wrangler.", x = 0.444, y = 0.402 } },
            sourceStep = 11,
            text = "Kill 10 Galak Wrangler.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "objective-4841-2-galak-wrangler",
        },
        {
            complete = { questObjective = { count = 12, id = 4841, index = 1, text = "Galak Scout" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 23 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-accept-4841-pacify-the-centaur" },
            id = "horde-leveling-era-horde-thousand-needles-objective-4841-1-galak-scout",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Galak Scout", mapID = 1441, offMapText = "Travel to Galak Scout.", x = 0.444, y = 0.402 } },
            sourceStep = 11,
            text = "Kill 12 Galak Scout.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "objective-4841-1-galak-scout",
        },
        {
            complete = { quest = { id = 1149, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-accept-1149-test-of-faith",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Dorn Plainstalker",
                    mapID = 1441,
                    offMapText = "Travel to Dorn Plainstalker in Thousand Needles.",
                    x = 0.5394,
                    y = 0.4148,
                },
            },
            sourceStep = 12,
            text = "Accept Test of Faith from Dorn Plainstalker.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "accept-1149-test-of-faith",
        },
        {
            complete = { quest = { id = 1149, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-accept-1149-test-of-faith" },
            id = "horde-leveling-era-horde-thousand-needles-turnin-1149-test-of-faith",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Dorn Plainstalker",
                    mapID = 1441,
                    offMapText = "Travel to Dorn Plainstalker in Thousand Needles.",
                    x = 0.5394,
                    y = 0.4148,
                },
            },
            sourceStep = 15,
            text = "Turn in Test of Faith to Dorn Plainstalker.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "turnin-1149-test-of-faith",
        },
        {
            complete = { questObjective = { count = 1, id = 4821, index = 1, text = "Alien Egg" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 24 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-accept-4821-alien-egg" },
            id = "horde-leveling-era-horde-thousand-needles-objective-4821-1-alien-egg",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Alien Egg", mapID = 1441, offMapText = "Travel to Alien Egg.", x = 0.5635, y = 0.5036 } },
            sourceStep = 16,
            text = "Collect 1 Alien Egg.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "objective-4821-1-alien-egg",
        },
        {
            complete = { quest = { id = 4821, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 24 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-thousand-needles-accept-4821-alien-egg",
                "horde-leveling-era-horde-thousand-needles-objective-4821-1-alien-egg",
            },
            id = "horde-leveling-era-horde-thousand-needles-turnin-4821-alien-egg",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Hagar Lightninghoof",
                    mapID = 1441,
                    offMapText = "Travel to Hagar Lightninghoof in Thousand Needles.",
                    x = 0.4464,
                    y = 0.5029,
                },
            },
            sourceStep = 19,
            text = "Turn in Alien Egg to Hagar Lightninghoof.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "turnin-4821-alien-egg",
        },
        {
            complete = { quest = { id = 4865, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 24 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-accept-4865-serpent-wild",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4821 } } },
            route = {
                {
                    label = "Hagar Lightninghoof",
                    mapID = 1441,
                    offMapText = "Travel to Hagar Lightninghoof in Thousand Needles.",
                    x = 0.4464,
                    y = 0.5029,
                },
            },
            sourceStep = 19,
            text = "Accept Serpent Wild from Hagar Lightninghoof.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "accept-4865-serpent-wild",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4865, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4865, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 4821, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 4841, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 23 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-thousand-needles-accept-4841-pacify-the-centaur",
                "horde-leveling-era-horde-thousand-needles-objective-4841-3-galak-windchaser",
                "horde-leveling-era-horde-thousand-needles-objective-4841-2-galak-wrangler",
                "horde-leveling-era-horde-thousand-needles-objective-4841-1-galak-scout",
            },
            id = "horde-leveling-era-horde-thousand-needles-turnin-4841-pacify-the-centaur",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Cliffwatcher Longhorn",
                    mapID = 1441,
                    offMapText = "Travel to Cliffwatcher Longhorn in Thousand Needles.",
                    x = 0.4565,
                    y = 0.508,
                },
            },
            sourceStep = 20,
            text = "Turn in Pacify the Centaur to Cliffwatcher Longhorn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "turnin-4841-pacify-the-centaur",
        },
        {
            complete = { quest = { id = 1197, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-thousand-needles-accept-1197-the-sacred-flame",
                "horde-leveling-era-horde-thousand-needles-objective-1197-1-cloven-hoof",
            },
            id = "horde-leveling-era-horde-thousand-needles-turnin-1197-the-sacred-flame",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1196 } } },
            route = {
                {
                    label = "Rau Cliffrunner",
                    mapID = 1441,
                    offMapText = "Travel to Rau Cliffrunner in Thousand Needles.",
                    x = 0.4614,
                    y = 0.5171,
                },
            },
            sourceStep = 21,
            text = "Turn in The Sacred Flame to Rau Cliffrunner.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "turnin-1197-the-sacred-flame",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1197, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1197, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1196, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1195, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 4770, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-accept-4770-homeward-bound",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Pao'ka Swiftmountain",
                    mapID = 1441,
                    offMapText = "Travel to Pao'ka Swiftmountain in Thousand Needles.",
                    x = 0.1789,
                    y = 0.4057,
                },
            },
            sourceStep = 23,
            text = "Accept Homeward Bound from Pao'ka Swiftmountain.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "accept-4770-homeward-bound",
        },
        {
            complete = { quest = { id = 4770, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-accept-4770-homeward-bound" },
            id = "horde-leveling-era-horde-thousand-needles-turnin-4770-homeward-bound",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Motega Firemane",
                    mapID = 1441,
                    offMapText = "Travel to Motega Firemane in Thousand Needles.",
                    x = 0.2155,
                    y = 0.3235,
                },
            },
            sourceStep = 26,
            text = "Turn in Homeward Bound to Motega Firemane.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "turnin-4770-homeward-bound",
        },
        {
            complete = { quest = { id = 4865, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 24 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-accept-4865-serpent-wild" },
            id = "horde-leveling-era-horde-thousand-needles-turnin-4865-serpent-wild",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4821 } } },
            route = {
                {
                    label = "Motega Firemane",
                    mapID = 1441,
                    offMapText = "Travel to Motega Firemane in Thousand Needles.",
                    x = 0.2155,
                    y = 0.3235,
                },
            },
            sourceStep = 26,
            text = "Turn in Serpent Wild to Motega Firemane.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "turnin-4865-serpent-wild",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4865, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4865, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 4821, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5062, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 24 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-accept-5062-sacred-fire",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4865 } } },
            route = {
                {
                    label = "Motega Firemane",
                    mapID = 1441,
                    offMapText = "Travel to Motega Firemane in Thousand Needles.",
                    x = 0.2155,
                    y = 0.3235,
                },
            },
            sourceStep = 26,
            text = "Accept Sacred Fire from Motega Firemane.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "accept-5062-sacred-fire",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5062, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5062, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4865, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 4821, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 4881, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 23 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-accept-4881-assassination-plot",
            kind = "accept",
            requiredQuests = {},
            sourceStep = 27,
            text = "Use the Assassination Note to accept Assassination Plot.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "accept-4881-assassination-plot",
        },
        {
            complete = { quest = { id = 4881, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 23 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-accept-4881-assassination-plot-2",
            kind = "accept",
            requiredQuests = {},
            sourceStep = 28,
            text = "Use the Assassination Note to accept Assassination Plot.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "accept-4881-assassination-plot-2",
        },
        {
            complete = { quest = { id = 4881, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 23 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-thousand-needles-accept-4881-assassination-plot-2",
                "horde-leveling-era-horde-thousand-needles-accept-4881-assassination-plot",
            },
            id = "horde-leveling-era-horde-thousand-needles-turnin-4881-assassination-plot",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Kanati Greycloud",
                    mapID = 1441,
                    offMapText = "Travel to Kanati Greycloud in Thousand Needles.",
                    x = 0.2121,
                    y = 0.321,
                },
            },
            sourceStep = 29,
            text = "Turn in Assassination Plot to Kanati Greycloud.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "turnin-4881-assassination-plot",
        },
        {
            complete = { quest = { id = 4966, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 23 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-accept-4966-protect-kanati-greycloud",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4881 } } },
            route = {
                {
                    label = "Kanati Greycloud",
                    mapID = 1441,
                    offMapText = "Travel to Kanati Greycloud in Thousand Needles.",
                    x = 0.2121,
                    y = 0.321,
                },
            },
            sourceStep = 29,
            text = "Accept Protect Kanati Greycloud from Kanati Greycloud.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "accept-4966-protect-kanati-greycloud",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4966, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4966, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4881, state = "activeOrCompleted" } },
                                                        { all = { { item = { name = "Assassination Note", minCount = 1 } }, { faction = "Horde" } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 4966, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 23 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-accept-4966-protect-kanati-greycloud" },
            id = "horde-leveling-era-horde-thousand-needles-objective-4966-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4881 } } },
            sourceStep = 31,
            text = "For Protect Kanati Greycloud: Protect Kanati Greycloud from the centaur attack.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "objective-4966-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4966, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4966, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4881, state = "activeOrCompleted" } },
                                                        { all = { { item = { name = "Assassination Note", minCount = 1 } }, { faction = "Horde" } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 4966, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 23 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-thousand-needles-accept-4966-protect-kanati-greycloud",
                "horde-leveling-era-horde-thousand-needles-objective-4966-quest-work",
            },
            id = "horde-leveling-era-horde-thousand-needles-turnin-4966-protect-kanati-greycloud",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4881 } } },
            route = {
                {
                    label = "Kanati Greycloud",
                    mapID = 1441,
                    offMapText = "Travel to Kanati Greycloud in Thousand Needles.",
                    x = 0.2121,
                    y = 0.321,
                },
            },
            sourceStep = 31,
            text = "Turn in Protect Kanati Greycloud to Kanati Greycloud.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "turnin-4966-protect-kanati-greycloud",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 4966, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 4966, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4881, state = "activeOrCompleted" } },
                                                        { all = { { item = { name = "Assassination Note", minCount = 1 } }, { faction = "Horde" } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 5062, index = 1, text = "Incendia Agave" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 24 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-accept-5062-sacred-fire" },
            id = "horde-leveling-era-horde-thousand-needles-objective-5062-1-incendia-agave",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4865 } } },
            route = { { label = "Incendia Agave", mapID = 1441, offMapText = "Travel to Incendia Agave.", x = 0.336, y = 0.341 } },
            sourceStep = 32,
            text = "Collect 10 Incendia Agave.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "objective-5062-1-incendia-agave",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5062, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5062, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4865, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 4821, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5062, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 24 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-thousand-needles-accept-5062-sacred-fire",
                "horde-leveling-era-horde-thousand-needles-objective-5062-1-incendia-agave",
            },
            id = "horde-leveling-era-horde-thousand-needles-turnin-5062-sacred-fire",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4865 } } },
            route = {
                {
                    label = "Magatha Grimtotem",
                    mapID = 1456,
                    offMapText = "Travel to Magatha Grimtotem in Thunder Bluff.",
                    x = 0.6986,
                    y = 0.3092,
                },
            },
            sourceStep = 34,
            text = "Turn in Sacred Fire to Magatha Grimtotem.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "turnin-5062-sacred-fire",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5062, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5062, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 4865, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 4821, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5088, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 24 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-accept-5088-arikara",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5062 } } },
            route = {
                {
                    label = "Magatha Grimtotem",
                    mapID = 1456,
                    offMapText = "Travel to Magatha Grimtotem in Thunder Bluff.",
                    x = 0.6986,
                    y = 0.3092,
                },
            },
            sourceStep = 34,
            text = "Accept Arikara from Magatha Grimtotem.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "accept-5088-arikara",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5088, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5088, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5062, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4865, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 4821, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 4767, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-accept-4767-wind-rider" },
            id = "horde-leveling-era-horde-thousand-needles-objective-4767-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 37,
            text = "For Wind Rider: Bring 10 Highperch Wyvern Eggs to Elu in Freewind Post.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "objective-4767-quest-work",
        },
        {
            complete = { quest = { id = 4767, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-thousand-needles-accept-4767-wind-rider",
                "horde-leveling-era-horde-thousand-needles-objective-4767-quest-work",
            },
            id = "horde-leveling-era-horde-thousand-needles-turnin-4767-wind-rider",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Elu", mapID = 1441, offMapText = "Travel to Elu in Thousand Needles.", x = 0.4493, y = 0.4893 } },
            sourceStep = 37,
            text = "Turn in Wind Rider to Elu.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "turnin-4767-wind-rider",
        },
        {
            complete = { quest = { id = 5064, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 24 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-accept-5064-grimtotem-spying",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4841 } } },
            route = {
                {
                    label = "Cliffwatcher Longhorn",
                    mapID = 1441,
                    offMapText = "Travel to Cliffwatcher Longhorn in Thousand Needles.",
                    x = 0.4565,
                    y = 0.508,
                },
            },
            sourceStep = 38,
            text = "Accept Grimtotem Spying from Cliffwatcher Longhorn.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "accept-5064-grimtotem-spying",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5064, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5064, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 4841, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5147, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-accept-5147-wanted-arnak-grimtotem",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Wanted - Arnak Grimtotem",
                    mapID = 1441,
                    offMapText = "Travel to Wanted - Arnak Grimtotem.",
                    x = 0.46,
                    y = 0.5084,
                },
            },
            sourceStep = 39,
            text = "Accept Wanted - Arnak Grimtotem.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "accept-5147-wanted-arnak-grimtotem",
        },
        {
            complete = { questObjective = { count = 1, id = 5064, index = 2, text = "Secret Note #2" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 24 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-accept-5064-grimtotem-spying" },
            id = "horde-leveling-era-horde-thousand-needles-objective-5064-2-secret-note-2",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4841 } } },
            route = { { label = "Secret Note #2", mapID = 1441, offMapText = "Travel to Secret Note #2.", x = 0.3378, y = 0.3997 } },
            sourceStep = 42,
            text = "Collect 1 Secret Note #2.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "objective-5064-2-secret-note-2",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5064, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5064, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 4841, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 5064, index = 1, text = "Secret Note #1" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 24 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-accept-5064-grimtotem-spying" },
            id = "horde-leveling-era-horde-thousand-needles-objective-5064-1-secret-note-1",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4841 } } },
            route = { { label = "Secret Note #1", mapID = 1441, offMapText = "Travel to Secret Note #1.", x = 0.318, y = 0.3259 } },
            sourceStep = 43,
            text = "Collect 1 Secret Note #1.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "objective-5064-1-secret-note-1",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5064, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5064, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 4841, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 5064, index = 3, text = "Secret Note #3" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 24 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-accept-5064-grimtotem-spying" },
            id = "horde-leveling-era-horde-thousand-needles-objective-5064-3-secret-note-3",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4841 } } },
            route = { { label = "Secret Note #3", mapID = 1441, offMapText = "Travel to Secret Note #3.", x = 0.39, y = 0.41 } },
            sourceStep = 44,
            text = "Collect 1 Secret Note #3.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "objective-5064-3-secret-note-3",
        },
        {
            complete = { questObjective = { count = 1, id = 5088, index = 1, text = "Arikara" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 24 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-accept-5088-arikara" },
            id = "horde-leveling-era-horde-thousand-needles-objective-5088-1-arikara",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5062 } } },
            route = { { label = "Arikara", mapID = 1441, offMapText = "Travel to Arikara.", x = 0.3829, y = 0.3554 } },
            sourceStep = 45,
            text = "Collect 1 Arikara Serpent Skin.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "objective-5088-1-arikara",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5088, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5088, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5062, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4865, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 4821, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 5147, index = 1, text = "Arnak Grimtotem" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-accept-5147-wanted-arnak-grimtotem" },
            id = "horde-leveling-era-horde-thousand-needles-objective-5147-1-arnak-grimtotem",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Arnak Grimtotem", mapID = 1441, offMapText = "Travel to Arnak Grimtotem.", x = 0.3808, y = 0.2685 },
            },
            sourceStep = 46,
            text = "Collect 1 Arnak's Hoof.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "objective-5147-1-arnak-grimtotem",
        },
        {
            complete = { quest = { id = 4904, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-accept-4904-free-at-last",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Lakota Windsong",
                    mapID = 1441,
                    offMapText = "Travel to Lakota Windsong in Thousand Needles.",
                    x = 0.3799,
                    y = 0.2659,
                },
            },
            sourceStep = 47,
            text = "Accept Free at Last from Lakota Windsong.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "accept-4904-free-at-last",
        },
        {
            complete = { quest = { id = 5088, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 24 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-thousand-needles-accept-5088-arikara",
                "horde-leveling-era-horde-thousand-needles-objective-5088-1-arikara",
            },
            id = "horde-leveling-era-horde-thousand-needles-turnin-5088-arikara",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5062 } } },
            route = {
                {
                    label = "Motega Firemane",
                    mapID = 1441,
                    offMapText = "Travel to Motega Firemane in Thousand Needles.",
                    x = 0.2155,
                    y = 0.3235,
                },
            },
            sourceStep = 49,
            text = "Turn in Arikara to Motega Firemane.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "turnin-5088-arikara",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5088, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5088, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 5062, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 4865, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 4821, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5151, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 24 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-accept-5151-hypercapacitor-gizmo",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Wizlo Bearingshiner",
                    mapID = 1441,
                    offMapText = "Travel to Wizlo Bearingshiner in Thousand Needles.",
                    x = 0.2143,
                    y = 0.3255,
                },
            },
            sourceStep = 50,
            text = "Accept Hypercapacitor Gizmo from Wizlo Bearingshiner.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "accept-5151-hypercapacitor-gizmo",
        },
        {
            complete = { questObjective = { count = 1, id = 5151, index = 1, text = "Enraged Panther" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 24 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-accept-5151-hypercapacitor-gizmo" },
            id = "horde-leveling-era-horde-thousand-needles-objective-5151-1-enraged-panther",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Enraged Panther", mapID = 1441, offMapText = "Travel to Enraged Panther.", x = 0.2279, y = 0.2454 },
            },
            sourceStep = 51,
            text = "Collect 1 Hypercapacitor Gizmo.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "objective-5151-1-enraged-panther",
        },
        {
            complete = { quest = { id = 5151, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 24 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-thousand-needles-accept-5151-hypercapacitor-gizmo",
                "horde-leveling-era-horde-thousand-needles-objective-5151-1-enraged-panther",
            },
            id = "horde-leveling-era-horde-thousand-needles-turnin-5151-hypercapacitor-gizmo",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Wizlo Bearingshiner",
                    mapID = 1441,
                    offMapText = "Travel to Wizlo Bearingshiner in Thousand Needles.",
                    x = 0.2143,
                    y = 0.3255,
                },
            },
            sourceStep = 52,
            text = "Turn in Hypercapacitor Gizmo to Wizlo Bearingshiner.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "turnin-5151-hypercapacitor-gizmo",
        },
        {
            complete = { quest = { id = 5064, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 24 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-thousand-needles-accept-5064-grimtotem-spying",
                "horde-leveling-era-horde-thousand-needles-objective-5064-2-secret-note-2",
                "horde-leveling-era-horde-thousand-needles-objective-5064-1-secret-note-1",
                "horde-leveling-era-horde-thousand-needles-objective-5064-3-secret-note-3",
            },
            id = "horde-leveling-era-horde-thousand-needles-turnin-5064-grimtotem-spying",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 4841 } } },
            route = {
                {
                    label = "Cliffwatcher Longhorn",
                    mapID = 1441,
                    offMapText = "Travel to Cliffwatcher Longhorn in Thousand Needles.",
                    x = 0.4565,
                    y = 0.508,
                },
            },
            sourceStep = 55,
            text = "Turn in Grimtotem Spying to Cliffwatcher Longhorn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "turnin-5064-grimtotem-spying",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5064, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5064, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 4841, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5147, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-thousand-needles-accept-5147-wanted-arnak-grimtotem",
                "horde-leveling-era-horde-thousand-needles-objective-5147-1-arnak-grimtotem",
            },
            id = "horde-leveling-era-horde-thousand-needles-turnin-5147-wanted-arnak-grimtotem",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Cliffwatcher Longhorn",
                    mapID = 1441,
                    offMapText = "Travel to Cliffwatcher Longhorn in Thousand Needles.",
                    x = 0.4565,
                    y = 0.508,
                },
            },
            sourceStep = 55,
            text = "Turn in Wanted - Arnak Grimtotem to Cliffwatcher Longhorn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "turnin-5147-wanted-arnak-grimtotem",
        },
        {
            complete = { quest = { id = 4904, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-accept-4904-free-at-last" },
            id = "horde-leveling-era-horde-thousand-needles-turnin-4904-free-at-last",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Thalia Amberhide",
                    mapID = 1441,
                    offMapText = "Travel to Thalia Amberhide in Thousand Needles.",
                    x = 0.4597,
                    y = 0.5161,
                },
            },
            sourceStep = 57,
            text = "Turn in Free at Last to Thalia Amberhide.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "turnin-4904-free-at-last",
        },
        {
            checkpointQuest = 1111,
            complete = { level = { min = 30 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-thousand-needles-level-before-accept-1111-wharfmaster-dizzywig",
            kind = "note",
            requiredLevel = 30,
            requiredQuests = {},
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "level-before-accept-1111-wharfmaster-dizzywig",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 1111, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-accept-1111-wharfmaster-dizzywig",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Kravel Koalbeard",
                    mapID = 1441,
                    offMapText = "Travel to Kravel Koalbeard in Thousand Needles.",
                    x = 0.788,
                    y = 0.773,
                },
            },
            sourceStep = 58,
            text = "Accept Wharfmaster Dizzywig from Kravel Koalbeard.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "accept-1111-wharfmaster-dizzywig",
        },
        {
            checkpointQuest = 1145,
            complete = { level = { min = 29 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-thousand-needles-level-before-accept-1145-the-swarm-grows",
            kind = "note",
            requiredLevel = 29,
            requiredQuests = {},
            text = "Reach level 29 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "level-before-accept-1145-the-swarm-grows",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 1145, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-accept-1145-the-swarm-grows",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Korran", mapID = 1413, offMapText = "Travel to Korran in The Barrens.", x = 0.5107, y = 0.2963 } },
            sourceStep = 64,
            text = "Accept The Swarm Grows from Korran.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "accept-1145-the-swarm-grows",
        },
        {
            complete = { quest = { id = 1111, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-accept-1111-wharfmaster-dizzywig" },
            id = "horde-leveling-era-horde-thousand-needles-turnin-1111-wharfmaster-dizzywig",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Wharfmaster Dizzywig",
                    mapID = 1413,
                    offMapText = "Travel to Wharfmaster Dizzywig in The Barrens.",
                    x = 0.6335,
                    y = 0.3845,
                },
            },
            sourceStep = 65,
            text = "Turn in Wharfmaster Dizzywig to Wharfmaster Dizzywig.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "turnin-1111-wharfmaster-dizzywig",
        },
        {
            complete = { quest = { id = 1112, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-accept-1112-parts-for-kravel",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1111 } } },
            route = {
                {
                    label = "Wharfmaster Dizzywig",
                    mapID = 1413,
                    offMapText = "Travel to Wharfmaster Dizzywig in The Barrens.",
                    x = 0.6335,
                    y = 0.3845,
                },
            },
            sourceStep = 65,
            text = "Accept Parts for Kravel from Wharfmaster Dizzywig.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "accept-1112-parts-for-kravel",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1112, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1112, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1145, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-accept-1145-the-swarm-grows" },
            id = "horde-leveling-era-horde-thousand-needles-turnin-1145-the-swarm-grows",
            kind = "turnin",
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
            sourceStep = 78,
            text = "Turn in The Swarm Grows to Belgrom Rockmaul.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "turnin-1145-the-swarm-grows",
        },
        {
            complete = { quest = { id = 1146, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-accept-1146-the-swarm-grows",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1145 } } },
            route = {
                {
                    label = "Belgrom Rockmaul",
                    mapID = 1454,
                    offMapText = "Travel to Belgrom Rockmaul in Orgrimmar.",
                    x = 0.7523,
                    y = 0.3423,
                },
            },
            sourceStep = 78,
            text = "Accept The Swarm Grows from Belgrom Rockmaul.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "accept-1146-the-swarm-grows",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1146, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1146, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 1145, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-horde-thousand-needles-part-2",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-thousand-needles-part-2",
            text = "Reach level 33 before the Thousand Needles visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 33 } },
            requiredLevel = 33,
        },
        {
            checkpointQuest = 1146,
            complete = { level = { min = 29 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-thousand-needles-part-2-level-before-turnin-1146-the-swarm-grows",
            kind = "note",
            requiredLevel = 29,
            requiredQuests = {},
            text = "Reach level 29 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "level-before-turnin-1146-the-swarm-grows",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1146, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1146, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 1145, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1146, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-part-2-turnin-1146-the-swarm-grows",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1145 } } },
            route = {
                {
                    label = "Moktar Krin",
                    mapID = 1441,
                    offMapText = "Travel to Moktar Krin in Thousand Needles.",
                    x = 0.6758,
                    y = 0.6394,
                },
            },
            sourceStep = 3,
            text = "Turn in The Swarm Grows to Moktar Krin.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "turnin-1146-the-swarm-grows",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1146, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1146, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 1145, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1147, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-part-2-accept-1147-the-swarm-grows",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1146 } } },
            route = {
                {
                    label = "Moktar Krin",
                    mapID = 1441,
                    offMapText = "Travel to Moktar Krin in Thousand Needles.",
                    x = 0.6758,
                    y = 0.6394,
                },
            },
            sourceStep = 3,
            text = "Accept The Swarm Grows from Moktar Krin.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "accept-1147-the-swarm-grows",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1147, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1147, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1146, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1145, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 1112,
            complete = { level = { min = 30 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-thousand-needles-part-2-level-before-turnin-1112-parts-for-kravel",
            kind = "note",
            requiredLevel = 30,
            requiredQuests = {},
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "level-before-turnin-1112-parts-for-kravel",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1112, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1112, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1112, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-part-2-turnin-1112-parts-for-kravel",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1111 } } },
            route = {
                {
                    label = "Kravel Koalbeard",
                    mapID = 1441,
                    offMapText = "Travel to Kravel Koalbeard in Thousand Needles.",
                    x = 0.7779,
                    y = 0.7727,
                },
            },
            sourceStep = 4,
            text = "Turn in Parts for Kravel to Kravel Koalbeard.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "turnin-1112-parts-for-kravel",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1112, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1112, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1110, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-part-2-accept-1110-rocket-car-parts",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Kravel Koalbeard",
                    mapID = 1441,
                    offMapText = "Travel to Kravel Koalbeard in Thousand Needles.",
                    x = 0.788,
                    y = 0.773,
                },
            },
            sourceStep = 5,
            text = "Accept Rocket Car Parts from Kravel Koalbeard.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "accept-1110-rocket-car-parts",
        },
        {
            complete = { quest = { id = 1114, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-part-2-accept-1114-delivery-to-the-gnomes",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1112 } } },
            route = {
                {
                    label = "Kravel Koalbeard",
                    mapID = 1441,
                    offMapText = "Travel to Kravel Koalbeard in Thousand Needles.",
                    x = 0.788,
                    y = 0.773,
                },
            },
            sourceStep = 5,
            text = "Accept Delivery to the Gnomes from Kravel Koalbeard.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "accept-1114-delivery-to-the-gnomes",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1114, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1114, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1112, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1114, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-part-2-accept-1114-delivery-to-the-gnomes" },
            id = "horde-leveling-era-horde-thousand-needles-part-2-turnin-1114-delivery-to-the-gnomes",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1112 } } },
            route = {
                {
                    label = "Fizzle Brassbolts",
                    mapID = 1441,
                    offMapText = "Travel to Fizzle Brassbolts in Thousand Needles.",
                    x = 0.7806,
                    y = 0.7713,
                },
            },
            sourceStep = 6,
            text = "Turn in Delivery to the Gnomes to Fizzle Brassbolts.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "turnin-1114-delivery-to-the-gnomes",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1114, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1114, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1112, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1104, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-part-2-accept-1104-salt-flat-venom",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Fizzle Brassbolts",
                    mapID = 1441,
                    offMapText = "Travel to Fizzle Brassbolts in Thousand Needles.",
                    x = 0.7806,
                    y = 0.7713,
                },
            },
            sourceStep = 6,
            text = "Accept Salt Flat Venom from Fizzle Brassbolts.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "accept-1104-salt-flat-venom",
        },
        {
            complete = { quest = { id = 1115, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-part-2-accept-1115-the-rumormonger",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1114 } } },
            route = {
                {
                    label = "Kravel Koalbeard",
                    mapID = 1441,
                    offMapText = "Travel to Kravel Koalbeard in Thousand Needles.",
                    x = 0.788,
                    y = 0.773,
                },
            },
            sourceStep = 7,
            text = "Accept The Rumormonger from Kravel Koalbeard.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "accept-1115-the-rumormonger",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1115, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1115, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1114, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1105, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-part-2-accept-1105-hardened-shells",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Wizzle Brassbolts",
                    mapID = 1441,
                    offMapText = "Travel to Wizzle Brassbolts in Thousand Needles.",
                    x = 0.7814,
                    y = 0.7712,
                },
            },
            sourceStep = 8,
            text = "Accept Hardened Shells from Wizzle Brassbolts.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "accept-1105-hardened-shells",
        },
        {
            complete = { quest = { id = 1176, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-part-2-accept-1176-load-lightening",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Pozzik", mapID = 1441, offMapText = "Travel to Pozzik in Thousand Needles.", x = 0.8018, y = 0.7589 },
            },
            sourceStep = 9,
            text = "Accept Load Lightening from Pozzik.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "accept-1176-load-lightening",
        },
        {
            complete = { quest = { id = 1175, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-part-2-accept-1175-a-bump-in-the-road",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Trackmaster Zherin",
                    mapID = 1441,
                    offMapText = "Travel to Trackmaster Zherin in Thousand Needles.",
                    x = 0.8164,
                    y = 0.7795,
                },
            },
            sourceStep = 10,
            text = "Accept A Bump in the Road from Trackmaster Zherin.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "accept-1175-a-bump-in-the-road",
        },
        {
            complete = { questObjective = { count = 5, id = 1147, index = 3, text = "Silithid Invader" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-part-2-accept-1147-the-swarm-grows" },
            id = "horde-leveling-era-horde-thousand-needles-part-2-objective-1147-3-silithid-invader",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1146 } } },
            route = {
                { label = "Silithid Invader", mapID = 1441, offMapText = "Travel to Silithid Invader.", x = 0.6632, y = 0.8618 },
            },
            sourceStep = 12,
            text = "Kill 5 Silithid Invader.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "objective-1147-3-silithid-invader",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1147, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1147, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1146, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1145, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 5, id = 1147, index = 1, text = "Silithid Searcher" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-part-2-accept-1147-the-swarm-grows" },
            id = "horde-leveling-era-horde-thousand-needles-part-2-objective-1147-1-silithid-searcher",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1146 } } },
            route = {
                { label = "Silithid Searcher", mapID = 1441, offMapText = "Travel to Silithid Searcher.", x = 0.702, y = 0.826 },
            },
            sourceStep = 13,
            text = "Kill 5 Silithid Searcher.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "objective-1147-1-silithid-searcher",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1147, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1147, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1146, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1145, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1148, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-part-2-accept-1148-parts-of-the-swarm",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1146 } } },
            sourceStep = 14,
            text = "Use the Cracked Silithid Carapace to accept Parts of the Swarm.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "accept-1148-parts-of-the-swarm",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1148, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1148, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { item = { name = "Cracked Silithid Carapace", minCount = 1 } },
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1146, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1145, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 5, id = 1147, index = 2, text = "Silithid Hive Drone" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-part-2-accept-1147-the-swarm-grows" },
            id = "horde-leveling-era-horde-thousand-needles-part-2-objective-1147-2-silithid-hive-drone",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1146 } } },
            route = {
                { label = "Silithid Hive Drone", mapID = 1441, offMapText = "Travel to Silithid Hive Drone.", x = 0.7, y = 0.846 },
            },
            sourceStep = 15,
            text = "Kill 5 Silithid Hive Drone.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "objective-1147-2-silithid-hive-drone",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1147, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1147, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1146, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1145, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 1148, index = 1, text = "Silithid Heart" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-part-2-accept-1148-parts-of-the-swarm" },
            id = "horde-leveling-era-horde-thousand-needles-part-2-objective-1148-1-silithid-heart",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1146 } } },
            route = { { label = "Silithid Heart", mapID = 1441, offMapText = "Travel to Silithid Heart.", x = 0.702, y = 0.826 } },
            sourceStep = 16,
            text = "Collect 1 Silithid Heart.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "objective-1148-1-silithid-heart",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1148, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1148, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { item = { name = "Cracked Silithid Carapace", minCount = 1 } },
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1146, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1145, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 3, id = 1148, index = 3, text = "Intact Silithid Carapace" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-part-2-accept-1148-parts-of-the-swarm" },
            id = "horde-leveling-era-horde-thousand-needles-part-2-objective-1148-3-intact-silithid-carapace",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1146 } } },
            route = {
                {
                    label = "Intact Silithid Carapace",
                    mapID = 1441,
                    offMapText = "Travel to Intact Silithid Carapace.",
                    x = 0.702,
                    y = 0.826,
                },
            },
            sourceStep = 16,
            text = "Collect 3 Intact Silithid Carapace.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "objective-1148-3-intact-silithid-carapace",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1148, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1148, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { item = { name = "Cracked Silithid Carapace", minCount = 1 } },
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1146, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1145, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 5, id = 1148, index = 2, text = "Silithid Talon" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-part-2-accept-1148-parts-of-the-swarm" },
            id = "horde-leveling-era-horde-thousand-needles-part-2-objective-1148-2-silithid-talon",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1146 } } },
            route = { { label = "Silithid Talon", mapID = 1441, offMapText = "Travel to Silithid Talon.", x = 0.702, y = 0.826 } },
            sourceStep = 16,
            text = "Collect 5 Silithid Talon.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "objective-1148-2-silithid-talon",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1148, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1148, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { item = { name = "Cracked Silithid Carapace", minCount = 1 } },
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1146, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1145, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 6, id = 1175, index = 3, text = "Saltstone Gazer" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-part-2-accept-1175-a-bump-in-the-road" },
            id = "horde-leveling-era-horde-thousand-needles-part-2-objective-1175-3-saltstone-gazer",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Saltstone Gazer", mapID = 1441, offMapText = "Travel to Saltstone Gazer.", x = 0.774, y = 0.88 } },
            sourceStep = 17,
            text = "Kill 6 Saltstone Gazer.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "objective-1175-3-saltstone-gazer",
        },
        {
            complete = { questObjective = { count = 10, id = 1176, index = 1, text = "Salt Flats Scavenger" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-part-2-accept-1176-load-lightening" },
            id = "horde-leveling-era-horde-thousand-needles-part-2-objective-1176-1-salt-flats-scavenger",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Salt Flats Scavenger", mapID = 1441, offMapText = "Travel to Salt Flats Scavenger.", x = 0.88, y = 0.66 },
            },
            sourceStep = 18,
            text = "Collect 10 Hollow Vulture Bone.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "objective-1176-1-salt-flats-scavenger",
        },
        {
            complete = { questObjective = { count = 9, id = 1105, index = 1, text = "Hardened Tortoise Shell" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-part-2-accept-1105-hardened-shells" },
            id = "horde-leveling-era-horde-thousand-needles-part-2-objective-1105-1-hardened-tortoise-shell",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Hardened Tortoise Shell",
                    mapID = 1441,
                    offMapText = "Travel to Hardened Tortoise Shell.",
                    x = 0.828,
                    y = 0.552,
                },
            },
            sourceStep = 19,
            text = "Collect 9 Hardened Tortoise Shell.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "objective-1105-1-hardened-tortoise-shell",
        },
        {
            complete = { questObjective = { count = 6, id = 1104, index = 1, text = "Salty Scorpid Venom" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-part-2-accept-1104-salt-flat-venom" },
            id = "horde-leveling-era-horde-thousand-needles-part-2-objective-1104-1-salty-scorpid-venom",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Salty Scorpid Venom", mapID = 1441, offMapText = "Travel to Salty Scorpid Venom.", x = 0.824, y = 0.6 },
            },
            sourceStep = 20,
            text = "Collect 6 Salty Scorpid Venom.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "objective-1104-1-salty-scorpid-venom",
        },
        {
            complete = { questObjective = { count = 10, id = 1175, index = 1, text = "Saltstone Basilisk" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-part-2-accept-1175-a-bump-in-the-road" },
            id = "horde-leveling-era-horde-thousand-needles-part-2-objective-1175-1-saltstone-basilisk",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Saltstone Basilisk", mapID = 1441, offMapText = "Travel to Saltstone Basilisk.", x = 0.784, y = 0.59 },
            },
            sourceStep = 21,
            text = "Kill 10 Saltstone Basilisk.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "objective-1175-1-saltstone-basilisk",
        },
        {
            complete = { questObjective = { count = 10, id = 1175, index = 2, text = "Saltstone Crystalhide" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-part-2-accept-1175-a-bump-in-the-road" },
            id = "horde-leveling-era-horde-thousand-needles-part-2-objective-1175-2-saltstone-crystalhide",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Saltstone Crystalhide", mapID = 1441, offMapText = "Travel to Saltstone Crystalhide.", x = 0.788, y = 0.868 },
            },
            sourceStep = 22,
            text = "Kill 10 Saltstone Crystalhide.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "objective-1175-2-saltstone-crystalhide",
        },
        {
            complete = { questObjective = { count = 30, id = 1110, index = 1, text = "Rocket Car Parts" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-part-2-accept-1110-rocket-car-parts" },
            id = "horde-leveling-era-horde-thousand-needles-part-2-objective-1110-1-rocket-car-parts",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Rocket Car Parts", mapID = 1441, offMapText = "Travel to Rocket Car Parts.", x = 0.83, y = 0.646 } },
            sourceStep = 23,
            text = "Collect 30 Rocket Car Parts.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "objective-1110-1-rocket-car-parts",
        },
        {
            complete = { quest = { id = 1147, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-thousand-needles-part-2-accept-1147-the-swarm-grows",
                "horde-leveling-era-horde-thousand-needles-part-2-objective-1147-3-silithid-invader",
                "horde-leveling-era-horde-thousand-needles-part-2-objective-1147-1-silithid-searcher",
                "horde-leveling-era-horde-thousand-needles-part-2-objective-1147-2-silithid-hive-drone",
            },
            id = "horde-leveling-era-horde-thousand-needles-part-2-turnin-1147-the-swarm-grows",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1146 } } },
            route = {
                {
                    label = "Moktar Krin",
                    mapID = 1441,
                    offMapText = "Travel to Moktar Krin in Thousand Needles.",
                    x = 0.6758,
                    y = 0.6394,
                },
            },
            sourceStep = 24,
            text = "Turn in The Swarm Grows to Moktar Krin.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "turnin-1147-the-swarm-grows",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1147, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1147, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1146, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1145, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1110, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } } } },
            dependsOn = {
                "horde-leveling-era-horde-thousand-needles-part-2-accept-1110-rocket-car-parts",
                "horde-leveling-era-horde-thousand-needles-part-2-objective-1110-1-rocket-car-parts",
            },
            id = "horde-leveling-era-horde-thousand-needles-part-2-turnin-1110-rocket-car-parts",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Kravel Koalbeard",
                    mapID = 1441,
                    offMapText = "Travel to Kravel Koalbeard in Thousand Needles.",
                    x = 0.7779,
                    y = 0.7727,
                },
            },
            sourceStep = 25,
            text = "Turn in Rocket Car Parts to Kravel Koalbeard.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "turnin-1110-rocket-car-parts",
        },
        {
            complete = { quest = { id = 5762, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-part-2-accept-5762-hemet-nesingwary-jr",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Kravel Koalbeard",
                    mapID = 1441,
                    offMapText = "Travel to Kravel Koalbeard in Thousand Needles.",
                    x = 0.788,
                    y = 0.773,
                },
            },
            sourceStep = 25,
            text = "Accept Hemet Nesingwary Jr. from Kravel Koalbeard.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "accept-5762-hemet-nesingwary-jr",
        },
        {
            complete = { quest = { id = 1104, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } } } },
            dependsOn = {
                "horde-leveling-era-horde-thousand-needles-part-2-accept-1104-salt-flat-venom",
                "horde-leveling-era-horde-thousand-needles-part-2-objective-1104-1-salty-scorpid-venom",
            },
            id = "horde-leveling-era-horde-thousand-needles-part-2-turnin-1104-salt-flat-venom",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Fizzle Brassbolts",
                    mapID = 1441,
                    offMapText = "Travel to Fizzle Brassbolts in Thousand Needles.",
                    x = 0.7806,
                    y = 0.7713,
                },
            },
            sourceStep = 26,
            text = "Turn in Salt Flat Venom to Fizzle Brassbolts.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "turnin-1104-salt-flat-venom",
        },
        {
            complete = { quest = { id = 1105, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } } } },
            dependsOn = {
                "horde-leveling-era-horde-thousand-needles-part-2-accept-1105-hardened-shells",
                "horde-leveling-era-horde-thousand-needles-part-2-objective-1105-1-hardened-tortoise-shell",
            },
            id = "horde-leveling-era-horde-thousand-needles-part-2-turnin-1105-hardened-shells",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Wizzle Brassbolts",
                    mapID = 1441,
                    offMapText = "Travel to Wizzle Brassbolts in Thousand Needles.",
                    x = 0.7814,
                    y = 0.7712,
                },
            },
            sourceStep = 27,
            text = "Turn in Hardened Shells to Wizzle Brassbolts.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "turnin-1105-hardened-shells",
        },
        {
            complete = { quest = { id = 1106, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 26 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-part-2-accept-1106-martek-the-exiled",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "all", quests = { 1104, 1105 } } },
            route = {
                {
                    label = "Fizzle Brassbolts",
                    mapID = 1441,
                    offMapText = "Travel to Fizzle Brassbolts in Thousand Needles.",
                    x = 0.7806,
                    y = 0.7712,
                },
            },
            sourceStep = 28,
            text = "Accept Martek the Exiled from Fizzle Brassbolts.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "accept-1106-martek-the-exiled",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1106, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1106, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            all = {
                                                { any = { { quest = { id = 1104, state = "activeOrCompleted" } }, { all = {} } } },
                                                { any = { { quest = { id = 1105, state = "activeOrCompleted" } }, { all = {} } } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1176, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            dependsOn = {
                "horde-leveling-era-horde-thousand-needles-part-2-accept-1176-load-lightening",
                "horde-leveling-era-horde-thousand-needles-part-2-objective-1176-1-salt-flats-scavenger",
            },
            id = "horde-leveling-era-horde-thousand-needles-part-2-turnin-1176-load-lightening",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Pozzik", mapID = 1441, offMapText = "Travel to Pozzik in Thousand Needles.", x = 0.8018, y = 0.7588 },
            },
            sourceStep = 29,
            text = "Turn in Load Lightening to Pozzik.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "turnin-1176-load-lightening",
        },
        {
            complete = { quest = { id = 1178, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-part-2-accept-1178-goblin-sponsorship",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1176 } } },
            route = {
                { label = "Pozzik", mapID = 1441, offMapText = "Travel to Pozzik in Thousand Needles.", x = 0.8018, y = 0.7588 },
            },
            sourceStep = 29,
            text = "Accept Goblin Sponsorship from Pozzik.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "accept-1178-goblin-sponsorship",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1178, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1178, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1175, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } } } },
            dependsOn = {
                "horde-leveling-era-horde-thousand-needles-part-2-accept-1175-a-bump-in-the-road",
                "horde-leveling-era-horde-thousand-needles-part-2-objective-1175-3-saltstone-gazer",
                "horde-leveling-era-horde-thousand-needles-part-2-objective-1175-1-saltstone-basilisk",
                "horde-leveling-era-horde-thousand-needles-part-2-objective-1175-2-saltstone-crystalhide",
            },
            id = "horde-leveling-era-horde-thousand-needles-part-2-turnin-1175-a-bump-in-the-road",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Trackmaster Zherin",
                    mapID = 1441,
                    offMapText = "Travel to Trackmaster Zherin in Thousand Needles.",
                    x = 0.8163,
                    y = 0.7795,
                },
            },
            sourceStep = 30,
            text = "Turn in A Bump in the Road to Trackmaster Zherin.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "turnin-1175-a-bump-in-the-road",
        },
        {
            checkpointQuest = 5361,
            complete = { level = { min = 32 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-thousand-needles-part-2-level-before-accept-5361-family-tree",
            kind = "note",
            requiredLevel = 32,
            requiredQuests = {},
            text = "Reach level 32 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "level-before-accept-5361-family-tree",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 5361, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 32 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-part-2-accept-5361-family-tree",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Cliffwatcher Longhorn",
                    mapID = 1441,
                    offMapText = "Travel to Cliffwatcher Longhorn in Thousand Needles.",
                    x = 0.4565,
                    y = 0.508,
                },
            },
            sourceStep = 33,
            text = "Accept Family Tree from Cliffwatcher Longhorn.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "accept-5361-family-tree",
        },
        {
            complete = { quest = { id = 1148, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-thousand-needles-part-2-accept-1148-parts-of-the-swarm",
                "horde-leveling-era-horde-thousand-needles-part-2-objective-1148-1-silithid-heart",
                "horde-leveling-era-horde-thousand-needles-part-2-objective-1148-3-intact-silithid-carapace",
                "horde-leveling-era-horde-thousand-needles-part-2-objective-1148-2-silithid-talon",
            },
            id = "horde-leveling-era-horde-thousand-needles-part-2-turnin-1148-parts-of-the-swarm",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1146 } } },
            route = { { label = "Korran", mapID = 1413, offMapText = "Travel to Korran in The Barrens.", x = 0.5107, y = 0.2963 } },
            sourceStep = 34,
            text = "Turn in Parts of the Swarm to Korran.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "turnin-1148-parts-of-the-swarm",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1148, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1148, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { item = { name = "Cracked Silithid Carapace", minCount = 1 } },
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1146, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1145, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1184, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-part-2-accept-1184-parts-of-the-swarm",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1148 } } },
            route = { { label = "Korran", mapID = 1413, offMapText = "Travel to Korran in The Barrens.", x = 0.5107, y = 0.2963 } },
            sourceStep = 34,
            text = "Accept Parts of the Swarm from Korran.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "accept-1184-parts-of-the-swarm",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1184, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1184, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1148, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { item = { name = "Cracked Silithid Carapace", minCount = 1 } },
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1146, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1145, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1178, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-part-2-accept-1178-goblin-sponsorship" },
            id = "horde-leveling-era-horde-thousand-needles-part-2-turnin-1178-goblin-sponsorship",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1176 } } },
            route = { { label = "Gazlowe", mapID = 1413, offMapText = "Travel to Gazlowe in The Barrens.", x = 0.6268, y = 0.3623 } },
            sourceStep = 36,
            text = "Turn in Goblin Sponsorship to Gazlowe.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "turnin-1178-goblin-sponsorship",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1178, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1178, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1180, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-part-2-accept-1180-goblin-sponsorship",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1178 } } },
            route = { { label = "Gazlowe", mapID = 1413, offMapText = "Travel to Gazlowe in The Barrens.", x = 0.6268, y = 0.3623 } },
            sourceStep = 36,
            text = "Accept Goblin Sponsorship from Gazlowe.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "accept-1180-goblin-sponsorship",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1180, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1180, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1178, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1180, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-part-2-accept-1180-goblin-sponsorship" },
            id = "horde-leveling-era-horde-thousand-needles-part-2-turnin-1180-goblin-sponsorship",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1178 } } },
            route = {
                {
                    label = "Wharfmaster Lozgil",
                    mapID = 1434,
                    offMapText = "Travel to Wharfmaster Lozgil in Stranglethorn Vale.",
                    x = 0.2634,
                    y = 0.7356,
                },
            },
            sourceStep = 38,
            text = "Turn in Goblin Sponsorship to Wharfmaster Lozgil.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "turnin-1180-goblin-sponsorship",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1180, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1180, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1178, state = "activeOrCompleted" } },
                                                        { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1181, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-part-2-accept-1181-goblin-sponsorship",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1180 } } },
            route = {
                {
                    label = "Wharfmaster Lozgil",
                    mapID = 1434,
                    offMapText = "Travel to Wharfmaster Lozgil in Stranglethorn Vale.",
                    x = 0.2634,
                    y = 0.7356,
                },
            },
            sourceStep = 38,
            text = "Accept Goblin Sponsorship from Wharfmaster Lozgil.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "accept-1181-goblin-sponsorship",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1181, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1181, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1180, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1115, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-part-2-accept-1115-the-rumormonger" },
            id = "horde-leveling-era-horde-thousand-needles-part-2-turnin-1115-the-rumormonger",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1114 } } },
            route = {
                { label = "Krazek", mapID = 1434, offMapText = "Travel to Krazek in Stranglethorn Vale.", x = 0.2694, y = 0.7721 },
            },
            sourceStep = 41,
            text = "Turn in The Rumormonger to Krazek.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "turnin-1115-the-rumormonger",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1115, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1115, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1114, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1181, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-part-2-accept-1181-goblin-sponsorship" },
            id = "horde-leveling-era-horde-thousand-needles-part-2-turnin-1181-goblin-sponsorship",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1180 } } },
            route = {
                {
                    label = "Baron Revilgaz",
                    mapID = 1434,
                    offMapText = "Travel to Baron Revilgaz in Stranglethorn Vale.",
                    x = 0.2723,
                    y = 0.7687,
                },
            },
            sourceStep = 43,
            text = "Turn in Goblin Sponsorship to Baron Revilgaz.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "turnin-1181-goblin-sponsorship",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1181, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1181, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1180, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1182, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-part-2-accept-1182-goblin-sponsorship",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1181 } } },
            route = {
                {
                    label = "Baron Revilgaz",
                    mapID = 1434,
                    offMapText = "Travel to Baron Revilgaz in Stranglethorn Vale.",
                    x = 0.2723,
                    y = 0.7687,
                },
            },
            sourceStep = 43,
            text = "Accept Goblin Sponsorship from Baron Revilgaz.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "accept-1182-goblin-sponsorship",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1182, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1182, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1181, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1180, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1184, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-part-2-accept-1184-parts-of-the-swarm" },
            id = "horde-leveling-era-horde-thousand-needles-part-2-turnin-1184-parts-of-the-swarm",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1148 } } },
            route = {
                {
                    label = "Belgrom Rockmaul",
                    mapID = 1454,
                    offMapText = "Travel to Belgrom Rockmaul in Orgrimmar.",
                    x = 0.7523,
                    y = 0.3424,
                },
            },
            sourceStep = 51,
            text = "Turn in Parts of the Swarm to Belgrom Rockmaul.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles-part-2",
            sourceActionID = "turnin-1184-parts-of-the-swarm",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1184, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1184, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1148, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { item = { name = "Cracked Silithid Carapace", minCount = 1 } },
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1146, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1145, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-horde-desolace",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-desolace",
            text = "Reach level 34 before the Desolace visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 34 } },
            requiredLevel = 34,
        },
        {
            checkpointQuest = 5361,
            complete = { level = { min = 32 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-desolace-level-before-turnin-5361-family-tree",
            kind = "note",
            requiredLevel = 32,
            requiredQuests = {},
            text = "Reach level 32 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "level-before-turnin-5361-family-tree",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 5361, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 32 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-desolace-turnin-5361-family-tree",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Nataka Longhorn",
                    mapID = 1443,
                    offMapText = "Travel to Nataka Longhorn in Desolace.",
                    x = 0.5541,
                    y = 0.5581,
                },
            },
            sourceStep = 5,
            text = "Turn in Family Tree to Nataka Longhorn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "turnin-5361-family-tree",
        },
        {
            id = "visit-entry-leveling-era-horde-stranglethorn-vale",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-stranglethorn-vale",
            text = "Reach level 36 before the Stranglethorn Vale visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 36 } },
            requiredLevel = 36,
        },
        {
            checkpointQuest = 5762,
            complete = { level = { min = 28 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-stranglethorn-vale-level-before-turnin-5762-hemet-nesingwary-jr",
            kind = "note",
            requiredLevel = 28,
            requiredQuests = {},
            text = "Reach level 28 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-stranglethorn-vale",
            sourceActionID = "level-before-turnin-5762-hemet-nesingwary-jr",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 5762, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stranglethorn-vale-turnin-5762-hemet-nesingwary-jr",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Hemet Nesingwary Jr.",
                    mapID = 1434,
                    offMapText = "Travel to Hemet Nesingwary Jr. in Stranglethorn Vale.",
                    x = 0.3566,
                    y = 0.1081,
                },
            },
            sourceStep = 8,
            text = "Turn in Hemet Nesingwary Jr. to Hemet Nesingwary Jr..",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stranglethorn-vale",
            sourceActionID = "turnin-5762-hemet-nesingwary-jr",
        },
        {
            checkpointQuest = 1182,
            complete = {
                any = { { all = { { item = { minCount = 1, name = "Cozzle's Key" } } } }, { quest = { id = 1182, state = "complete" } } },
            },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stranglethorn-vale-objective-1182-1-foreman-cozzle",
            instructionOnly = true,
            kind = "note",
            rememberPreparation = 1182,
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1181 } } },
            route = { { label = "Foreman Cozzle", mapID = 1434, offMapText = "Travel to Foreman Cozzle.", x = 0.4265, y = 0.1835 } },
            sourceInstructionIndex = 1,
            sourceInstructionStep = 48,
            text = "Kill Foreman Cozzle at the top of the Venture Co. platform and loot Cozzle's Key.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-stranglethorn-vale",
            sourceActionID = "objective-1182-1-foreman-cozzle",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1182, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1182, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1181, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1180, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 1182, index = 1 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stranglethorn-vale-objective-1182-prepared-result",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1181 } } },
            route = {
                { label = "Cozzle's Footlocker", mapID = 1434, offMapText = "Travel to Cozzle's Footlocker.", x = 0.4334, y = 0.2034 },
            },
            sourceStep = 48,
            text = "Use Cozzle's Key to open his footlocker inside the nearby building. Collect the Fuel Regulator Blueprints.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stranglethorn-vale",
            sourceActionID = "objective-1182-prepared-result",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1182, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1182, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1181, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1180, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1182, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            dependsOn = {
                "horde-leveling-era-horde-stranglethorn-vale-objective-1182-1-foreman-cozzle",
                "horde-leveling-era-horde-stranglethorn-vale-objective-1182-prepared-result",
            },
            id = "horde-leveling-era-horde-stranglethorn-vale-turnin-1182-goblin-sponsorship",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1181 } } },
            route = {
                {
                    label = "Baron Revilgaz",
                    mapID = 1434,
                    offMapText = "Travel to Baron Revilgaz in Stranglethorn Vale.",
                    x = 0.2723,
                    y = 0.7687,
                },
            },
            sourceStep = 56,
            text = "Turn in Goblin Sponsorship to Baron Revilgaz.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stranglethorn-vale",
            sourceActionID = "turnin-1182-goblin-sponsorship",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1182, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1182, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1181, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1180, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-horde-badlands",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-badlands",
            text = "Reach level 39 before the Badlands visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 39 } },
            requiredLevel = 39,
        },
        {
            complete = { quest = { id = 1106, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 26 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-badlands-turnin-1106-martek-the-exiled",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "all", quests = { 1104, 1105 } } },
            route = {
                {
                    label = "Martek the Exiled",
                    mapID = 1418,
                    offMapText = "Travel to Martek the Exiled in Badlands.",
                    x = 0.4222,
                    y = 0.5269,
                },
            },
            sourceStep = 3,
            text = "Turn in Martek the Exiled to Martek the Exiled.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-badlands",
            sourceActionID = "turnin-1106-martek-the-exiled",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1106, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1106, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            all = {
                                                { any = { { quest = { id = 1104, state = "activeOrCompleted" } }, { all = {} } } },
                                                { any = { { quest = { id = 1105, state = "activeOrCompleted" } }, { all = {} } } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1108, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-badlands-accept-1108-indurium",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1106 } } },
            route = {
                {
                    label = "Martek the Exiled",
                    mapID = 1418,
                    offMapText = "Travel to Martek the Exiled in Badlands.",
                    x = 0.4222,
                    y = 0.5269,
                },
            },
            sourceStep = 3,
            text = "Accept Indurium from Martek the Exiled.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-badlands",
            sourceActionID = "accept-1108-indurium",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1108, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1108, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1106, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    all = {
                                                                        { any = { { quest = { id = 1104, state = "activeOrCompleted" } }, { all = {} } } },
                                                                        { any = { { quest = { id = 1105, state = "activeOrCompleted" } }, { all = {} } } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 1108, index = 1, text = "Stonevault Shaman" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } } } },
            dependsOn = { "horde-leveling-era-horde-badlands-accept-1108-indurium" },
            id = "horde-leveling-era-horde-badlands-objective-1108-1-stonevault-shaman",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1106 } } },
            route = {
                { label = "Stonevault Shaman", mapID = 1418, offMapText = "Travel to Stonevault Shaman.", x = 0.504, y = 0.686 },
            },
            sourceStep = 24,
            text = "Collect 10 Indurium Flake.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-badlands",
            sourceActionID = "objective-1108-1-stonevault-shaman",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1108, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1108, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1106, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    all = {
                                                                        { any = { { quest = { id = 1104, state = "activeOrCompleted" } }, { all = {} } } },
                                                                        { any = { { quest = { id = 1105, state = "activeOrCompleted" } }, { all = {} } } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1108, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } } } },
            dependsOn = {
                "horde-leveling-era-horde-badlands-accept-1108-indurium",
                "horde-leveling-era-horde-badlands-objective-1108-1-stonevault-shaman",
            },
            id = "horde-leveling-era-horde-badlands-turnin-1108-indurium",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1106 } } },
            route = {
                {
                    label = "Martek the Exiled",
                    mapID = 1418,
                    offMapText = "Travel to Martek the Exiled in Badlands.",
                    x = 0.4221,
                    y = 0.527,
                },
            },
            sourceStep = 25,
            text = "Turn in Indurium to Martek the Exiled.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-badlands",
            sourceActionID = "turnin-1108-indurium",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1108, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1108, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1106, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    all = {
                                                                        { any = { { quest = { id = 1104, state = "activeOrCompleted" } }, { all = {} } } },
                                                                        { any = { { quest = { id = 1105, state = "activeOrCompleted" } }, { all = {} } } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1137, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-badlands-accept-1137-news-for-fizzle",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1108 } } },
            route = {
                {
                    label = "Martek the Exiled",
                    mapID = 1418,
                    offMapText = "Travel to Martek the Exiled in Badlands.",
                    x = 0.4221,
                    y = 0.527,
                },
            },
            sourceStep = 26,
            text = "Accept News for Fizzle from Martek the Exiled.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-badlands",
            sourceActionID = "accept-1137-news-for-fizzle",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1137, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1137, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1108, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1106, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            all = {
                                                                                                { any = { { quest = { id = 1104, state = "activeOrCompleted" } }, { all = {} } } },
                                                                                                { any = { { quest = { id = 1105, state = "activeOrCompleted" } }, { all = {} } } },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
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
            complete = { quest = { id = 1116, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-accept-1116-dream-dust-in-the-swamp",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1115 } } },
            route = {
                { label = "Krazek", mapID = 1434, offMapText = "Travel to Krazek in Stranglethorn Vale.", x = 0.2694, y = 0.7721 },
            },
            sourceStep = 26,
            text = "Accept Dream Dust in the Swamp from Krazek.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows",
            sourceActionID = "accept-1116-dream-dust-in-the-swamp",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1116, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1116, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1115, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 1116, index = 1, text = "Adolescent Whelp" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = { "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-accept-1116-dream-dust-in-the-swamp" },
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-objective-1116-1-adolescent-whelp",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1115 } } },
            route = {
                { label = "Adolescent Whelp", mapID = 1435, offMapText = "Travel to Adolescent Whelp.", x = 0.124, y = 0.574 },
            },
            sourceStep = 33,
            text = "Collect 10 Speck of Dream Dust.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows",
            sourceActionID = "objective-1116-1-adolescent-whelp",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1116, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1116, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1115, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1116, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = {
                "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-accept-1116-dream-dust-in-the-swamp",
                "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-objective-1116-1-adolescent-whelp",
            },
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-turnin-1116-dream-dust-in-the-swamp",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1115 } } },
            route = {
                { label = "Krazek", mapID = 1434, offMapText = "Travel to Krazek in Stranglethorn Vale.", x = 0.2694, y = 0.7721 },
            },
            sourceStep = 51,
            text = "Turn in Dream Dust in the Swamp to Krazek.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows",
            sourceActionID = "turnin-1116-dream-dust-in-the-swamp",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1116, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1116, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1115, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1117, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-accept-1117-rumors-for-kravel",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1116 } } },
            route = {
                { label = "Krazek", mapID = 1434, offMapText = "Travel to Krazek in Stranglethorn Vale.", x = 0.2694, y = 0.7721 },
            },
            sourceStep = 52,
            text = "Accept Rumors for Kravel from Krazek.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows",
            sourceActionID = "accept-1117-rumors-for-kravel",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1117, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1117, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1116, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1115, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1183, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-accept-1183-goblin-sponsorship",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1182 } } },
            route = {
                {
                    label = "Baron Revilgaz",
                    mapID = 1434,
                    offMapText = "Travel to Baron Revilgaz in Stranglethorn Vale.",
                    x = 0.2723,
                    y = 0.7687,
                },
            },
            sourceStep = 53,
            text = "Accept Goblin Sponsorship from Baron Revilgaz.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows",
            sourceActionID = "accept-1183-goblin-sponsorship",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1183, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1183, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1182, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1181, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1180, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-horde-tanaris",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-tanaris",
            text = "Reach level 41 before the Tanaris visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 41 } },
            requiredLevel = 41,
        },
        {
            complete = { quest = { id = 1117, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-turnin-1117-rumors-for-kravel",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1116 } } },
            route = {
                {
                    label = "Kravel Koalbeard",
                    mapID = 1441,
                    offMapText = "Travel to Kravel Koalbeard in Thousand Needles.",
                    x = 0.7779,
                    y = 0.7727,
                },
            },
            sourceStep = 22,
            text = "Turn in Rumors for Kravel to Kravel Koalbeard.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris",
            sourceActionID = "turnin-1117-rumors-for-kravel",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1117, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1117, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1116, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1115, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1118, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-accept-1118-back-to-booty-bay",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1117 } } },
            route = {
                {
                    label = "Kravel Koalbeard",
                    mapID = 1441,
                    offMapText = "Travel to Kravel Koalbeard in Thousand Needles.",
                    x = 0.788,
                    y = 0.773,
                },
            },
            sourceStep = 23,
            text = "Accept Back to Booty Bay from Kravel Koalbeard.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris",
            sourceActionID = "accept-1118-back-to-booty-bay",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1118, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1118, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1117, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1116, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1115, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1137, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-turnin-1137-news-for-fizzle",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1108 } } },
            route = {
                {
                    label = "Fizzle Brassbolts",
                    mapID = 1441,
                    offMapText = "Travel to Fizzle Brassbolts in Thousand Needles.",
                    x = 0.7806,
                    y = 0.7713,
                },
            },
            sourceStep = 24,
            text = "Turn in News for Fizzle to Fizzle Brassbolts.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris",
            sourceActionID = "turnin-1137-news-for-fizzle",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1137, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1137, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1108, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1106, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            all = {
                                                                                                { any = { { quest = { id = 1104, state = "activeOrCompleted" } }, { all = {} } } },
                                                                                                { any = { { quest = { id = 1105, state = "activeOrCompleted" } }, { all = {} } } },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1183, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-turnin-1183-goblin-sponsorship",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1182 } } },
            route = {
                { label = "Pozzik", mapID = 1441, offMapText = "Travel to Pozzik in Thousand Needles.", x = 0.8018, y = 0.7588 },
            },
            sourceStep = 25,
            text = "Turn in Goblin Sponsorship to Pozzik.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris",
            sourceActionID = "turnin-1183-goblin-sponsorship",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1183, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1183, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1182, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1181, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1180, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                                                                { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1186, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-accept-1186-the-eighteenth-pilot",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1183 } } },
            route = {
                { label = "Pozzik", mapID = 1441, offMapText = "Travel to Pozzik in Thousand Needles.", x = 0.8018, y = 0.7588 },
            },
            sourceStep = 25,
            text = "Accept The Eighteenth Pilot from Pozzik.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris",
            sourceActionID = "accept-1186-the-eighteenth-pilot",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1186, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1186, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1183, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1182, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1181, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1180, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1190, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-accept-1190-keeping-pace",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1137 } } },
            route = {
                { label = "Pozzik", mapID = 1441, offMapText = "Travel to Pozzik in Thousand Needles.", x = 0.8018, y = 0.7588 },
            },
            sourceStep = 25,
            text = "Accept Keeping Pace from Pozzik.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris",
            sourceActionID = "accept-1190-keeping-pace",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1190, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1190, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1137, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1108, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1106, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    all = {
                                                                                                                        { any = { { quest = { id = 1104, state = "activeOrCompleted" } }, { all = {} } } },
                                                                                                                        { any = { { quest = { id = 1105, state = "activeOrCompleted" } }, { all = {} } } },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1186, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-accept-1186-the-eighteenth-pilot" },
            id = "horde-leveling-era-horde-tanaris-turnin-1186-the-eighteenth-pilot",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1183 } } },
            route = {
                { label = "Razzeric", mapID = 1441, offMapText = "Travel to Razzeric in Thousand Needles.", x = 0.8033, y = 0.7609 },
            },
            sourceStep = 26,
            text = "Turn in The Eighteenth Pilot to Razzeric.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris",
            sourceActionID = "turnin-1186-the-eighteenth-pilot",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1186, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1186, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1183, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1182, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1181, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1180, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1187, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-accept-1187-razzeric-s-tweaking",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1186 } } },
            route = {
                { label = "Razzeric", mapID = 1441, offMapText = "Travel to Razzeric in Thousand Needles.", x = 0.8033, y = 0.7609 },
            },
            sourceStep = 26,
            text = "Accept Razzeric's Tweaking from Razzeric.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris",
            sourceActionID = "accept-1187-razzeric-s-tweaking",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1187, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1187, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1186, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1183, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1182, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1181, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1180, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1191, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-accept-1191-zamek-s-distraction",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Zamek", mapID = 1441, offMapText = "Travel to Zamek in Thousand Needles.", x = 0.7981, y = 0.7702 },
            },
            sourceStep = 27,
            text = "Accept Zamek's Distraction from Zamek.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris",
            sourceActionID = "accept-1191-zamek-s-distraction",
        },
        {
            complete = { quest = { id = 1190, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-accept-1190-keeping-pace" },
            id = "horde-leveling-era-horde-tanaris-turnin-1190-keeping-pace",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1137 } } },
            route = { { label = "Keeping Pace", mapID = 1441, offMapText = "Travel to Keeping Pace.", x = 0.7721, y = 0.7738 } },
            sourceStep = 28,
            text = "Turn in Keeping Pace.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris",
            sourceActionID = "turnin-1190-keeping-pace",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1190, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1190, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1137, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1108, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1106, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    all = {
                                                                                                                        { any = { { quest = { id = 1104, state = "activeOrCompleted" } }, { all = {} } } },
                                                                                                                        { any = { { quest = { id = 1105, state = "activeOrCompleted" } }, { all = {} } } },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1194, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-accept-1194-rizzle-s-schematics",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1190 } } },
            route = {
                { label = "Rizzle's Schematics", mapID = 1441, offMapText = "Travel to Rizzle's Schematics.", x = 0.7721, y = 0.7738 },
            },
            sourceStep = 28,
            text = "Accept Rizzle's Schematics.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris",
            sourceActionID = "accept-1194-rizzle-s-schematics",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1194, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1194, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1190, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1137, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1108, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1106, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            all = {
                                                                                                                                                { any = { { quest = { id = 1104, state = "activeOrCompleted" } }, { all = {} } } },
                                                                                                                                                { any = { { quest = { id = 1105, state = "activeOrCompleted" } }, { all = {} } } },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1194, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-accept-1194-rizzle-s-schematics" },
            id = "horde-leveling-era-horde-tanaris-turnin-1194-rizzle-s-schematics",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1190 } } },
            route = {
                { label = "Pozzik", mapID = 1441, offMapText = "Travel to Pozzik in Thousand Needles.", x = 0.8018, y = 0.7588 },
            },
            sourceStep = 29,
            text = "Turn in Rizzle's Schematics to Pozzik.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris",
            sourceActionID = "turnin-1194-rizzle-s-schematics",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1194, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1194, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1190, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1137, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1108, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1106, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            all = {
                                                                                                                                                { any = { { quest = { id = 1104, state = "activeOrCompleted" } }, { all = {} } } },
                                                                                                                                                { any = { { quest = { id = 1105, state = "activeOrCompleted" } }, { all = {} } } },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-horde-dustwallow-marsh-part-2",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-dustwallow-marsh-part-2",
            text = "Reach level 42 before the Dustwallow Marsh visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 42 } },
            requiredLevel = 42,
        },
        {
            checkpointQuest = 1187,
            complete = { level = { min = 29 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-dustwallow-marsh-part-2-level-before-objective-1187-1-seaforium-booster",
            kind = "note",
            requiredLevel = 29,
            requiredQuests = {},
            text = "Reach level 29 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-dustwallow-marsh-part-2",
            sourceActionID = "level-before-objective-1187-1-seaforium-booster",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1187, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1187, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1186, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1183, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1182, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1181, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1180, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 1187, index = 1 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-dustwallow-marsh-part-2-objective-1187-1-seaforium-booster",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1186 } } },
            route = {
                { label = "Razzeric's Tweaking", mapID = 1445, offMapText = "Travel to Razzeric's Tweaking.", x = 0.5407, y = 0.5649 },
            },
            sourceStep = 5,
            text = "Open the Gizmorium Shipping Crate on the Dustwallow coast and collect the Seaforium Booster.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-dustwallow-marsh-part-2",
            sourceActionID = "objective-1187-1-seaforium-booster",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1187, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1187, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1186, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1183, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1182, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1181, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1180, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-horde-stranglethorn-vale-part-2",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-stranglethorn-vale-part-2",
            text = "Reach level 44 before the Stranglethorn Vale visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 44 } },
            requiredLevel = 44,
        },
        {
            checkpointQuest = 1118,
            complete = { level = { min = 35 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-stranglethorn-vale-part-2-level-before-turnin-1118-back-to-booty-bay",
            kind = "note",
            requiredLevel = 35,
            requiredQuests = {},
            text = "Reach level 35 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-part-2",
            sourceActionID = "level-before-turnin-1118-back-to-booty-bay",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1118, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1118, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1117, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1116, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1115, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1118, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stranglethorn-vale-part-2-turnin-1118-back-to-booty-bay",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1117 } } },
            route = {
                {
                    label = "Crank Fizzlebub",
                    mapID = 1434,
                    offMapText = "Travel to Crank Fizzlebub in Stranglethorn Vale.",
                    x = 0.2712,
                    y = 0.7721,
                },
            },
            sourceStep = 23,
            text = "Turn in Back to Booty Bay to Crank Fizzlebub.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-part-2",
            sourceActionID = "turnin-1118-back-to-booty-bay",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1118, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1118, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1117, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1116, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1115, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 621, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stranglethorn-vale-part-2-accept-621-zanzil-s-secret",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Crank Fizzlebub",
                    mapID = 1434,
                    offMapText = "Travel to Crank Fizzlebub in Stranglethorn Vale.",
                    x = 0.2712,
                    y = 0.7721,
                },
            },
            sourceStep = 24,
            text = "Accept Zanzil's Secret from Crank Fizzlebub.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-part-2",
            sourceActionID = "accept-621-zanzil-s-secret",
        },
        {
            complete = { questObjective = { count = 12, id = 621, index = 1, text = "Zanzil's Mixture" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = { "horde-leveling-era-horde-stranglethorn-vale-part-2-accept-621-zanzil-s-secret" },
            id = "horde-leveling-era-horde-stranglethorn-vale-part-2-objective-621-1-zanzil-s-mixture",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Zanzil's Mixture", mapID = 1434, offMapText = "Travel to Zanzil's Mixture.", x = 0.398, y = 0.572 },
            },
            sourceStep = 49,
            text = "Collect 12 Zanzil's Mixture.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-part-2",
            sourceActionID = "objective-621-1-zanzil-s-mixture",
        },
        {
            complete = { quest = { id = 621, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = {
                "horde-leveling-era-horde-stranglethorn-vale-part-2-accept-621-zanzil-s-secret",
                "horde-leveling-era-horde-stranglethorn-vale-part-2-objective-621-1-zanzil-s-mixture",
            },
            id = "horde-leveling-era-horde-stranglethorn-vale-part-2-turnin-621-zanzil-s-secret",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Crank Fizzlebub",
                    mapID = 1434,
                    offMapText = "Travel to Crank Fizzlebub in Stranglethorn Vale.",
                    x = 0.2712,
                    y = 0.7721,
                },
            },
            sourceStep = 56,
            text = "Turn in Zanzil's Secret to Crank Fizzlebub.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-part-2",
            sourceActionID = "turnin-621-zanzil-s-secret",
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
            checkpointQuest = 1119,
            complete = { level = { min = 35 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-swamp-of-sorrows-level-before-accept-1119-zanzil-s-mixture-and-a-fool-s-stout",
            kind = "note",
            requiredLevel = 35,
            requiredQuests = {},
            text = "Reach level 35 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-swamp-of-sorrows",
            sourceActionID = "level-before-accept-1119-zanzil-s-mixture-and-a-fool-s-stout",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1119, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1119, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            all = {
                                                { any = { { quest = { id = 621, state = "activeOrCompleted" } }, { all = {} } } },
                                                {
                                                    any = {
                                                        { quest = { id = 1118, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1117, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1116, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1115, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1119, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-swamp-of-sorrows-accept-1119-zanzil-s-mixture-and-a-fool-s-stout",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "all", quests = { 621, 1118 } } },
            route = {
                {
                    label = "Crank Fizzlebub",
                    mapID = 1434,
                    offMapText = "Travel to Crank Fizzlebub in Stranglethorn Vale.",
                    x = 0.2712,
                    y = 0.7721,
                },
            },
            sourceStep = 23,
            text = "Accept Zanzil's Mixture and a Fool's Stout from Crank Fizzlebub.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-swamp-of-sorrows",
            sourceActionID = "accept-1119-zanzil-s-mixture-and-a-fool-s-stout",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1119, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1119, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            all = {
                                                { any = { { quest = { id = 621, state = "activeOrCompleted" } }, { all = {} } } },
                                                {
                                                    any = {
                                                        { quest = { id = 1118, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1117, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1116, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1115, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
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
            checkpointQuest = 1119,
            complete = { level = { min = 35 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-level-before-turnin-1119-zanzil-s-mixture-and-a-fool-s-stout",
            kind = "note",
            requiredLevel = 35,
            requiredQuests = {},
            text = "Reach level 35 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "level-before-turnin-1119-zanzil-s-mixture-and-a-fool-s-stout",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1119, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1119, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            all = {
                                                { any = { { quest = { id = 621, state = "activeOrCompleted" } }, { all = {} } } },
                                                {
                                                    any = {
                                                        { quest = { id = 1118, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1117, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1116, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1115, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1119, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-turnin-1119-zanzil-s-mixture-and-a-fool-s-stout",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "all", quests = { 621, 1118 } } },
            route = {
                {
                    label = "Kravel Koalbeard",
                    mapID = 1441,
                    offMapText = "Travel to Kravel Koalbeard in Thousand Needles.",
                    x = 0.7779,
                    y = 0.7727,
                },
            },
            sourceStep = 1,
            text = "Turn in Zanzil's Mixture and a Fool's Stout to Kravel Koalbeard.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "turnin-1119-zanzil-s-mixture-and-a-fool-s-stout",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1119, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1119, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            all = {
                                                { any = { { quest = { id = 621, state = "activeOrCompleted" } }, { all = {} } } },
                                                {
                                                    any = {
                                                        { quest = { id = 1118, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1117, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1116, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1115, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            alternativeQuests = { 1121 },
            complete = { quest = { id = 1120, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-1120-get-the-gnomes-drunk",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1119 } } },
            route = {
                {
                    label = "Kravel Koalbeard",
                    mapID = 1441,
                    offMapText = "Travel to Kravel Koalbeard in Thousand Needles.",
                    x = 0.788,
                    y = 0.773,
                },
            },
            sourceStep = 2,
            text = "Accept Get the Gnomes Drunk from Kravel Koalbeard.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "accept-1120-get-the-gnomes-drunk",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1120, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1120, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1119, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    all = {
                                                                        { any = { { quest = { id = 621, state = "activeOrCompleted" } }, { all = {} } } },
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1118, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1117, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1116, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1115, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            alternativeQuests = { 1121 },
            complete = { quest = { id = 1120, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-1120-get-the-gnomes-drunk" },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-turnin-1120-get-the-gnomes-drunk",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1119 } } },
            route = {
                {
                    label = "Gnome Pit Boss",
                    mapID = 1441,
                    offMapText = "Travel to Gnome Pit Boss in Thousand Needles.",
                    x = 0.7756,
                    y = 0.7694,
                },
            },
            sourceStep = 3,
            text = "Turn in Get the Gnomes Drunk to Gnome Pit Boss.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "turnin-1120-get-the-gnomes-drunk",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1120, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1120, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1119, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    all = {
                                                                        { any = { { quest = { id = 621, state = "activeOrCompleted" } }, { all = {} } } },
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1118, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1117, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1116, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1115, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1122, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-1122-report-back-to-fizzlebub",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1120, 1121 } } },
            route = {
                {
                    label = "Kravel Koalbeard",
                    mapID = 1441,
                    offMapText = "Travel to Kravel Koalbeard in Thousand Needles.",
                    x = 0.788,
                    y = 0.773,
                },
            },
            sourceStep = 4,
            text = "Accept Report Back to Fizzlebub from Kravel Koalbeard.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "accept-1122-report-back-to-fizzlebub",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1122, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1122, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1120, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1119, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            all = {
                                                                                                { any = { { quest = { id = 621, state = "activeOrCompleted" } }, { all = {} } } },
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1118, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1117, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1116, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1115, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                                { quest = { id = 1121, state = "completed" } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 1121 },
        },
        {
            complete = { questObjective = { count = 1, id = 1187, index = 1 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-1187-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1186 } } },
            route = {
                { label = "Razzeric's Tweaking", mapID = 1445, offMapText = "Travel to Razzeric's Tweaking.", x = 0.5407, y = 0.5649 },
            },
            sourceStep = 5,
            text = "Open the Gizmorium Shipping Crate on the Dustwallow coast and collect the Seaforium Booster.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "objective-1187-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1187, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1187, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1186, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1183, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1182, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1181, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1180, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1187, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            dependsOn = {
                "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-objective-1187-quest-work",
                "horde-leveling-era-horde-dustwallow-marsh-part-2-objective-1187-1-seaforium-booster",
            },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-turnin-1187-razzeric-s-tweaking",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1186 } } },
            route = {
                { label = "Razzeric", mapID = 1441, offMapText = "Travel to Razzeric in Thousand Needles.", x = 0.8033, y = 0.761 },
            },
            sourceStep = 5,
            text = "Turn in Razzeric's Tweaking to Razzeric.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "turnin-1187-razzeric-s-tweaking",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1187, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1187, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1186, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1183, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1182, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1181, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1180, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1188, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-1188-safety-first",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1187 } } },
            route = {
                { label = "Razzeric", mapID = 1441, offMapText = "Travel to Razzeric in Thousand Needles.", x = 0.8033, y = 0.761 },
            },
            sourceStep = 5,
            text = "Accept Safety First from Razzeric.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "accept-1188-safety-first",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1188, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1188, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1187, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1186, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1183, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1182, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1181, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1180, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1188, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } } } },
            dependsOn = { "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-accept-1188-safety-first" },
            id = "horde-leveling-era-horde-tanaris-and-dustwallow-marsh-turnin-1188-safety-first",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1187 } } },
            route = { { label = "Shreev", mapID = 1446, offMapText = "Travel to Shreev in Tanaris.", x = 0.5096, y = 0.2724 } },
            sourceStep = 7,
            text = "Turn in Safety First to Shreev.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-tanaris-and-dustwallow-marsh",
            sourceActionID = "turnin-1188-safety-first",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1188, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1188, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1187, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1186, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1183, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1182, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1181, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1180, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1178, state = "activeOrCompleted" } },
                                                                                                                                                                                                        { all = { { any = { { any = { { quest = { id = 1176, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
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
            complete = { quest = { id = 1122, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2-turnin-1122-report-back-to-fizzlebub",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1120, 1121 } } },
            route = {
                {
                    label = "Crank Fizzlebub",
                    mapID = 1434,
                    offMapText = "Travel to Crank Fizzlebub in Stranglethorn Vale.",
                    x = 0.2712,
                    y = 0.7721,
                },
            },
            sourceStep = 3,
            text = "Turn in Report Back to Fizzlebub to Crank Fizzlebub.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-part-2",
            sourceActionID = "turnin-1122-report-back-to-fizzlebub",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1122, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1122, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1120, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1119, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            all = {
                                                                                                { any = { { quest = { id = 621, state = "activeOrCompleted" } }, { all = {} } } },
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1118, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1117, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1116, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1115, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1114, state = "activeOrCompleted" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 1112, state = "activeOrCompleted" } },
                                                                                                                                                                                                                                { all = { { any = { { any = { { quest = { id = 1111, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                                { quest = { id = 1121, state = "completed" } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 1121 },
        },
        {
            id = "horde-extra-97985-level",
            kind = "note",
            checkpointQuest = 97985,
            text = "Reach level 33 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 33 } },
            requiredLevel = 33,
        },
        {
            id = "horde-extra-97985-accept",
            kind = "accept",
            text = "Accept Thundering Hearts from Calder Gray.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } } } },
            route = {
                {
                    mapID = 1458,
                    x = 0.49200000000000005,
                    y = 0.7040000000000001,
                    label = "Calder Gray",
                    offMapText = "Travel to Calder Gray in Undercity.",
                },
            },
            complete = { quest = { id = 97985, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-97985-level" },
        },
        {
            id = "horde-extra-97985-objective",
            kind = "objective",
            text = "Slay Stormheart in Thousand Needles and acquire its heart. This is an elite. Bring a group.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } } } },
            route = {
                { mapID = 1441, x = 0.569, y = 0.562, label = "Stormheart", offMapText = "Travel to Stormheart in Thousand Needles." },
            },
            complete = { quest = { id = 97985, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-97985-accept" },
        },
        {
            id = "horde-extra-97985-turnin",
            kind = "turnin",
            text = "Turn in Thundering Hearts to Calder Gray.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } } } },
            route = {
                {
                    mapID = 1458,
                    x = 0.49200000000000005,
                    y = 0.7040000000000001,
                    label = "Calder Gray",
                    offMapText = "Travel to Calder Gray in Undercity.",
                },
            },
            complete = { quest = { id = 97985, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-97985-objective" },
        },
        {
            id = "horde-extra-98070-level",
            kind = "note",
            checkpointQuest = 98070,
            text = "Reach level 31 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 31 } },
            requiredLevel = 31,
        },
        {
            id = "horde-extra-98070-accept",
            kind = "accept",
            text = "Accept Stop the Screeching from Jandia.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 27 } } } },
            route = { { mapID = 1441, x = 0.46, y = 0.514, label = "Jandia", offMapText = "Travel to Jandia in Thousand Needles." } },
            complete = { quest = { id = 98070, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-98070-level" },
        },
        {
            id = "horde-extra-98070-objective",
            kind = "objective",
            text = "Slay 5 Screeching Harpies, 5 Screeching Roguefeather Harpies and 5 Screeching Windcaller Harpies.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 27 } } } },
            route = {
                {
                    mapID = 1441,
                    x = 0.262,
                    y = 0.526,
                    label = "Screeching Harpy",
                    offMapText = "Travel to Screeching Harpy in Thousand Needles.",
                },
            },
            complete = { quest = { id = 98070, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-98070-accept" },
        },
        {
            id = "horde-extra-98070-turnin",
            kind = "turnin",
            text = "Turn in Stop the Screeching to Jandia.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 27 } } } },
            route = { { mapID = 1441, x = 0.46, y = 0.514, label = "Jandia", offMapText = "Travel to Jandia in Thousand Needles." } },
            complete = { quest = { id = 98070, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-98070-objective" },
        },
    },
})
