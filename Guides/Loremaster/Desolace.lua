local _, ns = ...

-- Source decisions: docs/loremaster/desolace.json.
-- Coordinates require a Forever client walkthrough.
ns:RegisterGuide({
    id = "loremaster-desolace",
    title = "Desolace",
    category = "Loremaster Guides",
    revision = 1,
    routeMode = "ordered",
    loremasterExpanded = true,
    goals = {
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
            complete = { quest = { id = 1453, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stranglethorn-vale-accept-1453-reclaimers-business-in-desolace",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Roetten Stonehammer",
                    mapID = 1455,
                    offMapText = "Travel to Roetten Stonehammer in Ironforge.",
                    x = 0.6791,
                    y = 0.1749,
                },
            },
            sourceStep = 68,
            text = "Accept Reclaimers' Business in Desolace from Roetten Stonehammer.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-stranglethorn-vale",
            sourceActionID = "accept-1453-reclaimers-business-in-desolace",
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
            checkpointQuest = 1453,
            complete = { level = { min = 30 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-desolace-level-before-turnin-1453-reclaimers-business-in-desolace",
            kind = "note",
            requiredLevel = 30,
            requiredQuests = {},
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "level-before-turnin-1453-reclaimers-business-in-desolace",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 1453, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-turnin-1453-reclaimers-business-in-desolace",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Kreldig Ungor", mapID = 1443, offMapText = "Travel to Kreldig Ungor in Desolace.", x = 0.662, y = 0.0963 },
            },
            sourceStep = 6,
            text = "Turn in Reclaimers' Business in Desolace to Kreldig Ungor.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "turnin-1453-reclaimers-business-in-desolace",
        },
        {
            complete = { quest = { id = 1454, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-accept-1454-the-karnitol-shipwreck",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1453 } } },
            route = {
                { label = "Kreldig Ungor", mapID = 1443, offMapText = "Travel to Kreldig Ungor in Desolace.", x = 0.662, y = 0.0963 },
            },
            sourceStep = 6,
            text = "Accept The Karnitol Shipwreck from Kreldig Ungor.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "accept-1454-the-karnitol-shipwreck",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1454, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1454, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1453, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1458, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-accept-1458-reagents-for-reclaimers-inc",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1453 } } },
            route = {
                { label = "Kreldig Ungor", mapID = 1443, offMapText = "Travel to Kreldig Ungor in Desolace.", x = 0.662, y = 0.0963 },
            },
            sourceStep = 6,
            text = "Accept Reagents for Reclaimers Inc. from Kreldig Ungor.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "accept-1458-reagents-for-reclaimers-inc",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1458, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1458, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1453, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1387, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-accept-1387-centaur-bounty",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Corporal Melkins",
                    mapID = 1443,
                    offMapText = "Travel to Corporal Melkins in Desolace.",
                    x = 0.6674,
                    y = 0.1087,
                },
            },
            sourceStep = 7,
            text = "Accept Centaur Bounty from Corporal Melkins.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "accept-1387-centaur-bounty",
        },
        {
            complete = { quest = { id = 1382, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-accept-1382-strange-alliance",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Captain Pentigast",
                    mapID = 1443,
                    offMapText = "Travel to Captain Pentigast in Desolace.",
                    x = 0.6666,
                    y = 0.1093,
                },
            },
            sourceStep = 8,
            text = "Accept Strange Alliance from Captain Pentigast.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "accept-1382-strange-alliance",
        },
        {
            complete = { quest = { id = 1437, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-accept-1437-vahlarriel-s-search",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Vahlarriel Demonslayer",
                    mapID = 1443,
                    offMapText = "Travel to Vahlarriel Demonslayer in Desolace.",
                    x = 0.6644,
                    y = 0.1182,
                },
            },
            sourceStep = 9,
            text = "Accept Vahlarriel's Search from Vahlarriel Demonslayer.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "accept-1437-vahlarriel-s-search",
        },
        {
            complete = { questObjective = { count = 10, id = 1458, index = 1, text = "Hatefury Trickster" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-desolace-accept-1458-reagents-for-reclaimers-inc" },
            id = "alliance-leveling-era-alliance-desolace-objective-1458-1-hatefury-trickster",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1453 } } },
            route = {
                { label = "Hatefury Trickster", mapID = 1443, offMapText = "Travel to Hatefury Trickster.", x = 0.694, y = 0.158 },
            },
            sourceStep = 10,
            text = "Collect 10 Hatefury Claw.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "objective-1458-1-hatefury-trickster",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1458, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1458, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1453, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 1458, index = 2, text = "Hatefury Horn" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-desolace-accept-1458-reagents-for-reclaimers-inc" },
            id = "alliance-leveling-era-alliance-desolace-objective-1458-2-hatefury-horn",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1453 } } },
            route = { { label = "Hatefury Horn", mapID = 1443, offMapText = "Travel to Hatefury Horn.", x = 0.694, y = 0.158 } },
            sourceStep = 10,
            text = "Collect 10 Hatefury Horn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "objective-1458-2-hatefury-horn",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1458, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1458, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1453, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1458, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-desolace-accept-1458-reagents-for-reclaimers-inc",
                "alliance-leveling-era-alliance-desolace-objective-1458-1-hatefury-trickster",
                "alliance-leveling-era-alliance-desolace-objective-1458-2-hatefury-horn",
            },
            id = "alliance-leveling-era-alliance-desolace-turnin-1458-reagents-for-reclaimers-inc",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1453 } } },
            route = {
                { label = "Kreldig Ungor", mapID = 1443, offMapText = "Travel to Kreldig Ungor in Desolace.", x = 0.662, y = 0.0963 },
            },
            sourceStep = 12,
            text = "Turn in Reagents for Reclaimers Inc. to Kreldig Ungor.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "turnin-1458-reagents-for-reclaimers-inc",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1458, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1458, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1453, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1459, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-accept-1459-reagents-for-reclaimers-inc",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1458 } } },
            route = {
                { label = "Kreldig Ungor", mapID = 1443, offMapText = "Travel to Kreldig Ungor in Desolace.", x = 0.662, y = 0.0963 },
            },
            sourceStep = 12,
            text = "Accept Reagents for Reclaimers Inc. from Kreldig Ungor.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "accept-1459-reagents-for-reclaimers-inc",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1459, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1459, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1458, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1453, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1437, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-desolace-accept-1437-vahlarriel-s-search" },
            id = "alliance-leveling-era-alliance-desolace-turnin-1437-vahlarriel-s-search",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Vahlarriel's Search", mapID = 1443, offMapText = "Travel to Vahlarriel's Search.", x = 0.5654, y = 0.1783 },
            },
            sourceStep = 13,
            text = "Turn in Vahlarriel's Search.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "turnin-1437-vahlarriel-s-search",
        },
        {
            complete = { quest = { id = 1465, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-accept-1465-vahlarriel-s-search",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1437 } } },
            route = {
                { label = "Vahlarriel's Search", mapID = 1443, offMapText = "Travel to Vahlarriel's Search.", x = 0.5654, y = 0.1783 },
            },
            sourceStep = 13,
            text = "Accept Vahlarriel's Search.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "accept-1465-vahlarriel-s-search",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1465, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1465, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1437, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 5741,
            complete = { level = { min = 30 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-desolace-level-before-accept-5741-sceptre-of-light",
            kind = "note",
            requiredLevel = 30,
            requiredQuests = {},
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "level-before-accept-5741-sceptre-of-light",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 5741, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-accept-5741-sceptre-of-light",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Azore Aldamort", mapID = 1443, offMapText = "Travel to Azore Aldamort in Desolace.", x = 0.3888, y = 0.2717 },
            },
            sourceStep = 14,
            text = "Accept Sceptre of Light from Azore Aldamort.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "accept-5741-sceptre-of-light",
        },
        {
            complete = { quest = { id = 1454, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-desolace-accept-1454-the-karnitol-shipwreck" },
            id = "alliance-leveling-era-alliance-desolace-turnin-1454-the-karnitol-shipwreck",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1453 } } },
            route = {
                {
                    label = "The Karnitol Shipwreck",
                    mapID = 1443,
                    offMapText = "Travel to The Karnitol Shipwreck.",
                    x = 0.3611,
                    y = 0.3045,
                },
            },
            sourceStep = 15,
            text = "Turn in The Karnitol Shipwreck.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "turnin-1454-the-karnitol-shipwreck",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1454, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1454, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1453, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1455, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-accept-1455-the-karnitol-shipwreck",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1454 } } },
            route = {
                {
                    label = "The Karnitol Shipwreck",
                    mapID = 1443,
                    offMapText = "Travel to The Karnitol Shipwreck.",
                    x = 0.3611,
                    y = 0.3045,
                },
            },
            sourceStep = 15,
            text = "Accept The Karnitol Shipwreck.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "accept-1455-the-karnitol-shipwreck",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1455, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1455, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1454, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1453, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 6161, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-accept-6161-claim-rackmore-s-treasure",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Claim Rackmore's Treasure!",
                    mapID = 1443,
                    offMapText = "Travel to Claim Rackmore's Treasure!.",
                    x = 0.3607,
                    y = 0.3041,
                },
            },
            sourceStep = 16,
            text = "Accept Claim Rackmore's Treasure!.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "accept-6161-claim-rackmore-s-treasure",
        },
        {
            complete = { questObjective = { count = 1, id = 6161, index = 1, text = "Elixir of Water Breathing" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = { "alliance-leveling-era-alliance-desolace-accept-6161-claim-rackmore-s-treasure" },
            id = "alliance-leveling-era-alliance-desolace-objective-6161-1-elixir-of-water-breathing",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Elixir of Water Breathing",
                    mapID = 1443,
                    offMapText = "Travel to Elixir of Water Breathing.",
                    x = 0.338,
                    y = 0.302,
                },
            },
            sourceStep = 17,
            text = "Collect 1 Rackmore's Silver Key.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "objective-6161-1-elixir-of-water-breathing",
        },
        {
            complete = { quest = { id = 1455, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-desolace-accept-1455-the-karnitol-shipwreck" },
            id = "alliance-leveling-era-alliance-desolace-turnin-1455-the-karnitol-shipwreck",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1454 } } },
            route = {
                { label = "Kreldig Ungor", mapID = 1443, offMapText = "Travel to Kreldig Ungor in Desolace.", x = 0.662, y = 0.0963 },
            },
            sourceStep = 18,
            text = "Turn in The Karnitol Shipwreck to Kreldig Ungor.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "turnin-1455-the-karnitol-shipwreck",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1455, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1455, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1454, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1453, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1456, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-accept-1456-the-karnitol-shipwreck",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1455 } } },
            route = {
                { label = "Kreldig Ungor", mapID = 1443, offMapText = "Travel to Kreldig Ungor in Desolace.", x = 0.662, y = 0.0963 },
            },
            sourceStep = 18,
            text = "Accept The Karnitol Shipwreck from Kreldig Ungor.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "accept-1456-the-karnitol-shipwreck",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1456, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1456, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1455, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1454, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1453, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1465, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-desolace-accept-1465-vahlarriel-s-search" },
            id = "alliance-leveling-era-alliance-desolace-turnin-1465-vahlarriel-s-search",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1437 } } },
            route = {
                {
                    label = "Vahlarriel Demonslayer",
                    mapID = 1443,
                    offMapText = "Travel to Vahlarriel Demonslayer in Desolace.",
                    x = 0.6644,
                    y = 0.1182,
                },
            },
            sourceStep = 19,
            text = "Turn in Vahlarriel's Search to Vahlarriel Demonslayer.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "turnin-1465-vahlarriel-s-search",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1465, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1465, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1437, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1438, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-accept-1438-vahlarriel-s-search",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1465 } } },
            route = {
                {
                    label = "Vahlarriel Demonslayer",
                    mapID = 1443,
                    offMapText = "Travel to Vahlarriel Demonslayer in Desolace.",
                    x = 0.6644,
                    y = 0.1182,
                },
            },
            sourceStep = 19,
            text = "Accept Vahlarriel's Search from Vahlarriel Demonslayer.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "accept-1438-vahlarriel-s-search",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1438, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1438, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1465, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1437, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 5741, index = 1, text = "Burning Blade Seer" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = { "alliance-leveling-era-alliance-desolace-accept-5741-sceptre-of-light" },
            id = "alliance-leveling-era-alliance-desolace-objective-5741-1-burning-blade-seer",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Burning Blade Seer", mapID = 1443, offMapText = "Travel to Burning Blade Seer.", x = 0.5517, y = 0.3015 },
            },
            sourceStep = 20,
            text = "Collect 1 Sceptre of Light.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "objective-5741-1-burning-blade-seer",
        },
        {
            complete = { quest = { id = 1438, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-desolace-accept-1438-vahlarriel-s-search" },
            id = "alliance-leveling-era-alliance-desolace-turnin-1438-vahlarriel-s-search",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1465 } } },
            route = {
                { label = "Dalinda Malem", mapID = 1443, offMapText = "Travel to Dalinda Malem in Desolace.", x = 0.5486, y = 0.2613 },
            },
            sourceStep = 21,
            text = "Turn in Vahlarriel's Search to Dalinda Malem.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "turnin-1438-vahlarriel-s-search",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1438, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1438, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1465, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1437, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1439, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-accept-1439-search-for-tyranis",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1438 } } },
            route = {
                { label = "Dalinda Malem", mapID = 1443, offMapText = "Travel to Dalinda Malem in Desolace.", x = 0.5486, y = 0.2613 },
            },
            sourceStep = 21,
            text = "Accept Search for Tyranis from Dalinda Malem.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "accept-1439-search-for-tyranis",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1439, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1439, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1438, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1465, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1437, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 1439, index = 1, text = "Tyranis Malem" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-desolace-accept-1439-search-for-tyranis" },
            id = "alliance-leveling-era-alliance-desolace-objective-1439-1-tyranis-malem",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1438 } } },
            route = { { label = "Tyranis Malem", mapID = 1443, offMapText = "Travel to Tyranis Malem.", x = 0.5301, y = 0.2908 } },
            sourceStep = 22,
            text = "Collect 1 Tyranis' Pendant.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "objective-1439-1-tyranis-malem",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1439, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1439, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1438, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1465, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1437, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1439, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-desolace-accept-1439-search-for-tyranis",
                "alliance-leveling-era-alliance-desolace-objective-1439-1-tyranis-malem",
            },
            id = "alliance-leveling-era-alliance-desolace-turnin-1439-search-for-tyranis",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1438 } } },
            route = {
                { label = "Dalinda Malem", mapID = 1443, offMapText = "Travel to Dalinda Malem in Desolace.", x = 0.5486, y = 0.2613 },
            },
            sourceStep = 23,
            text = "Turn in Search for Tyranis to Dalinda Malem.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "turnin-1439-search-for-tyranis",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1439, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1439, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1438, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1465, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1437, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1440, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-accept-1440-return-to-vahlarriel",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1439 } } },
            route = {
                { label = "Dalinda Malem", mapID = 1443, offMapText = "Travel to Dalinda Malem in Desolace.", x = 0.5486, y = 0.2613 },
            },
            sourceStep = 23,
            text = "Accept Return to Vahlarriel from Dalinda Malem.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "accept-1440-return-to-vahlarriel",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1440, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1440, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1439, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1438, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1465, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 1437, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1440, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-desolace-accept-1440-return-to-vahlarriel" },
            id = "alliance-leveling-era-alliance-desolace-objective-1440-reviewed-escort",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1439 } } },
            route = {
                { label = "Escort destination", mapID = 1443, offMapText = "Travel to Escort destination.", x = 0.5826, y = 0.3095 },
            },
            sourceStep = 24,
            text = "Follow and protect Dalinda Malem out of the fortress until she reaches safety.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "objective-1440-reviewed-escort",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1440, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1440, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1439, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1438, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1465, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 1437, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 5501,
            complete = { level = { min = 33 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-desolace-level-before-accept-5501-bone-collector",
            kind = "note",
            requiredLevel = 33,
            requiredQuests = {},
            text = "Reach level 33 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "level-before-accept-5501-bone-collector",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 5501, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 33 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-accept-5501-bone-collector",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Bibbly F'utzbuckle",
                    mapID = 1443,
                    offMapText = "Travel to Bibbly F'utzbuckle in Desolace.",
                    x = 0.6233,
                    y = 0.3898,
                },
            },
            sourceStep = 25,
            text = "Accept Bone Collector from Bibbly F'utzbuckle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "accept-5501-bone-collector",
        },
        {
            complete = { questObjective = { count = 15, id = 1387, index = 1, text = "Magram Outrunner" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-desolace-accept-1387-centaur-bounty" },
            id = "alliance-leveling-era-alliance-desolace-objective-1387-1-magram-outrunner",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Magram Outrunner", mapID = 1443, offMapText = "Travel to Magram Outrunner.", x = 0.69, y = 0.692 } },
            sourceStep = 26,
            text = "Collect 15 Centaur Ear.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "objective-1387-1-magram-outrunner",
        },
        {
            complete = { quest = { id = 5561, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-accept-5561-kodo-roundup",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Smeed Scrabblescrew",
                    mapID = 1443,
                    offMapText = "Travel to Smeed Scrabblescrew in Desolace.",
                    x = 0.6086,
                    y = 0.6186,
                },
            },
            sourceStep = 27,
            text = "Accept Kodo Roundup from Smeed Scrabblescrew.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "accept-5561-kodo-roundup",
        },
        {
            complete = { questObjective = { id = 5561, index = 1, text = "Kodo Kombobulator" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = { "alliance-leveling-era-alliance-desolace-accept-5561-kodo-roundup" },
            id = "alliance-leveling-era-alliance-desolace-objective-5561-1-kodo-kombobulator",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Kodo Kombobulator", mapID = 1443, offMapText = "Travel to Kodo Kombobulator.", x = 0.544, y = 0.603 },
            },
            text = "Use Kodo Kombobulator.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "objective-5561-1-kodo-kombobulator",
        },
        {
            complete = { quest = { id = 5561, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-desolace-accept-5561-kodo-roundup",
                "alliance-leveling-era-alliance-desolace-objective-5561-1-kodo-kombobulator",
            },
            id = "alliance-leveling-era-alliance-desolace-turnin-5561-kodo-roundup",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Smeed Scrabblescrew",
                    mapID = 1443,
                    offMapText = "Travel to Smeed Scrabblescrew in Desolace.",
                    x = 0.6086,
                    y = 0.6186,
                },
            },
            sourceStep = 29,
            text = "Turn in Kodo Roundup to Smeed Scrabblescrew.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "turnin-5561-kodo-roundup",
        },
        {
            complete = { questObjective = { count = 3, id = 1459, index = 2, text = "Aged Kodo Hide" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-desolace-accept-1459-reagents-for-reclaimers-inc" },
            id = "alliance-leveling-era-alliance-desolace-objective-1459-2-aged-kodo-hide",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1458 } } },
            route = { { label = "Aged Kodo Hide", mapID = 1443, offMapText = "Travel to Aged Kodo Hide.", x = 0.544, y = 0.603 } },
            sourceStep = 30,
            text = "Collect 3 Aged Kodo Hide.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "objective-1459-2-aged-kodo-hide",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1459, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1459, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1458, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1453, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 5501, index = 1, text = "Kodo Bone" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 33 } } } },
            dependsOn = { "alliance-leveling-era-alliance-desolace-accept-5501-bone-collector" },
            id = "alliance-leveling-era-alliance-desolace-objective-5501-1-kodo-bone",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Kodo Bone", mapID = 1443, offMapText = "Travel to Kodo Bone.", x = 0.544, y = 0.603 } },
            sourceStep = 31,
            text = "Collect 10 Kodo Bone.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "objective-5501-1-kodo-bone",
        },
        {
            complete = { quest = { id = 1382, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-desolace-accept-1382-strange-alliance" },
            id = "alliance-leveling-era-alliance-desolace-objective-1382-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 32,
            text = "For Strange Alliance: Gain a Friendly reputation with the Gelkis, then speak with Uthek the Wise.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "objective-1382-quest-work",
        },
        {
            complete = { quest = { id = 1382, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-desolace-accept-1382-strange-alliance",
                "alliance-leveling-era-alliance-desolace-objective-1382-quest-work",
            },
            id = "alliance-leveling-era-alliance-desolace-turnin-1382-strange-alliance",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Uthek the Wise", mapID = 1443, offMapText = "Travel to Uthek the Wise in Desolace.", x = 0.3623, y = 0.7925 },
            },
            sourceStep = 32,
            text = "Turn in Strange Alliance to Uthek the Wise.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "turnin-1382-strange-alliance",
        },
        {
            complete = { quest = { id = 1384, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-accept-1384-raid-on-the-kolkar",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1382 } } },
            route = {
                { label = "Uthek the Wise", mapID = 1443, offMapText = "Travel to Uthek the Wise in Desolace.", x = 0.3623, y = 0.7925 },
            },
            sourceStep = 32,
            text = "Accept Raid on the Kolkar from Uthek the Wise.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "accept-1384-raid-on-the-kolkar",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1384, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1384, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1382, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1387, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-desolace-accept-1387-centaur-bounty",
                "alliance-leveling-era-alliance-desolace-objective-1387-1-magram-outrunner",
            },
            id = "alliance-leveling-era-alliance-desolace-turnin-1387-centaur-bounty",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Corporal Melkins",
                    mapID = 1443,
                    offMapText = "Travel to Corporal Melkins in Desolace.",
                    x = 0.6674,
                    y = 0.1087,
                },
            },
            sourceStep = 34,
            text = "Turn in Centaur Bounty to Corporal Melkins.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "turnin-1387-centaur-bounty",
        },
        {
            complete = { quest = { id = 1440, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-desolace-accept-1440-return-to-vahlarriel",
                "alliance-leveling-era-alliance-desolace-objective-1440-reviewed-escort",
            },
            id = "alliance-leveling-era-alliance-desolace-turnin-1440-return-to-vahlarriel",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1439 } } },
            route = {
                {
                    label = "Vahlarriel Demonslayer",
                    mapID = 1443,
                    offMapText = "Travel to Vahlarriel Demonslayer in Desolace.",
                    x = 0.6644,
                    y = 0.1182,
                },
            },
            sourceStep = 35,
            text = "Turn in Return to Vahlarriel to Vahlarriel Demonslayer.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "turnin-1440-return-to-vahlarriel",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1440, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1440, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1439, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1438, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1465, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 1437, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 1384, index = 1, text = "Kolkar Ambusher" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-desolace-accept-1384-raid-on-the-kolkar" },
            id = "alliance-leveling-era-alliance-desolace-objective-1384-1-kolkar-ambusher",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1382 } } },
            route = { { label = "Kolkar Ambusher", mapID = 1443, offMapText = "Travel to Kolkar Ambusher.", x = 0.684, y = 0.39 } },
            sourceStep = 36,
            text = "Collect 10 Crude Charm.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "objective-1384-1-kolkar-ambusher",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1384, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1384, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1382, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5501, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 33 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-desolace-accept-5501-bone-collector",
                "alliance-leveling-era-alliance-desolace-objective-5501-1-kodo-bone",
            },
            id = "alliance-leveling-era-alliance-desolace-turnin-5501-bone-collector",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Bibbly F'utzbuckle",
                    mapID = 1443,
                    offMapText = "Travel to Bibbly F'utzbuckle in Desolace.",
                    x = 0.6233,
                    y = 0.3898,
                },
            },
            sourceStep = 37,
            text = "Turn in Bone Collector to Bibbly F'utzbuckle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "turnin-5501-bone-collector",
        },
        {
            complete = { quest = { id = 5741, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-desolace-accept-5741-sceptre-of-light",
                "alliance-leveling-era-alliance-desolace-objective-5741-1-burning-blade-seer",
            },
            id = "alliance-leveling-era-alliance-desolace-turnin-5741-sceptre-of-light",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Azore Aldamort", mapID = 1443, offMapText = "Travel to Azore Aldamort in Desolace.", x = 0.3889, y = 0.2717 },
            },
            sourceStep = 38,
            text = "Turn in Sceptre of Light to Azore Aldamort.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "turnin-5741-sceptre-of-light",
        },
        {
            complete = { quest = { id = 6027, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-accept-6027-book-of-the-ancients",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5741 } } },
            route = {
                { label = "Azore Aldamort", mapID = 1443, offMapText = "Travel to Azore Aldamort in Desolace.", x = 0.3889, y = 0.2717 },
            },
            sourceStep = 38,
            text = "Accept Book of the Ancients from Azore Aldamort.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "accept-6027-book-of-the-ancients",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6027, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6027, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 5741, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 6027, index = 1, text = "Lord Kragaru" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = { "alliance-leveling-era-alliance-desolace-accept-6027-book-of-the-ancients" },
            id = "alliance-leveling-era-alliance-desolace-objective-6027-1-lord-kragaru",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5741 } } },
            route = { { label = "Lord Kragaru", mapID = 1443, offMapText = "Travel to Lord Kragaru.", x = 0.2819, y = 0.0662 } },
            sourceStep = 39,
            text = "Collect 1 Book of the Ancients.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "objective-6027-1-lord-kragaru",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6027, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6027, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 5741, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 1456, index = 1, text = "Karnitol's Satchel" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-desolace-accept-1456-the-karnitol-shipwreck" },
            id = "alliance-leveling-era-alliance-desolace-objective-1456-1-karnitol-s-satchel",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1455 } } },
            route = {
                { label = "Karnitol's Satchel", mapID = 1443, offMapText = "Travel to Karnitol's Satchel.", x = 0.284, y = 0.122 },
            },
            sourceStep = 40,
            text = "Collect 1 Karnitol's Satchel.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "objective-1456-1-karnitol-s-satchel",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1456, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1456, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1455, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1454, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1453, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 6161, index = 2, text = "Rackmore's Golden Key" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = { "alliance-leveling-era-alliance-desolace-accept-6161-claim-rackmore-s-treasure" },
            id = "alliance-leveling-era-alliance-desolace-objective-6161-2-rackmore-s-golden-key",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Rackmore's Golden Key", mapID = 1443, offMapText = "Travel to Rackmore's Golden Key.", x = 0.292, y = 0.136 },
            },
            sourceStep = 41,
            text = "Collect 1 Rackmore's Golden Key.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "objective-6161-2-rackmore-s-golden-key",
        },
        {
            complete = { quest = { id = 6161, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-desolace-accept-6161-claim-rackmore-s-treasure",
                "alliance-leveling-era-alliance-desolace-objective-6161-1-elixir-of-water-breathing",
                "alliance-leveling-era-alliance-desolace-objective-6161-2-rackmore-s-golden-key",
            },
            id = "alliance-leveling-era-alliance-desolace-turnin-6161-claim-rackmore-s-treasure",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Claim Rackmore's Treasure!",
                    mapID = 1443,
                    offMapText = "Travel to Claim Rackmore's Treasure!.",
                    x = 0.3,
                    y = 0.087,
                },
            },
            sourceStep = 42,
            text = "Turn in Claim Rackmore's Treasure!.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "turnin-6161-claim-rackmore-s-treasure",
        },
        {
            complete = { quest = { id = 6027, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-desolace-accept-6027-book-of-the-ancients",
                "alliance-leveling-era-alliance-desolace-objective-6027-1-lord-kragaru",
            },
            id = "alliance-leveling-era-alliance-desolace-turnin-6027-book-of-the-ancients",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5741 } } },
            route = {
                { label = "Azore Aldamort", mapID = 1443, offMapText = "Travel to Azore Aldamort in Desolace.", x = 0.3889, y = 0.2717 },
            },
            sourceStep = 44,
            text = "Turn in Book of the Ancients to Azore Aldamort.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "turnin-6027-book-of-the-ancients",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6027, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6027, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 5741, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1384, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-desolace-accept-1384-raid-on-the-kolkar",
                "alliance-leveling-era-alliance-desolace-objective-1384-1-kolkar-ambusher",
            },
            id = "alliance-leveling-era-alliance-desolace-turnin-1384-raid-on-the-kolkar",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1382 } } },
            route = {
                { label = "Uthek the Wise", mapID = 1443, offMapText = "Travel to Uthek the Wise in Desolace.", x = 0.3622, y = 0.7925 },
            },
            sourceStep = 45,
            text = "Turn in Raid on the Kolkar to Uthek the Wise.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "turnin-1384-raid-on-the-kolkar",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1384, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1384, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 1382, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1370, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-accept-1370-stealing-supplies",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1368, 1384 } } },
            route = {
                { label = "Uthek the Wise", mapID = 1443, offMapText = "Travel to Uthek the Wise in Desolace.", x = 0.3622, y = 0.7925 },
            },
            sourceStep = 45,
            text = "Accept Stealing Supplies from Uthek the Wise.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "accept-1370-stealing-supplies",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1370, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1370, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                { quest = { id = 1368, state = "completed" } },
                                                {
                                                    any = {
                                                        { quest = { id = 1384, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1382, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 1368 },
        },
        {
            complete = { questObjective = { count = 6, id = 1370, index = 1, text = "Sack of Meat" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = { "alliance-leveling-era-alliance-desolace-accept-1370-stealing-supplies" },
            id = "alliance-leveling-era-alliance-desolace-objective-1370-1-sack-of-meat",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1368, 1384 } } },
            route = { { label = "Sack of Meat", mapID = 1443, offMapText = "Travel to Sack of Meat.", x = 0.709, y = 0.753 } },
            sourceStep = 46,
            text = "Collect 6 Crudely Dried Meat.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "objective-1370-1-sack-of-meat",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1370, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1370, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                { quest = { id = 1368, state = "completed" } },
                                                {
                                                    any = {
                                                        { quest = { id = 1384, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1382, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 1368 },
        },
        {
            complete = { quest = { id = 1370, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-desolace-accept-1370-stealing-supplies",
                "alliance-leveling-era-alliance-desolace-objective-1370-1-sack-of-meat",
            },
            id = "alliance-leveling-era-alliance-desolace-turnin-1370-stealing-supplies",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1368, 1384 } } },
            route = {
                { label = "Uthek the Wise", mapID = 1443, offMapText = "Travel to Uthek the Wise in Desolace.", x = 0.3622, y = 0.7925 },
            },
            sourceStep = 47,
            text = "Turn in Stealing Supplies to Uthek the Wise.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "turnin-1370-stealing-supplies",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1370, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1370, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                { quest = { id = 1368, state = "completed" } },
                                                {
                                                    any = {
                                                        { quest = { id = 1384, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1382, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 1368 },
        },
        {
            complete = { quest = { id = 1373, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-accept-1373-ongeku",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1370 } } },
            route = {
                { label = "Uthek the Wise", mapID = 1443, offMapText = "Travel to Uthek the Wise in Desolace.", x = 0.3622, y = 0.7925 },
            },
            sourceStep = 47,
            text = "Accept Ongeku from Uthek the Wise.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "accept-1373-ongeku",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1373, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1373, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1370, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 1368, state = "completed" } },
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1384, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1382, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1456, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-desolace-accept-1456-the-karnitol-shipwreck",
                "alliance-leveling-era-alliance-desolace-objective-1456-1-karnitol-s-satchel",
            },
            id = "alliance-leveling-era-alliance-desolace-turnin-1456-the-karnitol-shipwreck",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1455 } } },
            route = {
                { label = "Kreldig Ungor", mapID = 1443, offMapText = "Travel to Kreldig Ungor in Desolace.", x = 0.662, y = 0.0963 },
            },
            sourceStep = 49,
            text = "Turn in The Karnitol Shipwreck to Kreldig Ungor.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "turnin-1456-the-karnitol-shipwreck",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1456, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1456, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1455, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1454, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1453, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1457, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-accept-1457-the-karnitol-shipwreck",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1456 } } },
            route = {
                { label = "Kreldig Ungor", mapID = 1443, offMapText = "Travel to Kreldig Ungor in Desolace.", x = 0.662, y = 0.0963 },
            },
            sourceStep = 49,
            text = "Accept The Karnitol Shipwreck from Kreldig Ungor.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "accept-1457-the-karnitol-shipwreck",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1457, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1457, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1456, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1455, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1454, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 1453, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 7, id = 1459, index = 1, text = "Scorpashi Venom" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-desolace-accept-1459-reagents-for-reclaimers-inc" },
            id = "alliance-leveling-era-alliance-desolace-objective-1459-1-scorpashi-venom",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1458 } } },
            route = { { label = "Scorpashi Venom", mapID = 1443, offMapText = "Travel to Scorpashi Venom.", x = 0.676, y = 0.18 } },
            sourceStep = 50,
            text = "Kill Scorpashi scorpions in Desolace and collect 7 Scorpashi Venom.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "objective-1459-1-scorpashi-venom",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1459, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1459, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1458, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1453, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1459, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-desolace-accept-1459-reagents-for-reclaimers-inc",
                "alliance-leveling-era-alliance-desolace-objective-1459-2-aged-kodo-hide",
                "alliance-leveling-era-alliance-desolace-objective-1459-1-scorpashi-venom",
            },
            id = "alliance-leveling-era-alliance-desolace-turnin-1459-reagents-for-reclaimers-inc",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1458 } } },
            route = {
                { label = "Kreldig Ungor", mapID = 1443, offMapText = "Travel to Kreldig Ungor in Desolace.", x = 0.662, y = 0.0963 },
            },
            sourceStep = 51,
            text = "Turn in Reagents for Reclaimers Inc. to Kreldig Ungor.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace",
            sourceActionID = "turnin-1459-reagents-for-reclaimers-inc",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1459, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1459, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1458, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1453, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
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
            complete = { questObjective = { count = 1, id = 1373, index = 1, text = "Ongeku" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-objective-1373-1-ongeku",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1370 } } },
            route = { { label = "Ongeku", mapID = 1435, offMapText = "Travel to Ongeku.", x = 0.6131, y = 0.2325 } },
            sourceStep = 27,
            text = "Collect 1 Draenethyst Shard.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "objective-1373-1-ongeku",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1373, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1373, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1370, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 1368, state = "completed" } },
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1384, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1382, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-6141-level",
            kind = "note",
            checkpointQuest = 6141,
            text = "Reach level 39 before this visit.",
            conditions = { all = { { faction = "Alliance" } } },
            complete = { level = { min = 39 } },
            requiredLevel = 39,
            alternativeQuests = { 261 },
        },
        {
            id = "alliance-extra-6141-accept",
            kind = "accept",
            text = "Accept Brother Anton from Brother Crowley.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 34 } } } },
            route = {
                {
                    mapID = 1453,
                    x = 0.424,
                    y = 0.244,
                    label = "Brother Crowley",
                    offMapText = "Travel to Brother Crowley in Stormwind City.",
                },
            },
            complete = { quest = { id = 6141, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            alternativeQuests = { 261 },
            dependsOn = { "alliance-extra-6141-level" },
        },
        {
            complete = { quest = { id = 1457, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-swamp-of-sorrows-turnin-1457-the-karnitol-shipwreck",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1456 } } },
            route = {
                {
                    label = "Roetten Stonehammer",
                    mapID = 1455,
                    offMapText = "Travel to Roetten Stonehammer in Ironforge.",
                    x = 0.6791,
                    y = 0.1749,
                },
            },
            sourceStep = 46,
            text = "Turn in The Karnitol Shipwreck to Roetten Stonehammer.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-swamp-of-sorrows",
            sourceActionID = "turnin-1457-the-karnitol-shipwreck",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1457, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1457, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1456, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1455, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1454, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 1453, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
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
            checkpointQuest = 261,
            complete = { level = { min = 34 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-desolace-part-2-level-before-accept-261-down-the-scarlet-path",
            kind = "note",
            requiredLevel = 34,
            requiredQuests = {},
            text = "Reach level 34 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace-part-2",
            sourceActionID = "level-before-accept-261-down-the-scarlet-path",
            dependsOn = {},
        },
        {
            id = "alliance-extra-6132-level",
            kind = "note",
            checkpointQuest = 6132,
            text = "Reach level 39 before this visit.",
            conditions = { all = { { faction = "Alliance" } } },
            complete = { level = { min = 39 } },
            requiredLevel = 39,
        },
        {
            id = "alliance-extra-6132-accept",
            kind = "accept",
            text = "Accept Get Me Out of Here! from Melizza Brimbuzzle.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 34 } } } },
            route = {
                {
                    mapID = 1443,
                    x = 0.33799999999999997,
                    y = 0.534,
                    label = "Melizza Brimbuzzle",
                    offMapText = "Travel to Melizza Brimbuzzle in Desolace.",
                },
            },
            complete = { quest = { id = 6132, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-6132-level" },
        },
        {
            id = "alliance-extra-6132-objective",
            kind = "objective",
            text = "Escort Melizza Brimbuzzle safely.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 34 } } } },
            route = {},
            complete = { quest = { id = 6132, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-6132-accept" },
            useClientPin = true,
        },
        {
            id = "alliance-extra-6132-turnin",
            kind = "turnin",
            text = "Turn in Get Me Out of Here! to Hornizz Brimbuzzle.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 34 } } } },
            route = {
                {
                    mapID = 1443,
                    x = 0.478,
                    y = 0.618,
                    label = "Hornizz Brimbuzzle",
                    offMapText = "Travel to Hornizz Brimbuzzle in Desolace.",
                },
            },
            complete = { quest = { id = 6132, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-6132-objective" },
        },
        {
            id = "alliance-extra-5943-level",
            kind = "note",
            checkpointQuest = 5943,
            text = "Reach level 38 before this visit.",
            conditions = { all = { { faction = "Alliance" } } },
            complete = { level = { min = 38 } },
            requiredLevel = 38,
        },
        {
            id = "alliance-extra-5943-accept",
            kind = "accept",
            text = "Accept Gizelton Caravan from Rigger Gizelton.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 32 } } } },
            route = {
                {
                    mapID = 1443,
                    x = 0.40399999999999997,
                    y = 0.794,
                    label = "Rigger Gizelton",
                    offMapText = "Travel to Rigger Gizelton in Desolace.",
                },
            },
            complete = { quest = { id = 5943, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-5943-level" },
        },
        {
            id = "alliance-extra-5943-objective",
            kind = "objective",
            text = "Escort the Gizelton Caravan through Mannoroc Coven.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 32 } } } },
            route = {},
            complete = { quest = { id = 5943, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-5943-accept" },
            useClientPin = true,
        },
        {
            id = "alliance-extra-5943-turnin",
            kind = "turnin",
            text = "Turn in Gizelton Caravan to Smeed Scrabblescrew.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 32 } } } },
            route = {
                {
                    mapID = 1443,
                    x = 0.608,
                    y = 0.618,
                    label = "Smeed Scrabblescrew",
                    offMapText = "Travel to Smeed Scrabblescrew in Desolace.",
                },
            },
            complete = { quest = { id = 5943, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-5943-objective" },
        },
        {
            id = "alliance-extra-5821-level",
            kind = "note",
            checkpointQuest = 5821,
            text = "Reach level 35 before this visit.",
            conditions = { all = { { faction = "Alliance" } } },
            complete = { level = { min = 35 } },
            requiredLevel = 35,
        },
        {
            id = "alliance-extra-5821-accept",
            kind = "accept",
            text = "Accept Bodyguard for Hire from Cork Gizelton.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                { mapID = 1443, x = 0.604, y = 0.38, label = "Cork Gizelton", offMapText = "Travel to Cork Gizelton in Desolace." },
            },
            complete = { quest = { id = 5821, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-5821-level" },
        },
        {
            id = "alliance-extra-5821-objective",
            kind = "objective",
            text = "Escort the Gizelton Caravan past the Kolkar Centaur village.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {},
            complete = { quest = { id = 5821, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-5821-accept" },
            useClientPin = true,
        },
        {
            id = "alliance-extra-5821-turnin",
            kind = "turnin",
            text = "Turn in Bodyguard for Hire to Smeed Scrabblescrew.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1443,
                    x = 0.608,
                    y = 0.618,
                    label = "Smeed Scrabblescrew",
                    offMapText = "Travel to Smeed Scrabblescrew in Desolace.",
                },
            },
            complete = { quest = { id = 5821, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-5821-objective" },
        },
        {
            id = "alliance-extra-6141-objective",
            kind = "objective",
            text = "Speak with Brother Anton in Desolace. Follow the quest log for the destination.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 34 } } } },
            route = {},
            complete = { quest = { id = 6141, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            alternativeQuests = { 261 },
            dependsOn = { "alliance-extra-6141-accept" },
            useClientPin = true,
        },
        {
            id = "alliance-extra-6141-turnin",
            kind = "turnin",
            text = "Turn in Brother Anton to Brother Anton.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 34 } } } },
            route = {
                { mapID = 1443, x = 0.664, y = 0.078, label = "Brother Anton", offMapText = "Travel to Brother Anton in Desolace." },
            },
            complete = { quest = { id = 6141, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            alternativeQuests = { 261 },
            dependsOn = { "alliance-extra-6141-objective" },
        },
        {
            complete = { quest = { id = 261, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 34 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-part-2-accept-261-down-the-scarlet-path",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Brother Anton", mapID = 1443, offMapText = "Travel to Brother Anton in Desolace.", x = 0.6652, y = 0.0791 },
            },
            sourceStep = 2,
            text = "Accept Down the Scarlet Path from Brother Anton.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace-part-2",
            sourceActionID = "accept-261-down-the-scarlet-path",
        },
        {
            complete = { quest = { id = 1466, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-part-2-accept-1466-reagents-for-reclaimers-inc",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1459 } } },
            route = {
                { label = "Kreldig Ungor", mapID = 1443, offMapText = "Travel to Kreldig Ungor in Desolace.", x = 0.662, y = 0.0963 },
            },
            sourceStep = 3,
            text = "Accept Reagents for Reclaimers Inc. from Kreldig Ungor.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace-part-2",
            sourceActionID = "accept-1466-reagents-for-reclaimers-inc",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1466, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1466, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1459, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1458, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1453, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 6134,
            complete = { level = { min = 34 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-desolace-part-2-level-before-accept-6134-ghost-o-plasm-round-up",
            kind = "note",
            requiredLevel = 34,
            requiredQuests = {},
            text = "Reach level 34 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace-part-2",
            sourceActionID = "level-before-accept-6134-ghost-o-plasm-round-up",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 6134, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 34 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-part-2-accept-6134-ghost-o-plasm-round-up",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Hornizz Brimbuzzle",
                    mapID = 1443,
                    offMapText = "Travel to Hornizz Brimbuzzle in Desolace.",
                    x = 0.4783,
                    y = 0.6182,
                },
            },
            sourceStep = 4,
            text = "Accept Ghost-o-plasm Round Up from Hornizz Brimbuzzle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace-part-2",
            sourceActionID = "accept-6134-ghost-o-plasm-round-up",
        },
        {
            complete = { quest = { id = 1373, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-part-2-objective-1373-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1370 } } },
            route = {
                { label = "Draenethyst Shard", mapID = 1435, offMapText = "Travel to Draenethyst Shard.", x = 0.6131, y = 0.2325 },
            },
            sourceStep = 5,
            text = "For Ongeku: Maintain your reputation with the Gelkis, and bring a Draenethyst Shard to Uthek the Wise in the Gelkis Village in Desolace.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace-part-2",
            sourceActionID = "objective-1373-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1373, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1373, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1370, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 1368, state = "completed" } },
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1384, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1382, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1373, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-desolace-part-2-objective-1373-quest-work",
                "alliance-leveling-era-alliance-swamp-of-sorrows-objective-1373-1-ongeku",
            },
            id = "alliance-leveling-era-alliance-desolace-part-2-turnin-1373-ongeku",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1370 } } },
            route = {
                { label = "Uthek the Wise", mapID = 1443, offMapText = "Travel to Uthek the Wise in Desolace.", x = 0.3622, y = 0.7925 },
            },
            sourceStep = 5,
            text = "Turn in Ongeku to Uthek the Wise.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace-part-2",
            sourceActionID = "turnin-1373-ongeku",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1373, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1373, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1370, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        { quest = { id = 1368, state = "completed" } },
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1384, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1382, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1374, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-part-2-accept-1374-khan-jehn",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1373 } } },
            route = {
                { label = "Uthek the Wise", mapID = 1443, offMapText = "Travel to Uthek the Wise in Desolace.", x = 0.3622, y = 0.7925 },
            },
            sourceStep = 5,
            text = "Accept Khan Jehn from Uthek the Wise.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace-part-2",
            sourceActionID = "accept-1374-khan-jehn",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1374, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1374, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1373, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1370, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 1368, state = "completed" } },
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1384, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 1382, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 1466, index = 3, text = "Doomwarder Captain" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-desolace-part-2-accept-1466-reagents-for-reclaimers-inc" },
            id = "alliance-leveling-era-alliance-desolace-part-2-objective-1466-3-doomwarder-captain",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1459 } } },
            route = {
                { label = "Doomwarder Captain", mapID = 1443, offMapText = "Travel to Doomwarder Captain.", x = 0.504, y = 0.824 },
            },
            sourceStep = 7,
            text = "Collect 10 Doomwarder Blood.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace-part-2",
            sourceActionID = "objective-1466-3-doomwarder-captain",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1466, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1466, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1459, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1458, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1453, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 1466, index = 1, text = "Felhound Brain" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-desolace-part-2-accept-1466-reagents-for-reclaimers-inc" },
            id = "alliance-leveling-era-alliance-desolace-part-2-objective-1466-1-felhound-brain",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1459 } } },
            route = { { label = "Felhound Brain", mapID = 1443, offMapText = "Travel to Felhound Brain.", x = 0.534, y = 0.772 } },
            sourceStep = 8,
            text = "Collect 10 Felhound Brain.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace-part-2",
            sourceActionID = "objective-1466-1-felhound-brain",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1466, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1466, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1459, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1458, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1453, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 1466, index = 2, text = "Nether Wing" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-desolace-part-2-accept-1466-reagents-for-reclaimers-inc" },
            id = "alliance-leveling-era-alliance-desolace-part-2-objective-1466-2-nether-wing",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1459 } } },
            route = { { label = "Nether Wing", mapID = 1443, offMapText = "Travel to Nether Wing.", x = 0.542, y = 0.778 } },
            sourceStep = 9,
            text = "Collect 10 Nether Wing.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace-part-2",
            sourceActionID = "objective-1466-2-nether-wing",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1466, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1466, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1459, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1458, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1453, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 8, id = 6134, index = 1, text = "Crate of Ghost Magnets" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 34 } } } },
            dependsOn = { "alliance-leveling-era-alliance-desolace-part-2-accept-6134-ghost-o-plasm-round-up" },
            id = "alliance-leveling-era-alliance-desolace-part-2-objective-6134-1-crate-of-ghost-magnets",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Crate of Ghost Magnets",
                    mapID = 1443,
                    offMapText = "Travel to Crate of Ghost Magnets.",
                    x = 0.6381,
                    y = 0.9127,
                },
            },
            sourceStep = 10,
            text = "Use the Crate of Ghost Magnets beside the large bones in southern Desolace. Kill the Magrami Spectres it attracts and collect 8 Ghost-o-plasm. Pull them away from the magnet before they become hostile.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace-part-2",
            sourceActionID = "objective-6134-1-crate-of-ghost-magnets",
        },
        {
            complete = { questObjective = { count = 30, id = 261, index = 1, text = "Undead Ravager" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 34 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-desolace-part-2-accept-261-down-the-scarlet-path" },
            id = "alliance-leveling-era-alliance-desolace-part-2-objective-261-1-undead-ravager",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Undead Ravager", mapID = 1443, offMapText = "Travel to Undead Ravager.", x = 0.646, y = 0.912 } },
            sourceStep = 11,
            text = "Kill 30 Undead Ravager.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace-part-2",
            sourceActionID = "objective-261-1-undead-ravager",
        },
        {
            complete = { questObjective = { count = 1, id = 1374, index = 1, text = "Khan Jehn" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = { "alliance-leveling-era-alliance-desolace-part-2-accept-1374-khan-jehn" },
            id = "alliance-leveling-era-alliance-desolace-part-2-objective-1374-1-khan-jehn",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1373 } } },
            route = { { label = "Khan Jehn", mapID = 1443, offMapText = "Travel to Khan Jehn.", x = 0.6639, y = 0.8008 } },
            sourceStep = 13,
            text = "Collect 1 Khan Jehn's Head.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace-part-2",
            sourceActionID = "objective-1374-1-khan-jehn",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1374, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1374, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1373, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1370, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 1368, state = "completed" } },
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1384, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 1382, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 6134, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 34 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-desolace-part-2-accept-6134-ghost-o-plasm-round-up",
                "alliance-leveling-era-alliance-desolace-part-2-objective-6134-1-crate-of-ghost-magnets",
            },
            id = "alliance-leveling-era-alliance-desolace-part-2-turnin-6134-ghost-o-plasm-round-up",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Hornizz Brimbuzzle",
                    mapID = 1443,
                    offMapText = "Travel to Hornizz Brimbuzzle in Desolace.",
                    x = 0.4783,
                    y = 0.6183,
                },
            },
            sourceStep = 14,
            text = "Turn in Ghost-o-plasm Round Up to Hornizz Brimbuzzle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace-part-2",
            sourceActionID = "turnin-6134-ghost-o-plasm-round-up",
        },
        {
            complete = { quest = { id = 1374, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-desolace-part-2-accept-1374-khan-jehn",
                "alliance-leveling-era-alliance-desolace-part-2-objective-1374-1-khan-jehn",
            },
            id = "alliance-leveling-era-alliance-desolace-part-2-turnin-1374-khan-jehn",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1373 } } },
            route = {
                { label = "Uthek the Wise", mapID = 1443, offMapText = "Travel to Uthek the Wise in Desolace.", x = 0.3622, y = 0.7925 },
            },
            sourceStep = 15,
            text = "Turn in Khan Jehn to Uthek the Wise.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace-part-2",
            sourceActionID = "turnin-1374-khan-jehn",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1374, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1374, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1373, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1370, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                { quest = { id = 1368, state = "completed" } },
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1384, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 1382, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 261, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 34 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-desolace-part-2-accept-261-down-the-scarlet-path",
                "alliance-leveling-era-alliance-desolace-part-2-objective-261-1-undead-ravager",
            },
            id = "alliance-leveling-era-alliance-desolace-part-2-turnin-261-down-the-scarlet-path",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Brother Anton", mapID = 1443, offMapText = "Travel to Brother Anton in Desolace.", x = 0.6652, y = 0.0791 },
            },
            sourceStep = 26,
            text = "Turn in Down the Scarlet Path to Brother Anton.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace-part-2",
            sourceActionID = "turnin-261-down-the-scarlet-path",
        },
        {
            complete = { quest = { id = 1052, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 34 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-part-2-accept-1052-down-the-scarlet-path",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 261 } } },
            route = {
                { label = "Brother Anton", mapID = 1443, offMapText = "Travel to Brother Anton in Desolace.", x = 0.6652, y = 0.0791 },
            },
            sourceStep = 26,
            text = "Accept Down the Scarlet Path from Brother Anton.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace-part-2",
            sourceActionID = "accept-1052-down-the-scarlet-path",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1052, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1052, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 261, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1466, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-desolace-part-2-accept-1466-reagents-for-reclaimers-inc",
                "alliance-leveling-era-alliance-desolace-part-2-objective-1466-3-doomwarder-captain",
                "alliance-leveling-era-alliance-desolace-part-2-objective-1466-1-felhound-brain",
                "alliance-leveling-era-alliance-desolace-part-2-objective-1466-2-nether-wing",
            },
            id = "alliance-leveling-era-alliance-desolace-part-2-turnin-1466-reagents-for-reclaimers-inc",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1459 } } },
            route = {
                { label = "Kreldig Ungor", mapID = 1443, offMapText = "Travel to Kreldig Ungor in Desolace.", x = 0.662, y = 0.0963 },
            },
            sourceStep = 27,
            text = "Turn in Reagents for Reclaimers Inc. to Kreldig Ungor.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace-part-2",
            sourceActionID = "turnin-1466-reagents-for-reclaimers-inc",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1466, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1466, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1459, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1458, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1453, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1467, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-desolace-part-2-accept-1467-reagents-for-reclaimers-inc",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1466 } } },
            route = {
                { label = "Kreldig Ungor", mapID = 1443, offMapText = "Travel to Kreldig Ungor in Desolace.", x = 0.662, y = 0.0963 },
            },
            sourceStep = 27,
            text = "Accept Reagents for Reclaimers Inc. from Kreldig Ungor.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-desolace-part-2",
            sourceActionID = "accept-1467-reagents-for-reclaimers-inc",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1467, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1467, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1466, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1459, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1458, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 1453, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1052, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 34 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-desolace-part-2-accept-1052-down-the-scarlet-path" },
            id = "alliance-leveling-era-alliance-desolace-part-2-turnin-1052-down-the-scarlet-path",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 261 } } },
            route = {
                {
                    label = "Raleigh the Devout",
                    mapID = 1424,
                    offMapText = "Travel to Raleigh the Devout in Hillsbrad Foothills.",
                    x = 0.5147,
                    y = 0.5835,
                },
            },
            sourceStep = 29,
            text = "Turn in Down the Scarlet Path to Raleigh the Devout.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-desolace-part-2",
            sourceActionID = "turnin-1052-down-the-scarlet-path",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1052, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1052, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = { { any = { { quest = { id = 261, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                        },
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
            checkpointQuest = 1467,
            complete = { level = { min = 30 } },
            conditions = { all = { { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-badlands-level-before-turnin-1467-reagents-for-reclaimers-inc",
            kind = "note",
            requiredLevel = 30,
            requiredQuests = {},
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "level-before-turnin-1467-reagents-for-reclaimers-inc",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1467, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1467, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1466, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1459, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1458, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 1453, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1467, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-badlands-turnin-1467-reagents-for-reclaimers-inc",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1466 } } },
            route = {
                {
                    label = "Roetten Stonehammer",
                    mapID = 1455,
                    offMapText = "Travel to Roetten Stonehammer in Ironforge.",
                    x = 0.6791,
                    y = 0.1749,
                },
            },
            sourceStep = 4,
            text = "Turn in Reagents for Reclaimers Inc. to Roetten Stonehammer.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-badlands",
            sourceActionID = "turnin-1467-reagents-for-reclaimers-inc",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1467, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1467, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1466, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1459, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Alliance" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1458, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Alliance" },
                                                                                                                {
                                                                                                                    any = { { any = { { quest = { id = 1453, state = "activeOrCompleted" } }, { all = { { faction = "Alliance" } } } } } },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-79235-level",
            kind = "note",
            checkpointQuest = 79235,
            text = "Reach level 40 before this visit.",
            conditions = { all = { { faction = "Alliance" } } },
            complete = { level = { min = 40 } },
            requiredLevel = 40,
        },
        {
            id = "alliance-extra-79235-accept",
            kind = "accept",
            text = "Accept On the Lam from Bibbly F'utzbuckle.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1443,
                    x = 0.622,
                    y = 0.38799999999999996,
                    label = "Bibbly F'utzbuckle",
                    offMapText = "Travel to Bibbly F'utzbuckle in Desolace.",
                },
            },
            complete = { quest = { id = 79235, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-79235-level" },
        },
        {
            id = "alliance-extra-79235-turnin",
            kind = "turnin",
            text = "Turn in On the Lam to Tokal.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = { { mapID = 1434, x = 0.27, y = 0.772, label = "Tokal", offMapText = "Travel to Tokal in Stranglethorn Vale." } },
            complete = { quest = { id = 79235, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-79235-accept" },
        },
        {
            id = "alliance-extra-93224-level",
            kind = "note",
            checkpointQuest = 93224,
            text = "Reach level 40 before this visit.",
            conditions = { all = { { faction = "Alliance" } } },
            complete = { level = { min = 40 } },
            requiredLevel = 40,
        },
        {
            id = "alliance-extra-93224-accept",
            kind = "accept",
            text = "Accept Carved Centaur Totems from Captain Pentigast.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1443,
                    x = 0.6659999999999999,
                    y = 0.11,
                    label = "Captain Pentigast",
                    offMapText = "Travel to Captain Pentigast in Desolace.",
                },
            },
            complete = { quest = { id = 93224, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-93224-level" },
        },
        {
            id = "alliance-extra-93224-objective",
            kind = "objective",
            text = "Slay Kolkar centaur in Desolace and collect 5 Carved Centaur Totems.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1443,
                    x = 0.6920000000000001,
                    y = 0.42200000000000004,
                    label = "Kolkar Centaur",
                    offMapText = "Travel to Kolkar Centaur in Desolace.",
                },
            },
            complete = { quest = { id = 93224, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-93224-accept" },
        },
        {
            id = "alliance-extra-93224-turnin",
            kind = "turnin",
            text = "Turn in Carved Centaur Totems to Captain Pentigast.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1443,
                    x = 0.6659999999999999,
                    y = 0.11,
                    label = "Captain Pentigast",
                    offMapText = "Travel to Captain Pentigast in Desolace.",
                },
            },
            complete = { quest = { id = 93224, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-93224-objective" },
        },
        {
            id = "alliance-extra-97284-level",
            kind = "note",
            checkpointQuest = 97284,
            text = "Reach level 33 before this visit.",
            conditions = { all = { { faction = "Alliance" } } },
            complete = { level = { min = 33 } },
            requiredLevel = 33,
        },
        {
            id = "alliance-extra-97284-accept",
            kind = "accept",
            text = "Accept Vahlarriel's Vengeance from Vahlarriel Demonslayer.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1443,
                    x = 0.664,
                    y = 0.11800000000000001,
                    label = "Vahlarriel Demonslayer",
                    offMapText = "Travel to Vahlarriel Demonslayer in Desolace.",
                },
            },
            complete = { quest = { id = 97284, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-97284-level" },
        },
        {
            id = "alliance-extra-97284-objective",
            kind = "objective",
            text = "Slay Burning Blade orcs at Thunder Axe Fortress in the Desolace.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1443,
                    x = 0.552,
                    y = 0.3,
                    label = "Burning Blade Augur",
                    offMapText = "Travel to Burning Blade Augur in Desolace.",
                },
            },
            complete = { quest = { id = 97284, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-97284-accept" },
        },
        {
            id = "alliance-extra-97284-turnin",
            kind = "turnin",
            text = "Turn in Vahlarriel's Vengeance to Vahlarriel Demonslayer.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1443,
                    x = 0.664,
                    y = 0.11800000000000001,
                    label = "Vahlarriel Demonslayer",
                    offMapText = "Travel to Vahlarriel Demonslayer in Desolace.",
                },
            },
            complete = { quest = { id = 97284, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-97284-objective" },
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
            checkpointQuest = 1431,
            complete = { level = { min = 30 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-thousand-needles-level-before-accept-1431-alliance-relations",
            kind = "note",
            requiredLevel = 30,
            requiredQuests = {},
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "level-before-accept-1431-alliance-relations",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 1431, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-accept-1431-alliance-relations",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Craven Drok", mapID = 1454, offMapText = "Travel to Craven Drok in Orgrimmar.", x = 0.4676, y = 0.5043 },
            },
            sourceStep = 73,
            text = "Accept Alliance Relations from Craven Drok.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "accept-1431-alliance-relations",
        },
        {
            complete = { quest = { id = 1431, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-thousand-needles-accept-1431-alliance-relations" },
            id = "horde-leveling-era-horde-thousand-needles-turnin-1431-alliance-relations",
            kind = "turnin",
            requiredQuests = {},
            route = { { label = "Keldran", mapID = 1454, offMapText = "Travel to Keldran in Orgrimmar.", x = 0.2256, y = 0.5263 } },
            sourceStep = 83,
            text = "Turn in Alliance Relations to Keldran.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "turnin-1431-alliance-relations",
        },
        {
            complete = { quest = { id = 1432, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-thousand-needles-accept-1432-alliance-relations",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1431 } } },
            route = { { label = "Keldran", mapID = 1454, offMapText = "Travel to Keldran in Orgrimmar.", x = 0.2256, y = 0.5263 } },
            sourceStep = 83,
            text = "Accept Alliance Relations from Keldran.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-thousand-needles",
            sourceActionID = "accept-1432-alliance-relations",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1432, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1432, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 1431, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
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
            complete = {
                any = { { item = { minCount = 1, name = "Flayed Demon Skin" } }, { quest = { id = 1480, state = "activeOrCompleted" } } },
            },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1480, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "Flayed Demon Skin" } }, { faction = "Horde" } } },
                    },
                },
            },
            id = "horde-leveling-era-horde-desolace-loot-starter-before-accept-1480-the-corrupter",
            instructionOnly = true,
            kind = "note",
            referenceQuest = 1480,
            requiredQuests = {},
            text = "If Flayed Demon Skin drops from Burning Blade Augurs, Summoners, or Seers, keep it for the optional Corrupter chain.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "loot-starter-before-accept-1480-the-corrupter",
        },
        {
            id = "horde-extra-1361-level",
            kind = "note",
            checkpointQuest = 1361,
            text = "Reach level 32 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 32 } },
            requiredLevel = 32,
            alternativeQuests = { 1362 },
        },
        {
            id = "horde-extra-1361-accept",
            kind = "accept",
            text = "Accept Regthar Deathgate from Nazgrel.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            route = { { mapID = 1454, x = 0.324, y = 0.36, label = "Nazgrel", offMapText = "Travel to Nazgrel in Orgrimmar." } },
            complete = { quest = { id = 1361, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            alternativeQuests = { 1362 },
            dependsOn = { "horde-extra-1361-level" },
        },
        {
            checkpointQuest = 1480,
            complete = { level = { min = 25 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1480, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "Flayed Demon Skin" } }, { faction = "Horde" } } },
                    },
                },
            },
            id = "horde-leveling-era-horde-desolace-level-before-accept-1480-the-corrupter",
            kind = "note",
            requiredLevel = 25,
            requiredQuests = {},
            text = "Reach level 25 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "level-before-accept-1480-the-corrupter",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 1480, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1480, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "Flayed Demon Skin" } }, { faction = "Horde" } } },
                    },
                },
            },
            id = "horde-leveling-era-horde-desolace-accept-1480-the-corrupter",
            kind = "accept",
            requiredQuests = {},
            sourceStep = 2,
            text = "Use the Flayed Demon Skin to accept The Corrupter.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "accept-1480-the-corrupter",
        },
        {
            checkpointQuest = 5741,
            complete = { level = { min = 30 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-desolace-level-before-accept-5741-sceptre-of-light",
            kind = "note",
            requiredLevel = 30,
            requiredQuests = {},
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "level-before-accept-5741-sceptre-of-light",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 5741, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-desolace-accept-5741-sceptre-of-light",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Azore Aldamort", mapID = 1443, offMapText = "Travel to Azore Aldamort in Desolace.", x = 0.3888, y = 0.2717 },
            },
            sourceStep = 4,
            text = "Accept Sceptre of Light from Azore Aldamort.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "accept-5741-sceptre-of-light",
        },
        {
            complete = { quest = { id = 1432, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-desolace-turnin-1432-alliance-relations",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1431 } } },
            route = {
                {
                    label = "Takata Steelblade",
                    mapID = 1443,
                    offMapText = "Travel to Takata Steelblade in Desolace.",
                    x = 0.5257,
                    y = 0.5439,
                },
            },
            sourceStep = 6,
            text = "Turn in Alliance Relations to Takata Steelblade.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "turnin-1432-alliance-relations",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1432, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1432, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 1431, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1433, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-desolace-accept-1433-alliance-relations",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1432 } } },
            route = {
                {
                    label = "Takata Steelblade",
                    mapID = 1443,
                    offMapText = "Travel to Takata Steelblade in Desolace.",
                    x = 0.5257,
                    y = 0.5439,
                },
            },
            sourceStep = 6,
            text = "Accept Alliance Relations from Takata Steelblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "accept-1433-alliance-relations",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1433, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1433, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1432, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1431, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1434, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-desolace-accept-1434-befouled-by-satyr",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1432 } } },
            route = {
                {
                    label = "Takata Steelblade",
                    mapID = 1443,
                    offMapText = "Travel to Takata Steelblade in Desolace.",
                    x = 0.5257,
                    y = 0.5439,
                },
            },
            sourceStep = 6,
            text = "Accept Befouled by Satyr from Takata Steelblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "accept-1434-befouled-by-satyr",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1434, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1434, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1432, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1431, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1433, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-desolace-accept-1433-alliance-relations" },
            id = "horde-leveling-era-horde-desolace-turnin-1433-alliance-relations",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1432 } } },
            route = {
                {
                    label = "Maurin Bonesplitter",
                    mapID = 1443,
                    offMapText = "Travel to Maurin Bonesplitter in Desolace.",
                    x = 0.5224,
                    y = 0.5344,
                },
            },
            sourceStep = 7,
            text = "Turn in Alliance Relations to Maurin Bonesplitter.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "turnin-1433-alliance-relations",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1433, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1433, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1432, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1431, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1435, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-desolace-accept-1435-the-burning-of-spirits",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1433 } } },
            route = {
                {
                    label = "Maurin Bonesplitter",
                    mapID = 1443,
                    offMapText = "Travel to Maurin Bonesplitter in Desolace.",
                    x = 0.5224,
                    y = 0.5344,
                },
            },
            sourceStep = 7,
            text = "Accept The Burning of Spirits from Maurin Bonesplitter.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "accept-1435-the-burning-of-spirits",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1435, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1435, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1433, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1432, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1431, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1480, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-desolace-accept-1480-the-corrupter" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1480, state = "activeOrCompleted" } },
                        { all = { { item = { minCount = 1, name = "Flayed Demon Skin" } }, { faction = "Horde" } } },
                    },
                },
            },
            id = "horde-leveling-era-horde-desolace-turnin-1480-the-corrupter",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Maurin Bonesplitter",
                    mapID = 1443,
                    offMapText = "Travel to Maurin Bonesplitter in Desolace.",
                    x = 0.5224,
                    y = 0.5344,
                },
            },
            sourceStep = 7,
            text = "Turn in The Corrupter to Maurin Bonesplitter.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "turnin-1480-the-corrupter",
        },
        {
            complete = { quest = { id = 1481, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 1481, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1480, state = "activeOrCompleted" } },
                                                        { all = { { item = { minCount = 1, name = "Flayed Demon Skin" } }, { faction = "Horde" } } },
                                                    },
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
                                { quest = { id = 1481, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 1481, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Horde" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 1480, state = "activeOrCompleted" } },
                                                                { all = { { item = { name = "Flayed Demon Skin", minCount = 1 } }, { faction = "Horde" } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-desolace-accept-1481-the-corrupter",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1480 } } },
            route = {
                {
                    label = "Maurin Bonesplitter",
                    mapID = 1443,
                    offMapText = "Travel to Maurin Bonesplitter in Desolace.",
                    x = 0.5224,
                    y = 0.5344,
                },
            },
            sourceStep = 7,
            text = "Accept The Corrupter from Maurin Bonesplitter.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "accept-1481-the-corrupter",
        },
        {
            id = "horde-extra-1361-objective",
            kind = "objective",
            text = "Speak with Regthar Deathgate. Follow the quest log for the destination.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            route = {},
            complete = { quest = { id = 1361, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            alternativeQuests = { 1362 },
            dependsOn = { "horde-extra-1361-accept" },
            useClientPin = true,
        },
        {
            id = "horde-extra-1361-turnin",
            kind = "turnin",
            text = "Turn in Regthar Deathgate to Regthar Deathgate.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1413,
                    x = 0.45399999999999996,
                    y = 0.284,
                    label = "Regthar Deathgate",
                    offMapText = "Travel to Regthar Deathgate in The Barrens.",
                },
            },
            complete = { quest = { id = 1361, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            alternativeQuests = { 1362 },
            dependsOn = { "horde-extra-1361-objective" },
        },
        {
            id = "horde-extra-1362-level",
            kind = "note",
            checkpointQuest = 1362,
            text = "Reach level 32 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 32 } },
            requiredLevel = 32,
            alternativeQuests = { 1365 },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1362, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1362, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 1361, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-1362-accept",
            kind = "accept",
            text = "Accept The Kolkar of Desolace from Regthar Deathgate.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1413,
                    x = 0.45399999999999996,
                    y = 0.284,
                    label = "Regthar Deathgate",
                    offMapText = "Travel to Regthar Deathgate in The Barrens.",
                },
            },
            complete = { quest = { id = 1362, state = "activeOrCompleted" } },
            requiredQuests = { { mode = "any", quests = { 1361 } } },
            useClientText = false,
            alternativeQuests = { 1365 },
            dependsOn = { "horde-extra-1362-level" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1362, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1362, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 1361, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-1362-objective",
            kind = "objective",
            text = "Speak with Felgur Twocuts at Ghost Walker Post in Desolace. Follow the quest log for the destination.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            route = {},
            complete = { quest = { id = 1362, state = "complete" } },
            requiredQuests = { { mode = "any", quests = { 1361 } } },
            useClientText = false,
            alternativeQuests = { 1365 },
            dependsOn = { "horde-extra-1362-accept" },
            useClientPin = true,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1362, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1362, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 1361, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-1362-turnin",
            kind = "turnin",
            text = "Turn in The Kolkar of Desolace to Felgur Twocuts.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            route = {
                { mapID = 1443, x = 0.562, y = 0.594, label = "Felgur Twocuts", offMapText = "Travel to Felgur Twocuts in Desolace." },
            },
            complete = { quest = { id = 1362, state = "completed" } },
            requiredQuests = { { mode = "any", quests = { 1361 } } },
            useClientText = false,
            alternativeQuests = { 1365 },
            dependsOn = { "horde-extra-1362-objective" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1362, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1362, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 1361, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1365, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-desolace-accept-1365-khan-dez-hepah",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Felgur Twocuts", mapID = 1443, offMapText = "Travel to Felgur Twocuts in Desolace.", x = 0.562, y = 0.5957 },
            },
            sourceStep = 8,
            text = "Accept Khan Dez'hepah from Felgur Twocuts.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "accept-1365-khan-dez-hepah",
        },
        {
            complete = { quest = { id = 1368, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-desolace-accept-1368-gelkis-alliance",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Gurda Wildmane", mapID = 1443, offMapText = "Travel to Gurda Wildmane in Desolace.", x = 0.5629, y = 0.5968 },
            },
            sourceStep = 9,
            text = "Accept Gelkis Alliance from Gurda Wildmane.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "accept-1368-gelkis-alliance",
        },
        {
            complete = { questObjective = { count = 1, id = 1365, index = 1, text = "Khan Dez'hepah" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-desolace-accept-1365-khan-dez-hepah" },
            id = "horde-leveling-era-horde-desolace-objective-1365-1-khan-dez-hepah",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Khan Dez'hepah", mapID = 1443, offMapText = "Travel to Khan Dez'hepah.", x = 0.7468, y = 0.4884 } },
            sourceStep = 10,
            text = "Collect 1 Khan Dez'hepah's Head.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "objective-1365-1-khan-dez-hepah",
        },
        {
            complete = { questObjective = { count = 1, id = 1481, index = 1, text = "Hatefury Shadowstalker" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-desolace-accept-1481-the-corrupter" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 1481, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1480, state = "activeOrCompleted" } },
                                                        { all = { { item = { minCount = 1, name = "Flayed Demon Skin" } }, { faction = "Horde" } } },
                                                    },
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
                                { quest = { id = 1481, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 1481, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Horde" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 1480, state = "activeOrCompleted" } },
                                                                { all = { { item = { name = "Flayed Demon Skin", minCount = 1 } }, { faction = "Horde" } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-desolace-objective-1481-1-hatefury-shadowstalker",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1480 } } },
            route = {
                {
                    label = "Hatefury Shadowstalker",
                    mapID = 1443,
                    offMapText = "Travel to Hatefury Shadowstalker.",
                    x = 0.724,
                    y = 0.242,
                },
            },
            sourceStep = 11,
            text = "Collect 1 Shadowstalker Scalp.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "objective-1481-1-hatefury-shadowstalker",
        },
        {
            complete = { questObjective = { count = 7, id = 1434, index = 1, text = "Hatefury Rogue" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-desolace-accept-1434-befouled-by-satyr" },
            id = "horde-leveling-era-horde-desolace-objective-1434-1-hatefury-rogue",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1432 } } },
            route = { { label = "Hatefury Rogue", mapID = 1443, offMapText = "Travel to Hatefury Rogue.", x = 0.724, y = 0.242 } },
            sourceStep = 12,
            text = "Kill 7 Hatefury Rogue.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "objective-1434-1-hatefury-rogue",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1434, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1434, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1432, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1431, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 7, id = 1434, index = 2, text = "Hatefury Felsworn" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-desolace-accept-1434-befouled-by-satyr" },
            id = "horde-leveling-era-horde-desolace-objective-1434-2-hatefury-felsworn",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1432 } } },
            route = {
                { label = "Hatefury Felsworn", mapID = 1443, offMapText = "Travel to Hatefury Felsworn.", x = 0.724, y = 0.242 },
            },
            sourceStep = 12,
            text = "Kill 7 Hatefury Felsworn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "objective-1434-2-hatefury-felsworn",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1434, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1434, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1432, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1431, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 7, id = 1434, index = 3, text = "Hatefury Betrayer" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-desolace-accept-1434-befouled-by-satyr" },
            id = "horde-leveling-era-horde-desolace-objective-1434-3-hatefury-betrayer",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1432 } } },
            route = {
                { label = "Hatefury Betrayer", mapID = 1443, offMapText = "Travel to Hatefury Betrayer.", x = 0.724, y = 0.242 },
            },
            sourceStep = 12,
            text = "Kill 7 Hatefury Betrayer.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "objective-1434-3-hatefury-betrayer",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1434, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1434, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1432, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1431, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 7, id = 1434, index = 4, text = "Hatefury Hellcaller" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-desolace-accept-1434-befouled-by-satyr" },
            id = "horde-leveling-era-horde-desolace-objective-1434-4-hatefury-hellcaller",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1432 } } },
            route = {
                { label = "Hatefury Hellcaller", mapID = 1443, offMapText = "Travel to Hatefury Hellcaller.", x = 0.724, y = 0.242 },
            },
            sourceStep = 12,
            text = "Kill 7 Hatefury Hellcaller.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "objective-1434-4-hatefury-hellcaller",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1434, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1434, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1432, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1431, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 5501,
            complete = { level = { min = 33 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-desolace-level-before-accept-5501-bone-collector",
            kind = "note",
            requiredLevel = 33,
            requiredQuests = {},
            text = "Reach level 33 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "level-before-accept-5501-bone-collector",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 5501, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 33 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-desolace-accept-5501-bone-collector",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Bibbly F'utzbuckle",
                    mapID = 1443,
                    offMapText = "Travel to Bibbly F'utzbuckle in Desolace.",
                    x = 0.6233,
                    y = 0.3898,
                },
            },
            sourceStep = 13,
            text = "Accept Bone Collector from Bibbly F'utzbuckle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "accept-5501-bone-collector",
        },
        {
            complete = { quest = { id = 1434, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-desolace-accept-1434-befouled-by-satyr",
                "horde-leveling-era-horde-desolace-objective-1434-1-hatefury-rogue",
                "horde-leveling-era-horde-desolace-objective-1434-2-hatefury-felsworn",
                "horde-leveling-era-horde-desolace-objective-1434-3-hatefury-betrayer",
                "horde-leveling-era-horde-desolace-objective-1434-4-hatefury-hellcaller",
            },
            id = "horde-leveling-era-horde-desolace-turnin-1434-befouled-by-satyr",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1432 } } },
            route = {
                {
                    label = "Takata Steelblade",
                    mapID = 1443,
                    offMapText = "Travel to Takata Steelblade in Desolace.",
                    x = 0.5257,
                    y = 0.5438,
                },
            },
            sourceStep = 14,
            text = "Turn in Befouled by Satyr to Takata Steelblade.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "turnin-1434-befouled-by-satyr",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1434, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1434, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1432, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = { { any = { { quest = { id = 1431, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1481, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-desolace-accept-1481-the-corrupter",
                "horde-leveling-era-horde-desolace-objective-1481-1-hatefury-shadowstalker",
            },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 1481, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1480, state = "activeOrCompleted" } },
                                                        { all = { { item = { minCount = 1, name = "Flayed Demon Skin" } }, { faction = "Horde" } } },
                                                    },
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
                                { quest = { id = 1481, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 1481, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Horde" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 1480, state = "activeOrCompleted" } },
                                                                { all = { { item = { name = "Flayed Demon Skin", minCount = 1 } }, { faction = "Horde" } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-desolace-turnin-1481-the-corrupter",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1480 } } },
            route = {
                {
                    label = "Maurin Bonesplitter",
                    mapID = 1443,
                    offMapText = "Travel to Maurin Bonesplitter in Desolace.",
                    x = 0.5225,
                    y = 0.5345,
                },
            },
            sourceStep = 15,
            text = "Turn in The Corrupter to Maurin Bonesplitter.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "turnin-1481-the-corrupter",
        },
        {
            complete = { quest = { id = 1482, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 1482, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1481, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1480, state = "activeOrCompleted" } },
                                                                                { all = { { item = { minCount = 1, name = "Flayed Demon Skin" } }, { faction = "Horde" } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 1482, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 1482, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Horde" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 1481, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 1480, state = "activeOrCompleted" } },
                                                                                        { all = { { item = { name = "Flayed Demon Skin", minCount = 1 } }, { faction = "Horde" } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-desolace-accept-1482-the-corrupter",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1481 } } },
            route = {
                {
                    label = "Maurin Bonesplitter",
                    mapID = 1443,
                    offMapText = "Travel to Maurin Bonesplitter in Desolace.",
                    x = 0.5225,
                    y = 0.5345,
                },
            },
            sourceStep = 15,
            text = "Accept The Corrupter from Maurin Bonesplitter.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "accept-1482-the-corrupter",
        },
        {
            complete = { quest = { id = 1365, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-desolace-accept-1365-khan-dez-hepah",
                "horde-leveling-era-horde-desolace-objective-1365-1-khan-dez-hepah",
            },
            id = "horde-leveling-era-horde-desolace-turnin-1365-khan-dez-hepah",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Felgur Twocuts", mapID = 1443, offMapText = "Travel to Felgur Twocuts in Desolace.", x = 0.562, y = 0.5956 },
            },
            sourceStep = 16,
            text = "Turn in Khan Dez'hepah to Felgur Twocuts.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "turnin-1365-khan-dez-hepah",
        },
        {
            complete = { quest = { id = 1366, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-desolace-accept-1366-centaur-bounty",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1365 } } },
            route = {
                { label = "Felgur Twocuts", mapID = 1443, offMapText = "Travel to Felgur Twocuts in Desolace.", x = 0.562, y = 0.5956 },
            },
            sourceStep = 16,
            text = "Accept Centaur Bounty from Felgur Twocuts.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "accept-1366-centaur-bounty",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1366, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1366, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 1365, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 15, id = 1366, index = 1, text = "Magram Outrunner" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-desolace-accept-1366-centaur-bounty" },
            id = "horde-leveling-era-horde-desolace-objective-1366-1-magram-outrunner",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1365 } } },
            route = { { label = "Magram Outrunner", mapID = 1443, offMapText = "Travel to Magram Outrunner.", x = 0.69, y = 0.692 } },
            sourceStep = 17,
            text = "Collect 15 Centaur Ear.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "objective-1366-1-magram-outrunner",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1366, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1366, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 1365, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5561, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-desolace-accept-5561-kodo-roundup",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Smeed Scrabblescrew",
                    mapID = 1443,
                    offMapText = "Travel to Smeed Scrabblescrew in Desolace.",
                    x = 0.6086,
                    y = 0.6186,
                },
            },
            sourceStep = 18,
            text = "Accept Kodo Roundup from Smeed Scrabblescrew.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "accept-5561-kodo-roundup",
        },
        {
            complete = { questObjective = { id = 5561, index = 1, text = "Kodo Kombobulator" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = { "horde-leveling-era-horde-desolace-accept-5561-kodo-roundup" },
            id = "horde-leveling-era-horde-desolace-objective-5561-1-kodo-kombobulator",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Kodo Kombobulator", mapID = 1443, offMapText = "Travel to Kodo Kombobulator.", x = 0.544, y = 0.603 },
            },
            text = "Use Kodo Kombobulator.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "objective-5561-1-kodo-kombobulator",
        },
        {
            complete = { quest = { id = 5561, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = {
                "horde-leveling-era-horde-desolace-accept-5561-kodo-roundup",
                "horde-leveling-era-horde-desolace-objective-5561-1-kodo-kombobulator",
            },
            id = "horde-leveling-era-horde-desolace-turnin-5561-kodo-roundup",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Smeed Scrabblescrew",
                    mapID = 1443,
                    offMapText = "Travel to Smeed Scrabblescrew in Desolace.",
                    x = 0.6086,
                    y = 0.6186,
                },
            },
            sourceStep = 20,
            text = "Turn in Kodo Roundup to Smeed Scrabblescrew.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "turnin-5561-kodo-roundup",
        },
        {
            complete = { questObjective = { count = 10, id = 5501, index = 1, text = "Kodo Bone" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 33 } } } },
            dependsOn = { "horde-leveling-era-horde-desolace-accept-5501-bone-collector" },
            id = "horde-leveling-era-horde-desolace-objective-5501-1-kodo-bone",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Kodo Bone", mapID = 1443, offMapText = "Travel to Kodo Bone.", x = 0.544, y = 0.603 } },
            sourceStep = 21,
            text = "Collect 10 Kodo Bone.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "objective-5501-1-kodo-bone",
        },
        {
            complete = { quest = { id = 1366, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-desolace-accept-1366-centaur-bounty",
                "horde-leveling-era-horde-desolace-objective-1366-1-magram-outrunner",
            },
            id = "horde-leveling-era-horde-desolace-turnin-1366-centaur-bounty",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1365 } } },
            route = {
                { label = "Felgur Twocuts", mapID = 1443, offMapText = "Travel to Felgur Twocuts in Desolace.", x = 0.5619, y = 0.5956 },
            },
            sourceStep = 22,
            text = "Turn in Centaur Bounty to Felgur Twocuts.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "turnin-1366-centaur-bounty",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1366, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1366, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 1365, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1368, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-desolace-accept-1368-gelkis-alliance" },
            id = "horde-leveling-era-horde-desolace-objective-1368-quest-work",
            kind = "objective",
            requiredQuests = {},
            sourceStep = 23,
            text = "For Gelkis Alliance: Gain a Friendly reputation with the Gelkis, then speak with Uthek the Wise.",
            useClientPin = true,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "objective-1368-quest-work",
        },
        {
            complete = { quest = { id = 1368, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-desolace-accept-1368-gelkis-alliance",
                "horde-leveling-era-horde-desolace-objective-1368-quest-work",
            },
            id = "horde-leveling-era-horde-desolace-turnin-1368-gelkis-alliance",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Uthek the Wise", mapID = 1443, offMapText = "Travel to Uthek the Wise in Desolace.", x = 0.3623, y = 0.7925 },
            },
            sourceStep = 23,
            text = "Turn in Gelkis Alliance to Uthek the Wise.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "turnin-1368-gelkis-alliance",
        },
        {
            complete = { quest = { id = 1370, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-desolace-accept-1370-stealing-supplies",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1368, 1384 } } },
            route = {
                { label = "Uthek the Wise", mapID = 1443, offMapText = "Travel to Uthek the Wise in Desolace.", x = 0.3623, y = 0.7925 },
            },
            sourceStep = 23,
            text = "Accept Stealing Supplies from Uthek the Wise.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "accept-1370-stealing-supplies",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1370, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1370, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                { any = { { quest = { id = 1368, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } },
                                                { quest = { id = 1384, state = "completed" } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 1384 },
        },
        {
            complete = { quest = { id = 5381, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 32 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-desolace-accept-5381-hand-of-iruxos",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Taiga Wisemane", mapID = 1443, offMapText = "Travel to Taiga Wisemane in Desolace.", x = 0.2581, y = 0.6822 },
            },
            sourceStep = 24,
            text = "Accept Hand of Iruxos from Taiga Wisemane.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "accept-5381-hand-of-iruxos",
        },
        {
            complete = { quest = { id = 6143, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 32 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-desolace-accept-6143-other-fish-to-fry",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Drulzegar Skraghook",
                    mapID = 1443,
                    offMapText = "Travel to Drulzegar Skraghook in Desolace.",
                    x = 0.2332,
                    y = 0.7287,
                },
            },
            sourceStep = 26,
            text = "Accept Other Fish to Fry from Drulzegar Skraghook.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "accept-6143-other-fish-to-fry",
        },
        {
            complete = { quest = { id = 6142, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 31 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-desolace-accept-6142-clam-bait",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Mai'Lahii", mapID = 1443, offMapText = "Travel to Mai'Lahii in Desolace.", x = 0.2265, y = 0.7197 },
            },
            sourceStep = 27,
            text = "Accept Clam Bait from Mai'Lahii.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "accept-6142-clam-bait",
        },
        {
            complete = { quest = { id = 5501, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 33 } } } },
            dependsOn = {
                "horde-leveling-era-horde-desolace-accept-5501-bone-collector",
                "horde-leveling-era-horde-desolace-objective-5501-1-kodo-bone",
            },
            id = "horde-leveling-era-horde-desolace-turnin-5501-bone-collector",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Bibbly F'utzbuckle",
                    mapID = 1443,
                    offMapText = "Travel to Bibbly F'utzbuckle in Desolace.",
                    x = 0.6233,
                    y = 0.3898,
                },
            },
            sourceStep = 32,
            text = "Turn in Bone Collector to Bibbly F'utzbuckle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "turnin-5501-bone-collector",
        },
        {
            complete = { questObjective = { count = 1, id = 5741, index = 1, text = "Burning Blade Seer" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = { "horde-leveling-era-horde-desolace-accept-5741-sceptre-of-light" },
            id = "horde-leveling-era-horde-desolace-objective-5741-1-burning-blade-seer",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Burning Blade Seer", mapID = 1443, offMapText = "Travel to Burning Blade Seer.", x = 0.5517, y = 0.3015 },
            },
            sourceStep = 33,
            text = "Collect 1 Sceptre of Light.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "objective-5741-1-burning-blade-seer",
        },
        {
            complete = { questObjective = { count = 1, id = 5381, index = 1, text = "Hand of Iruxos Crystal" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 32 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-desolace-accept-5381-hand-of-iruxos" },
            id = "horde-leveling-era-horde-desolace-objective-5381-1-hand-of-iruxos-crystal",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Hand of Iruxos Crystal",
                    mapID = 1443,
                    offMapText = "Travel to Hand of Iruxos Crystal.",
                    x = 0.5497,
                    y = 0.2665,
                },
            },
            sourceStep = 34,
            text = "Collect 1 Demon Box.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "objective-5381-1-hand-of-iruxos-crystal",
        },
        {
            complete = { questObjective = { count = 15, id = 1435, index = 1, text = "Infused Burning Gem" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-desolace-accept-1435-the-burning-of-spirits" },
            id = "horde-leveling-era-horde-desolace-objective-1435-1-infused-burning-gem",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1433 } } },
            route = {
                { label = "Infused Burning Gem", mapID = 1443, offMapText = "Travel to Infused Burning Gem.", x = 0.56, y = 0.294 },
            },
            sourceStep = 35,
            text = "Collect 15 Infused Burning Gem.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "objective-1435-1-infused-burning-gem",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1435, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1435, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1433, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1432, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1431, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5741, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = {
                "horde-leveling-era-horde-desolace-accept-5741-sceptre-of-light",
                "horde-leveling-era-horde-desolace-objective-5741-1-burning-blade-seer",
            },
            id = "horde-leveling-era-horde-desolace-turnin-5741-sceptre-of-light",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Azore Aldamort", mapID = 1443, offMapText = "Travel to Azore Aldamort in Desolace.", x = 0.3888, y = 0.2717 },
            },
            sourceStep = 36,
            text = "Turn in Sceptre of Light to Azore Aldamort.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "turnin-5741-sceptre-of-light",
        },
        {
            complete = { quest = { id = 6027, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-desolace-accept-6027-book-of-the-ancients",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5741 } } },
            route = {
                { label = "Azore Aldamort", mapID = 1443, offMapText = "Travel to Azore Aldamort in Desolace.", x = 0.3888, y = 0.2717 },
            },
            sourceStep = 36,
            text = "Accept Book of the Ancients from Azore Aldamort.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "accept-6027-book-of-the-ancients",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6027, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6027, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 5741, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 6161, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-desolace-accept-6161-claim-rackmore-s-treasure",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Claim Rackmore's Treasure!",
                    mapID = 1443,
                    offMapText = "Travel to Claim Rackmore's Treasure!.",
                    x = 0.3607,
                    y = 0.3041,
                },
            },
            sourceStep = 37,
            text = "Accept Claim Rackmore's Treasure!.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "accept-6161-claim-rackmore-s-treasure",
        },
        {
            complete = { questObjective = { count = 1, id = 6161, index = 1, text = "Elixir of Water Breathing" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = { "horde-leveling-era-horde-desolace-accept-6161-claim-rackmore-s-treasure" },
            id = "horde-leveling-era-horde-desolace-objective-6161-1-elixir-of-water-breathing",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Elixir of Water Breathing",
                    mapID = 1443,
                    offMapText = "Travel to Elixir of Water Breathing.",
                    x = 0.338,
                    y = 0.302,
                },
            },
            sourceStep = 38,
            text = "Collect 1 Rackmore's Silver Key.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "objective-6161-1-elixir-of-water-breathing",
        },
        {
            complete = { questObjective = { count = 10, id = 6142, index = 1, text = "Soft-shelled Clam Meat" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 31 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-desolace-accept-6142-clam-bait" },
            id = "horde-leveling-era-horde-desolace-objective-6142-1-soft-shelled-clam-meat",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Soft-shelled Clam Meat", mapID = 1443, offMapText = "Travel to Soft-shelled Clam Meat.", x = 0.33, y = 0.284 },
            },
            sourceStep = 39,
            text = "Collect 10 Soft-shelled Clam Meat.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "objective-6142-1-soft-shelled-clam-meat",
        },
        {
            complete = { questObjective = { count = 1, id = 6161, index = 2, text = "Rackmore's Golden Key" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = { "horde-leveling-era-horde-desolace-accept-6161-claim-rackmore-s-treasure" },
            id = "horde-leveling-era-horde-desolace-objective-6161-2-rackmore-s-golden-key",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Rackmore's Golden Key", mapID = 1443, offMapText = "Travel to Rackmore's Golden Key.", x = 0.292, y = 0.136 },
            },
            sourceStep = 40,
            text = "Collect 1 Rackmore's Golden Key.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "objective-6161-2-rackmore-s-golden-key",
        },
        {
            complete = { quest = { id = 6161, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = {
                "horde-leveling-era-horde-desolace-accept-6161-claim-rackmore-s-treasure",
                "horde-leveling-era-horde-desolace-objective-6161-1-elixir-of-water-breathing",
                "horde-leveling-era-horde-desolace-objective-6161-2-rackmore-s-golden-key",
            },
            id = "horde-leveling-era-horde-desolace-turnin-6161-claim-rackmore-s-treasure",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Claim Rackmore's Treasure!",
                    mapID = 1443,
                    offMapText = "Travel to Claim Rackmore's Treasure!.",
                    x = 0.3,
                    y = 0.087,
                },
            },
            sourceStep = 41,
            text = "Turn in Claim Rackmore's Treasure!.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "turnin-6161-claim-rackmore-s-treasure",
        },
        {
            complete = { questObjective = { count = 1, id = 6027, index = 1, text = "Lord Kragaru" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = { "horde-leveling-era-horde-desolace-accept-6027-book-of-the-ancients" },
            id = "horde-leveling-era-horde-desolace-objective-6027-1-lord-kragaru",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5741 } } },
            route = { { label = "Lord Kragaru", mapID = 1443, offMapText = "Travel to Lord Kragaru.", x = 0.2819, y = 0.0662 } },
            sourceStep = 43,
            text = "Collect 1 Book of the Ancients.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "objective-6027-1-lord-kragaru",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6027, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6027, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 5741, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 1482, index = 1, text = "Oracle Crystal" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-desolace-accept-1482-the-corrupter" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 1482, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1481, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1480, state = "activeOrCompleted" } },
                                                                                { all = { { item = { minCount = 1, name = "Flayed Demon Skin" } }, { faction = "Horde" } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 1482, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 1482, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Horde" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 1481, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 1480, state = "activeOrCompleted" } },
                                                                                        { all = { { item = { name = "Flayed Demon Skin", minCount = 1 } }, { faction = "Horde" } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-desolace-objective-1482-1-oracle-crystal",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1481 } } },
            route = { { label = "Oracle Crystal", mapID = 1443, offMapText = "Travel to Oracle Crystal.", x = 0.274, y = 0.08 } },
            sourceStep = 44,
            text = "Collect 1 Oracle Crystal.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "objective-1482-1-oracle-crystal",
        },
        {
            complete = { questObjective = { count = 7, id = 6143, index = 1, text = "Slitherblade Myrmidon" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 32 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-desolace-accept-6143-other-fish-to-fry" },
            id = "horde-leveling-era-horde-desolace-objective-6143-1-slitherblade-myrmidon",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Slitherblade Myrmidon", mapID = 1443, offMapText = "Travel to Slitherblade Myrmidon.", x = 0.292, y = 0.136 },
            },
            sourceStep = 45,
            text = "Kill 7 Slitherblade Myrmidon.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "objective-6143-1-slitherblade-myrmidon",
        },
        {
            complete = { questObjective = { count = 5, id = 6143, index = 3, text = "Slitherblade Sorceress" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 32 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-desolace-accept-6143-other-fish-to-fry" },
            id = "horde-leveling-era-horde-desolace-objective-6143-3-slitherblade-sorceress",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Slitherblade Sorceress",
                    mapID = 1443,
                    offMapText = "Travel to Slitherblade Sorceress.",
                    x = 0.344,
                    y = 0.224,
                },
            },
            sourceStep = 46,
            text = "Kill 5 Slitherblade Sorceress.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "objective-6143-3-slitherblade-sorceress",
        },
        {
            complete = { questObjective = { count = 7, id = 6143, index = 2, text = "Slitherblade Naga" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 32 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-desolace-accept-6143-other-fish-to-fry" },
            id = "horde-leveling-era-horde-desolace-objective-6143-2-slitherblade-naga",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Slitherblade Naga", mapID = 1443, offMapText = "Travel to Slitherblade Naga.", x = 0.354, y = 0.214 },
            },
            sourceStep = 47,
            text = "Kill 7 Slitherblade Naga.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "objective-6143-2-slitherblade-naga",
        },
        {
            complete = { quest = { id = 6027, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = {
                "horde-leveling-era-horde-desolace-accept-6027-book-of-the-ancients",
                "horde-leveling-era-horde-desolace-objective-6027-1-lord-kragaru",
            },
            id = "horde-leveling-era-horde-desolace-turnin-6027-book-of-the-ancients",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5741 } } },
            route = {
                { label = "Azore Aldamort", mapID = 1443, offMapText = "Travel to Azore Aldamort in Desolace.", x = 0.3889, y = 0.2717 },
            },
            sourceStep = 48,
            text = "Turn in Book of the Ancients to Azore Aldamort.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "turnin-6027-book-of-the-ancients",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 6027, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 6027, state = "activeOrCompleted" } },
                                { all = { { any = { { any = { { quest = { id = 5741, state = "activeOrCompleted" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1435, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-desolace-accept-1435-the-burning-of-spirits",
                "horde-leveling-era-horde-desolace-objective-1435-1-infused-burning-gem",
            },
            id = "horde-leveling-era-horde-desolace-turnin-1435-the-burning-of-spirits",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1433 } } },
            route = {
                {
                    label = "Maurin Bonesplitter",
                    mapID = 1443,
                    offMapText = "Travel to Maurin Bonesplitter in Desolace.",
                    x = 0.5224,
                    y = 0.5344,
                },
            },
            sourceStep = 49,
            text = "Turn in The Burning of Spirits to Maurin Bonesplitter.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "turnin-1435-the-burning-of-spirits",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1435, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1435, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1433, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1432, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = { { any = { { quest = { id = 1431, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1482, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-desolace-accept-1482-the-corrupter",
                "horde-leveling-era-horde-desolace-objective-1482-1-oracle-crystal",
            },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 1482, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1481, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1480, state = "activeOrCompleted" } },
                                                                                { all = { { item = { minCount = 1, name = "Flayed Demon Skin" } }, { faction = "Horde" } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 1482, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 1482, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Horde" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 1481, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 1480, state = "activeOrCompleted" } },
                                                                                        { all = { { item = { name = "Flayed Demon Skin", minCount = 1 } }, { faction = "Horde" } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-desolace-turnin-1482-the-corrupter",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1481 } } },
            route = {
                {
                    label = "Maurin Bonesplitter",
                    mapID = 1443,
                    offMapText = "Travel to Maurin Bonesplitter in Desolace.",
                    x = 0.5224,
                    y = 0.5344,
                },
            },
            sourceStep = 49,
            text = "Turn in The Corrupter to Maurin Bonesplitter.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "turnin-1482-the-corrupter",
        },
        {
            complete = { quest = { id = 1484, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 1484, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1482, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1481, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1480, state = "activeOrCompleted" } },
                                                                                                        { all = { { item = { minCount = 1, name = "Flayed Demon Skin" } }, { faction = "Horde" } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 1484, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 1484, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Horde" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 1482, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 1481, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Horde" },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 1480, state = "activeOrCompleted" } },
                                                                                                                { all = { { item = { name = "Flayed Demon Skin", minCount = 1 } }, { faction = "Horde" } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-desolace-accept-1484-the-corrupter",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1482 } } },
            route = {
                {
                    label = "Maurin Bonesplitter",
                    mapID = 1443,
                    offMapText = "Travel to Maurin Bonesplitter in Desolace.",
                    x = 0.5225,
                    y = 0.5344,
                },
            },
            sourceStep = 50,
            text = "Accept The Corrupter from Maurin Bonesplitter.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "accept-1484-the-corrupter",
        },
        {
            complete = { quest = { id = 1484, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-desolace-accept-1484-the-corrupter" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 1484, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1482, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1481, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1480, state = "activeOrCompleted" } },
                                                                                                        { all = { { item = { minCount = 1, name = "Flayed Demon Skin" } }, { faction = "Horde" } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 1484, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 1484, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Horde" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 1482, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 1481, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Horde" },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 1480, state = "activeOrCompleted" } },
                                                                                                                { all = { { item = { name = "Flayed Demon Skin", minCount = 1 } }, { faction = "Horde" } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-desolace-turnin-1484-the-corrupter",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1482 } } },
            route = {
                {
                    label = "Takata Steelblade",
                    mapID = 1443,
                    offMapText = "Travel to Takata Steelblade in Desolace.",
                    x = 0.5257,
                    y = 0.5438,
                },
            },
            sourceStep = 51,
            text = "Turn in The Corrupter to Takata Steelblade.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "turnin-1484-the-corrupter",
        },
        {
            complete = { questObjective = { count = 6, id = 1370, index = 1, text = "Sack of Meat" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = { "horde-leveling-era-horde-desolace-accept-1370-stealing-supplies" },
            id = "horde-leveling-era-horde-desolace-objective-1370-1-sack-of-meat",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1368, 1384 } } },
            route = { { label = "Sack of Meat", mapID = 1443, offMapText = "Travel to Sack of Meat.", x = 0.709, y = 0.753 } },
            sourceStep = 52,
            text = "Collect 6 Crudely Dried Meat.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "objective-1370-1-sack-of-meat",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1370, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1370, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                { any = { { quest = { id = 1368, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } },
                                                { quest = { id = 1384, state = "completed" } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 1384 },
        },
        {
            complete = { quest = { id = 1370, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = {
                "horde-leveling-era-horde-desolace-accept-1370-stealing-supplies",
                "horde-leveling-era-horde-desolace-objective-1370-1-sack-of-meat",
            },
            id = "horde-leveling-era-horde-desolace-turnin-1370-stealing-supplies",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1368, 1384 } } },
            route = {
                { label = "Uthek the Wise", mapID = 1443, offMapText = "Travel to Uthek the Wise in Desolace.", x = 0.3623, y = 0.7925 },
            },
            sourceStep = 53,
            text = "Turn in Stealing Supplies to Uthek the Wise.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "turnin-1370-stealing-supplies",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1370, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1370, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                { any = { { quest = { id = 1368, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } },
                                                { quest = { id = 1384, state = "completed" } },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            unresolvedPrerequisites = { 1384 },
        },
        {
            complete = { quest = { id = 1373, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-desolace-accept-1373-ongeku",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1370 } } },
            route = {
                { label = "Uthek the Wise", mapID = 1443, offMapText = "Travel to Uthek the Wise in Desolace.", x = 0.3623, y = 0.7925 },
            },
            sourceStep = 53,
            text = "Accept Ongeku from Uthek the Wise.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "accept-1373-ongeku",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1373, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1373, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1370, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        { any = { { quest = { id = 1368, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } },
                                                                        { quest = { id = 1384, state = "completed" } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5763, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-desolace-accept-5763-hunting-in-stranglethorn",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Roon Wildmane", mapID = 1443, offMapText = "Travel to Roon Wildmane in Desolace.", x = 0.2505, y = 0.7228 },
            },
            sourceStep = 54,
            text = "Accept Hunting in Stranglethorn from Roon Wildmane.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "accept-5763-hunting-in-stranglethorn",
        },
        {
            complete = { quest = { id = 5381, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 32 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-desolace-accept-5381-hand-of-iruxos",
                "horde-leveling-era-horde-desolace-objective-5381-1-hand-of-iruxos-crystal",
            },
            id = "horde-leveling-era-horde-desolace-turnin-5381-hand-of-iruxos",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Taiga Wisemane", mapID = 1443, offMapText = "Travel to Taiga Wisemane in Desolace.", x = 0.2581, y = 0.6822 },
            },
            sourceStep = 55,
            text = "Turn in Hand of Iruxos to Taiga Wisemane.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "turnin-5381-hand-of-iruxos",
        },
        {
            complete = { quest = { id = 6143, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 32 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-desolace-accept-6143-other-fish-to-fry",
                "horde-leveling-era-horde-desolace-objective-6143-1-slitherblade-myrmidon",
                "horde-leveling-era-horde-desolace-objective-6143-3-slitherblade-sorceress",
                "horde-leveling-era-horde-desolace-objective-6143-2-slitherblade-naga",
            },
            id = "horde-leveling-era-horde-desolace-turnin-6143-other-fish-to-fry",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Drulzegar Skraghook",
                    mapID = 1443,
                    offMapText = "Travel to Drulzegar Skraghook in Desolace.",
                    x = 0.2332,
                    y = 0.7287,
                },
            },
            sourceStep = 56,
            text = "Turn in Other Fish to Fry to Drulzegar Skraghook.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "turnin-6143-other-fish-to-fry",
        },
        {
            complete = { quest = { id = 6142, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 31 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-desolace-accept-6142-clam-bait",
                "horde-leveling-era-horde-desolace-objective-6142-1-soft-shelled-clam-meat",
            },
            id = "horde-leveling-era-horde-desolace-turnin-6142-clam-bait",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Mai'Lahii", mapID = 1443, offMapText = "Travel to Mai'Lahii in Desolace.", x = 0.2264, y = 0.7197 },
            },
            sourceStep = 57,
            text = "Turn in Clam Bait to Mai'Lahii.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace",
            sourceActionID = "turnin-6142-clam-bait",
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
            complete = { quest = { id = 5763, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stranglethorn-vale-turnin-5763-hunting-in-stranglethorn",
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
            text = "Turn in Hunting in Stranglethorn to Hemet Nesingwary Jr..",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stranglethorn-vale",
            sourceActionID = "turnin-5763-hunting-in-stranglethorn",
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
            complete = { questObjective = { count = 1, id = 1373, index = 1, text = "Ongeku" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-objective-1373-1-ongeku",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1370 } } },
            route = { { label = "Ongeku", mapID = 1435, offMapText = "Travel to Ongeku.", x = 0.6131, y = 0.2325 } },
            sourceStep = 40,
            text = "Collect 1 Draenethyst Shard.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows",
            sourceActionID = "objective-1373-1-ongeku",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1373, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1373, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1370, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        { any = { { quest = { id = 1368, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } },
                                                                        { quest = { id = 1384, state = "completed" } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-horde-desolace-part-2",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-desolace-part-2",
            text = "Reach level 41 before the Desolace visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 41 } },
            requiredLevel = 41,
        },
        {
            checkpointQuest = 5581,
            complete = { level = { min = 32 } },
            conditions = { all = { { faction = "Horde" }, { race = { 2, 5, 6, 8, 96 } } } },
            id = "horde-leveling-era-horde-desolace-part-2-level-before-accept-5581-portals-of-the-legion",
            kind = "note",
            requiredLevel = 32,
            requiredQuests = {},
            text = "Reach level 32 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace-part-2",
            sourceActionID = "level-before-accept-5581-portals-of-the-legion",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5581, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5581, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 5381, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5581, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 32 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-desolace-part-2-accept-5581-portals-of-the-legion",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5381 } } },
            route = {
                { label = "Taiga Wisemane", mapID = 1443, offMapText = "Travel to Taiga Wisemane in Desolace.", x = 0.2581, y = 0.6822 },
            },
            sourceStep = 1,
            text = "Accept Portals of the Legion from Taiga Wisemane.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace-part-2",
            sourceActionID = "accept-5581-portals-of-the-legion",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5581, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5581, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 5381, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 1373,
            complete = { level = { min = 30 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-desolace-part-2-level-before-objective-1373-quest-work",
            kind = "note",
            requiredLevel = 30,
            requiredQuests = {},
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace-part-2",
            sourceActionID = "level-before-objective-1373-quest-work",
            dependsOn = {},
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1373, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1373, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1370, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        { any = { { quest = { id = 1368, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } },
                                                                        { quest = { id = 1384, state = "completed" } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1373, state = "complete" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-desolace-part-2-objective-1373-quest-work",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1370 } } },
            route = {
                { label = "Draenethyst Shard", mapID = 1435, offMapText = "Travel to Draenethyst Shard.", x = 0.6131, y = 0.2325 },
            },
            sourceStep = 2,
            text = "For Ongeku: Maintain your reputation with the Gelkis, and bring a Draenethyst Shard to Uthek the Wise in the Gelkis Village in Desolace.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace-part-2",
            sourceActionID = "objective-1373-quest-work",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1373, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1373, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1370, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        { any = { { quest = { id = 1368, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } },
                                                                        { quest = { id = 1384, state = "completed" } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1373, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = {
                "horde-leveling-era-horde-desolace-part-2-objective-1373-quest-work",
                "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-objective-1373-1-ongeku",
            },
            id = "horde-leveling-era-horde-desolace-part-2-turnin-1373-ongeku",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1370 } } },
            route = {
                { label = "Uthek the Wise", mapID = 1443, offMapText = "Travel to Uthek the Wise in Desolace.", x = 0.3622, y = 0.7925 },
            },
            sourceStep = 2,
            text = "Turn in Ongeku to Uthek the Wise.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace-part-2",
            sourceActionID = "turnin-1373-ongeku",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1373, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1373, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1370, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        { any = { { quest = { id = 1368, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } },
                                                                        { quest = { id = 1384, state = "completed" } },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1374, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-desolace-part-2-accept-1374-khan-jehn",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1373 } } },
            route = {
                { label = "Uthek the Wise", mapID = 1443, offMapText = "Travel to Uthek the Wise in Desolace.", x = 0.3622, y = 0.7925 },
            },
            sourceStep = 2,
            text = "Accept Khan Jehn from Uthek the Wise.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace-part-2",
            sourceActionID = "accept-1374-khan-jehn",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1374, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1374, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1373, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1370, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                { any = { { quest = { id = 1368, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } },
                                                                                                { quest = { id = 1384, state = "completed" } },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 6134,
            complete = { level = { min = 34 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-desolace-part-2-level-before-accept-6134-ghost-o-plasm-round-up",
            kind = "note",
            requiredLevel = 34,
            requiredQuests = {},
            text = "Reach level 34 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace-part-2",
            sourceActionID = "level-before-accept-6134-ghost-o-plasm-round-up",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 6134, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 34 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-desolace-part-2-accept-6134-ghost-o-plasm-round-up",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Hornizz Brimbuzzle",
                    mapID = 1443,
                    offMapText = "Travel to Hornizz Brimbuzzle in Desolace.",
                    x = 0.4783,
                    y = 0.6182,
                },
            },
            sourceStep = 3,
            text = "Accept Ghost-o-plasm Round Up from Hornizz Brimbuzzle.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace-part-2",
            sourceActionID = "accept-6134-ghost-o-plasm-round-up",
        },
        {
            complete = { quest = { id = 1488, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 1488, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1484, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1482, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1481, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1480, state = "activeOrCompleted" } },
                                                                                                                                { all = { { item = { minCount = 1, name = "Flayed Demon Skin" } }, { faction = "Horde" } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 1488, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 1488, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Horde" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 1484, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 1482, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Horde" },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 1481, state = "activeOrCompleted" } },
                                                                                                                {
                                                                                                                    all = {
                                                                                                                        { faction = "Horde" },
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                {
                                                                                                                                    any = {
                                                                                                                                        { quest = { id = 1480, state = "activeOrCompleted" } },
                                                                                                                                        { all = { { item = { name = "Flayed Demon Skin", minCount = 1 } }, { faction = "Horde" } } },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-desolace-part-2-accept-1488-the-corrupter",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1484 } } },
            route = {
                {
                    label = "Takata Steelblade",
                    mapID = 1443,
                    offMapText = "Travel to Takata Steelblade in Desolace.",
                    x = 0.5257,
                    y = 0.5438,
                },
            },
            sourceStep = 4,
            text = "Accept The Corrupter from Takata Steelblade.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-desolace-part-2",
            sourceActionID = "accept-1488-the-corrupter",
        },
        {
            complete = { questObjective = { id = 5581, index = 1, text = "Demon Portal Guardian" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 32 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-desolace-part-2-accept-5581-portals-of-the-legion" },
            id = "horde-leveling-era-horde-desolace-part-2-objective-5581-1-demon-portal-guardian",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5381 } } },
            route = {
                { label = "Demon Portal Guardian", mapID = 1443, offMapText = "Travel to Demon Portal Guardian.", x = 0.539, y = 0.7914 },
            },
            text = "Kill Demon Portal Guardian.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace-part-2",
            sourceActionID = "objective-5581-1-demon-portal-guardian",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5581, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5581, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 5381, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { id = 1488, index = 2, text = "Jugkar Grim'rod" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-desolace-part-2-accept-1488-the-corrupter" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 1488, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1484, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1482, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1481, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1480, state = "activeOrCompleted" } },
                                                                                                                                { all = { { item = { minCount = 1, name = "Flayed Demon Skin" } }, { faction = "Horde" } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 1488, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 1488, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Horde" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 1484, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 1482, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Horde" },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 1481, state = "activeOrCompleted" } },
                                                                                                                {
                                                                                                                    all = {
                                                                                                                        { faction = "Horde" },
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                {
                                                                                                                                    any = {
                                                                                                                                        { quest = { id = 1480, state = "activeOrCompleted" } },
                                                                                                                                        { all = { { item = { name = "Flayed Demon Skin", minCount = 1 } }, { faction = "Horde" } } },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-desolace-part-2-objective-1488-2-jugkar-grim-rod",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1484 } } },
            route = {
                { label = "Jugkar Grim'rod", mapID = 1443, offMapText = "Travel to Jugkar Grim'rod.", x = 0.5591, y = 0.7776 },
            },
            sourceStep = 6,
            text = "Kill Jugkar Grim'rod.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace-part-2",
            sourceActionID = "objective-1488-2-jugkar-grim-rod",
        },
        {
            complete = { questObjective = { id = 1488, index = 1, text = "Lord Azrethoc" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-desolace-part-2-accept-1488-the-corrupter" },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 1488, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1484, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1482, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1481, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1480, state = "activeOrCompleted" } },
                                                                                                                                { all = { { item = { minCount = 1, name = "Flayed Demon Skin" } }, { faction = "Horde" } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 1488, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 1488, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Horde" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 1484, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 1482, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Horde" },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 1481, state = "activeOrCompleted" } },
                                                                                                                {
                                                                                                                    all = {
                                                                                                                        { faction = "Horde" },
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                {
                                                                                                                                    any = {
                                                                                                                                        { quest = { id = 1480, state = "activeOrCompleted" } },
                                                                                                                                        { all = { { item = { name = "Flayed Demon Skin", minCount = 1 } }, { faction = "Horde" } } },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-desolace-part-2-objective-1488-1-lord-azrethoc",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1484 } } },
            route = { { label = "Lord Azrethoc", mapID = 1443, offMapText = "Travel to Lord Azrethoc.", x = 0.5602, y = 0.7776 } },
            sourceStep = 7,
            text = "Kill Lord Azrethoc.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace-part-2",
            sourceActionID = "objective-1488-1-lord-azrethoc",
        },
        {
            complete = { questObjective = { count = 8, id = 6134, index = 1, text = "Crate of Ghost Magnets" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 34 } } } },
            dependsOn = { "horde-leveling-era-horde-desolace-part-2-accept-6134-ghost-o-plasm-round-up" },
            id = "horde-leveling-era-horde-desolace-part-2-objective-6134-1-crate-of-ghost-magnets",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Crate of Ghost Magnets",
                    mapID = 1443,
                    offMapText = "Travel to Crate of Ghost Magnets.",
                    x = 0.6381,
                    y = 0.9127,
                },
            },
            sourceStep = 8,
            text = "Use the Crate of Ghost Magnets beside the large bones in southern Desolace. Kill the Magrami Spectres it attracts and collect 8 Ghost-o-plasm. Pull them away from the magnet before they become hostile.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace-part-2",
            sourceActionID = "objective-6134-1-crate-of-ghost-magnets",
        },
        {
            complete = { questObjective = { count = 1, id = 1374, index = 1, text = "Khan Jehn" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = { "horde-leveling-era-horde-desolace-part-2-accept-1374-khan-jehn" },
            id = "horde-leveling-era-horde-desolace-part-2-objective-1374-1-khan-jehn",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1373 } } },
            route = { { label = "Khan Jehn", mapID = 1443, offMapText = "Travel to Khan Jehn.", x = 0.6639, y = 0.8008 } },
            sourceStep = 9,
            text = "Collect 1 Khan Jehn's Head.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace-part-2",
            sourceActionID = "objective-1374-1-khan-jehn",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1374, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1374, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1373, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1370, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                { any = { { quest = { id = 1368, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } },
                                                                                                { quest = { id = 1384, state = "completed" } },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 1488, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 25 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-desolace-part-2-accept-1488-the-corrupter",
                "horde-leveling-era-horde-desolace-part-2-objective-1488-2-jugkar-grim-rod",
                "horde-leveling-era-horde-desolace-part-2-objective-1488-1-lord-azrethoc",
            },
            excludeWhen = {
                any = {
                    {
                        ["not"] = {
                            any = {
                                { quest = { id = 1488, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1484, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1482, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 1481, state = "activeOrCompleted" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 1480, state = "activeOrCompleted" } },
                                                                                                                                { all = { { item = { minCount = 1, name = "Flayed Demon Skin" } }, { faction = "Horde" } } },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
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
                                { quest = { id = 1488, state = "activeOrCompleted" } },
                                {
                                    any = {
                                        { quest = { id = 1488, state = "activeOrCompleted" } },
                                        {
                                            all = {
                                                { faction = "Horde" },
                                                {
                                                    any = {
                                                        {
                                                            any = {
                                                                { quest = { id = 1484, state = "activeOrCompleted" } },
                                                                {
                                                                    all = {
                                                                        { faction = "Horde" },
                                                                        {
                                                                            any = {
                                                                                {
                                                                                    any = {
                                                                                        { quest = { id = 1482, state = "activeOrCompleted" } },
                                                                                        {
                                                                                            all = {
                                                                                                { faction = "Horde" },
                                                                                                {
                                                                                                    any = {
                                                                                                        {
                                                                                                            any = {
                                                                                                                { quest = { id = 1481, state = "activeOrCompleted" } },
                                                                                                                {
                                                                                                                    all = {
                                                                                                                        { faction = "Horde" },
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                {
                                                                                                                                    any = {
                                                                                                                                        { quest = { id = 1480, state = "activeOrCompleted" } },
                                                                                                                                        { all = { { item = { name = "Flayed Demon Skin", minCount = 1 } }, { faction = "Horde" } } },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
            id = "horde-leveling-era-horde-desolace-part-2-turnin-1488-the-corrupter",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1484 } } },
            route = {
                {
                    label = "Takata Steelblade",
                    mapID = 1443,
                    offMapText = "Travel to Takata Steelblade in Desolace.",
                    x = 0.5257,
                    y = 0.5438,
                },
            },
            sourceStep = 10,
            text = "Turn in The Corrupter to Takata Steelblade.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace-part-2",
            sourceActionID = "turnin-1488-the-corrupter",
        },
        {
            complete = { quest = { id = 6134, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 34 } } } },
            dependsOn = {
                "horde-leveling-era-horde-desolace-part-2-accept-6134-ghost-o-plasm-round-up",
                "horde-leveling-era-horde-desolace-part-2-objective-6134-1-crate-of-ghost-magnets",
            },
            id = "horde-leveling-era-horde-desolace-part-2-turnin-6134-ghost-o-plasm-round-up",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Hornizz Brimbuzzle",
                    mapID = 1443,
                    offMapText = "Travel to Hornizz Brimbuzzle in Desolace.",
                    x = 0.4783,
                    y = 0.6182,
                },
            },
            sourceStep = 11,
            text = "Turn in Ghost-o-plasm Round Up to Hornizz Brimbuzzle.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace-part-2",
            sourceActionID = "turnin-6134-ghost-o-plasm-round-up",
        },
        {
            complete = { quest = { id = 1374, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = {
                "horde-leveling-era-horde-desolace-part-2-accept-1374-khan-jehn",
                "horde-leveling-era-horde-desolace-part-2-objective-1374-1-khan-jehn",
            },
            id = "horde-leveling-era-horde-desolace-part-2-turnin-1374-khan-jehn",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 1373 } } },
            route = {
                { label = "Uthek the Wise", mapID = 1443, offMapText = "Travel to Uthek the Wise in Desolace.", x = 0.3622, y = 0.7925 },
            },
            sourceStep = 12,
            text = "Turn in Khan Jehn to Uthek the Wise.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace-part-2",
            sourceActionID = "turnin-1374-khan-jehn",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 1374, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 1374, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 1373, state = "activeOrCompleted" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 1370, state = "activeOrCompleted" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                { any = { { quest = { id = 1368, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } },
                                                                                                { quest = { id = 1384, state = "completed" } },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 5581, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 32 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-desolace-part-2-accept-5581-portals-of-the-legion",
                "horde-leveling-era-horde-desolace-part-2-objective-5581-1-demon-portal-guardian",
            },
            id = "horde-leveling-era-horde-desolace-part-2-turnin-5581-portals-of-the-legion",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 5381 } } },
            route = {
                { label = "Taiga Wisemane", mapID = 1443, offMapText = "Travel to Taiga Wisemane in Desolace.", x = 0.2581, y = 0.6822 },
            },
            sourceStep = 13,
            text = "Turn in Portals of the Legion to Taiga Wisemane.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-desolace-part-2",
            sourceActionID = "turnin-5581-portals-of-the-legion",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 5581, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 5581, state = "activeOrCompleted" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = { { any = { { quest = { id = 5381, state = "activeOrCompleted" } }, { all = { { faction = "Horde" } } } } } },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-5821-level",
            kind = "note",
            checkpointQuest = 5821,
            text = "Reach level 35 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 35 } },
            requiredLevel = 35,
        },
        {
            id = "horde-extra-5821-accept",
            kind = "accept",
            text = "Accept Bodyguard for Hire from Cork Gizelton.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            route = {
                { mapID = 1443, x = 0.604, y = 0.38, label = "Cork Gizelton", offMapText = "Travel to Cork Gizelton in Desolace." },
            },
            complete = { quest = { id = 5821, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-5821-level" },
        },
        {
            id = "horde-extra-5821-objective",
            kind = "objective",
            text = "Escort the Gizelton Caravan past the Kolkar Centaur village.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            route = {},
            complete = { quest = { id = 5821, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-5821-accept" },
            useClientPin = true,
        },
        {
            id = "horde-extra-5821-turnin",
            kind = "turnin",
            text = "Turn in Bodyguard for Hire to Smeed Scrabblescrew.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1443,
                    x = 0.608,
                    y = 0.618,
                    label = "Smeed Scrabblescrew",
                    offMapText = "Travel to Smeed Scrabblescrew in Desolace.",
                },
            },
            complete = { quest = { id = 5821, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-5821-objective" },
        },
        {
            id = "horde-extra-5943-level",
            kind = "note",
            checkpointQuest = 5943,
            text = "Reach level 38 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 38 } },
            requiredLevel = 38,
        },
        {
            id = "horde-extra-5943-accept",
            kind = "accept",
            text = "Accept Gizelton Caravan from Rigger Gizelton.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 32 } } } },
            route = {
                {
                    mapID = 1443,
                    x = 0.40399999999999997,
                    y = 0.794,
                    label = "Rigger Gizelton",
                    offMapText = "Travel to Rigger Gizelton in Desolace.",
                },
            },
            complete = { quest = { id = 5943, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-5943-level" },
        },
        {
            id = "horde-extra-5943-objective",
            kind = "objective",
            text = "Escort the Gizelton Caravan through Mannoroc Coven.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 32 } } } },
            route = {},
            complete = { quest = { id = 5943, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-5943-accept" },
            useClientPin = true,
        },
        {
            id = "horde-extra-5943-turnin",
            kind = "turnin",
            text = "Turn in Gizelton Caravan to Smeed Scrabblescrew.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 32 } } } },
            route = {
                {
                    mapID = 1443,
                    x = 0.608,
                    y = 0.618,
                    label = "Smeed Scrabblescrew",
                    offMapText = "Travel to Smeed Scrabblescrew in Desolace.",
                },
            },
            complete = { quest = { id = 5943, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-5943-objective" },
        },
        {
            id = "horde-extra-6132-level",
            kind = "note",
            checkpointQuest = 6132,
            text = "Reach level 39 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 39 } },
            requiredLevel = 39,
        },
        {
            id = "horde-extra-6132-accept",
            kind = "accept",
            text = "Accept Get Me Out of Here! from Melizza Brimbuzzle.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 34 } } } },
            route = {
                {
                    mapID = 1443,
                    x = 0.33799999999999997,
                    y = 0.534,
                    label = "Melizza Brimbuzzle",
                    offMapText = "Travel to Melizza Brimbuzzle in Desolace.",
                },
            },
            complete = { quest = { id = 6132, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-6132-level" },
        },
        {
            id = "horde-extra-6132-objective",
            kind = "objective",
            text = "Escort Melizza Brimbuzzle safely.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 34 } } } },
            route = {},
            complete = { quest = { id = 6132, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-6132-accept" },
            useClientPin = true,
        },
        {
            id = "horde-extra-6132-turnin",
            kind = "turnin",
            text = "Turn in Get Me Out of Here! to Hornizz Brimbuzzle.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 34 } } } },
            route = {
                {
                    mapID = 1443,
                    x = 0.478,
                    y = 0.618,
                    label = "Hornizz Brimbuzzle",
                    offMapText = "Travel to Hornizz Brimbuzzle in Desolace.",
                },
            },
            complete = { quest = { id = 6132, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-6132-objective" },
        },
        {
            id = "horde-extra-79235-level",
            kind = "note",
            checkpointQuest = 79235,
            text = "Reach level 40 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 40 } },
            requiredLevel = 40,
        },
        {
            id = "horde-extra-79235-accept",
            kind = "accept",
            text = "Accept On the Lam from Bibbly F'utzbuckle.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1443,
                    x = 0.622,
                    y = 0.38799999999999996,
                    label = "Bibbly F'utzbuckle",
                    offMapText = "Travel to Bibbly F'utzbuckle in Desolace.",
                },
            },
            complete = { quest = { id = 79235, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-79235-level" },
        },
        {
            id = "horde-extra-79235-turnin",
            kind = "turnin",
            text = "Turn in On the Lam to Tokal.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            route = { { mapID = 1434, x = 0.27, y = 0.772, label = "Tokal", offMapText = "Travel to Tokal in Stranglethorn Vale." } },
            complete = { quest = { id = 79235, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-79235-accept" },
        },
        {
            id = "horde-extra-93225-level",
            kind = "note",
            checkpointQuest = 93225,
            text = "Reach level 40 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 40 } },
            requiredLevel = 40,
        },
        {
            id = "horde-extra-93225-accept",
            kind = "accept",
            text = "Accept Carved Centaur Totems from Gurda Wildmane.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            route = {
                { mapID = 1443, x = 0.562, y = 0.596, label = "Gurda Wildmane", offMapText = "Travel to Gurda Wildmane in Desolace." },
            },
            complete = { quest = { id = 93225, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-93225-level" },
        },
        {
            id = "horde-extra-93225-objective",
            kind = "objective",
            text = "Slay Kolkar centaur in Desolace and collect 5 Carved Centaur Totems.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1443,
                    x = 0.6920000000000001,
                    y = 0.42200000000000004,
                    label = "Kolkar Centaur",
                    offMapText = "Travel to Kolkar Centaur in Desolace.",
                },
            },
            complete = { quest = { id = 93225, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-93225-accept" },
        },
        {
            id = "horde-extra-93225-turnin",
            kind = "turnin",
            text = "Turn in Carved Centaur Totems to Gurda Wildmane.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            route = {
                { mapID = 1443, x = 0.562, y = 0.596, label = "Gurda Wildmane", offMapText = "Travel to Gurda Wildmane in Desolace." },
            },
            complete = { quest = { id = 93225, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-93225-objective" },
        },
        {
            id = "horde-extra-97265-level",
            kind = "note",
            checkpointQuest = 97265,
            text = "Reach level 33 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 33 } },
            requiredLevel = 33,
        },
        {
            id = "horde-extra-97265-accept",
            kind = "accept",
            text = "Accept Hate the Hatefury from Aka'rai.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } } } },
            route = { { mapID = 1443, x = 0.252, y = 0.672, label = "Aka'rai", offMapText = "Travel to Aka'rai in Desolace." } },
            complete = { quest = { id = 97265, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-97265-level" },
        },
        {
            id = "horde-extra-97265-objective",
            kind = "objective",
            text = "Defeat a variety of Hatefury satyr at Sargeron in Desolace.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } } } },
            route = {
                {
                    mapID = 1443,
                    x = 0.7140000000000001,
                    y = 0.17800000000000002,
                    label = "Hatefury Rogue",
                    offMapText = "Travel to Hatefury Rogue in Desolace.",
                },
            },
            complete = { quest = { id = 97265, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-97265-accept" },
        },
        {
            id = "horde-extra-97265-turnin",
            kind = "turnin",
            text = "Turn in Hate the Hatefury to Aka'rai.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 28 } } } },
            route = { { mapID = 1443, x = 0.252, y = 0.672, label = "Aka'rai", offMapText = "Travel to Aka'rai in Desolace." } },
            complete = { quest = { id = 97265, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-97265-objective" },
        },
    },
})
