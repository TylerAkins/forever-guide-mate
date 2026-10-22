local _, ns = ...

-- Source decisions: docs/loremaster/ashenvale.json.
-- Coordinates require a Forever client walkthrough.
ns:RegisterGuide({
    id = "loremaster-ashenvale",
    title = "Ashenvale",
    category = "Loremaster Guides",
    revision = 2,
    routeMode = "ordered",
    loremasterExpanded = true,
    goals = {
        {
            id = "visit-entry-leveling-era-alliance-darkshore",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-darkshore",
            text = "Reach level 15 before the Darkshore visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 15 } },
            requiredLevel = 15,
        },
        {
            complete = { quest = { id = 965, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 13 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-darkshore-accept-965-the-tower-of-althalaxx",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Sentinel Elissa Starbreeze",
                    mapID = 1439,
                    offMapText = "Travel to Sentinel Elissa Starbreeze in Darkshore.",
                    x = 0.3905,
                    y = 0.4355,
                },
            },
            sourceStep = 80,
            text = "Accept The Tower of Althalaxx from Sentinel Elissa Starbreeze.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-darkshore",
            sourceActionID = "accept-965-the-tower-of-althalaxx",
        },
        {
            complete = { quest = { id = 965, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 13 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-darkshore-accept-965-the-tower-of-althalaxx" },
            id = "alliance-leveling-era-alliance-darkshore-turnin-965-the-tower-of-althalaxx",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Balthule Shadowstrike",
                    mapID = 1439,
                    offMapText = "Travel to Balthule Shadowstrike in Darkshore.",
                    x = 0.5497,
                    y = 0.2489,
                },
            },
            sourceActionID = "turnin-965-the-tower-of-althalaxx",
            sourceGuide = "leveling-era-alliance-darkshore",
            sourceStep = 88,
            text = "Turn in The Tower of Althalaxx to Balthule Shadowstrike.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 966, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 13 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-darkshore-accept-966-the-tower-of-althalaxx",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 965 } } },
            route = {
                {
                    label = "Balthule Shadowstrike",
                    mapID = 1439,
                    offMapText = "Travel to Balthule Shadowstrike in Darkshore.",
                    x = 0.5497,
                    y = 0.2489,
                },
            },
            sourceStep = 88,
            text = "Accept The Tower of Althalaxx from Balthule Shadowstrike.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-darkshore",
            sourceActionID = "accept-966-the-tower-of-althalaxx",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 966, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 966, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 965, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 4, id = 966, index = 1, text = "Dark Strand Fanatic" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 13 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-darkshore-accept-966-the-tower-of-althalaxx" },
            id = "alliance-leveling-era-alliance-darkshore-objective-966-1-dark-strand-fanatic",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 965 } } },
            route = {
                { label = "Dark Strand Fanatic", mapID = 1439, offMapText = "Travel to Dark Strand Fanatic.", x = 0.55, y = 0.276 },
            },
            sourceStep = 89,
            text = "Collect 4 Worn Parchment.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-darkshore",
            sourceActionID = "objective-966-1-dark-strand-fanatic",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 966, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 966, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 965, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 966, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 13 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-darkshore-accept-966-the-tower-of-althalaxx",
                "alliance-leveling-era-alliance-darkshore-objective-966-1-dark-strand-fanatic",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 966, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 966, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 965, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-darkshore-turnin-966-the-tower-of-althalaxx",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 965 } } },
            route = {
                {
                    label = "Balthule Shadowstrike",
                    mapID = 1439,
                    offMapText = "Travel to Balthule Shadowstrike in Darkshore.",
                    x = 0.5497,
                    y = 0.2489,
                },
            },
            sourceActionID = "turnin-966-the-tower-of-althalaxx",
            sourceGuide = "leveling-era-alliance-darkshore",
            sourceStep = 90,
            text = "Turn in The Tower of Althalaxx to Balthule Shadowstrike.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 967, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 13 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-darkshore-accept-967-the-tower-of-althalaxx",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 966 } } },
            route = {
                {
                    label = "Balthule Shadowstrike",
                    mapID = 1439,
                    offMapText = "Travel to Balthule Shadowstrike in Darkshore.",
                    x = 0.5497,
                    y = 0.2489,
                },
            },
            sourceStep = 90,
            text = "Accept The Tower of Althalaxx from Balthule Shadowstrike.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-darkshore",
            sourceActionID = "accept-967-the-tower-of-althalaxx",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 967, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 967, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 966, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 965, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
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
            checkpointQuest = 967,
            complete = { level = { min = 13 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-level-before-turnin-967-the-tower-of-althalaxx",
            kind = "note",
            requiredLevel = 13,
            requiredQuests = {},
            text = "Reach level 13 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "level-before-turnin-967-the-tower-of-althalaxx",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 967, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 967, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 966, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 965, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 967, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 13 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 967, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 967, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 966, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 965, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-turnin-967-the-tower-of-althalaxx",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 966 } } },
            route = {
                {
                    label = "Delgren the Purifier",
                    mapID = 1440,
                    offMapText = "Travel to Delgren the Purifier in Ashenvale.",
                    x = 0.262,
                    y = 0.387,
                },
            },
            sourceActionID = "turnin-967-the-tower-of-althalaxx",
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceStep = 1,
            text = "Turn in The Tower of Althalaxx to Delgren the Purifier.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 970, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 13 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-970-the-tower-of-althalaxx",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 967 } } },
            route = {
                {
                    label = "Delgren the Purifier",
                    mapID = 1440,
                    offMapText = "Travel to Delgren the Purifier in Ashenvale.",
                    x = 0.262,
                    y = 0.387,
                },
            },
            sourceStep = 1,
            text = "Accept The Tower of Althalaxx from Delgren the Purifier.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "accept-970-the-tower-of-althalaxx",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 970, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 970, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 967, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 966, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 965, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 1010,
            complete = { level = { min = 20 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-level-before-accept-1010-bathran-s-hair",
            kind = "note",
            requiredLevel = 20,
            requiredQuests = {},
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "level-before-accept-1010-bathran-s-hair",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 1010, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1010-bathran-s-hair",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Orendil Broadleaf",
                    mapID = 1440,
                    offMapText = "Travel to Orendil Broadleaf in Ashenvale.",
                    x = 0.2644,
                    y = 0.3859,
                },
            },
            sourceStep = 2,
            text = "Accept Bathran's Hair from Orendil Broadleaf.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "accept-1010-bathran-s-hair",
        },
        {
            complete = { questObjective = { count = 1, id = 970, index = 1, text = "Dark Strand Cultist" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 13 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-970-the-tower-of-althalaxx" },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-970-1-dark-strand-cultist",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 967 } } },
            route = {
                { label = "Dark Strand Cultist", mapID = 1440, offMapText = "Travel to Dark Strand Cultist.", x = 0.3139, y = 0.3062 },
            },
            sourceStep = 3,
            text = "Collect 1 Glowing Soul Gem.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "objective-970-1-dark-strand-cultist",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 970, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 970, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 967, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 966, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 965, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 5, id = 1010, index = 1, text = "Bathran's Hair" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1010-bathran-s-hair" },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1010-1-bathran-s-hair",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Bathran's Hair", mapID = 1440, offMapText = "Travel to Bathran's Hair.", x = 0.301, y = 0.247 } },
            sourceStep = 4,
            text = "Collect 5 Bathran's Hair.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "objective-1010-1-bathran-s-hair",
        },
        {
            complete = { quest = { id = 1010, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1010-bathran-s-hair",
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1010-1-bathran-s-hair",
            },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-turnin-1010-bathran-s-hair",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Orendil Broadleaf",
                    mapID = 1440,
                    offMapText = "Travel to Orendil Broadleaf in Ashenvale.",
                    x = 0.2644,
                    y = 0.3859,
                },
            },
            sourceActionID = "turnin-1010-bathran-s-hair",
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceStep = 5,
            text = "Turn in Bathran's Hair to Orendil Broadleaf.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1020, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1020-orendil-s-cure",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1010 } } },
            route = {
                {
                    label = "Orendil Broadleaf",
                    mapID = 1440,
                    offMapText = "Travel to Orendil Broadleaf in Ashenvale.",
                    x = 0.2644,
                    y = 0.3859,
                },
            },
            sourceStep = 5,
            text = "Accept Orendil's Cure from Orendil Broadleaf.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "accept-1020-orendil-s-cure",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1020, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1020, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1010, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 970, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 13 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-970-the-tower-of-althalaxx",
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-970-1-dark-strand-cultist",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 970, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 970, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 967, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 966, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 965, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-turnin-970-the-tower-of-althalaxx",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 967 } } },
            route = {
                {
                    label = "Delgren the Purifier",
                    mapID = 1440,
                    offMapText = "Travel to Delgren the Purifier in Ashenvale.",
                    x = 0.262,
                    y = 0.387,
                },
            },
            sourceActionID = "turnin-970-the-tower-of-althalaxx",
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceStep = 6,
            text = "Turn in The Tower of Althalaxx to Delgren the Purifier.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 973, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 13 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-973-the-tower-of-althalaxx",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 970 } } },
            route = {
                {
                    label = "Delgren the Purifier",
                    mapID = 1440,
                    offMapText = "Travel to Delgren the Purifier in Ashenvale.",
                    x = 0.262,
                    y = 0.387,
                },
            },
            sourceStep = 6,
            text = "Accept The Tower of Althalaxx from Delgren the Purifier.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "accept-973-the-tower-of-althalaxx",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 973, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 973, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 970, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 967, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 966, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 965, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1008, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 14 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1008-the-zoram-strand",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Shindrell Swiftfire",
                    mapID = 1440,
                    offMapText = "Travel to Shindrell Swiftfire in Ashenvale.",
                    x = 0.3467,
                    y = 0.4884,
                },
            },
            sourceStep = 9,
            text = "Accept The Zoram Strand from Shindrell Swiftfire.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "accept-1008-the-zoram-strand",
        },
        {
            complete = { quest = { id = 1070, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 17 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1070-on-guard-in-stonetalon",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Sentinel Thenysil",
                    mapID = 1440,
                    offMapText = "Travel to Sentinel Thenysil in Ashenvale.",
                    x = 0.3489,
                    y = 0.4979,
                },
            },
            sourceStep = 10,
            text = "Accept On Guard in Stonetalon from Sentinel Thenysil.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "accept-1070-on-guard-in-stonetalon",
        },
        {
            complete = { quest = { id = 1056, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1056-journey-to-stonetalon-peak",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Faldreas Goeth'Shael",
                    mapID = 1440,
                    offMapText = "Travel to Faldreas Goeth'Shael in Ashenvale.",
                    x = 0.3576,
                    y = 0.491,
                },
            },
            sourceStep = 11,
            text = "Accept Journey to Stonetalon Peak from Faldreas Goeth'Shael.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "accept-1056-journey-to-stonetalon-peak",
        },
        {
            complete = { quest = { id = 991, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-991-raene-s-cleansing",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Raene Wolfrunner",
                    mapID = 1440,
                    offMapText = "Travel to Raene Wolfrunner in Ashenvale.",
                    x = 0.3662,
                    y = 0.4958,
                },
            },
            sourceStep = 12,
            text = "Accept Raene's Cleansing from Raene Wolfrunner.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "accept-991-raene-s-cleansing",
        },
        {
            complete = { quest = { id = 1054, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1054-culling-the-threat",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Raene Wolfrunner",
                    mapID = 1440,
                    offMapText = "Travel to Raene Wolfrunner in Ashenvale.",
                    x = 0.3662,
                    y = 0.4958,
                },
            },
            sourceStep = 12,
            text = "Accept Culling the Threat from Raene Wolfrunner.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "accept-1054-culling-the-threat",
        },
        {
            complete = { quest = { id = 1020, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1020-orendil-s-cure" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1020, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1020, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1010, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-turnin-1020-orendil-s-cure",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1010 } } },
            route = {
                {
                    label = "Pelturas Whitemoon",
                    mapID = 1440,
                    offMapText = "Travel to Pelturas Whitemoon in Ashenvale.",
                    x = 0.3737,
                    y = 0.5179,
                },
            },
            sourceActionID = "turnin-1020-orendil-s-cure",
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceStep = 14,
            text = "Turn in Orendil's Cure to Pelturas Whitemoon.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1033, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1033-elune-s-tear",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1020 } } },
            route = {
                {
                    label = "Pelturas Whitemoon",
                    mapID = 1440,
                    offMapText = "Travel to Pelturas Whitemoon in Ashenvale.",
                    x = 0.3737,
                    y = 0.5179,
                },
            },
            sourceStep = 15,
            text = "Accept Elune's Tear from Pelturas Whitemoon.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "accept-1033-elune-s-tear",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1033, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1033, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1020, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1010, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 1033, index = 1, text = "Elune's Tear" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1033-elune-s-tear" },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1033-1-elune-s-tear",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1020 } } },
            route = { { label = "Elune's Tear", mapID = 1440, offMapText = "Travel to Elune's Tear.", x = 0.4624, y = 0.4596 } },
            sourceStep = 21,
            text = "Collect 1 Elune's Tear.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "objective-1033-1-elune-s-tear",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1033, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1033, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1020, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1010, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 1054, index = 1, text = "Dal Bloodclaw" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1054-culling-the-threat" },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1054-1-dal-bloodclaw",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Dal Bloodclaw", mapID = 1440, offMapText = "Travel to Dal Bloodclaw.", x = 0.384, y = 0.366 } },
            sourceStep = 22,
            text = "Collect 1 Dal Bloodclaw's Skull.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "objective-1054-1-dal-bloodclaw",
        },
        {
            complete = { quest = { id = 1054, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1054-culling-the-threat",
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1054-1-dal-bloodclaw",
            },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-turnin-1054-culling-the-threat",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Raene Wolfrunner",
                    mapID = 1440,
                    offMapText = "Travel to Raene Wolfrunner in Ashenvale.",
                    x = 0.3662,
                    y = 0.4958,
                },
            },
            sourceActionID = "turnin-1054-culling-the-threat",
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceStep = 23,
            text = "Turn in Culling the Threat to Raene Wolfrunner.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1033, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1033-elune-s-tear",
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1033-1-elune-s-tear",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1033, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1033, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1020, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1010, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-turnin-1033-elune-s-tear",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1020 } } },
            route = {
                {
                    label = "Pelturas Whitemoon",
                    mapID = 1440,
                    offMapText = "Travel to Pelturas Whitemoon in Ashenvale.",
                    x = 0.3737,
                    y = 0.5179,
                },
            },
            sourceActionID = "turnin-1033-elune-s-tear",
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceStep = 25,
            text = "Turn in Elune's Tear to Pelturas Whitemoon.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1034, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1034-the-ruins-of-stardust",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1033 } } },
            route = {
                {
                    label = "Pelturas Whitemoon",
                    mapID = 1440,
                    offMapText = "Travel to Pelturas Whitemoon in Ashenvale.",
                    x = 0.3737,
                    y = 0.5179,
                },
            },
            sourceStep = 26,
            text = "Accept The Ruins of Stardust from Pelturas Whitemoon.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "accept-1034-the-ruins-of-stardust",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1034, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1034, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1033, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1020, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1010, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 5, id = 1034, index = 1, text = "Handful of Stardust" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1034-the-ruins-of-stardust" },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1034-1-handful-of-stardust",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1033 } } },
            route = {
                { label = "Handful of Stardust", mapID = 1440, offMapText = "Travel to Handful of Stardust.", x = 0.3342, y = 0.6736 },
            },
            sourceStep = 27,
            text = "Collect 5 Handful of Stardust.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "objective-1034-1-handful-of-stardust",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1034, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1034, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1033, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1020, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1010, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 973, index = 1, text = "Ilkrud Magthrull" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 13 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-973-the-tower-of-althalaxx" },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-973-1-ilkrud-magthrull",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 970 } } },
            route = {
                {
                    label = "Ilkrud Magthrull's Tome",
                    mapID = 1440,
                    offMapText = "Travel to Ilkrud Magthrull's Tome.",
                    x = 0.2528,
                    y = 0.6069,
                },
            },
            sourceStep = 28,
            text = "Collect 1 Ilkrud Magthrull's Tome.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "objective-973-1-ilkrud-magthrull",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 973, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 973, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 970, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 967, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 966, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 965, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 973, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 13 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-973-the-tower-of-althalaxx",
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-973-1-ilkrud-magthrull",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 973, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 973, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 970, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 967, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 966, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 965, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-turnin-973-the-tower-of-althalaxx",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 970 } } },
            route = {
                {
                    label = "Delgren the Purifier",
                    mapID = 1440,
                    offMapText = "Travel to Delgren the Purifier in Ashenvale.",
                    x = 0.262,
                    y = 0.387,
                },
            },
            sourceActionID = "turnin-973-the-tower-of-althalaxx",
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceStep = 29,
            text = "Turn in The Tower of Althalaxx to Delgren the Purifier.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 976,
            complete = { level = { min = 19 } },
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 976, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 976, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 973, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 970, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 967, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 966, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 965, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-976-level",
            kind = "note",
            requiredLevel = 19,
            text = "Reach level 19 before this visit.",
        },
        {
            complete = { quest = { id = 976, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 19 } } } },
            dependsOn = { "alliance-extra-976-level" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 976, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 976, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 973, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 970, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Alliance" },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 967, state = "activeOrCompleted" } },
                                                                                                                {
                                                                                                                    all = {
                                                                                                                        { faction = "Alliance" },
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                {
                                                                                                                                    any = {
                                                                                                                                        { quest = { id = 966, state = "activeOrCompleted" } },
                                                                                                                                        {
                                                                                                                                            all = {
                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                {
                                                                                                                                                    any = { { any = { { quest = { id = 965, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 976, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 976, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 973, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { race = { 1, 3, 4, 7 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 970, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Alliance" },
                                                                                                { race = { 1, 3, 4, 7 } },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 967, state = "activeOrCompleted" } },
                                                                                                                {
                                                                                                                    all = {
                                                                                                                        { faction = "Alliance" },
                                                                                                                        { race = { 1, 3, 4, 7 } },
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                {
                                                                                                                                    any = {
                                                                                                                                        { quest = { id = 966, state = "activeOrCompleted" } },
                                                                                                                                        {
                                                                                                                                            all = {
                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                { race = { 1, 3, 4, 7 } },
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        {
                                                                                                                                                            any = {
                                                                                                                                                                { quest = { id = 965, state = "activeOrCompleted" } },
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
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-976-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 973 } } },
            route = {
                { label = "Feero Ironhand", mapID = 1440, offMapText = "Travel to Feero Ironhand in Ashenvale.", x = 0.262, y = 0.388 },
            },
            text = "Accept Supplies to Auberdine from Feero Ironhand.",
            useClientText = false,
        },
        {
            complete = { quest = { id = 976, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 19 } } } },
            dependsOn = { "alliance-extra-976-accept" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 976, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 976, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 973, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 970, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Alliance" },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 967, state = "activeOrCompleted" } },
                                                                                                                {
                                                                                                                    all = {
                                                                                                                        { faction = "Alliance" },
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                {
                                                                                                                                    any = {
                                                                                                                                        { quest = { id = 966, state = "activeOrCompleted" } },
                                                                                                                                        {
                                                                                                                                            all = {
                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                {
                                                                                                                                                    any = { { any = { { quest = { id = 965, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 976, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 976, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 973, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { race = { 1, 3, 4, 7 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 970, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Alliance" },
                                                                                                { race = { 1, 3, 4, 7 } },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 967, state = "activeOrCompleted" } },
                                                                                                                {
                                                                                                                    all = {
                                                                                                                        { faction = "Alliance" },
                                                                                                                        { race = { 1, 3, 4, 7 } },
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                {
                                                                                                                                    any = {
                                                                                                                                        { quest = { id = 966, state = "activeOrCompleted" } },
                                                                                                                                        {
                                                                                                                                            all = {
                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                { race = { 1, 3, 4, 7 } },
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        {
                                                                                                                                                            any = {
                                                                                                                                                                { quest = { id = 965, state = "activeOrCompleted" } },
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
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-976-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 973 } } },
            route = {},
            text = "Escort Feero Ironhand safely through Ashenvale Forest until the quest log marks the escort complete.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 976, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 19 } } } },
            dependsOn = { "alliance-extra-976-objective" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 976, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 976, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 973, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 970, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Alliance" },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 967, state = "activeOrCompleted" } },
                                                                                                                {
                                                                                                                    all = {
                                                                                                                        { faction = "Alliance" },
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                {
                                                                                                                                    any = {
                                                                                                                                        { quest = { id = 966, state = "activeOrCompleted" } },
                                                                                                                                        {
                                                                                                                                            all = {
                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                {
                                                                                                                                                    any = { { any = { { quest = { id = 965, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 976, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 976, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 973, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Alliance" },
                                                                        { race = { 1, 3, 4, 7 } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 970, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Alliance" },
                                                                                                { race = { 1, 3, 4, 7 } },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 967, state = "activeOrCompleted" } },
                                                                                                                {
                                                                                                                    all = {
                                                                                                                        { faction = "Alliance" },
                                                                                                                        { race = { 1, 3, 4, 7 } },
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                {
                                                                                                                                    any = {
                                                                                                                                        { quest = { id = 966, state = "activeOrCompleted" } },
                                                                                                                                        {
                                                                                                                                            all = {
                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                { race = { 1, 3, 4, 7 } },
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        {
                                                                                                                                                            any = {
                                                                                                                                                                { quest = { id = 965, state = "activeOrCompleted" } },
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
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-976-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 973 } } },
            route = {
                {
                    label = "Delgren the Purifier",
                    mapID = 1440,
                    offMapText = "Travel to Delgren the Purifier in Ashenvale.",
                    x = 0.262,
                    y = 0.386,
                },
            },
            text = "Turn in Supplies to Auberdine to Delgren the Purifier.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 991, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-991-raene-s-cleansing" },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-turnin-991-raene-s-cleansing",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Raene's Cleansing", mapID = 1440, offMapText = "Travel to Raene's Cleansing.", x = 0.2031, y = 0.4233 },
            },
            sourceActionID = "turnin-991-raene-s-cleansing",
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceStep = 31,
            text = "Turn in Raene's Cleansing.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1023, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1023-raene-s-cleansing",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 991 } } },
            route = {
                { label = "Raene's Cleansing", mapID = 1440, offMapText = "Travel to Raene's Cleansing.", x = 0.2031, y = 0.4233 },
            },
            sourceStep = 31,
            text = "Accept Raene's Cleansing.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "accept-1023-raene-s-cleansing",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1023, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1023, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 1023, index = 1, text = "Saltspittle Puddlejumper" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1023-raene-s-cleansing" },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1023-1-saltspittle-puddlejumper",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 991 } } },
            route = {
                {
                    label = "Saltspittle Puddlejumper",
                    mapID = 1440,
                    offMapText = "Travel to Saltspittle Puddlejumper.",
                    x = 0.192,
                    y = 0.43,
                },
            },
            sourceStep = 32,
            text = "Collect 1 Glowing Gem.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "objective-1023-1-saltspittle-puddlejumper",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1023, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1023, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1007, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 19 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1007-the-ancient-statuette",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Talen", mapID = 1440, offMapText = "Travel to Talen in Ashenvale.", x = 0.1479, y = 0.313 } },
            sourceStep = 33,
            text = "Accept The Ancient Statuette from Talen.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "accept-1007-the-ancient-statuette",
        },
        {
            complete = { questObjective = { count = 1, id = 1007, index = 1, text = "Ancient Statuette" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 19 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1007-the-ancient-statuette" },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1007-1-ancient-statuette",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Ancient Statuette", mapID = 1440, offMapText = "Travel to Ancient Statuette.", x = 0.142, y = 0.2064 },
            },
            sourceStep = 34,
            text = "Collect 1 Ancient Statuette.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "objective-1007-1-ancient-statuette",
        },
        {
            complete = { quest = { id = 1007, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 19 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1007-the-ancient-statuette",
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1007-1-ancient-statuette",
            },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-turnin-1007-the-ancient-statuette",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Talen", mapID = 1440, offMapText = "Travel to Talen in Ashenvale.", x = 0.1479, y = 0.313 } },
            sourceActionID = "turnin-1007-the-ancient-statuette",
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceStep = 35,
            text = "Turn in The Ancient Statuette to Talen.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1009, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1009-ruuzel",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1007 } } },
            route = { { label = "Talen", mapID = 1440, offMapText = "Travel to Talen in Ashenvale.", x = 0.1479, y = 0.313 } },
            sourceStep = 36,
            text = "Accept Ruuzel from Talen.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "accept-1009-ruuzel",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1009, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1009, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1007, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 1009, index = 1 } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1009-ruuzel" },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1009-1-ruuzel",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1007 } } },
            route = { { label = "Ruuzel", mapID = 1440, offMapText = "Travel to Ruuzel.", x = 0.072, y = 0.13 } },
            sourceStep = 39,
            text = "Kill Ruuzel on the island in the northern Zoram Strand and loot the Ring of Zoram. The rare Lady Vespia can also drop the ring if she is present.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "objective-1009-1-ruuzel",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1009, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1009, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1007, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1009, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1009-ruuzel",
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1009-1-ruuzel",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1009, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1009, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1007, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-turnin-1009-ruuzel",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1007 } } },
            route = { { label = "Talen", mapID = 1440, offMapText = "Travel to Talen in Ashenvale.", x = 0.1479, y = 0.313 } },
            sourceActionID = "turnin-1009-ruuzel",
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceStep = 40,
            text = "Turn in Ruuzel to Talen.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 20, id = 1008, index = 1, text = "Wrathtail Head" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 14 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1008-the-zoram-strand" },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1008-1-wrathtail-head",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Wrathtail Head", mapID = 1440, offMapText = "Travel to Wrathtail Head.", x = 0.15, y = 0.266 } },
            sourceStep = 41,
            text = "Collect 20 Wrathtail Head.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "objective-1008-1-wrathtail-head",
        },
        {
            complete = { quest = { id = 1023, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1023-raene-s-cleansing",
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1023-1-saltspittle-puddlejumper",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1023, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1023, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-turnin-1023-raene-s-cleansing",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 991 } } },
            route = {
                {
                    label = "Raene Wolfrunner",
                    mapID = 1440,
                    offMapText = "Travel to Raene Wolfrunner in Ashenvale.",
                    x = 0.3662,
                    y = 0.4958,
                },
            },
            sourceActionID = "turnin-1023-raene-s-cleansing",
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceStep = 43,
            text = "Turn in Raene's Cleansing to Raene Wolfrunner.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1034, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1034-the-ruins-of-stardust",
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1034-1-handful-of-stardust",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1034, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1034, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1033, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1020, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1010, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-turnin-1034-the-ruins-of-stardust",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1033 } } },
            route = {
                {
                    label = "Pelturas Whitemoon",
                    mapID = 1440,
                    offMapText = "Travel to Pelturas Whitemoon in Ashenvale.",
                    x = 0.3737,
                    y = 0.5179,
                },
            },
            sourceActionID = "turnin-1034-the-ruins-of-stardust",
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceStep = 45,
            text = "Turn in The Ruins of Stardust to Pelturas Whitemoon.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1008, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 14 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1008-the-zoram-strand",
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1008-1-wrathtail-head",
            },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-turnin-1008-the-zoram-strand",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Shindrell Swiftfire",
                    mapID = 1440,
                    offMapText = "Travel to Shindrell Swiftfire in Ashenvale.",
                    x = 0.3467,
                    y = 0.4884,
                },
            },
            sourceActionID = "turnin-1008-the-zoram-strand",
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceStep = 46,
            text = "Turn in The Zoram Strand to Shindrell Swiftfire.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1134, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1134-pridewings-of-stonetalon",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1008 } } },
            route = {
                {
                    label = "Shindrell Swiftfire",
                    mapID = 1440,
                    offMapText = "Travel to Shindrell Swiftfire in Ashenvale.",
                    x = 0.3467,
                    y = 0.4884,
                },
            },
            sourceStep = 46,
            text = "Accept Pridewings of Stonetalon from Shindrell Swiftfire.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "accept-1134-pridewings-of-stonetalon",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1134, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1134, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1008, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1070, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 17 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1070-on-guard-in-stonetalon" },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-turnin-1070-on-guard-in-stonetalon",
            kind = "turnin",
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
            sourceActionID = "turnin-1070-on-guard-in-stonetalon",
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceStep = 63,
            text = "Turn in On Guard in Stonetalon to Kaela Shadowspear.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
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
            sourceActionID = "turnin-1085-on-guard-in-stonetalon",
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceStep = 64,
            text = "Turn in On Guard in Stonetalon to Gaxim Rustfizzle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 12, id = 1134, index = 1, text = "Pridewing Wyvern" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1134-pridewings-of-stonetalon" },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1134-1-pridewing-wyvern",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1008 } } },
            route = {
                { label = "Pridewing Wyvern", mapID = 1442, offMapText = "Travel to Pridewing Wyvern.", x = 0.504, y = 0.456 },
            },
            sourceStep = 70,
            text = "Collect 12 Pridewing Venom Sac.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "objective-1134-1-pridewing-wyvern",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1134, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1134, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1008, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1056, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1056-journey-to-stonetalon-peak" },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-turnin-1056-journey-to-stonetalon-peak",
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
            sourceActionID = "turnin-1056-journey-to-stonetalon-peak",
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceStep = 71,
            text = "Turn in Journey to Stonetalon Peak to Keeper Albagorm.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1134, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1134-pridewings-of-stonetalon",
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1134-1-pridewing-wyvern",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1134, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1134, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1008, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-turnin-1134-pridewings-of-stonetalon",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1008 } } },
            route = {
                {
                    label = "Shindrell Swiftfire",
                    mapID = 1440,
                    offMapText = "Travel to Shindrell Swiftfire in Ashenvale.",
                    x = 0.3467,
                    y = 0.4884,
                },
            },
            sourceActionID = "turnin-1134-pridewings-of-stonetalon",
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceStep = 74,
            text = "Turn in Pridewings of Stonetalon to Shindrell Swiftfire.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1025, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1025-an-aggressive-defense",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1023 } } },
            route = {
                {
                    label = "Raene Wolfrunner",
                    mapID = 1440,
                    offMapText = "Travel to Raene Wolfrunner in Ashenvale.",
                    x = 0.3662,
                    y = 0.4958,
                },
            },
            sourceStep = 75,
            text = "Accept An Aggressive Defense from Raene Wolfrunner.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "accept-1025-an-aggressive-defense",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1025, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1025, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1023, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1016, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1016-elemental-bracers",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Sentinel Velene Starstrike",
                    mapID = 1440,
                    offMapText = "Travel to Sentinel Velene Starstrike in Ashenvale.",
                    x = 0.498,
                    y = 0.6721,
                },
            },
            sourceStep = 76,
            text = "Accept Elemental Bracers from Sentinel Velene Starstrike.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "accept-1016-elemental-bracers",
        },
        {
            complete = { questObjective = { count = 1, id = 1016, index = 1, text = "Befouled Water Elemental" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1016-elemental-bracers" },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1016-1-befouled-water-elemental",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Befouled Water Elemental",
                    mapID = 1440,
                    offMapText = "Travel to Befouled Water Elemental.",
                    x = 0.496,
                    y = 0.692,
                },
            },
            sourceStep = 77,
            text = "Kill elementals around Mystral Lake and collect 5 Intact Elemental Bracers. Use the Divining Scroll with the bracers in your bags to obtain the Divined Scroll.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "objective-1016-1-befouled-water-elemental",
        },
        {
            complete = { quest = { id = 1016, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1016-elemental-bracers",
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1016-1-befouled-water-elemental",
            },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-turnin-1016-elemental-bracers",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Sentinel Velene Starstrike",
                    mapID = 1440,
                    offMapText = "Travel to Sentinel Velene Starstrike in Ashenvale.",
                    x = 0.498,
                    y = 0.6721,
                },
            },
            sourceActionID = "turnin-1016-elemental-bracers",
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceStep = 78,
            text = "Turn in Elemental Bracers to Sentinel Velene Starstrike.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { id = 1025, index = 1, text = "Foulweald Den Watcher" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1025-an-aggressive-defense" },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1025-1-foulweald-den-watcher",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1023 } } },
            route = {
                { label = "Foulweald Den Watcher", mapID = 1440, offMapText = "Travel to Foulweald Den Watcher.", x = 0.524, y = 0.628 },
            },
            sourceStep = 81,
            text = "Kill Foulweald Den Watcher.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "objective-1025-1-foulweald-den-watcher",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1025, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1025, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1023, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 2, id = 1025, index = 2, text = "Foulweald Ursa" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1025-an-aggressive-defense" },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1025-2-foulweald-ursa",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1023 } } },
            route = { { label = "Foulweald Ursa", mapID = 1440, offMapText = "Travel to Foulweald Ursa.", x = 0.524, y = 0.628 } },
            sourceStep = 81,
            text = "Kill 2 Foulweald Ursa.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "objective-1025-2-foulweald-ursa",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1025, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1025, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1023, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 1025, index = 3, text = "Foulweald Totemic" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1025-an-aggressive-defense" },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1025-3-foulweald-totemic",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1023 } } },
            route = {
                { label = "Foulweald Totemic", mapID = 1440, offMapText = "Travel to Foulweald Totemic.", x = 0.524, y = 0.628 },
            },
            sourceStep = 81,
            text = "Kill 10 Foulweald Totemic.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "objective-1025-3-foulweald-totemic",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1025, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1025, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1023, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 12, id = 1025, index = 4, text = "Foulweald Warrior" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1025-an-aggressive-defense" },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1025-4-foulweald-warrior",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1023 } } },
            route = {
                { label = "Foulweald Warrior", mapID = 1440, offMapText = "Travel to Foulweald Warrior.", x = 0.524, y = 0.628 },
            },
            sourceStep = 81,
            text = "Kill 12 Foulweald Warrior.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceActionID = "objective-1025-4-foulweald-warrior",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1025, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1025, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1023, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1025, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-accept-1025-an-aggressive-defense",
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1025-1-foulweald-den-watcher",
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1025-2-foulweald-ursa",
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1025-3-foulweald-totemic",
                "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-objective-1025-4-foulweald-warrior",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1025, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1025, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1023, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-ashenvale-and-stonetalon-mountains-turnin-1025-an-aggressive-defense",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1023 } } },
            route = {
                {
                    label = "Raene Wolfrunner",
                    mapID = 1440,
                    offMapText = "Travel to Raene Wolfrunner in Ashenvale.",
                    x = 0.3662,
                    y = 0.4958,
                },
            },
            sourceActionID = "turnin-1025-an-aggressive-defense",
            sourceGuide = "leveling-era-alliance-ashenvale-and-stonetalon-mountains",
            sourceStep = 96,
            text = "Turn in An Aggressive Defense to Raene Wolfrunner.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
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
            checkpointQuest = 1022,
            complete = { level = { min = 25 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-level-before-accept-1022-the-howling-vale",
            kind = "note",
            requiredLevel = 25,
            requiredQuests = {},
            text = "Reach level 25 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "level-before-accept-1022-the-howling-vale",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 1022, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1022-the-howling-vale",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Sentinel Melyria Frostshadow",
                    mapID = 1440,
                    offMapText = "Travel to Sentinel Melyria Frostshadow in Ashenvale.",
                    x = 0.2223,
                    y = 0.5298,
                },
            },
            sourceStep = 10,
            text = "Accept The Howling Vale from Sentinel Melyria Frostshadow.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "accept-1022-the-howling-vale",
        },
        {
            checkpointQuest = 1021,
            complete = { level = { min = 26 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-level-before-accept-1021-vile-satyr-dryads-in-danger",
            kind = "note",
            requiredLevel = 26,
            requiredQuests = {},
            text = "Reach level 26 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "level-before-accept-1021-vile-satyr-dryads-in-danger",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 1021, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 26 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1021-vile-satyr-dryads-in-danger",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Illiyana", mapID = 1440, offMapText = "Travel to Illiyana in Ashenvale.", x = 0.2173, y = 0.5335 } },
            sourceStep = 11,
            text = "Accept Vile Satyr! Dryads in Danger! from Illiyana.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "accept-1021-vile-satyr-dryads-in-danger",
        },
        {
            complete = { quest = { id = 4581, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 24 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-4581-kayneth-stillwind",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Shindrell Swiftfire",
                    mapID = 1440,
                    offMapText = "Travel to Shindrell Swiftfire in Ashenvale.",
                    x = 0.3467,
                    y = 0.4884,
                },
            },
            sourceStep = 12,
            text = "Accept Kayneth Stillwind from Shindrell Swiftfire.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "accept-4581-kayneth-stillwind",
        },
        {
            complete = { quest = { id = 1024, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1024-raene-s-cleansing",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1023 } } },
            route = {
                {
                    label = "Raene Wolfrunner",
                    mapID = 1440,
                    offMapText = "Travel to Raene Wolfrunner in Ashenvale.",
                    x = 0.3662,
                    y = 0.4958,
                },
            },
            sourceStep = 13,
            text = "Accept Raene's Cleansing from Raene Wolfrunner.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "accept-1024-raene-s-cleansing",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1024, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1024, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1023, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1035, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1035-fallen-sky-lake",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1034 } } },
            route = {
                {
                    label = "Pelturas Whitemoon",
                    mapID = 1440,
                    offMapText = "Travel to Pelturas Whitemoon in Ashenvale.",
                    x = 0.3737,
                    y = 0.5179,
                },
            },
            sourceStep = 14,
            text = "Accept Fallen Sky Lake from Pelturas Whitemoon.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "accept-1035-fallen-sky-lake",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1035, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1035, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1034, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1033, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1020, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 1010, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1024, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1024-raene-s-cleansing" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1024, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1024, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1023, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-turnin-1024-raene-s-cleansing",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1023 } } },
            route = {
                { label = "Shael'dryn", mapID = 1440, offMapText = "Travel to Shael'dryn in Ashenvale.", x = 0.5354, y = 0.4629 },
            },
            sourceActionID = "turnin-1024-raene-s-cleansing",
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceStep = 15,
            text = "Turn in Raene's Cleansing to Shael'dryn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1026, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1026-raene-s-cleansing",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1024 } } },
            route = {
                { label = "Shael'dryn", mapID = 1440, offMapText = "Travel to Shael'dryn in Ashenvale.", x = 0.5354, y = 0.4629 },
            },
            sourceStep = 15,
            text = "Accept Raene's Cleansing from Shael'dryn.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "accept-1026-raene-s-cleansing",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1026, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1026, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1024, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1023, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 1026,
            complete = {
                any = { { all = { { item = { minCount = 1, name = "Wooden Key" } } } }, { quest = { id = 1026, state = "complete" } } },
            },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1026-raene-s-cleansing" },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1026-1-withered-ancient",
            instructionOnly = true,
            kind = "note",
            rememberPreparation = 1026,
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1024 } } },
            route = { { label = "Ancients", mapID = 1440, offMapText = "Travel to Ancients.", x = 0.626, y = 0.468 } },
            sourceInstructionIndex = 1,
            sourceInstructionStep = 17,
            text = "Kill Withered Ancients and Crazed Ancients east of Astranaar and loot 1 Wooden Key.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "objective-1026-1-withered-ancient",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1026, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1026, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1024, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1023, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 1026, index = 1 } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1026-raene-s-cleansing" },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1026-1-worn-chest",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1024 } } },
            route = { { label = "Worn Chest", mapID = 1440, offMapText = "Travel to Worn Chest.", x = 0.5441, y = 0.3539 } },
            text = "Use the Wooden Key to open the Worn Chest and collect 1 Iron Shaft.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "objective-1026-1-worn-chest",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1026, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1026, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1024, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1023, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1021, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 26 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1021-vile-satyr-dryads-in-danger" },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-turnin-1021-vile-satyr-dryads-in-danger",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Anilia", mapID = 1440, offMapText = "Travel to Anilia in Ashenvale.", x = 0.7832, y = 0.4482 } },
            sourceActionID = "turnin-1021-vile-satyr-dryads-in-danger",
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceStep = 19,
            text = "Turn in Vile Satyr! Dryads in Danger! to Anilia.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1031, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 26 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1031-the-branch-of-cenarius",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1021 } } },
            route = { { label = "Anilia", mapID = 1440, offMapText = "Travel to Anilia in Ashenvale.", x = 0.7832, y = 0.4482 } },
            sourceStep = 19,
            text = "Accept The Branch of Cenarius from Anilia.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "accept-1031-the-branch-of-cenarius",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1031, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1031, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1021, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 1031, index = 1, text = "Geltharis" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 26 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1031-the-branch-of-cenarius" },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1031-1-geltharis",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1021 } } },
            route = { { label = "Geltharis", mapID = 1440, offMapText = "Travel to Geltharis.", x = 0.78, y = 0.4242 } },
            sourceStep = 20,
            text = "Collect 1 Branch of Cenarius.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "objective-1031-1-geltharis",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1031, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1031, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1021, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 4581, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 24 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-4581-kayneth-stillwind" },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-turnin-4581-kayneth-stillwind",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Kayneth Stillwind",
                    mapID = 1440,
                    offMapText = "Travel to Kayneth Stillwind in Ashenvale.",
                    x = 0.8524,
                    y = 0.4471,
                },
            },
            sourceActionID = "turnin-4581-kayneth-stillwind",
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceStep = 21,
            text = "Turn in Kayneth Stillwind to Kayneth Stillwind.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1011, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 24 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1011-forsaken-diseases",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Kayneth Stillwind",
                    mapID = 1440,
                    offMapText = "Travel to Kayneth Stillwind in Ashenvale.",
                    x = 0.8524,
                    y = 0.4471,
                },
            },
            sourceStep = 21,
            text = "Accept Forsaken Diseases from Kayneth Stillwind.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "accept-1011-forsaken-diseases",
        },
        {
            complete = { quest = { id = 1022, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1022-the-howling-vale" },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1022-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 22,
            text = "For The Howling Vale: Go to the Howling Vale and study the Tome of Mel'Thandris.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "objective-1022-quest-work",
        },
        {
            complete = { quest = { id = 1022, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1022-the-howling-vale",
                "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1022-quest-work",
            },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-turnin-1022-the-howling-vale",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Sentinel Melyria Frostshadow",
                    mapID = 1440,
                    offMapText = "Travel to Sentinel Melyria Frostshadow in Ashenvale.",
                    x = 0.2223,
                    y = 0.5298,
                },
            },
            sourceActionID = "turnin-1022-the-howling-vale",
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceStep = 22,
            text = "Turn in The Howling Vale to Sentinel Melyria Frostshadow.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1037, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1037-velinde-starsong",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1022 } } },
            route = {
                {
                    label = "Sentinel Melyria Frostshadow",
                    mapID = 1440,
                    offMapText = "Travel to Sentinel Melyria Frostshadow in Ashenvale.",
                    x = 0.2223,
                    y = 0.5298,
                },
            },
            sourceStep = 22,
            text = "Accept Velinde Starsong from Sentinel Melyria Frostshadow.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "accept-1037-velinde-starsong",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1037, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1037, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1022, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1031, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 26 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1031-the-branch-of-cenarius",
                "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1031-1-geltharis",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1031, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1031, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1021, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-turnin-1031-the-branch-of-cenarius",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1021 } } },
            route = { { label = "Illiyana", mapID = 1440, offMapText = "Travel to Illiyana in Ashenvale.", x = 0.2173, y = 0.5335 } },
            sourceActionID = "turnin-1031-the-branch-of-cenarius",
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceStep = 23,
            text = "Turn in The Branch of Cenarius to Illiyana.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1032, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 26 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1032-satyr-slaying",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1031 } } },
            route = { { label = "Illiyana", mapID = 1440, offMapText = "Travel to Illiyana in Ashenvale.", x = 0.2173, y = 0.5335 } },
            sourceStep = 23,
            text = "Accept Satyr Slaying! from Illiyana.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "accept-1032-satyr-slaying",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1032, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1032, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1031, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1021, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1026, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1026-raene-s-cleansing",
                "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1026-1-withered-ancient",
                "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1026-1-worn-chest",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1026, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1026, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1024, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1023, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-turnin-1026-raene-s-cleansing",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1024 } } },
            route = {
                { label = "Shael'dryn", mapID = 1440, offMapText = "Travel to Shael'dryn in Ashenvale.", x = 0.5354, y = 0.4629 },
            },
            sourceActionID = "turnin-1026-raene-s-cleansing",
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceStep = 28,
            text = "Turn in Raene's Cleansing to Shael'dryn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1027, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1027-raene-s-cleansing",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1026 } } },
            route = {
                { label = "Shael'dryn", mapID = 1440, offMapText = "Travel to Shael'dryn in Ashenvale.", x = 0.5354, y = 0.4629 },
            },
            sourceStep = 28,
            text = "Accept Raene's Cleansing from Shael'dryn.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "accept-1027-raene-s-cleansing",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1027, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1027, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1026, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1024, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1023, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 1035, index = 1, text = "Shadethicket Oracle" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1035-fallen-sky-lake" },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1035-1-shadethicket-oracle",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1034 } } },
            route = {
                { label = "Shadethicket Oracle", mapID = 1440, offMapText = "Travel to Shadethicket Oracle.", x = 0.6668, y = 0.8219 },
            },
            sourceStep = 29,
            text = "Collect 1 Fallen Moonstone.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "objective-1035-1-shadethicket-oracle",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1035, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1035, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1034, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1033, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1020, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 1010, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 1027, index = 1, text = "Rotting Slime" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1027-raene-s-cleansing" },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1027-1-rotting-slime",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1026 } } },
            route = { { label = "Rotting Slime", mapID = 1440, offMapText = "Travel to Rotting Slime.", x = 0.694, y = 0.758 } },
            sourceStep = 30,
            text = "Collect 1 Iron Pommel.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "objective-1027-1-rotting-slime",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1027, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1027, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1026, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1024, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1023, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 1011, index = 1, text = "Bottle of Disease" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 24 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1011-forsaken-diseases" },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1011-1-bottle-of-disease",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Bottle of Disease", mapID = 1440, offMapText = "Travel to Bottle of Disease.", x = 0.7529, y = 0.7222 },
            },
            sourceStep = 31,
            text = "Collect 1 Bottle of Disease.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "objective-1011-1-bottle-of-disease",
        },
        {
            complete = { quest = { id = 1011, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 24 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1011-forsaken-diseases",
                "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1011-1-bottle-of-disease",
            },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-turnin-1011-forsaken-diseases",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Kayneth Stillwind",
                    mapID = 1440,
                    offMapText = "Travel to Kayneth Stillwind in Ashenvale.",
                    x = 0.8524,
                    y = 0.4471,
                },
            },
            sourceActionID = "turnin-1011-forsaken-diseases",
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceStep = 32,
            text = "Turn in Forsaken Diseases to Kayneth Stillwind.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { questObjective = { count = 16, id = 1032, index = 1, text = "Satyr Horns" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 26 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1032-satyr-slaying" },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1032-1-satyr-horns",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1031 } } },
            route = { { label = "Satyr Horns", mapID = 1440, offMapText = "Travel to Satyr Horns.", x = 0.686, y = 0.534 } },
            sourceStep = 35,
            text = "Collect 16 Satyr Horns.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "objective-1032-1-satyr-horns",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1032, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1032, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1031, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1021, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1027, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1027-raene-s-cleansing",
                "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1027-1-rotting-slime",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1027, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1027, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1026, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1024, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1023, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-turnin-1027-raene-s-cleansing",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1026 } } },
            route = {
                { label = "Shael'dryn", mapID = 1440, offMapText = "Travel to Shael'dryn in Ashenvale.", x = 0.5354, y = 0.4621 },
            },
            sourceActionID = "turnin-1027-raene-s-cleansing",
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceStep = 36,
            text = "Turn in Raene's Cleansing to Shael'dryn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1028, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1028-raene-s-cleansing",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1027 } } },
            route = {
                { label = "Shael'dryn", mapID = 1440, offMapText = "Travel to Shael'dryn in Ashenvale.", x = 0.5354, y = 0.4621 },
            },
            sourceStep = 37,
            text = "Accept Raene's Cleansing from Shael'dryn.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "accept-1028-raene-s-cleansing",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1028, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1028, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1027, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1026, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1024, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1023, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1028, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1028-raene-s-cleansing" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1028, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1028, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1027, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1026, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1024, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1023, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-turnin-1028-raene-s-cleansing",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1027 } } },
            route = {
                { label = "Raene's Cleansing", mapID = 1440, offMapText = "Travel to Raene's Cleansing.", x = 0.5638, y = 0.4923 },
            },
            sourceActionID = "turnin-1028-raene-s-cleansing",
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceStep = 38,
            text = "Turn in Raene's Cleansing.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1055, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1055-raene-s-cleansing",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1028 } } },
            route = {
                { label = "Raene's Cleansing", mapID = 1440, offMapText = "Travel to Raene's Cleansing.", x = 0.5638, y = 0.4923 },
            },
            sourceStep = 38,
            text = "Accept Raene's Cleansing.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "accept-1055-raene-s-cleansing",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1055, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1055, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1028, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1027, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1026, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1024, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1023, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1055, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1055-raene-s-cleansing" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1055, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1055, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1028, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1027, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1026, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1024, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1023, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-turnin-1055-raene-s-cleansing",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1028 } } },
            route = {
                { label = "Shael'dryn", mapID = 1440, offMapText = "Travel to Shael'dryn in Ashenvale.", x = 0.5354, y = 0.4621 },
            },
            sourceActionID = "turnin-1055-raene-s-cleansing",
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceStep = 39,
            text = "Turn in Raene's Cleansing to Shael'dryn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1029, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1029-raene-s-cleansing",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1055 } } },
            route = {
                { label = "Shael'dryn", mapID = 1440, offMapText = "Travel to Shael'dryn in Ashenvale.", x = 0.5354, y = 0.4621 },
            },
            sourceStep = 39,
            text = "Accept Raene's Cleansing from Shael'dryn.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "accept-1029-raene-s-cleansing",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1029, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1029, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1055, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1028, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1027, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1026, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1024, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1023, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1035, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 20 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1035-fallen-sky-lake",
                "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1035-1-shadethicket-oracle",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1035, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1035, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1034, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1033, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1020, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 1010, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-turnin-1035-fallen-sky-lake",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1034 } } },
            route = {
                {
                    label = "Pelturas Whitemoon",
                    mapID = 1440,
                    offMapText = "Travel to Pelturas Whitemoon in Ashenvale.",
                    x = 0.3736,
                    y = 0.5179,
                },
            },
            sourceActionID = "turnin-1035-fallen-sky-lake",
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceStep = 40,
            text = "Turn in Fallen Sky Lake to Pelturas Whitemoon.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1029, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1029-raene-s-cleansing" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1029, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1029, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1055, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1028, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1027, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1026, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1024, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1023, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-turnin-1029-raene-s-cleansing",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1055 } } },
            route = {
                {
                    label = "Raene Wolfrunner",
                    mapID = 1440,
                    offMapText = "Travel to Raene Wolfrunner in Ashenvale.",
                    x = 0.3662,
                    y = 0.4958,
                },
            },
            sourceActionID = "turnin-1029-raene-s-cleansing",
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceStep = 41,
            text = "Turn in Raene's Cleansing to Raene Wolfrunner.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1030, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1030-raene-s-cleansing",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1029 } } },
            route = {
                {
                    label = "Raene Wolfrunner",
                    mapID = 1440,
                    offMapText = "Travel to Raene Wolfrunner in Ashenvale.",
                    x = 0.3662,
                    y = 0.4958,
                },
            },
            sourceStep = 41,
            text = "Accept Raene's Cleansing from Raene Wolfrunner.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "accept-1030-raene-s-cleansing",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1030, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1030, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1029, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1055, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1028, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1027, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1026, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1024, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1023, state = "activeOrCompleted" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 1030,
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1030-raene-s-cleansing" },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1030-1-dartol-s-rod-of-transformation",
            instructionOnly = true,
            kind = "note",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1029 } } },
            route = {
                {
                    label = "Furbolg transformation point",
                    mapID = 1440,
                    offMapText = "Travel to Furbolg transformation point.",
                    x = 0.5367,
                    y = 0.7397,
                },
            },
            text = "Use Dartol's Rod of Transformation here to enter Furbolg Form before speaking with Krolg.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "objective-1030-1-dartol-s-rod-of-transformation",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1030, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1030, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1029, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1055, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1028, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1027, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1026, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1024, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1023, state = "activeOrCompleted" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1030, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1030-raene-s-cleansing",
                "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1030-1-dartol-s-rod-of-transformation",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1030, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1030, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1029, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1055, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1028, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1027, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1026, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1024, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1023, state = "activeOrCompleted" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-turnin-1030-raene-s-cleansing",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1029 } } },
            route = { { label = "Krolg", mapID = 1440, offMapText = "Travel to Krolg.", x = 0.5085, y = 0.7507 } },
            sourceActionID = "turnin-1030-raene-s-cleansing",
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceStep = 46,
            text = "Use Dartol's Rod of Transformation to enter Furbolg Form, then speak with Krolg and turn in Raene's Cleansing.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1045, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1045-raene-s-cleansing",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1030 } } },
            route = { { label = "Krolg", mapID = 1440, offMapText = "Travel to Krolg in Ashenvale.", x = 0.5085, y = 0.7507 } },
            sourceStep = 46,
            text = "Accept Raene's Cleansing from Krolg.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "accept-1045-raene-s-cleansing",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1045, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1045, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1030, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1029, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1055, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1028, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1027, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1026, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1024, state = "activeOrCompleted" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 1023, state = "activeOrCompleted" } },
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    all = {
                                                                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                            any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 1045, index = 1 } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1045-raene-s-cleansing" },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1045-1-dartol-s-rod-of-transformation",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1030 } } },
            route = { { label = "Ran Bloodtooth", mapID = 1440, offMapText = "Travel to Ran Bloodtooth.", x = 0.5474, y = 0.7961 } },
            text = "Kill Ran Bloodtooth at Bloodtooth Camp. Loot his skull and keep it for the following quest.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "objective-1045-1-dartol-s-rod-of-transformation",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1045, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1045, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1030, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1029, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1055, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1028, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1027, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1026, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1024, state = "activeOrCompleted" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 1023, state = "activeOrCompleted" } },
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    all = {
                                                                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                            any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 4, id = 1045, index = 2, text = "Bloodtooth Guard" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1045-raene-s-cleansing" },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1045-2-bloodtooth-guard",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1030 } } },
            route = {
                { label = "Bloodtooth Guard", mapID = 1440, offMapText = "Travel to Bloodtooth Guard.", x = 0.544, y = 0.794 },
            },
            sourceStep = 48,
            text = "Kill 4 Bloodtooth Guard.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "objective-1045-2-bloodtooth-guard",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1045, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1045, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1030, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1029, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1055, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1028, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1027, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1026, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1024, state = "activeOrCompleted" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 1023, state = "activeOrCompleted" } },
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    all = {
                                                                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                            any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1045, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1045-raene-s-cleansing",
                "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1045-2-bloodtooth-guard",
                "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1045-1-dartol-s-rod-of-transformation",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1045, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1045, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1030, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1029, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1055, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1028, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1027, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1026, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1024, state = "activeOrCompleted" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 1023, state = "activeOrCompleted" } },
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    all = {
                                                                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                            any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-turnin-1045-raene-s-cleansing",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1030 } } },
            route = { { label = "Krolg", mapID = 1440, offMapText = "Travel to Krolg.", x = 0.5085, y = 0.7507 } },
            sourceActionID = "turnin-1045-raene-s-cleansing",
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceStep = 50,
            text = "Use Dartol's Rod of Transformation to enter Furbolg Form, then speak with Krolg and turn in Raene's Cleansing.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1046, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1046-raene-s-cleansing",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1045 } } },
            route = { { label = "Krolg", mapID = 1440, offMapText = "Travel to Krolg in Ashenvale.", x = 0.5085, y = 0.7507 } },
            sourceStep = 50,
            text = "Accept Raene's Cleansing from Krolg.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "accept-1046-raene-s-cleansing",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1046, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1046, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1045, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1030, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1029, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1055, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1028, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1027, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1026, state = "activeOrCompleted" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 1024, state = "activeOrCompleted" } },
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    all = {
                                                                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                                                        { quest = { id = 1023, state = "activeOrCompleted" } },
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                    any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1046, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1046-raene-s-cleansing" },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1046-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1045 } } },
            sourceStep = 52,
            text = "For Raene's Cleansing: Bring Ran Bloodtooth's Skull and Dartol's Rod of Transformation to Raene Wolfrunner in Astranaar.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "objective-1046-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1046, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1046, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1045, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1030, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1029, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1055, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1028, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1027, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1026, state = "activeOrCompleted" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 1024, state = "activeOrCompleted" } },
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    all = {
                                                                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                                                        { quest = { id = 1023, state = "activeOrCompleted" } },
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                    any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1046, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 18 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1046-raene-s-cleansing",
                "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1046-quest-work",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1046, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1046, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1045, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1030, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1029, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1055, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1028, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 1027, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { quest = { id = 1026, state = "activeOrCompleted" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { quest = { id = 1024, state = "activeOrCompleted" } },
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    all = {
                                                                                                                                                                                                                                        { faction = "Alliance" },
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                    any = {
                                                                                                                                                                                                                                                        { quest = { id = 1023, state = "activeOrCompleted" } },
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                            all = {
                                                                                                                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                    any = { { any = { { quest = { id = 991, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                    },
                                                                                                                                                                                                                                },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-turnin-1046-raene-s-cleansing",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1045 } } },
            route = {
                {
                    label = "Raene Wolfrunner",
                    mapID = 1440,
                    offMapText = "Travel to Raene Wolfrunner in Ashenvale.",
                    x = 0.3662,
                    y = 0.4958,
                },
            },
            sourceActionID = "turnin-1046-raene-s-cleansing",
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceStep = 52,
            text = "Turn in Raene's Cleansing to Raene Wolfrunner.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1032, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 26 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1032-satyr-slaying",
                "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1032-1-satyr-horns",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1032, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1032, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1031, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1021, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-turnin-1032-satyr-slaying",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1031 } } },
            route = { { label = "Illiyana", mapID = 1440, offMapText = "Travel to Illiyana in Ashenvale.", x = 0.2173, y = 0.5334 } },
            sourceActionID = "turnin-1032-satyr-slaying",
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceStep = 53,
            text = "Turn in Satyr Slaying! to Illiyana.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1037, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1037-velinde-starsong" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1037, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1037, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1022, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-turnin-1037-velinde-starsong",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1022 } } },
            route = {
                {
                    label = "Thyn'tel Bladeweaver",
                    mapID = 1457,
                    offMapText = "Travel to Thyn'tel Bladeweaver in Darnassus.",
                    x = 0.6178,
                    y = 0.3919,
                },
            },
            sourceActionID = "turnin-1037-velinde-starsong",
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceStep = 57,
            text = "Turn in Velinde Starsong to Thyn'tel Bladeweaver.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1038, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1038-velinde-s-effects",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1037 } } },
            route = {
                {
                    label = "Thyn'tel Bladeweaver",
                    mapID = 1457,
                    offMapText = "Travel to Thyn'tel Bladeweaver in Darnassus.",
                    x = 0.6178,
                    y = 0.3919,
                },
            },
            sourceStep = 57,
            text = "Accept Velinde's Effects from Thyn'tel Bladeweaver.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "accept-1038-velinde-s-effects",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1038, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1038, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1037, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1022, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 1038, index = 1, text = "Velinde's Journal" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1038-velinde-s-effects" },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1038-1-velinde-s-journal",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1037 } } },
            route = {
                { label = "Velinde's Journal", mapID = 1457, offMapText = "Travel to Velinde's Journal.", x = 0.6229, y = 0.8324 },
            },
            sourceStep = 59,
            text = "Collect 1 Velinde's Journal.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "objective-1038-1-velinde-s-journal",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1038, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1038, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1037, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1022, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1038, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1038-velinde-s-effects",
                "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-objective-1038-1-velinde-s-journal",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1038, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1038, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1037, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1022, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-turnin-1038-velinde-s-effects",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1037 } } },
            route = {
                {
                    label = "Thyn'tel Bladeweaver",
                    mapID = 1457,
                    offMapText = "Travel to Thyn'tel Bladeweaver in Darnassus.",
                    x = 0.6178,
                    y = 0.3919,
                },
            },
            sourceActionID = "turnin-1038-velinde-s-effects",
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceStep = 62,
            text = "Turn in Velinde's Effects to Thyn'tel Bladeweaver.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1039, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stonetalon-mountains-and-ashenvale-accept-1039-the-barrens-port",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1038 } } },
            route = {
                {
                    label = "Thyn'tel Bladeweaver",
                    mapID = 1457,
                    offMapText = "Travel to Thyn'tel Bladeweaver in Darnassus.",
                    x = 0.6178,
                    y = 0.3919,
                },
            },
            sourceStep = 62,
            text = "Accept The Barrens Port from Thyn'tel Bladeweaver.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stonetalon-mountains-and-ashenvale",
            sourceActionID = "accept-1039-the-barrens-port",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1039, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1039, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1038, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1037, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1022, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
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
            complete = { quest = { id = 1039, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1039, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1039, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1038, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1037, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1022, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-turnin-1039-the-barrens-port",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1038 } } },
            route = {
                {
                    label = "Wharfmaster Dizzywig",
                    mapID = 1413,
                    offMapText = "Travel to Wharfmaster Dizzywig in The Barrens.",
                    x = 0.6335,
                    y = 0.3845,
                },
            },
            sourceActionID = "turnin-1039-the-barrens-port",
            sourceGuide = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            sourceStep = 61,
            text = "Turn in The Barrens Port to Wharfmaster Dizzywig.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 1012,
            complete = { level = { min = 24 } },
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1012, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1012, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1011, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-extra-1012-level",
            kind = "note",
            requiredLevel = 24,
            text = "Reach level 24 before this visit.",
        },
        {
            complete = { quest = { id = 1012, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 24 } } } },
            dependsOn = { "alliance-extra-1012-level" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 1012, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 1012, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                {
                                                    any = { { any = { { quest = { id = 1011, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
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
                                { quest = { id = 1012, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 1012, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 1011, state = "activeOrCompleted" } },
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
            id = "alliance-extra-1012-accept",
            kind = "accept",
            requiredQuests = { { mode = "any", quests = { 1011 } } },
            route = {
                {
                    label = "Kayneth Stillwind",
                    mapID = 1440,
                    offMapText = "Travel to Kayneth Stillwind in Ashenvale.",
                    x = 0.852,
                    y = 0.446,
                },
            },
            text = "Accept Insane Druids from Kayneth Stillwind.",
            useClientText = false,
        },
        {
            complete = { quest = { id = 1012, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 24 } } } },
            dependsOn = { "alliance-extra-1012-accept" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 1012, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 1012, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                {
                                                    any = { { any = { { quest = { id = 1011, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
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
                                { quest = { id = 1012, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 1012, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 1011, state = "activeOrCompleted" } },
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
            id = "alliance-extra-1012-objective",
            kind = "objective",
            requiredQuests = { { mode = "any", quests = { 1011 } } },
            route = {
                { label = "Taneel Darkwood", mapID = 1440, offMapText = "Travel to Taneel Darkwood in Ashenvale.", x = 0.77, y = 0.74 },
            },
            text = "Kill the druids: Taneel Darkwood, Uthil Mooncall, Mavoris Cloudsbreak.",
            useClientPin = true,
            useClientText = false,
        },
        {
            complete = { quest = { id = 1012, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 24 } } } },
            dependsOn = { "alliance-extra-1012-objective" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 1012, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 1012, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                {
                                                    any = { { any = { { quest = { id = 1011, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
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
                                { quest = { id = 1012, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 1012, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Alliance" },
                                                { race = { 1, 3, 4, 7 } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 1011, state = "activeOrCompleted" } },
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
            id = "alliance-extra-1012-turnin",
            kind = "turnin",
            requiredQuests = { { mode = "any", quests = { 1011 } } },
            route = {
                {
                    label = "Kayneth Stillwind",
                    mapID = 1440,
                    offMapText = "Travel to Kayneth Stillwind in Ashenvale.",
                    x = 0.852,
                    y = 0.446,
                },
            },
            text = "Turn in Insane Druids to Kayneth Stillwind.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1040, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-accept-1040-passage-to-booty-bay",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1039 } } },
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
            text = "Accept Passage to Booty Bay from Wharfmaster Dizzywig.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-dustwallow-marsh-and-thousand-needles",
            sourceActionID = "accept-1040-passage-to-booty-bay",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1040, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1040, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1039, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1038, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1037, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 1022, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
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
            checkpointQuest = 1040,
            complete = { level = { min = 25 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-stranglethorn-vale-level-before-turnin-1040-passage-to-booty-bay",
            kind = "note",
            requiredLevel = 25,
            requiredQuests = {},
            text = "Reach level 25 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stranglethorn-vale",
            sourceActionID = "level-before-turnin-1040-passage-to-booty-bay",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1040, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1040, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1039, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1038, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1037, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 1022, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1040, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1040, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1040, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1039, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1038, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1037, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 1022, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-stranglethorn-vale-turnin-1040-passage-to-booty-bay",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1039 } } },
            route = {
                {
                    label = "Caravaneer Ruzzgot",
                    mapID = 1434,
                    offMapText = "Travel to Caravaneer Ruzzgot in Stranglethorn Vale.",
                    x = 0.2737,
                    y = 0.7408,
                },
            },
            sourceActionID = "turnin-1040-passage-to-booty-bay",
            sourceGuide = "leveling-era-alliance-stranglethorn-vale",
            sourceStep = 3,
            text = "Turn in Passage to Booty Bay to Caravaneer Ruzzgot.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1041, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stranglethorn-vale-accept-1041-the-caravan-road",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1040 } } },
            route = {
                {
                    label = "Caravaneer Ruzzgot",
                    mapID = 1434,
                    offMapText = "Travel to Caravaneer Ruzzgot in Stranglethorn Vale.",
                    x = 0.2737,
                    y = 0.7408,
                },
            },
            sourceStep = 3,
            text = "Accept The Caravan Road from Caravaneer Ruzzgot.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stranglethorn-vale",
            sourceActionID = "accept-1041-the-caravan-road",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1041, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1041, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1040, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1039, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1038, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1037, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 1022, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1041, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-stranglethorn-vale-accept-1041-the-caravan-road" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1041, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1041, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1040, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1039, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1038, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1037, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = { { any = { { quest = { id = 1022, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-stranglethorn-vale-turnin-1041-the-caravan-road",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1040 } } },
            route = {
                { label = "Clerk Daltry", mapID = 1431, offMapText = "Travel to Clerk Daltry in Duskwood.", x = 0.7253, y = 0.4686 },
            },
            sourceActionID = "turnin-1041-the-caravan-road",
            sourceGuide = "leveling-era-alliance-stranglethorn-vale",
            sourceStep = 54,
            text = "Turn in The Caravan Road to Clerk Daltry.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1042, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stranglethorn-vale-accept-1042-the-carevin-family",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1041 } } },
            route = {
                { label = "Clerk Daltry", mapID = 1431, offMapText = "Travel to Clerk Daltry in Duskwood.", x = 0.7253, y = 0.4686 },
            },
            sourceStep = 54,
            text = "Accept The Carevin Family from Clerk Daltry.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stranglethorn-vale",
            sourceActionID = "accept-1042-the-carevin-family",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1042, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1042, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1041, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1040, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1039, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1038, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1037, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 1022, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1042, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 25 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-stranglethorn-vale-accept-1042-the-carevin-family" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1042, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1042, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1041, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1040, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1039, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1038, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Alliance" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 1037, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Alliance" },
                                                                                                                                                                {
                                                                                                                                                                    any = { { any = { { quest = { id = 1022, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "alliance-leveling-era-alliance-stranglethorn-vale-turnin-1042-the-carevin-family",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1041 } } },
            route = {
                {
                    label = "Jonathan Carevin",
                    mapID = 1431,
                    offMapText = "Travel to Jonathan Carevin in Duskwood.",
                    x = 0.7532,
                    y = 0.4902,
                },
            },
            sourceActionID = "turnin-1042-the-carevin-family",
            sourceGuide = "leveling-era-alliance-stranglethorn-vale",
            sourceStep = 55,
            text = "Turn in The Carevin Family to Jonathan Carevin.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 98418,
            complete = { level = { min = 23 } },
            conditions = { all = { { faction = "Alliance" } } },
            id = "alliance-extra-98418-level",
            kind = "note",
            requiredLevel = 23,
            text = "Reach level 23 before this visit.",
        },
        {
            id = "alliance-extra-98418-accept",
            kind = "accept",
            text = "Accept Shared Fury from Maseara Autumnmoon.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 23 } } } },
            route = {
                {
                    mapID = 1440,
                    x = 0.81,
                    y = 0.502,
                    label = "Maseara Autumnmoon",
                    offMapText = "Travel to Maseara Autumnmoon in Ashenvale.",
                },
            },
            complete = { quest = { id = 98418, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-98418-level" },
        },
        {
            id = "alliance-extra-98418-objective",
            kind = "objective",
            text = "Kill 5 Xavian Rogues, 5 Felsworn, 5 Betrayers, and 5 Hellcallers.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 23 } } } },
            route = {
                {
                    mapID = 1440,
                    x = 0.782,
                    y = 0.44799999999999995,
                    label = "Xavian Rogue",
                    offMapText = "Travel to Xavian Rogue in Ashenvale.",
                },
            },
            complete = { quest = { id = 98418, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-98418-accept" },
        },
        {
            complete = { quest = { id = 98418, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 23 } } } },
            dependsOn = { "alliance-extra-98418-objective" },
            id = "alliance-extra-98418-turnin",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Maseara Autumnmoon",
                    mapID = 1440,
                    offMapText = "Travel to Maseara Autumnmoon in Ashenvale.",
                    x = 0.81,
                    y = 0.502,
                },
            },
            text = "Turn in Shared Fury to Maseara Autumnmoon.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
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
            complete = { quest = { id = 844, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 10 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-844-plainstrider-menace",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Sergra Darkthorn",
                    mapID = 1413,
                    offMapText = "Travel to Sergra Darkthorn in The Barrens.",
                    x = 0.5224,
                    y = 0.3101,
                },
            },
            sourceStep = 6,
            text = "Accept Plainstrider Menace from Sergra Darkthorn.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "accept-844-plainstrider-menace",
        },
        {
            complete = { questObjective = { count = 7, id = 844, index = 1, text = "Plainstrider Beak" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 10 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-844-plainstrider-menace" },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-844-1-plainstrider-beak",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Plainstrider Beak", mapID = 1413, offMapText = "Travel to Plainstrider Beak.", x = 0.53, y = 0.224 },
            },
            sourceStep = 21,
            text = "Collect 7 Plainstrider Beak.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "objective-844-1-plainstrider-beak",
        },
        {
            complete = { quest = { id = 844, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 10 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-844-plainstrider-menace",
                "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-844-1-plainstrider-beak",
            },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-turnin-844-plainstrider-menace",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Sergra Darkthorn",
                    mapID = 1413,
                    offMapText = "Travel to Sergra Darkthorn in The Barrens.",
                    x = 0.5224,
                    y = 0.3101,
                },
            },
            sourceActionID = "turnin-844-plainstrider-menace",
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceStep = 24,
            text = "Turn in Plainstrider Menace to Sergra Darkthorn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 845, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 10 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-845-the-zhevra",
            kind = "accept",
            requiredQuests = { { conditions = { faction = "Horde" }, mode = "any", quests = { 844 } } },
            route = {
                {
                    label = "Sergra Darkthorn",
                    mapID = 1413,
                    offMapText = "Travel to Sergra Darkthorn in The Barrens.",
                    x = 0.5224,
                    y = 0.3101,
                },
            },
            sourceStep = 24,
            text = "Accept The Zhevra from Sergra Darkthorn.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "accept-845-the-zhevra",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 845, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 845, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                { ["not"] = { faction = "Horde" } },
                                                {
                                                    any = { { any = { { quest = { id = 844, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 4, id = 845, index = 1, text = "Zhevra Hooves" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 10 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-845-the-zhevra" },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-845-1-zhevra-hooves",
            kind = "objective",
            requiredQuests = { { conditions = { faction = "Horde" }, mode = "any", quests = { 844 } } },
            route = { { label = "Zhevra Hooves", mapID = 1413, offMapText = "Travel to Zhevra Hooves.", x = 0.532, y = 0.342 } },
            sourceStep = 44,
            text = "Collect 4 Zhevra Hooves.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "objective-845-1-zhevra-hooves",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 845, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 845, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                { ["not"] = { faction = "Horde" } },
                                                {
                                                    any = { { any = { { quest = { id = 844, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 845, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 10 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-845-the-zhevra",
                "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-845-1-zhevra-hooves",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 845, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 845, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                { ["not"] = { faction = "Horde" } },
                                                {
                                                    any = { { any = { { quest = { id = 844, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-turnin-845-the-zhevra",
            kind = "turnin",
            requiredQuests = { { conditions = { faction = "Horde" }, mode = "any", quests = { 844 } } },
            route = {
                {
                    label = "Sergra Darkthorn",
                    mapID = 1413,
                    offMapText = "Travel to Sergra Darkthorn in The Barrens.",
                    x = 0.5223,
                    y = 0.3101,
                },
            },
            sourceActionID = "turnin-845-the-zhevra",
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceStep = 45,
            text = "Turn in The Zhevra to Sergra Darkthorn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 903, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 10 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-903-prowlers-of-the-barrens",
            kind = "accept",
            requiredQuests = { { conditions = { faction = "Horde" }, mode = "any", quests = { 845 } } },
            route = {
                {
                    label = "Sergra Darkthorn",
                    mapID = 1413,
                    offMapText = "Travel to Sergra Darkthorn in The Barrens.",
                    x = 0.5223,
                    y = 0.3101,
                },
            },
            sourceStep = 45,
            text = "Accept Prowlers of the Barrens from Sergra Darkthorn.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "accept-903-prowlers-of-the-barrens",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 903, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 903, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                { ["not"] = { faction = "Horde" } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 845, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = {
                                                                                { ["not"] = { faction = "Horde" } },
                                                                                {
                                                                                    any = { { any = { { quest = { id = 844, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 7, id = 903, index = 1, text = "Prowler Claws" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 10 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-903-prowlers-of-the-barrens" },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-903-1-prowler-claws",
            kind = "objective",
            requiredQuests = { { conditions = { faction = "Horde" }, mode = "any", quests = { 845 } } },
            route = { { label = "Prowler Claws", mapID = 1413, offMapText = "Travel to Prowler Claws.", x = 0.412, y = 0.284 } },
            sourceStep = 51,
            text = "Collect 7 Prowler Claws.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "objective-903-1-prowler-claws",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 903, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 903, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                { ["not"] = { faction = "Horde" } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 845, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = {
                                                                                { ["not"] = { faction = "Horde" } },
                                                                                {
                                                                                    any = { { any = { { quest = { id = 844, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 903, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 10 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-903-prowlers-of-the-barrens",
                "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-903-1-prowler-claws",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 903, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 903, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                { ["not"] = { faction = "Horde" } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 845, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = {
                                                                                { ["not"] = { faction = "Horde" } },
                                                                                {
                                                                                    any = { { any = { { quest = { id = 844, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-turnin-903-prowlers-of-the-barrens",
            kind = "turnin",
            requiredQuests = { { conditions = { faction = "Horde" }, mode = "any", quests = { 845 } } },
            route = {
                {
                    label = "Sergra Darkthorn",
                    mapID = 1413,
                    offMapText = "Travel to Sergra Darkthorn in The Barrens.",
                    x = 0.5224,
                    y = 0.3101,
                },
            },
            sourceActionID = "turnin-903-prowlers-of-the-barrens",
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceStep = 71,
            text = "Turn in Prowlers of the Barrens to Sergra Darkthorn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 881, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 10 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-881-echeyakee",
            kind = "accept",
            requiredQuests = { { conditions = { faction = "Horde" }, mode = "any", quests = { 903 } } },
            route = {
                {
                    label = "Sergra Darkthorn",
                    mapID = 1413,
                    offMapText = "Travel to Sergra Darkthorn in The Barrens.",
                    x = 0.5224,
                    y = 0.3101,
                },
            },
            sourceStep = 71,
            text = "Accept Echeyakee from Sergra Darkthorn.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "accept-881-echeyakee",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 881, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 881, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                { ["not"] = { faction = "Horde" } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 903, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = {
                                                                                { ["not"] = { faction = "Horde" } },
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 845, state = "activeOrCompleted" } },
                                                                                                {
                                                                                                    all = {
                                                                                                        { faction = "Horde" },
                                                                                                        {
                                                                                                            any = {
                                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 844, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 881, index = 1 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 10 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-881-echeyakee" },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-881-1-horn-of-echeyakee",
            kind = "objective",
            requiredQuests = { { conditions = { faction = "Horde" }, mode = "any", quests = { 903 } } },
            route = { { label = "Echeyakee", mapID = 1413, offMapText = "Travel to Echeyakee.", x = 0.5585, y = 0.1708 } },
            sourceStep = 97,
            text = "Use the Horn of Echeyakee beside the bones to summon Echeyakee. Kill the white lion and loot his hide.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "objective-881-1-horn-of-echeyakee",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 881, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 881, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                { ["not"] = { faction = "Horde" } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 903, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = {
                                                                                { ["not"] = { faction = "Horde" } },
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 845, state = "activeOrCompleted" } },
                                                                                                {
                                                                                                    all = {
                                                                                                        { faction = "Horde" },
                                                                                                        {
                                                                                                            any = {
                                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 844, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 881, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 10 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-881-echeyakee",
                "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-881-1-horn-of-echeyakee",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 881, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 881, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                { ["not"] = { faction = "Horde" } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 903, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = {
                                                                                { ["not"] = { faction = "Horde" } },
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 845, state = "activeOrCompleted" } },
                                                                                                {
                                                                                                    all = {
                                                                                                        { faction = "Horde" },
                                                                                                        {
                                                                                                            any = {
                                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 844, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-turnin-881-echeyakee",
            kind = "turnin",
            requiredQuests = { { conditions = { faction = "Horde" }, mode = "any", quests = { 903 } } },
            route = {
                {
                    label = "Sergra Darkthorn",
                    mapID = 1413,
                    offMapText = "Travel to Sergra Darkthorn in The Barrens.",
                    x = 0.5223,
                    y = 0.31,
                },
            },
            sourceActionID = "turnin-881-echeyakee",
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceStep = 102,
            text = "Turn in Echeyakee to Sergra Darkthorn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 905, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 10 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-905-the-angry-scytheclaws",
            kind = "accept",
            requiredQuests = { { conditions = { faction = "Horde" }, mode = "any", quests = { 881 } } },
            route = {
                {
                    label = "Sergra Darkthorn",
                    mapID = 1413,
                    offMapText = "Travel to Sergra Darkthorn in The Barrens.",
                    x = 0.5223,
                    y = 0.31,
                },
            },
            sourceStep = 102,
            text = "Accept The Angry Scytheclaws from Sergra Darkthorn.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "accept-905-the-angry-scytheclaws",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 905, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 905, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                { ["not"] = { faction = "Horde" } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 881, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = {
                                                                                { ["not"] = { faction = "Horde" } },
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 903, state = "activeOrCompleted" } },
                                                                                                {
                                                                                                    all = {
                                                                                                        { faction = "Horde" },
                                                                                                        {
                                                                                                            any = {
                                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 845, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                                                                {
                                                                                                                                                    any = { { any = { { quest = { id = 844, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 905, index = 1 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 10 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-905-the-angry-scytheclaws" },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-905-1-authored-Blue-Raptor-Nest",
            kind = "objective",
            requiredQuests = { { conditions = { faction = "Horde" }, mode = "any", quests = { 881 } } },
            route = {
                { label = "Blue-Raptor-Nest", mapID = 1413, offMapText = "Travel to Blue-Raptor-Nest.", x = 0.526, y = 0.4611 },
            },
            text = "Kill Sunscale raptors nearby and loot a Sunscale Feather. Place it in the Blue Raptor Nest.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "objective-905-1-authored-Blue-Raptor-Nest",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 905, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 905, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                { ["not"] = { faction = "Horde" } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 881, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = {
                                                                                { ["not"] = { faction = "Horde" } },
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 903, state = "activeOrCompleted" } },
                                                                                                {
                                                                                                    all = {
                                                                                                        { faction = "Horde" },
                                                                                                        {
                                                                                                            any = {
                                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 845, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                                                                {
                                                                                                                                                    any = { { any = { { quest = { id = 844, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 905, index = 3 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 10 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-905-the-angry-scytheclaws" },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-905-3-authored-Red-Raptor-Nest",
            kind = "objective",
            requiredQuests = { { conditions = { faction = "Horde" }, mode = "any", quests = { 881 } } },
            route = {
                { label = "Red-Raptor-Nest", mapID = 1413, offMapText = "Travel to Red-Raptor-Nest.", x = 0.5246, y = 0.4657 },
            },
            text = "Loot another Sunscale Feather from nearby raptors and place it in the Red Raptor Nest.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "objective-905-3-authored-Red-Raptor-Nest",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 905, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 905, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                { ["not"] = { faction = "Horde" } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 881, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = {
                                                                                { ["not"] = { faction = "Horde" } },
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 903, state = "activeOrCompleted" } },
                                                                                                {
                                                                                                    all = {
                                                                                                        { faction = "Horde" },
                                                                                                        {
                                                                                                            any = {
                                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 845, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                                                                {
                                                                                                                                                    any = { { any = { { quest = { id = 844, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 905, index = 2 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 10 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-905-the-angry-scytheclaws" },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-905-2-authored-Yellow-Raptor-Nest",
            kind = "objective",
            requiredQuests = { { conditions = { faction = "Horde" }, mode = "any", quests = { 881 } } },
            route = {
                { label = "Yellow-Raptor-Nest", mapID = 1413, offMapText = "Travel to Yellow-Raptor-Nest.", x = 0.5202, y = 0.4647 },
            },
            text = "Loot another Sunscale Feather from nearby raptors and place it in the Yellow Raptor Nest.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "objective-905-2-authored-Yellow-Raptor-Nest",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 905, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 905, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                { ["not"] = { faction = "Horde" } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 881, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = {
                                                                                { ["not"] = { faction = "Horde" } },
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 903, state = "activeOrCompleted" } },
                                                                                                {
                                                                                                    all = {
                                                                                                        { faction = "Horde" },
                                                                                                        {
                                                                                                            any = {
                                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 845, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                                                                {
                                                                                                                                                    any = { { any = { { quest = { id = 844, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 905, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 10 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-905-the-angry-scytheclaws",
                "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-905-1-authored-Blue-Raptor-Nest",
                "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-905-3-authored-Red-Raptor-Nest",
                "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-905-2-authored-Yellow-Raptor-Nest",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 905, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 905, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                { ["not"] = { faction = "Horde" } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 881, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = {
                                                                                { ["not"] = { faction = "Horde" } },
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 903, state = "activeOrCompleted" } },
                                                                                                {
                                                                                                    all = {
                                                                                                        { faction = "Horde" },
                                                                                                        {
                                                                                                            any = {
                                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 845, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                                                                {
                                                                                                                                                    any = { { any = { { quest = { id = 844, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-turnin-905-the-angry-scytheclaws",
            kind = "turnin",
            requiredQuests = { { conditions = { faction = "Horde" }, mode = "any", quests = { 881 } } },
            route = {
                {
                    label = "Sergra Darkthorn",
                    mapID = 1413,
                    offMapText = "Travel to Sergra Darkthorn in The Barrens.",
                    x = 0.5223,
                    y = 0.3101,
                },
            },
            sourceActionID = "turnin-905-the-angry-scytheclaws",
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceStep = 132,
            text = "Turn in The Angry Scytheclaws to Sergra Darkthorn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 3261, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 10 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-3261-jorn-skyseer",
            kind = "accept",
            requiredQuests = { { conditions = { faction = "Horde" }, mode = "any", quests = { 905 } } },
            route = {
                {
                    label = "Sergra Darkthorn",
                    mapID = 1413,
                    offMapText = "Travel to Sergra Darkthorn in The Barrens.",
                    x = 0.5223,
                    y = 0.3101,
                },
            },
            sourceStep = 132,
            text = "Accept Jorn Skyseer from Sergra Darkthorn.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "accept-3261-jorn-skyseer",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3261, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3261, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                { ["not"] = { faction = "Horde" } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 905, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = {
                                                                                { ["not"] = { faction = "Horde" } },
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 881, state = "activeOrCompleted" } },
                                                                                                {
                                                                                                    all = {
                                                                                                        { faction = "Horde" },
                                                                                                        {
                                                                                                            any = {
                                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 903, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        {
                                                                                                                                                            any = {
                                                                                                                                                                { quest = { id = 845, state = "activeOrCompleted" } },
                                                                                                                                                                {
                                                                                                                                                                    all = {
                                                                                                                                                                        { faction = "Horde" },
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                                                                                                {
                                                                                                                                                                                    any = { { any = { { quest = { id = 844, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 3261, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 10 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-3261-jorn-skyseer" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 3261, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 3261, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                { ["not"] = { faction = "Horde" } },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 905, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = {
                                                                                { ["not"] = { faction = "Horde" } },
                                                                                {
                                                                                    any = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 881, state = "activeOrCompleted" } },
                                                                                                {
                                                                                                    all = {
                                                                                                        { faction = "Horde" },
                                                                                                        {
                                                                                                            any = {
                                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 903, state = "activeOrCompleted" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        {
                                                                                                                                                            any = {
                                                                                                                                                                { quest = { id = 845, state = "activeOrCompleted" } },
                                                                                                                                                                {
                                                                                                                                                                    all = {
                                                                                                                                                                        { faction = "Horde" },
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                                                                                                {
                                                                                                                                                                                    any = { { any = { { quest = { id = 844, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-turnin-3261-jorn-skyseer",
            kind = "turnin",
            requiredQuests = { { conditions = { faction = "Horde" }, mode = "any", quests = { 905 } } },
            route = {
                { label = "Jorn Skyseer", mapID = 1413, offMapText = "Travel to Jorn Skyseer in The Barrens.", x = 0.4486, y = 0.5914 },
            },
            sourceActionID = "turnin-3261-jorn-skyseer",
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceStep = 155,
            text = "Turn in Jorn Skyseer to Jorn Skyseer.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 882, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 10 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-882-ishamuhale",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3261 } } },
            route = {
                { label = "Jorn Skyseer", mapID = 1413, offMapText = "Travel to Jorn Skyseer in The Barrens.", x = 0.4486, y = 0.5914 },
            },
            sourceStep = 155,
            text = "Accept Ishamuhale from Jorn Skyseer.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "accept-882-ishamuhale",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 882, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 882, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3261, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        { ["not"] = { faction = "Horde" } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 905, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Horde" },
                                                                                                {
                                                                                                    any = {
                                                                                                        { ["not"] = { faction = "Horde" } },
                                                                                                        {
                                                                                                            any = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        { quest = { id = 881, state = "activeOrCompleted" } },
                                                                                                                        {
                                                                                                                            all = {
                                                                                                                                { faction = "Horde" },
                                                                                                                                {
                                                                                                                                    any = {
                                                                                                                                        { ["not"] = { faction = "Horde" } },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 903, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        { ["not"] = { faction = "Horde" } },
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                {
                                                                                                                                                                                    any = {
                                                                                                                                                                                        { quest = { id = 845, state = "activeOrCompleted" } },
                                                                                                                                                                                        {
                                                                                                                                                                                            all = {
                                                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { ["not"] = { faction = "Horde" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            any = { { any = { { quest = { id = 844, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 882,
            complete = {
                any = {
                    { all = { { item = { minCount = 1, name = "Fresh Zhevra Carcass" } } } },
                    { quest = { id = 882, state = "complete" } },
                },
            },
            conditions = { all = { { faction = "Horde" }, { level = { min = 10 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-882-ishamuhale" },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-882-1-zhevra-charger",
            instructionOnly = true,
            kind = "note",
            rememberPreparation = 882,
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3261 } } },
            route = { { label = "Zhevra Chargers", mapID = 1413, offMapText = "Travel to Zhevra Chargers.", x = 0.606, y = 0.356 } },
            sourceInstructionIndex = 1,
            sourceInstructionStep = 164,
            text = "Kill Zhevra Chargers east of the Crossroads and loot a Fresh Zhevra Carcass.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "objective-882-1-zhevra-charger",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 882, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 882, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3261, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        { ["not"] = { faction = "Horde" } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 905, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Horde" },
                                                                                                {
                                                                                                    any = {
                                                                                                        { ["not"] = { faction = "Horde" } },
                                                                                                        {
                                                                                                            any = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        { quest = { id = 881, state = "activeOrCompleted" } },
                                                                                                                        {
                                                                                                                            all = {
                                                                                                                                { faction = "Horde" },
                                                                                                                                {
                                                                                                                                    any = {
                                                                                                                                        { ["not"] = { faction = "Horde" } },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 903, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        { ["not"] = { faction = "Horde" } },
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                {
                                                                                                                                                                                    any = {
                                                                                                                                                                                        { quest = { id = 845, state = "activeOrCompleted" } },
                                                                                                                                                                                        {
                                                                                                                                                                                            all = {
                                                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { ["not"] = { faction = "Horde" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            any = { { any = { { quest = { id = 844, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 882, index = 1 } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 10 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-882-ishamuhale" },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-882-1-fresh-zhevra-carcass",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3261 } } },
            route = { { label = "Ishamuhale", mapID = 1413, offMapText = "Travel to Ishamuhale.", x = 0.5989, y = 0.3029 } },
            text = "Place the Fresh Zhevra Carcass by the dead tree to summon Ishamuhale. Kill the raptor and collect his fang.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceActionID = "objective-882-1-fresh-zhevra-carcass",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 882, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 882, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3261, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        { ["not"] = { faction = "Horde" } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 905, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Horde" },
                                                                                                {
                                                                                                    any = {
                                                                                                        { ["not"] = { faction = "Horde" } },
                                                                                                        {
                                                                                                            any = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        { quest = { id = 881, state = "activeOrCompleted" } },
                                                                                                                        {
                                                                                                                            all = {
                                                                                                                                { faction = "Horde" },
                                                                                                                                {
                                                                                                                                    any = {
                                                                                                                                        { ["not"] = { faction = "Horde" } },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 903, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        { ["not"] = { faction = "Horde" } },
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                {
                                                                                                                                                                                    any = {
                                                                                                                                                                                        { quest = { id = 845, state = "activeOrCompleted" } },
                                                                                                                                                                                        {
                                                                                                                                                                                            all = {
                                                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { ["not"] = { faction = "Horde" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            any = { { any = { { quest = { id = 844, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 882, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 10 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-accept-882-ishamuhale",
                "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-882-1-zhevra-charger",
                "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-objective-882-1-fresh-zhevra-carcass",
            },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 882, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 882, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 3261, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        { ["not"] = { faction = "Horde" } },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 905, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Horde" },
                                                                                                {
                                                                                                    any = {
                                                                                                        { ["not"] = { faction = "Horde" } },
                                                                                                        {
                                                                                                            any = {
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        { quest = { id = 881, state = "activeOrCompleted" } },
                                                                                                                        {
                                                                                                                            all = {
                                                                                                                                { faction = "Horde" },
                                                                                                                                {
                                                                                                                                    any = {
                                                                                                                                        { ["not"] = { faction = "Horde" } },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 903, state = "activeOrCompleted" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        { ["not"] = { faction = "Horde" } },
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                {
                                                                                                                                                                                    any = {
                                                                                                                                                                                        { quest = { id = 845, state = "activeOrCompleted" } },
                                                                                                                                                                                        {
                                                                                                                                                                                            all = {
                                                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        { ["not"] = { faction = "Horde" } },
                                                                                                                                                                                                        {
                                                                                                                                                                                                            any = { { any = { { quest = { id = 844, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-the-barrens-and-stonetalon-mountain-turnin-882-ishamuhale",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 3261 } } },
            route = {
                { label = "Jorn Skyseer", mapID = 1413, offMapText = "Travel to Jorn Skyseer in The Barrens.", x = 0.4486, y = 0.5914 },
            },
            sourceActionID = "turnin-882-ishamuhale",
            sourceGuide = "leveling-era-horde-the-barrens-and-stonetalon-mountain",
            sourceStep = 194,
            text = "Turn in Ishamuhale to Jorn Skyseer.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
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
            checkpointQuest = 216,
            complete = { level = { min = 21 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-ashenvale-level-before-accept-216-between-a-rock-and-a-thistlefur",
            kind = "note",
            requiredLevel = 21,
            requiredQuests = {},
            text = "Reach level 21 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ashenvale",
            sourceActionID = "level-before-accept-216-between-a-rock-and-a-thistlefur",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 216, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 21 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-ashenvale-accept-216-between-a-rock-and-a-thistlefur",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Karang Amakkar", mapID = 1440, offMapText = "Travel to Karang Amakkar in Ashenvale.", x = 0.119, y = 0.3453 },
            },
            sourceStep = 3,
            text = "Accept Between a Rock and a Thistlefur from Karang Amakkar.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ashenvale",
            sourceActionID = "accept-216-between-a-rock-and-a-thistlefur",
        },
        {
            complete = { quest = { id = 6442, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 14 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-ashenvale-accept-6442-naga-at-the-zoram-strand",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Marukai", mapID = 1440, offMapText = "Travel to Marukai in Ashenvale.", x = 0.1169, y = 0.349 } },
            sourceStep = 4,
            text = "Accept Naga at the Zoram Strand from Marukai.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ashenvale",
            sourceActionID = "accept-6442-naga-at-the-zoram-strand",
        },
        {
            complete = { quest = { id = 6462, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-ashenvale-accept-6462-troll-charm",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Mitsuwa", mapID = 1440, offMapText = "Travel to Mitsuwa in Ashenvale.", x = 0.1165, y = 0.3485 } },
            sourceStep = 5,
            text = "Accept Troll Charm from Mitsuwa.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ashenvale",
            sourceActionID = "accept-6462-troll-charm",
        },
        {
            complete = { questObjective = { count = 20, id = 6442, index = 1, text = "Wrathtail Wave Rider" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 14 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-ashenvale-accept-6442-naga-at-the-zoram-strand" },
            id = "horde-leveling-era-horde-ashenvale-objective-6442-1-wrathtail-wave-rider",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Wrathtail Wave Rider", mapID = 1440, offMapText = "Travel to Wrathtail Wave Rider.", x = 0.124, y = 0.292 },
            },
            sourceStep = 6,
            text = "Collect 20 Wrathtail Head.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-ashenvale",
            sourceActionID = "objective-6442-1-wrathtail-wave-rider",
        },
        {
            complete = { quest = { id = 6442, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 14 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-ashenvale-accept-6442-naga-at-the-zoram-strand",
                "horde-leveling-era-horde-ashenvale-objective-6442-1-wrathtail-wave-rider",
            },
            id = "horde-leveling-era-horde-ashenvale-turnin-6442-naga-at-the-zoram-strand",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Marukai", mapID = 1440, offMapText = "Travel to Marukai in Ashenvale.", x = 0.1169, y = 0.349 } },
            sourceActionID = "turnin-6442-naga-at-the-zoram-strand",
            sourceGuide = "leveling-era-horde-ashenvale",
            sourceStep = 8,
            text = "Turn in Naga at the Zoram Strand to Marukai.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
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
            dependsOn = {},
            id = "horde-leveling-era-horde-the-barrens-level-before-accept-1195-the-sacred-flame",
            kind = "note",
            requiredLevel = 20,
            requiredQuests = {},
            sourceActionID = "level-before-accept-1195-the-sacred-flame",
            sourceGuide = "leveling-era-horde-the-barrens",
            text = "Reach level 20 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
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
            sourceActionID = "accept-1195-the-sacred-flame",
            sourceGuide = "leveling-era-horde-the-barrens",
            sourceStep = 8,
            text = "Accept The Sacred Flame from Zangen Stonehoof.",
            useClientPin = false,
            useClientText = false,
        },
        {
            alternativeQuests = { 235, 742 },
            complete = { quest = { id = 6382, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-the-barrens-accept-6382-the-ashenvale-hunt",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 882 } } },
            route = {
                { label = "Jorn Skyseer", mapID = 1413, offMapText = "Travel to Jorn Skyseer in The Barrens.", x = 0.4486, y = 0.5914 },
            },
            sourceStep = 42,
            text = "Accept The Ashenvale Hunt from Jorn Skyseer.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-the-barrens",
            sourceActionID = "accept-6382-the-ashenvale-hunt",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6382, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6382, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 882, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3261, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 905, state = "activeOrCompleted" } },
                                                                                                                {
                                                                                                                    all = {
                                                                                                                        { faction = "Horde" },
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                                                {
                                                                                                                                    any = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                { quest = { id = 881, state = "activeOrCompleted" } },
                                                                                                                                                {
                                                                                                                                                    all = {
                                                                                                                                                        { faction = "Horde" },
                                                                                                                                                        {
                                                                                                                                                            any = {
                                                                                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 903, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Horde" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        {
                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                { quest = { id = 845, state = "activeOrCompleted" } },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    all = {
                                                                                                                                                                                                                        { faction = "Horde" },
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    any = { { any = { { quest = { id = 844, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                                                                                },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
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
            checkpointQuest = 6504,
            complete = { level = { min = 23 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-ashenvale-part-2-level-before-accept-6504-the-lost-pages",
            kind = "note",
            requiredLevel = 23,
            requiredQuests = {},
            text = "Reach level 23 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceActionID = "level-before-accept-6504-the-lost-pages",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 6504, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 23 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-ashenvale-part-2-accept-6504-the-lost-pages",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Gurda Ragescar", mapID = 1440, offMapText = "Travel to Gurda Ragescar in Ashenvale.", x = 0.7, y = 0.7115 },
            },
            sourceStep = 5,
            text = "Accept The Lost Pages from Gurda Ragescar.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceActionID = "accept-6504-the-lost-pages",
        },
        {
            complete = { questObjective = { count = 1, id = 6504, index = 1, text = "Shredder Operating Manual - Page 1" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 23 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-ashenvale-part-2-accept-6504-the-lost-pages" },
            id = "horde-leveling-era-horde-ashenvale-part-2-objective-6504-1-shredder-operating-manual-page-1",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 6,
            text = "Loot Shredder Operating Manual pages 1 through 4 from enemies around Ashenvale. Use Page 1 with all four pages in your bags to assemble Chapter 1.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceActionID = "objective-6504-1-shredder-operating-manual-page-1",
        },
        {
            complete = { questObjective = { count = 1, id = 6504, index = 2, text = "Shredder Operating Manual - Page 5" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 23 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-ashenvale-part-2-accept-6504-the-lost-pages" },
            id = "horde-leveling-era-horde-ashenvale-part-2-objective-6504-2-shredder-operating-manual-page-5",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 7,
            text = "Loot Shredder Operating Manual pages 5 through 8 from enemies around Ashenvale. Use Page 5 with all four pages in your bags to assemble Chapter 2.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceActionID = "objective-6504-2-shredder-operating-manual-page-5",
        },
        {
            complete = { questObjective = { count = 1, id = 6504, index = 3, text = "Shredder Operating Manual - Page 9" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 23 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-ashenvale-part-2-accept-6504-the-lost-pages" },
            id = "horde-leveling-era-horde-ashenvale-part-2-objective-6504-3-shredder-operating-manual-page-9",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 8,
            text = "Loot Shredder Operating Manual pages 9 through 12 from enemies around Ashenvale. Use Page 9 with all four pages in your bags to assemble Chapter 3.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceActionID = "objective-6504-3-shredder-operating-manual-page-9",
        },
        {
            complete = { quest = { id = 6504, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 23 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-ashenvale-part-2-accept-6504-the-lost-pages",
                "horde-leveling-era-horde-ashenvale-part-2-objective-6504-1-shredder-operating-manual-page-1",
                "horde-leveling-era-horde-ashenvale-part-2-objective-6504-2-shredder-operating-manual-page-5",
                "horde-leveling-era-horde-ashenvale-part-2-objective-6504-3-shredder-operating-manual-page-9",
            },
            id = "horde-leveling-era-horde-ashenvale-part-2-turnin-6504-the-lost-pages",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Gurda Ragescar", mapID = 1440, offMapText = "Travel to Gurda Ragescar in Ashenvale.", x = 0.7, y = 0.7115 },
            },
            sourceActionID = "turnin-6504-the-lost-pages",
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceStep = 9,
            text = "Turn in The Lost Pages to Gurda Ragescar.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 6503, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-ashenvale-part-2-accept-6503-ashenvale-outrunners",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Kuray'bin", mapID = 1440, offMapText = "Travel to Kuray'bin in Ashenvale.", x = 0.711, y = 0.6812 },
            },
            sourceStep = 11,
            text = "Accept Ashenvale Outrunners from Kuray'bin.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceActionID = "accept-6503-ashenvale-outrunners",
        },
        {
            alternativeQuests = { 235, 742 },
            complete = { quest = { id = 6382, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6382, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6382, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 882, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 3261, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 905, state = "activeOrCompleted" } },
                                                                                                                {
                                                                                                                    all = {
                                                                                                                        { faction = "Horde" },
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                                                {
                                                                                                                                    any = {
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                { quest = { id = 881, state = "activeOrCompleted" } },
                                                                                                                                                {
                                                                                                                                                    all = {
                                                                                                                                                        { faction = "Horde" },
                                                                                                                                                        {
                                                                                                                                                            any = {
                                                                                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                                                                                {
                                                                                                                                                                    any = {
                                                                                                                                                                        {
                                                                                                                                                                            any = {
                                                                                                                                                                                { quest = { id = 903, state = "activeOrCompleted" } },
                                                                                                                                                                                {
                                                                                                                                                                                    all = {
                                                                                                                                                                                        { faction = "Horde" },
                                                                                                                                                                                        {
                                                                                                                                                                                            any = {
                                                                                                                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                                                                                                                {
                                                                                                                                                                                                    any = {
                                                                                                                                                                                                        {
                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                { quest = { id = 845, state = "activeOrCompleted" } },
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    all = {
                                                                                                                                                                                                                        { faction = "Horde" },
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            any = {
                                                                                                                                                                                                                                { ["not"] = { faction = "Horde" } },
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    any = { { any = { { quest = { id = 844, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                                                                                                                                                                },
                                                                                                                                                                                                                            },
                                                                                                                                                                                                                        },
                                                                                                                                                                                                                    },
                                                                                                                                                                                                                },
                                                                                                                                                                                                            },
                                                                                                                                                                                                        },
                                                                                                                                                                                                    },
                                                                                                                                                                                                },
                                                                                                                                                                                            },
                                                                                                                                                                                        },
                                                                                                                                                                                    },
                                                                                                                                                                                },
                                                                                                                                                                            },
                                                                                                                                                                        },
                                                                                                                                                                    },
                                                                                                                                                                },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-ashenvale-part-2-turnin-6382-the-ashenvale-hunt",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 882 } } },
            route = {
                {
                    label = "Senani Thunderheart",
                    mapID = 1440,
                    offMapText = "Travel to Senani Thunderheart in Ashenvale.",
                    x = 0.7378,
                    y = 0.6146,
                },
            },
            sourceActionID = "turnin-6382-the-ashenvale-hunt",
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceStep = 12,
            text = "Turn in The Ashenvale Hunt to Senani Thunderheart.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            alternativeQuests = { 742, 6382 },
            complete = { quest = { id = 235, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-ashenvale-part-2-accept-235-verified-pickup",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Warcaller Gorlach", mapID = 1454, offMapText = "Travel to Warcaller Gorlach.", x = 0.466, y = 0.646 },
            },
            text = "Speak with Warcaller Gorlach to accept The Ashenvale Hunt.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceActionID = "accept-235-verified-pickup",
        },
        {
            alternativeQuests = { 742, 6382 },
            complete = { quest = { id = 235, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-ashenvale-part-2-accept-235-verified-pickup" },
            id = "horde-leveling-era-horde-ashenvale-part-2-turnin-235-the-ashenvale-hunt",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Senani Thunderheart",
                    mapID = 1440,
                    offMapText = "Travel to Senani Thunderheart in Ashenvale.",
                    x = 0.7378,
                    y = 0.6146,
                },
            },
            sourceActionID = "turnin-235-the-ashenvale-hunt",
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceStep = 12,
            text = "Turn in The Ashenvale Hunt to Senani Thunderheart.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            alternativeQuests = { 235, 6382 },
            complete = { quest = { id = 742, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-ashenvale-part-2-accept-742-verified-pickup",
            kind = "accept",
            requiredQuests = {},
            text = "Accept The Ashenvale Hunt from Bluff Runner Windstrider in Thunder Bluff.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceActionID = "accept-742-verified-pickup",
        },
        {
            alternativeQuests = { 235, 6382 },
            complete = { quest = { id = 742, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-ashenvale-part-2-accept-742-verified-pickup" },
            id = "horde-leveling-era-horde-ashenvale-part-2-turnin-742-the-ashenvale-hunt",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Senani Thunderheart",
                    mapID = 1440,
                    offMapText = "Travel to Senani Thunderheart in Ashenvale.",
                    x = 0.7378,
                    y = 0.6146,
                },
            },
            sourceActionID = "turnin-742-the-ashenvale-hunt",
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceStep = 12,
            text = "Turn in The Ashenvale Hunt to Senani Thunderheart.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 6383, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-ashenvale-part-2-turnin-6382-the-ashenvale-hunt" },
            id = "horde-leveling-era-horde-ashenvale-part-2-accept-6383-the-ashenvale-hunt",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Senani Thunderheart",
                    mapID = 1440,
                    offMapText = "Travel to Senani Thunderheart in Ashenvale.",
                    x = 0.7378,
                    y = 0.6146,
                },
            },
            sourceStep = 12,
            text = "Accept The Ashenvale Hunt from Senani Thunderheart.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceActionID = "accept-6383-the-ashenvale-hunt",
        },
        {
            complete = { quest = { id = 6383, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-ashenvale-part-2-accept-6383-the-ashenvale-hunt" },
            id = "horde-leveling-era-horde-ashenvale-part-2-turnin-6383-the-ashenvale-hunt",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Senani Thunderheart",
                    mapID = 1440,
                    offMapText = "Travel to Senani Thunderheart in Ashenvale.",
                    x = 0.7378,
                    y = 0.6146,
                },
            },
            sourceActionID = "turnin-6383-the-ashenvale-hunt",
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceStep = 12,
            text = "Turn in The Ashenvale Hunt to Senani Thunderheart.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 25, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 23 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-ashenvale-part-2-accept-25-stonetalon-standstill",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Mastok Wrilehiss",
                    mapID = 1440,
                    offMapText = "Travel to Mastok Wrilehiss in Ashenvale.",
                    x = 0.7367,
                    y = 0.6001,
                },
            },
            sourceStep = 13,
            text = "Accept Stonetalon Standstill from Mastok Wrilehiss.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceActionID = "accept-25-stonetalon-standstill",
        },
        {
            complete = { quest = { id = 6441, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 21 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-ashenvale-part-2-accept-6441-satyr-horns",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Pixel", mapID = 1440, offMapText = "Travel to Pixel in Ashenvale.", x = 0.7306, y = 0.6148 } },
            sourceStep = 15,
            text = "Accept Satyr Horns from Pixel.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceActionID = "accept-6441-satyr-horns",
        },
        {
            complete = { questObjective = { count = 9, id = 6503, index = 1, text = "Ashenvale Outrunner" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-ashenvale-part-2-accept-6503-ashenvale-outrunners" },
            id = "horde-leveling-era-horde-ashenvale-part-2-objective-6503-1-ashenvale-outrunner",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Ashenvale Outrunner", mapID = 1440, offMapText = "Travel to Ashenvale Outrunner.", x = 0.728, y = 0.702 },
            },
            sourceStep = 20,
            text = "Kill 9 Ashenvale Outrunner.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceActionID = "objective-6503-1-ashenvale-outrunner",
        },
        {
            complete = { quest = { id = 6544, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-ashenvale-part-2-accept-6544-torek-s-assault",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Torek", mapID = 1440, offMapText = "Travel to Torek in Ashenvale.", x = 0.6834, y = 0.753 } },
            sourceStep = 22,
            text = "Accept Torek's Assault from Torek.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceActionID = "accept-6544-torek-s-assault",
        },
        {
            complete = { quest = { id = 24, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-ashenvale-part-2-accept-24-shadumbra-s-head",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6383 } } },
            sourceStep = 27,
            text = "Use the Shadumbra's Head to accept Shadumbra's Head.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceActionID = "accept-24-shadumbra-s-head",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 24, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 24, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { item = { name = "Shadumbra's Head", minCount = 1 } },
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 6383, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 6482, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-ashenvale-part-2-accept-6482-freedom-to-ruul",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Ruul Snowhoof", mapID = 1440, offMapText = "Travel to Ruul Snowhoof in Ashenvale.", x = 0.4149, y = 0.345 },
            },
            sourceStep = 30,
            text = "Accept Freedom to Ruul from Ruul Snowhoof.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceActionID = "accept-6482-freedom-to-ruul",
        },
        {
            complete = { questObjective = { count = 12, id = 216, index = 1, text = "Thistlefur Avenger" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 21 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-ashenvale-part-2-objective-216-1-thistlefur-avenger",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Thistlefur Avenger", mapID = 1440, offMapText = "Travel to Thistlefur Avenger.", x = 0.396, y = 0.364 },
            },
            sourceStep = 32,
            text = "Kill 12 Thistlefur Avenger.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceActionID = "objective-216-1-thistlefur-avenger",
        },
        {
            complete = { questObjective = { count = 12, id = 216, index = 2, text = "Thistlefur Shaman" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 21 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-ashenvale-part-2-objective-216-2-thistlefur-shaman",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Thistlefur Shaman", mapID = 1440, offMapText = "Travel to Thistlefur Shaman.", x = 0.396, y = 0.364 },
            },
            sourceStep = 32,
            text = "Kill 12 Thistlefur Shaman.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceActionID = "objective-216-2-thistlefur-shaman",
        },
        {
            complete = { quest = { id = 23, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-ashenvale-part-2-turnin-6383-the-ashenvale-hunt" },
            id = "horde-leveling-era-horde-ashenvale-part-2-accept-23-ursangous-s-paw",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6383 } } },
            sourceStep = 34,
            text = "Use the Ursangous's Paw to accept Ursangous's Paw.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceActionID = "accept-23-ursangous-s-paw",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 23, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 23, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { item = { name = "Ursangous's Paw", minCount = 1 } },
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 6383, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1918, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 23 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-ashenvale-part-2-accept-1918-the-befouled-element",
            kind = "accept",
            requiredQuests = {},
            sourceStep = 37,
            text = "Use the Befouled Water Globe to accept The Befouled Element.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceActionID = "accept-1918-the-befouled-element",
        },
        {
            complete = { questObjective = { count = 12, id = 25, index = 1, text = "Befouled Water Elemental" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 23 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-ashenvale-part-2-accept-25-stonetalon-standstill" },
            id = "horde-leveling-era-horde-ashenvale-part-2-objective-25-1-befouled-water-elemental",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Befouled Water Elemental",
                    mapID = 1440,
                    offMapText = "Travel to Befouled Water Elemental.",
                    x = 0.496,
                    y = 0.692,
                },
            },
            sourceStep = 38,
            text = "Kill 12 Befouled Water Elemental.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceActionID = "objective-25-1-befouled-water-elemental",
        },
        {
            complete = { questObjective = { count = 1, id = 1195, index = 1, text = "Etched Phial" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-ashenvale-part-2-objective-1195-1-etched-phial",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Etched Phial", mapID = 1440, offMapText = "Travel to Etched Phial.", x = 0.602, y = 0.729 } },
            sourceActionID = "objective-1195-1-etched-phial",
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceStep = 40,
            text = "Collect 1 Filled Etched Phial.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 6503, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-ashenvale-part-2-accept-6503-ashenvale-outrunners",
                "horde-leveling-era-horde-ashenvale-part-2-objective-6503-1-ashenvale-outrunner",
            },
            id = "horde-leveling-era-horde-ashenvale-part-2-turnin-6503-ashenvale-outrunners",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Kuray'bin", mapID = 1440, offMapText = "Travel to Kuray'bin in Ashenvale.", x = 0.7111, y = 0.6812 },
            },
            sourceActionID = "turnin-6503-ashenvale-outrunners",
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceStep = 41,
            text = "Turn in Ashenvale Outrunners to Kuray'bin.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 6544, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-ashenvale-part-2-accept-6544-torek-s-assault" },
            id = "horde-leveling-era-horde-ashenvale-part-2-turnin-6544-torek-s-assault",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Ertog Ragetusk", mapID = 1440, offMapText = "Travel to Ertog Ragetusk in Ashenvale.", x = 0.7303, y = 0.6247 },
            },
            sourceActionID = "turnin-6544-torek-s-assault",
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceStep = 42,
            text = "Turn in Torek's Assault to Ertog Ragetusk.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 24, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-ashenvale-part-2-accept-24-shadumbra-s-head" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 24, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 24, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { item = { minCount = 1, name = "Shadumbra's Head" } },
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 6383, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-ashenvale-part-2-turnin-24-shadumbra-s-head",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6383 } } },
            route = {
                {
                    label = "Senani Thunderheart",
                    mapID = 1440,
                    offMapText = "Travel to Senani Thunderheart in Ashenvale.",
                    x = 0.7378,
                    y = 0.6146,
                },
            },
            sourceActionID = "turnin-24-shadumbra-s-head",
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceStep = 43,
            text = "Turn in Shadumbra's Head to Senani Thunderheart.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 23, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-ashenvale-part-2-accept-23-ursangous-s-paw" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 23, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 23, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { item = { minCount = 1, name = "Ursangous's Paw" } },
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 6383, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-ashenvale-part-2-turnin-23-ursangous-s-paw",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6383 } } },
            route = {
                {
                    label = "Senani Thunderheart",
                    mapID = 1440,
                    offMapText = "Travel to Senani Thunderheart in Ashenvale.",
                    x = 0.7378,
                    y = 0.6146,
                },
            },
            sourceActionID = "turnin-23-ursangous-s-paw",
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceStep = 43,
            text = "Turn in Ursangous's Paw to Senani Thunderheart.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 6482, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-ashenvale-part-2-accept-6482-freedom-to-ruul" },
            id = "horde-leveling-era-horde-ashenvale-part-2-turnin-6482-freedom-to-ruul",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Yama Snowhoof", mapID = 1440, offMapText = "Travel to Yama Snowhoof in Ashenvale.", x = 0.7411, y = 0.6092 },
            },
            sourceActionID = "turnin-6482-freedom-to-ruul",
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceStep = 44,
            text = "Turn in Freedom to Ruul to Yama Snowhoof.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 25, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 23 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-ashenvale-part-2-accept-25-stonetalon-standstill",
                "horde-leveling-era-horde-ashenvale-part-2-objective-25-1-befouled-water-elemental",
            },
            id = "horde-leveling-era-horde-ashenvale-part-2-turnin-25-stonetalon-standstill",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Mastok Wrilehiss",
                    mapID = 1440,
                    offMapText = "Travel to Mastok Wrilehiss in Ashenvale.",
                    x = 0.7367,
                    y = 0.6,
                },
            },
            sourceActionID = "turnin-25-stonetalon-standstill",
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceStep = 45,
            text = "Turn in Stonetalon Standstill to Mastok Wrilehiss.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 1918, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 23 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-ashenvale-part-2-accept-1918-the-befouled-element" },
            id = "horde-leveling-era-horde-ashenvale-part-2-turnin-1918-the-befouled-element",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Mastok Wrilehiss",
                    mapID = 1440,
                    offMapText = "Travel to Mastok Wrilehiss in Ashenvale.",
                    x = 0.7367,
                    y = 0.6,
                },
            },
            sourceActionID = "turnin-1918-the-befouled-element",
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceStep = 45,
            text = "Turn in The Befouled Element to Mastok Wrilehiss.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 824, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 23 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-ashenvale-part-2-accept-824-je-neu-of-the-earthen-ring",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1918 } } },
            route = {
                {
                    label = "Mastok Wrilehiss",
                    mapID = 1440,
                    offMapText = "Travel to Mastok Wrilehiss in Ashenvale.",
                    x = 0.7367,
                    y = 0.6,
                },
            },
            sourceStep = 45,
            text = "Accept Je'neu of the Earthen Ring from Mastok Wrilehiss.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceActionID = "accept-824-je-neu-of-the-earthen-ring",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 824, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 824, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1918, state = "activeOrCompleted" } },
                                                        { all = { { item = { name = "Befouled Water Globe", minCount = 1 } }, { faction = "Horde" } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 6441, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 21 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-ashenvale-part-2-accept-6441-satyr-horns" },
            id = "horde-leveling-era-horde-ashenvale-part-2-objective-6441-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 46,
            text = "For Satyr Horns: Collect 16 Satyr Horns for Pixel in Splintertree Post.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceActionID = "objective-6441-quest-work",
        },
        {
            complete = { quest = { id = 6441, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 21 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-ashenvale-part-2-accept-6441-satyr-horns",
                "horde-leveling-era-horde-ashenvale-part-2-objective-6441-quest-work",
            },
            id = "horde-leveling-era-horde-ashenvale-part-2-turnin-6441-satyr-horns",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Pixel", mapID = 1440, offMapText = "Travel to Pixel in Ashenvale.", x = 0.7306, y = 0.6148 } },
            sourceActionID = "turnin-6441-satyr-horns",
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceStep = 46,
            text = "Turn in Satyr Horns to Pixel.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 824, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 23 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-ashenvale-part-2-accept-824-je-neu-of-the-earthen-ring" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 824, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 824, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1918, state = "activeOrCompleted" } },
                                                        { all = { { item = { minCount = 1, name = "Befouled Water Globe" } }, { faction = "Horde" } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-ashenvale-part-2-turnin-824-je-neu-of-the-earthen-ring",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1918 } } },
            route = {
                { label = "Je'neu Sancrea", mapID = 1440, offMapText = "Travel to Je'neu Sancrea in Ashenvale.", x = 0.1156, y = 0.3429 },
            },
            sourceActionID = "turnin-824-je-neu-of-the-earthen-ring",
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceStep = 47,
            text = "Turn in Je'neu of the Earthen Ring to Je'neu Sancrea.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 6462, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-ashenvale-part-2-objective-6462-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 48,
            text = "For Troll Charm: Bring 8 Troll Charms to Mitsuwa at the Zoram'gar Outpost.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceActionID = "objective-6462-quest-work",
        },
        {
            complete = { quest = { id = 6462, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 19 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-ashenvale-part-2-objective-6462-quest-work" },
            id = "horde-leveling-era-horde-ashenvale-part-2-turnin-6462-troll-charm",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Mitsuwa", mapID = 1440, offMapText = "Travel to Mitsuwa in Ashenvale.", x = 0.1165, y = 0.3485 } },
            sourceActionID = "turnin-6462-troll-charm",
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceStep = 48,
            text = "Turn in Troll Charm to Mitsuwa.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 216, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 21 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-ashenvale-part-2-objective-216-1-thistlefur-avenger",
                "horde-leveling-era-horde-ashenvale-part-2-objective-216-2-thistlefur-shaman",
            },
            id = "horde-leveling-era-horde-ashenvale-part-2-turnin-216-between-a-rock-and-a-thistlefur",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Karang Amakkar", mapID = 1440, offMapText = "Travel to Karang Amakkar in Ashenvale.", x = 0.119, y = 0.3454 },
            },
            sourceActionID = "turnin-216-between-a-rock-and-a-thistlefur",
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceStep = 49,
            text = "Turn in Between a Rock and a Thistlefur to Karang Amakkar.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 6641, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-ashenvale-part-2-accept-6641-vorsha-the-lasher",
            kind = "accept",
            requiredQuests = {},
            route = { { label = "Muglash", mapID = 1440, offMapText = "Travel to Muglash in Ashenvale.", x = 0.1206, y = 0.3463 } },
            sourceStep = 50,
            text = "Accept Vorsha the Lasher from Muglash.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceActionID = "accept-6641-vorsha-the-lasher",
        },
        {
            complete = { quest = { id = 6641, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-ashenvale-part-2-accept-6641-vorsha-the-lasher" },
            id = "horde-leveling-era-horde-ashenvale-part-2-turnin-6641-vorsha-the-lasher",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Warsong Runner", mapID = 1440, offMapText = "Travel to Warsong Runner in Ashenvale.", x = 0.1222, y = 0.3421 },
            },
            sourceActionID = "turnin-6641-vorsha-the-lasher",
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceStep = 52,
            text = "Turn in Vorsha the Lasher to Warsong Runner.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 2, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-ashenvale-part-2-turnin-6383-the-ashenvale-hunt" },
            id = "horde-leveling-era-horde-ashenvale-part-2-accept-2-sharptalon-s-claw",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6383 } } },
            sourceStep = 66,
            text = "Use the Sharptalon's Claw to accept Sharptalon's Claw.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceActionID = "accept-2-sharptalon-s-claw",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { item = { name = "Sharptalon's Claw", minCount = 1 } },
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 6383, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 2, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-ashenvale-part-2-accept-2-sharptalon-s-claw" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 2, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 2, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { item = { minCount = 1, name = "Sharptalon's Claw" } },
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 6383, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-ashenvale-part-2-turnin-2-sharptalon-s-claw",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 6383 } } },
            route = {
                {
                    label = "Senani Thunderheart",
                    mapID = 1440,
                    offMapText = "Travel to Senani Thunderheart in Ashenvale.",
                    x = 0.7378,
                    y = 0.6146,
                },
            },
            sourceActionID = "turnin-2-sharptalon-s-claw",
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceStep = 67,
            text = "Turn in Sharptalon's Claw to Senani Thunderheart.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            complete = { quest = { id = 247, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 20 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-ashenvale-part-2-accept-247-the-hunt-completed",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "all", quests = { 2, 23, 24 } } },
            route = {
                {
                    label = "Senani Thunderheart",
                    mapID = 1440,
                    offMapText = "Travel to Senani Thunderheart in Ashenvale.",
                    x = 0.7378,
                    y = 0.6146,
                },
            },
            sourceStep = 67,
            text = "Accept The Hunt Completed from Senani Thunderheart.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceActionID = "accept-247-the-hunt-completed",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 247, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 247, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            all = {
                                                {
                                                    any = {
                                                        { quest = { id = 2, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { item = { name = "Sharptalon's Claw", minCount = 1 } },
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 6383, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                                {
                                                    any = {
                                                        { quest = { id = 23, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { item = { name = "Ursangous's Paw", minCount = 1 } },
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 6383, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                                {
                                                    any = {
                                                        { quest = { id = 24, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { item = { name = "Shadumbra's Head", minCount = 1 } },
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 6383, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
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
            sourceActionID = "turnin-1195-the-sacred-flame",
            sourceGuide = "leveling-era-horde-ashenvale-part-2",
            sourceStep = 76,
            text = "Turn in The Sacred Flame to Zangen Stonehoof.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
        },
        {
            checkpointQuest = 98251,
            complete = { level = { min = 18 } },
            conditions = { all = { { faction = "Horde" } } },
            id = "horde-extra-98251-level",
            kind = "note",
            requiredLevel = 18,
            text = "Reach level 18 before this visit.",
        },
        {
            id = "horde-extra-98251-accept",
            kind = "accept",
            text = "Accept Never Coming Back from Va'xug Firefure.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 18 } } } },
            route = {
                {
                    mapID = 1440,
                    x = 0.40399999999999997,
                    y = 0.614,
                    label = "Va'xug Firefure",
                    offMapText = "Travel to Va'xug Firefure in Ashenvale.",
                },
            },
            complete = { quest = { id = 98251, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-98251-level" },
        },
        {
            id = "horde-extra-98251-objective",
            kind = "objective",
            text = "Kill 6 Shadowhorn Stag and 6 Ashenvale Bear.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 18 } } } },
            route = {
                { mapID = 1440, x = 0.474, y = 0.562, label = "Ashenvale Bear", offMapText = "Travel to Ashenvale Bear in Ashenvale." },
            },
            complete = { quest = { id = 98251, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-98251-accept" },
        },
        {
            complete = { quest = { id = 98251, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 18 } } } },
            dependsOn = { "horde-extra-98251-objective" },
            id = "horde-extra-98251-turnin",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Va'xug Firefure", mapID = 1440, offMapText = "Travel to Va'xug Firefure in Ashenvale.", x = 0.404, y = 0.614 },
            },
            text = "Turn in Never Coming Back to Va'xug Firefure.",
            useClientPin = true,
            useClientText = false,
            useQuestNavigation = true,
        },
    },
})
