local _, ns = ...

-- Source decisions: docs/loremaster/arathi-highlands.json.
-- Coordinates require a Forever client walkthrough.
ns:RegisterGuide({
    id = "loremaster-arathi-highlands",
    title = "Arathi Highlands",
    category = "Loremaster Guides",
    revision = 1,
    routeMode = "ordered",
    loremasterExpanded = true,
    goals = {
        {
            id = "visit-entry-leveling-era-alliance-duskwood-and-stranglethorn-vale",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            text = "Reach level 30 before the Duskwood & Stranglethorn Vale visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 30 } },
            requiredLevel = 30,
        },
        {
            checkpointQuest = 690,
            complete = { level = { min = 30 } },
            conditions = { all = { { class = { 8 } }, { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-level-before-accept-690-malin-s-request",
            kind = "note",
            requiredLevel = 30,
            requiredQuests = {},
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "level-before-accept-690-malin-s-request",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 690, state = "activeOrCompleted" } },
            conditions = {
                all = { { class = { 8 } }, { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } },
            },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-690-malin-s-request",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Archmage Malin",
                    mapID = 1453,
                    offMapText = "Travel to Archmage Malin in Stormwind City.",
                    x = 0.506,
                    y = 0.876,
                },
            },
            sourceStep = 67,
            text = "Accept Malin's Request from Archmage Malin.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "accept-690-malin-s-request",
        },
        {
            checkpointQuest = 690,
            complete = { level = { min = 30 } },
            conditions = { all = { { class = { 1, 2, 3, 4, 5, 7, 9, 11 } }, { faction = "Alliance" }, { race = { 1, 3, 4, 7, 95 } } } },
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-level-before-accept-690-malin-s-request-2",
            kind = "note",
            requiredLevel = 30,
            requiredQuests = {},
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "level-before-accept-690-malin-s-request-2",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 690, state = "activeOrCompleted" } },
            conditions = {
                all = {
                    { class = { 1, 2, 3, 4, 5, 7, 9, 11 } },
                    { faction = "Alliance" },
                    { level = { min = 30 } },
                    { race = { 1, 3, 4, 7, 95 } },
                },
            },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-duskwood-and-stranglethorn-vale-accept-690-malin-s-request-2",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Archmage Malin",
                    mapID = 1453,
                    offMapText = "Travel to Archmage Malin in Stormwind City.",
                    x = 0.506,
                    y = 0.876,
                },
            },
            sourceStep = 75,
            text = "Accept Malin's Request from Archmage Malin.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-duskwood-and-stranglethorn-vale",
            sourceActionID = "accept-690-malin-s-request-2",
        },
        {
            id = "visit-entry-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            text = "Reach level 32 before the Hillsbrad Foothills & Arathi Highlands visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 32 } },
            requiredLevel = 32,
        },
        {
            complete = { quest = { id = 681, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-681-northfold-manor",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Captain Nials",
                    mapID = 1417,
                    offMapText = "Travel to Captain Nials in Arathi Highlands.",
                    x = 0.4583,
                    y = 0.4755,
                },
            },
            sourceStep = 31,
            text = "Accept Northfold Manor from Captain Nials.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "accept-681-northfold-manor",
        },
        {
            complete = { questObjective = { count = 6, id = 681, index = 2, text = "Syndicate Mercenary" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-681-northfold-manor" },
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-objective-681-2-syndicate-mercenary",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Syndicate Mercenary", mapID = 1417, offMapText = "Travel to Syndicate Mercenary.", x = 0.334, y = 0.3 },
            },
            sourceStep = 33,
            text = "Kill 6 Syndicate Mercenary.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "objective-681-2-syndicate-mercenary",
        },
        {
            complete = { questObjective = { count = 10, id = 681, index = 1, text = "Syndicate Highwayman" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-681-northfold-manor" },
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-objective-681-1-syndicate-highwayman",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Syndicate Highwayman", mapID = 1417, offMapText = "Travel to Syndicate Highwayman.", x = 0.334, y = 0.3 },
            },
            sourceStep = 33,
            text = "Kill 10 Syndicate Highwayman.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "objective-681-1-syndicate-highwayman",
        },
        {
            complete = { quest = { id = 681, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-accept-681-northfold-manor",
                "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-objective-681-2-syndicate-mercenary",
                "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-objective-681-1-syndicate-highwayman",
            },
            id = "alliance-leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands-turnin-681-northfold-manor",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Captain Nials",
                    mapID = 1417,
                    offMapText = "Travel to Captain Nials in Arathi Highlands.",
                    x = 0.4583,
                    y = 0.4755,
                },
            },
            sourceStep = 36,
            text = "Turn in Northfold Manor to Captain Nials.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-hillsbrad-foothills-and-arathi-highlands",
            sourceActionID = "turnin-681-northfold-manor",
        },
        {
            id = "visit-entry-leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            kind = "note",
            visitSourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            text = "Reach level 39 before the Arathi Highlands & Alterac Mountains visit.",
            conditions = { all = { { faction = "Alliance" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Alliance" } } } },
            complete = { level = { min = 39 } },
            requiredLevel = 39,
        },
        {
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-turnin-690-malin-s-request",
            kind = "turnin",
            text = "Turn in Malin's Request to Skuerto at Refuge Pointe.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            complete = { quest = { id = 690, state = "completed" } },
            alternativeQuests = { 691 },
            route = { { mapID = 1417, x = 0.466, y = 0.47, label = "Skuerto", offMapText = "Travel to Skuerto at Refuge Pointe." } },
            dependsOn = {},
            requiredQuests = {},
            useClientText = false,
            useClientPin = false,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "turnin-690-malin-s-request",
        },
        {
            complete = { quest = { id = 691, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-691-worth-its-weight-in-gold",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Apprentice Kryten",
                    mapID = 1417,
                    offMapText = "Travel to Apprentice Kryten in Arathi Highlands.",
                    x = 0.462,
                    y = 0.4775,
                },
            },
            sourceStep = 2,
            text = "Accept Worth Its Weight in Gold from Apprentice Kryten.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "accept-691-worth-its-weight-in-gold",
        },
        {
            id = "alliance-extra-684-level",
            kind = "note",
            checkpointQuest = 684,
            text = "Reach level 39 before this visit.",
            conditions = { all = { { faction = "Alliance" } } },
            complete = { level = { min = 39 } },
            requiredLevel = 39,
        },
        {
            id = "alliance-extra-684-accept",
            kind = "accept",
            text = "Accept Wanted! Marez Cowl from Wanted Board.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1417,
                    x = 0.46,
                    y = 0.47700000000000004,
                    label = "Wanted Board",
                    offMapText = "Travel to Wanted Board in Arathi Highlands.",
                },
            },
            complete = { quest = { id = 684, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-684-level" },
        },
        {
            id = "alliance-extra-685-level",
            kind = "note",
            checkpointQuest = 685,
            text = "Reach level 40 before this visit.",
            conditions = { all = { { faction = "Alliance" } } },
            complete = { level = { min = 40 } },
            requiredLevel = 40,
        },
        {
            id = "alliance-extra-685-accept",
            kind = "accept",
            text = "Accept Wanted! Otto and Falconcrest from Wanted Board.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1417,
                    x = 0.46,
                    y = 0.47700000000000004,
                    label = "Wanted Board",
                    offMapText = "Travel to Wanted Board in Arathi Highlands.",
                },
            },
            complete = { quest = { id = 685, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-685-level" },
        },
        {
            checkpointQuest = 642,
            complete = { level = { min = 30 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-level-before-accept-642-the-princess-trapped",
            kind = "note",
            requiredLevel = 30,
            requiredQuests = {},
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "level-before-accept-642-the-princess-trapped",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 642, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-642-the-princess-trapped",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "The Princess Trapped", mapID = 1417, offMapText = "Travel to The Princess Trapped.", x = 0.625, y = 0.338 },
            },
            sourceStep = 3,
            text = "Accept The Princess Trapped.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "accept-642-the-princess-trapped",
        },
        {
            complete = { questObjective = { count = 12, id = 642, index = 1, text = "Drywhisker Kobold" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = { "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-642-the-princess-trapped" },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-642-1-drywhisker-kobold",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Drywhisker Kobold", mapID = 1417, offMapText = "Travel to Drywhisker Kobold.", x = 0.76, y = 0.442 },
            },
            sourceStep = 4,
            text = "Collect 12 Mote of Myzrael.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "objective-642-1-drywhisker-kobold",
        },
        {
            complete = { quest = { id = 642, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-642-the-princess-trapped",
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-642-1-drywhisker-kobold",
            },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-turnin-642-the-princess-trapped",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "The Princess Trapped", mapID = 1417, offMapText = "Travel to The Princess Trapped.", x = 0.8431, y = 0.3092 },
            },
            sourceStep = 5,
            text = "Turn in The Princess Trapped.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "turnin-642-the-princess-trapped",
        },
        {
            complete = { quest = { id = 651, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-651-stones-of-binding",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 642 } } },
            route = {
                { label = "Stones of Binding", mapID = 1417, offMapText = "Travel to Stones of Binding.", x = 0.8431, y = 0.3092 },
            },
            sourceStep = 5,
            text = "Accept Stones of Binding.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "accept-651-stones-of-binding",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 651, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 651, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 642, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 651, index = 2, text = "Cresting Key" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = { "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-651-stones-of-binding" },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-651-2-cresting-key",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 642 } } },
            route = { { label = "Cresting Key", mapID = 1417, offMapText = "Travel to Cresting Key.", x = 0.6675, y = 0.2975 } },
            sourceStep = 6,
            text = "Collect 1 Cresting Key.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "objective-651-2-cresting-key",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 651, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 651, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 642, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 691, index = 3, text = "Witherbark Shadow Hunter" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-691-worth-its-weight-in-gold" },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-691-3-witherbark-shadow-hunter",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Witherbark Shadow Hunter",
                    mapID = 1417,
                    offMapText = "Travel to Witherbark Shadow Hunter.",
                    x = 0.6832,
                    y = 0.7518,
                },
            },
            sourceStep = 8,
            text = "Collect 1 Shadow Hunter Knife.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "objective-691-3-witherbark-shadow-hunter",
        },
        {
            complete = { questObjective = { count = 4, id = 691, index = 2, text = "Witherbark Medicine Pouch" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-691-worth-its-weight-in-gold" },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-691-2-witherbark-medicine-pouch",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Witherbark Medicine Pouch",
                    mapID = 1417,
                    offMapText = "Travel to Witherbark Medicine Pouch.",
                    x = 0.658,
                    y = 0.68,
                },
            },
            sourceStep = 9,
            text = "Collect 4 Witherbark Medicine Pouch.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "objective-691-2-witherbark-medicine-pouch",
        },
        {
            complete = { questObjective = { count = 10, id = 691, index = 1, text = "Witherbark Tusk" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-691-worth-its-weight-in-gold" },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-691-1-witherbark-tusk",
            kind = "objective",
            requiredQuests = {},
            route = { { label = "Witherbark Tusk", mapID = 1417, offMapText = "Travel to Witherbark Tusk.", x = 0.658, y = 0.68 } },
            sourceStep = 10,
            text = "Collect 10 Witherbark Tusk.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "objective-691-1-witherbark-tusk",
        },
        {
            complete = { questObjective = { count = 1, id = 651, index = 3, text = "Thundering Key" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = { "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-651-stones-of-binding" },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-651-3-thundering-key",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 642 } } },
            route = { { label = "Thundering Key", mapID = 1417, offMapText = "Travel to Thundering Key.", x = 0.5204, y = 0.5077 } },
            sourceStep = 15,
            text = "Collect 1 Thundering Key.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "objective-651-3-thundering-key",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 651, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 651, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 642, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 691, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-691-worth-its-weight-in-gold",
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-691-3-witherbark-shadow-hunter",
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-691-2-witherbark-medicine-pouch",
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-691-1-witherbark-tusk",
            },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-turnin-691-worth-its-weight-in-gold",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Apprentice Kryten",
                    mapID = 1417,
                    offMapText = "Travel to Apprentice Kryten in Arathi Highlands.",
                    x = 0.462,
                    y = 0.4775,
                },
            },
            sourceStep = 17,
            text = "Turn in Worth Its Weight in Gold to Apprentice Kryten.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "turnin-691-worth-its-weight-in-gold",
        },
        {
            complete = { quest = { id = 693, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-693-wand-over-fist",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 691 } } },
            route = {
                { label = "Skuerto", mapID = 1417, offMapText = "Travel to Skuerto in Arathi Highlands.", x = 0.4665, y = 0.4701 },
            },
            sourceStep = 35,
            text = "Accept Wand over Fist from Skuerto.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "accept-693-wand-over-fist",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 693, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 693, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 691, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 693, index = 1, text = "Kor'gresh Coldrage" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = { "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-693-wand-over-fist" },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-693-1-kor-gresh-coldrage",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 691 } } },
            route = {
                {
                    label = "Trelane's Wand of Invocation",
                    mapID = 1417,
                    offMapText = "Travel to Trelane's Wand of Invocation.",
                    x = 0.5475,
                    y = 0.8187,
                },
            },
            sourceStep = 36,
            text = "Collect 1 Trelane's Wand of Invocation.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "objective-693-1-kor-gresh-coldrage",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 693, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 693, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 691, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 693, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } }, { race = { 1, 3, 4, 7, 95 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-693-wand-over-fist",
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-693-1-kor-gresh-coldrage",
            },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-turnin-693-wand-over-fist",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 691 } } },
            route = {
                { label = "Skuerto", mapID = 1417, offMapText = "Travel to Skuerto in Arathi Highlands.", x = 0.4665, y = 0.4701 },
            },
            sourceStep = 38,
            text = "Turn in Wand over Fist to Skuerto.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "turnin-693-wand-over-fist",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 693, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 693, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 691, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 651, index = 1, text = "Burning Key" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = { "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-651-stones-of-binding" },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-651-1-burning-key",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 642 } } },
            route = { { label = "Burning Key", mapID = 1417, offMapText = "Travel to Burning Key.", x = 0.2545, y = 0.3016 } },
            sourceStep = 40,
            text = "Collect 1 Burning Key.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "objective-651-1-burning-key",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 651, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 651, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 642, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 651, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-651-stones-of-binding",
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-651-2-cresting-key",
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-651-3-thundering-key",
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-651-1-burning-key",
            },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-turnin-651-stones-of-binding",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 642 } } },
            route = {
                { label = "Stones of Binding", mapID = 1417, offMapText = "Travel to Stones of Binding.", x = 0.3619, y = 0.5737 },
            },
            sourceStep = 48,
            text = "Turn in Stones of Binding.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "turnin-651-stones-of-binding",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 651, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 651, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 642, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-694-level",
            kind = "note",
            checkpointQuest = 694,
            text = "Reach level 39 before this visit.",
            conditions = { all = { { faction = "Alliance" } } },
            complete = { level = { min = 39 } },
            requiredLevel = 39,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 694, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 694, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 693, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 691, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-694-accept",
            kind = "accept",
            text = "Accept Trelane's Defenses from Skuerto.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                { mapID = 1417, x = 0.466, y = 0.47, label = "Skuerto", offMapText = "Travel to Skuerto in Arathi Highlands." },
            },
            complete = { quest = { id = 694, state = "activeOrCompleted" } },
            requiredQuests = { { mode = "any", quests = { 693 } } },
            useClientText = false,
            dependsOn = { "alliance-extra-694-level" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 694, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 694, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 693, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 691, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-682-level",
            kind = "note",
            checkpointQuest = 682,
            text = "Reach level 37 before this visit.",
            conditions = { all = { { faction = "Alliance" } } },
            complete = { level = { min = 37 } },
            requiredLevel = 37,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 682, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 682, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 681, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-682-accept",
            kind = "accept",
            text = "Accept Stromgarde Badges from Captain Nials.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1417,
                    x = 0.45799999999999996,
                    y = 0.474,
                    label = "Captain Nials",
                    offMapText = "Travel to Captain Nials in Arathi Highlands.",
                },
            },
            complete = { quest = { id = 682, state = "activeOrCompleted" } },
            requiredQuests = { { mode = "any", quests = { 681 } } },
            useClientText = false,
            dependsOn = { "alliance-extra-682-level" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 682, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 682, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 681, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-684-objective",
            kind = "objective",
            text = "Defeat Marez Cowl and loot Marez's Head. This is an elite. Bring a group.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                { mapID = 1417, x = 0.292, y = 0.64, label = "Marez Cowl", offMapText = "Travel to Marez Cowl in Arathi Highlands." },
            },
            complete = { quest = { id = 684, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-684-accept" },
        },
        {
            id = "alliance-extra-685-objective",
            kind = "objective",
            text = "Defeat Lord Falconcrest and Otto. Loot Falconcrest's Head and Otto's Head. This is an elite. Bring a group.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1417,
                    x = 0.26,
                    y = 0.654,
                    label = "Lord Falconcrest",
                    offMapText = "Travel to Lord Falconcrest in Arathi Highlands.",
                },
            { mapID = 1417, x = 0.26, y = 0.646, label = "Otto", offMapText = "Travel to Otto in Stromgarde." },
            },
            complete = { quest = { id = 685, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-685-accept" },
        },
        {
            id = "alliance-extra-682-objective",
            kind = "objective",
            text = "Defeat Syndicate Prowlers and loot 7 Stromgarde Badges. This is an elite. Bring a group.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1417,
                    x = 0.292,
                    y = 0.624,
                    label = "Syndicate Prowler",
                    offMapText = "Travel to Syndicate Prowler in Arathi Highlands.",
                },
            },
            complete = { quest = { id = 682, state = "complete" } },
            requiredQuests = { { mode = "any", quests = { 681 } } },
            useClientText = false,
            dependsOn = { "alliance-extra-682-accept" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 682, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 682, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 681, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-694-objective",
            kind = "objective",
            text = "Defeat Boulderfist Shamans and loot an Azure Agate. This is an elite. Bring a group.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1417,
                    x = 0.21,
                    y = 0.6579999999999999,
                    label = "Boulderfist Shaman",
                    offMapText = "Travel to Boulderfist Shaman in Arathi Highlands.",
                },
            },
            complete = { quest = { id = 694, state = "complete" } },
            requiredQuests = { { mode = "any", quests = { 693 } } },
            useClientText = false,
            dependsOn = { "alliance-extra-694-accept" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 694, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 694, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 693, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 691, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 663,
            complete = { level = { min = 35 } },
            conditions = { faction = "Alliance" },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-level-before-accept-663-land-ho",
            kind = "note",
            requiredLevel = 35,
            requiredQuests = {},
            text = "Reach level 35 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "level-before-accept-663-land-ho",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 663, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-663-land-ho",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Lolo the Lookout",
                    mapID = 1417,
                    offMapText = "Travel to Lolo the Lookout in Arathi Highlands.",
                    x = 0.3178,
                    y = 0.827,
                },
            },
            sourceStep = 49,
            text = "Accept Land Ho! from Lolo the Lookout.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "accept-663-land-ho",
        },
        {
            complete = { quest = { id = 663, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = { "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-663-land-ho" },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-turnin-663-land-ho",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Shakes O'Breen",
                    mapID = 1417,
                    offMapText = "Travel to Shakes O'Breen in Arathi Highlands.",
                    x = 0.3228,
                    y = 0.8138,
                },
            },
            sourceStep = 50,
            text = "Turn in Land Ho! to Shakes O'Breen.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "turnin-663-land-ho",
        },
        {
            complete = { quest = { id = 662, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-662-deep-sea-salvage",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 663 } } },
            route = {
                {
                    label = "First Mate Nilzlix",
                    mapID = 1417,
                    offMapText = "Travel to First Mate Nilzlix in Arathi Highlands.",
                    x = 0.3277,
                    y = 0.8147,
                },
            },
            sourceStep = 51,
            text = "Accept Deep Sea Salvage from First Mate Nilzlix.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "accept-662-deep-sea-salvage",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 662, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 662, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 664, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-664-drowned-sorrows",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 663 } } },
            route = {
                {
                    label = "Captain Steelgut",
                    mapID = 1417,
                    offMapText = "Travel to Captain Steelgut in Arathi Highlands.",
                    x = 0.34,
                    y = 0.8079,
                },
            },
            sourceStep = 52,
            text = "Accept Drowned Sorrows from Captain Steelgut.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "accept-664-drowned-sorrows",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 664, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 664, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 665, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-665-sunken-treasure",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 663 } } },
            route = {
                {
                    label = "Professor Phizzlethorpe",
                    mapID = 1417,
                    offMapText = "Travel to Professor Phizzlethorpe in Arathi Highlands.",
                    x = 0.3387,
                    y = 0.8055,
                },
            },
            sourceStep = 53,
            text = "Accept Sunken Treasure from Professor Phizzlethorpe.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "accept-665-sunken-treasure",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 665, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 665, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 665, state = "complete" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = { "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-665-sunken-treasure" },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-665-reviewed-escort",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 663 } } },
            route = {
                { label = "Escort destination", mapID = 1417, offMapText = "Travel to Escort destination.", x = 0.3387, y = 0.8055 },
            },
            sourceStep = 54,
            text = "Follow and defend Professor Phizzlethorpe while he searches the cave.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "objective-665-reviewed-escort",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 665, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 665, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 665, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-665-sunken-treasure",
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-665-reviewed-escort",
            },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-turnin-665-sunken-treasure",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 663 } } },
            route = {
                {
                    label = "Doctor Draxlegauge",
                    mapID = 1417,
                    offMapText = "Travel to Doctor Draxlegauge in Arathi Highlands.",
                    x = 0.3386,
                    y = 0.8045,
                },
            },
            sourceStep = 55,
            text = "Turn in Sunken Treasure to Doctor Draxlegauge.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "turnin-665-sunken-treasure",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 665, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 665, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 666, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-666-sunken-treasure",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 665 } } },
            route = {
                {
                    label = "Doctor Draxlegauge",
                    mapID = 1417,
                    offMapText = "Travel to Doctor Draxlegauge in Arathi Highlands.",
                    x = 0.3386,
                    y = 0.8045,
                },
            },
            sourceStep = 55,
            text = "Accept Sunken Treasure from Doctor Draxlegauge.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "accept-666-sunken-treasure",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 666, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 666, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 665, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 662, index = 2, text = "Elixir of Water Breathing" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = { "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-662-deep-sea-salvage" },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-662-2-elixir-of-water-breathing",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 663 } } },
            route = {
                {
                    label = "Elixir of Water Breathing",
                    mapID = 1417,
                    offMapText = "Travel to Elixir of Water Breathing.",
                    x = 0.2341,
                    y = 0.851,
                },
            },
            sourceStep = 56,
            text = "Collect 1 Maiden's Folly Log.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "objective-662-2-elixir-of-water-breathing",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 662, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 662, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 662, index = 1, text = "Elixir of Water Breathing" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = { "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-662-deep-sea-salvage" },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-662-1-elixir-of-water-breathing",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 663 } } },
            route = {
                {
                    label = "Elixir of Water Breathing",
                    mapID = 1417,
                    offMapText = "Travel to Elixir of Water Breathing.",
                    x = 0.2304,
                    y = 0.8451,
                },
            },
            sourceStep = 57,
            text = "Collect 1 Maiden's Folly Charts.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "objective-662-1-elixir-of-water-breathing",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 662, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 662, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 662, index = 3, text = "Elixir of Water Breathing" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = { "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-662-deep-sea-salvage" },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-662-3-elixir-of-water-breathing",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 663 } } },
            route = {
                {
                    label = "Elixir of Water Breathing",
                    mapID = 1417,
                    offMapText = "Travel to Elixir of Water Breathing.",
                    x = 0.2045,
                    y = 0.856,
                },
            },
            sourceStep = 58,
            text = "Collect 1 Spirit of Silverpine Charts.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "objective-662-3-elixir-of-water-breathing",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 662, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 662, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 662, index = 4, text = "Elixir of Water Breathing" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = { "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-662-deep-sea-salvage" },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-662-4-elixir-of-water-breathing",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 663 } } },
            route = {
                {
                    label = "Elixir of Water Breathing",
                    mapID = 1417,
                    offMapText = "Travel to Elixir of Water Breathing.",
                    x = 0.2065,
                    y = 0.851,
                },
            },
            sourceStep = 59,
            text = "Collect 1 Spirit of Silverpine Log.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "objective-662-4-elixir-of-water-breathing",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 662, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 662, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 666, index = 1, text = "Elven Gem" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = { "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-666-sunken-treasure" },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-666-1-elven-gem",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 665 } } },
            route = { { label = "Elven Gem", mapID = 1417, offMapText = "Travel to Elven Gem.", x = 0.236, y = 0.874 } },
            sourceStep = 60,
            text = "Collect 10 Elven Gem.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "objective-666-1-elven-gem",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 666, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 666, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 665, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 3, id = 664, index = 2, text = "Daggerspine Sorceress" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = { "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-664-drowned-sorrows" },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-664-2-daggerspine-sorceress",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 663 } } },
            route = {
                { label = "Daggerspine Sorceress", mapID = 1417, offMapText = "Travel to Daggerspine Sorceress.", x = 0.192, y = 0.84 },
            },
            sourceStep = 62,
            text = "Kill 3 Daggerspine Sorceress.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "objective-664-2-daggerspine-sorceress",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 664, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 664, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 664, index = 1, text = "Daggerspine Raider" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = { "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-664-drowned-sorrows" },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-664-1-daggerspine-raider",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 663 } } },
            route = {
                { label = "Daggerspine Raider", mapID = 1417, offMapText = "Travel to Daggerspine Raider.", x = 0.192, y = 0.84 },
            },
            sourceStep = 62,
            text = "Kill 10 Daggerspine Raider.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "objective-664-1-daggerspine-raider",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 664, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 664, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 662, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-662-deep-sea-salvage",
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-662-2-elixir-of-water-breathing",
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-662-1-elixir-of-water-breathing",
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-662-3-elixir-of-water-breathing",
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-662-4-elixir-of-water-breathing",
            },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-turnin-662-deep-sea-salvage",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 663 } } },
            route = {
                {
                    label = "First Mate Nilzlix",
                    mapID = 1417,
                    offMapText = "Travel to First Mate Nilzlix in Arathi Highlands.",
                    x = 0.328,
                    y = 0.8148,
                },
            },
            sourceStep = 63,
            text = "Turn in Deep Sea Salvage to First Mate Nilzlix.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "turnin-662-deep-sea-salvage",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 662, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 662, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 664, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-664-drowned-sorrows",
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-664-2-daggerspine-sorceress",
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-664-1-daggerspine-raider",
            },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-turnin-664-drowned-sorrows",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 663 } } },
            route = {
                {
                    label = "Captain Steelgut",
                    mapID = 1417,
                    offMapText = "Travel to Captain Steelgut in Arathi Highlands.",
                    x = 0.34,
                    y = 0.8079,
                },
            },
            sourceStep = 64,
            text = "Turn in Drowned Sorrows to Captain Steelgut.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "turnin-664-drowned-sorrows",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 664, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 664, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 666, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-666-sunken-treasure",
                "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-objective-666-1-elven-gem",
            },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-turnin-666-sunken-treasure",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 665 } } },
            route = {
                {
                    label = "Doctor Draxlegauge",
                    mapID = 1417,
                    offMapText = "Travel to Doctor Draxlegauge in Arathi Highlands.",
                    x = 0.3385,
                    y = 0.8045,
                },
            },
            sourceStep = 65,
            text = "Turn in Sunken Treasure to Doctor Draxlegauge.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "turnin-666-sunken-treasure",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 666, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 666, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 665, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 668, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-668-sunken-treasure",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 666 } } },
            route = {
                {
                    label = "Doctor Draxlegauge",
                    mapID = 1417,
                    offMapText = "Travel to Doctor Draxlegauge in Arathi Highlands.",
                    x = 0.3385,
                    y = 0.8045,
                },
            },
            sourceStep = 65,
            text = "Accept Sunken Treasure from Doctor Draxlegauge.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "accept-668-sunken-treasure",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 668, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 668, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 666, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 665, state = "completed" } },
                                                                                { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 668, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = { "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-668-sunken-treasure" },
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-turnin-668-sunken-treasure",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 666 } } },
            route = {
                {
                    label = "Shakes O'Breen",
                    mapID = 1417,
                    offMapText = "Travel to Shakes O'Breen in Arathi Highlands.",
                    x = 0.3229,
                    y = 0.8138,
                },
            },
            sourceStep = 66,
            text = "Turn in Sunken Treasure to Shakes O'Breen.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "turnin-668-sunken-treasure",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 668, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 668, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 666, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 665, state = "completed" } },
                                                                                { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 669, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-arathi-highlands-and-alterac-mountains-accept-669-sunken-treasure",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 668 } } },
            route = {
                {
                    label = "Shakes O'Breen",
                    mapID = 1417,
                    offMapText = "Travel to Shakes O'Breen in Arathi Highlands.",
                    x = 0.3229,
                    y = 0.8138,
                },
            },
            sourceStep = 66,
            text = "Accept Sunken Treasure from Shakes O'Breen.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-alliance-arathi-highlands-and-alterac-mountains",
            sourceActionID = "accept-669-sunken-treasure",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 669, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 669, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 668, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 666, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 665, state = "completed" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-682-turnin",
            kind = "turnin",
            text = "Turn in Stromgarde Badges to Captain Nials.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1417,
                    x = 0.45799999999999996,
                    y = 0.474,
                    label = "Captain Nials",
                    offMapText = "Travel to Captain Nials in Arathi Highlands.",
                },
            },
            complete = { quest = { id = 682, state = "completed" } },
            requiredQuests = { { mode = "any", quests = { 681 } } },
            useClientText = false,
            dependsOn = { "alliance-extra-682-objective" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 682, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 682, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        { any = { { any = { { quest = { id = 681, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-684-turnin",
            kind = "turnin",
            text = "Turn in Wanted! Marez Cowl to Captain Nials.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1417,
                    x = 0.45799999999999996,
                    y = 0.474,
                    label = "Captain Nials",
                    offMapText = "Travel to Captain Nials in Arathi Highlands.",
                },
            },
            complete = { quest = { id = 684, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-684-objective" },
        },
        {
            id = "alliance-extra-685-turnin",
            kind = "turnin",
            text = "Turn in Wanted! Otto and Falconcrest to Captain Nials.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1417,
                    x = 0.45799999999999996,
                    y = 0.474,
                    label = "Captain Nials",
                    offMapText = "Travel to Captain Nials in Arathi Highlands.",
                },
            },
            complete = { quest = { id = 685, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "alliance-extra-685-objective" },
        },
        {
            id = "alliance-extra-694-turnin",
            kind = "turnin",
            text = "Turn in Trelane's Defenses to Apprentice Kryten.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1417,
                    x = 0.462,
                    y = 0.47600000000000003,
                    label = "Apprentice Kryten",
                    offMapText = "Travel to Apprentice Kryten in Arathi Highlands.",
                },
            },
            complete = { quest = { id = 694, state = "completed" } },
            requiredQuests = { { mode = "any", quests = { 693 } } },
            useClientText = false,
            dependsOn = { "alliance-extra-694-objective" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 694, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 694, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 693, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Alliance" },
                                                                { any = { { any = { { quest = { id = 691, state = "completed" } }, { all = { { faction = "Alliance" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
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
            complete = { quest = { id = 669, state = "completed" } },
            conditions = { all = { { faction = "Alliance" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "alliance-leveling-era-alliance-stranglethorn-vale-part-3-turnin-669-sunken-treasure",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 668 } } },
            route = {
                {
                    label = "Fleet Master Seahorn",
                    mapID = 1434,
                    offMapText = "Travel to Fleet Master Seahorn in Stranglethorn Vale.",
                    x = 0.2717,
                    y = 0.7701,
                },
            },
            sourceStep = 9,
            text = "Turn in Sunken Treasure to Fleet Master Seahorn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-alliance-stranglethorn-vale-part-3",
            sourceActionID = "turnin-669-sunken-treasure",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 669, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 669, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 668, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 666, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 665, state = "completed" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-652-level",
            kind = "note",
            checkpointQuest = 652,
            text = "Reach level 42 before this visit.",
            conditions = { all = { { faction = "Alliance" } } },
            complete = { level = { min = 42 } },
            requiredLevel = 42,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 652, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 652, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 651, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 642, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-652-accept",
            kind = "accept",
            text = "Accept Breaking the Keystone from Stone of Inner Binding.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1417,
                    x = 0.36200000000000004,
                    y = 0.575,
                    label = "Stone of Inner Binding",
                    offMapText = "Travel to Stone of Inner Binding in Arathi Highlands.",
                },
            },
            complete = { quest = { id = 652, state = "activeOrCompleted" } },
            requiredQuests = { { mode = "any", quests = { 651 } } },
            useClientText = false,
            dependsOn = { "alliance-extra-652-level" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 652, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 652, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 651, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 642, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-652-objective",
            kind = "objective",
            text = "Find and kill Fozruk. Loot the Rod of Order. This is an elite. Bring a group.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1417,
                    x = 0.43,
                    y = 0.5379999999999999,
                    label = "Fozruk",
                    offMapText = "Travel to Fozruk in Arathi Highlands.",
                },
            },
            complete = { quest = { id = 652, state = "complete" } },
            requiredQuests = { { mode = "any", quests = { 651 } } },
            useClientText = false,
            dependsOn = { "alliance-extra-652-accept" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 652, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 652, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 651, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 642, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-652-turnin",
            kind = "turnin",
            text = "Turn in Breaking the Keystone to Keystone.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                { mapID = 1417, x = 0.361, y = 0.579, label = "Keystone", offMapText = "Travel to Keystone in Arathi Highlands." },
            },
            complete = { quest = { id = 652, state = "completed" } },
            requiredQuests = { { mode = "any", quests = { 651 } } },
            useClientText = false,
            dependsOn = { "alliance-extra-652-objective" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 652, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 652, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 651, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 642, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-653-level",
            kind = "note",
            checkpointQuest = 653,
            text = "Reach level 40 before this visit.",
            conditions = { all = { { faction = "Alliance" } } },
            complete = { level = { min = 40 } },
            requiredLevel = 40,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 653, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 653, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 652, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 651, state = "completed" } },
                                                                                { all = { { any = { { any = { { quest = { id = 642, state = "completed" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-653-accept",
            kind = "accept",
            text = "Accept Myzrael's Allies from Keystone.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                { mapID = 1417, x = 0.361, y = 0.579, label = "Keystone", offMapText = "Travel to Keystone in Arathi Highlands." },
            },
            complete = { quest = { id = 653, state = "activeOrCompleted" } },
            requiredQuests = { { mode = "any", quests = { 652 } } },
            useClientText = false,
            dependsOn = { "alliance-extra-653-level" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 653, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 653, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 652, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 651, state = "completed" } },
                                                                                { all = { { any = { { any = { { quest = { id = 642, state = "completed" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-653-objective",
            kind = "objective",
            text = "Speak with Gerrig Bonegrip in the Forlorn Cavern of Ironforge. Follow the quest log for the destination.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {},
            complete = { quest = { id = 653, state = "complete" } },
            requiredQuests = { { mode = "any", quests = { 652 } } },
            useClientText = false,
            dependsOn = { "alliance-extra-653-accept" },
            useClientPin = true,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 653, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 653, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 652, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 651, state = "completed" } },
                                                                                { all = { { any = { { any = { { quest = { id = 642, state = "completed" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "alliance-extra-653-turnin",
            kind = "turnin",
            text = "Turn in Myzrael's Allies to Gerrig Bonegrip.",
            conditions = { all = { { faction = "Alliance" }, { level = { min = 30 } } } },
            route = {
                { mapID = 1455, x = 0.504, y = 0.06, label = "Gerrig Bonegrip", offMapText = "Travel to Gerrig Bonegrip in Ironforge." },
            },
            complete = { quest = { id = 653, state = "completed" } },
            requiredQuests = { { mode = "any", quests = { 652 } } },
            useClientText = false,
            dependsOn = { "alliance-extra-653-objective" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 653, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 653, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Alliance" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 652, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 651, state = "completed" } },
                                                                                { all = { { any = { { any = { { quest = { id = 642, state = "completed" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "visit-entry-leveling-era-horde-arathi-highlands",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-arathi-highlands",
            text = "Reach level 32 before the Arathi Highlands visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 32 } },
            requiredLevel = 32,
        },
        {
            checkpointQuest = 642,
            complete = { level = { min = 30 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-arathi-highlands-level-before-accept-642-the-princess-trapped",
            kind = "note",
            requiredLevel = 30,
            requiredQuests = {},
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-arathi-highlands",
            sourceActionID = "level-before-accept-642-the-princess-trapped",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 642, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-arathi-highlands-accept-642-the-princess-trapped",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "The Princess Trapped", mapID = 1417, offMapText = "Travel to The Princess Trapped.", x = 0.6248, y = 0.338 },
            },
            sourceStep = 6,
            text = "Accept The Princess Trapped.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-arathi-highlands",
            sourceActionID = "accept-642-the-princess-trapped",
        },
        {
            complete = { quest = { id = 677, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-arathi-highlands-accept-677-call-to-arms",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Drum Fel", mapID = 1417, offMapText = "Travel to Drum Fel in Arathi Highlands.", x = 0.7424, y = 0.3391 },
            },
            sourceStep = 8,
            text = "Accept Call to Arms from Drum Fel.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-arathi-highlands",
            sourceActionID = "accept-677-call-to-arms",
        },
        {
            complete = { quest = { id = 655, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-arathi-highlands-accept-655-hammerfall",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Gor'mul", mapID = 1417, offMapText = "Travel to Gor'mul in Arathi Highlands.", x = 0.7267, y = 0.3412 },
            },
            sourceStep = 9,
            text = "Accept Hammerfall from Gor'mul.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-arathi-highlands",
            sourceActionID = "accept-655-hammerfall",
        },
        {
            complete = { quest = { id = 655, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-arathi-highlands-accept-655-hammerfall" },
            id = "horde-leveling-era-horde-arathi-highlands-turnin-655-hammerfall",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Tor'gan", mapID = 1417, offMapText = "Travel to Tor'gan in Arathi Highlands.", x = 0.7471, y = 0.3629 },
            },
            sourceStep = 10,
            text = "Turn in Hammerfall to Tor'gan.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-arathi-highlands",
            sourceActionID = "turnin-655-hammerfall",
        },
        {
            complete = { quest = { id = 672, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-arathi-highlands-accept-672-raising-spirits",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 655 } } },
            route = {
                { label = "Tor'gan", mapID = 1417, offMapText = "Travel to Tor'gan in Arathi Highlands.", x = 0.7471, y = 0.3629 },
            },
            sourceStep = 10,
            text = "Accept Raising Spirits from Tor'gan.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-arathi-highlands",
            sourceActionID = "accept-672-raising-spirits",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 672, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 672, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 655, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 671, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-arathi-highlands-accept-671-foul-magics",
            kind = "accept",
            requiredQuests = {},
            route = {
                { label = "Tor'gan", mapID = 1417, offMapText = "Travel to Tor'gan in Arathi Highlands.", x = 0.7471, y = 0.3629 },
            },
            sourceStep = 10,
            text = "Accept Foul Magics from Tor'gan.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-arathi-highlands",
            sourceActionID = "accept-671-foul-magics",
        },
        {
            complete = { questObjective = { count = 10, id = 671, index = 1, text = "Syndicate Pathstalker" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-arathi-highlands-accept-671-foul-magics" },
            id = "horde-leveling-era-horde-arathi-highlands-objective-671-1-syndicate-pathstalker",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Syndicate Pathstalker", mapID = 1417, offMapText = "Travel to Syndicate Pathstalker.", x = 0.334, y = 0.3 },
            },
            sourceStep = 11,
            text = "Collect 10 Bloodstone Amulet.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-arathi-highlands",
            sourceActionID = "objective-671-1-syndicate-pathstalker",
        },
        {
            complete = { questObjective = { count = 10, id = 672, index = 1, text = "Highland Raptor Eye" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-arathi-highlands-accept-672-raising-spirits" },
            id = "horde-leveling-era-horde-arathi-highlands-objective-672-1-highland-raptor-eye",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 655 } } },
            route = {
                { label = "Highland Raptor Eye", mapID = 1417, offMapText = "Travel to Highland Raptor Eye.", x = 0.424, y = 0.404 },
            },
            sourceStep = 12,
            text = "Collect 10 Highland Raptor Eye.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-arathi-highlands",
            sourceActionID = "objective-672-1-highland-raptor-eye",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 672, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 672, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 655, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 8, id = 677, index = 3, text = "Witherbark Witch Doctor" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-arathi-highlands-accept-677-call-to-arms" },
            id = "horde-leveling-era-horde-arathi-highlands-objective-677-3-witherbark-witch-doctor",
            kind = "objective",
            requiredQuests = {},
            route = {
                {
                    label = "Witherbark Witch Doctor",
                    mapID = 1417,
                    offMapText = "Travel to Witherbark Witch Doctor.",
                    x = 0.658,
                    y = 0.68,
                },
            },
            sourceStep = 13,
            text = "Kill 8 Witherbark Witch Doctor.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-arathi-highlands",
            sourceActionID = "objective-677-3-witherbark-witch-doctor",
        },
        {
            complete = { questObjective = { count = 10, id = 677, index = 2, text = "Witherbark Headhunter" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-arathi-highlands-accept-677-call-to-arms" },
            id = "horde-leveling-era-horde-arathi-highlands-objective-677-2-witherbark-headhunter",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Witherbark Headhunter", mapID = 1417, offMapText = "Travel to Witherbark Headhunter.", x = 0.658, y = 0.68 },
            },
            sourceStep = 13,
            text = "Kill 10 Witherbark Headhunter.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-arathi-highlands",
            sourceActionID = "objective-677-2-witherbark-headhunter",
        },
        {
            complete = { questObjective = { count = 10, id = 677, index = 1, text = "Witherbark Axe Thrower" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-arathi-highlands-accept-677-call-to-arms" },
            id = "horde-leveling-era-horde-arathi-highlands-objective-677-1-witherbark-axe-thrower",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Witherbark Axe Thrower", mapID = 1417, offMapText = "Travel to Witherbark Axe Thrower.", x = 0.658, y = 0.68 },
            },
            sourceStep = 13,
            text = "Kill 10 Witherbark Axe Thrower.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-arathi-highlands",
            sourceActionID = "objective-677-1-witherbark-axe-thrower",
        },
        {
            complete = { quest = { id = 671, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-arathi-highlands-accept-671-foul-magics",
                "horde-leveling-era-horde-arathi-highlands-objective-671-1-syndicate-pathstalker",
            },
            id = "horde-leveling-era-horde-arathi-highlands-turnin-671-foul-magics",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Tor'gan", mapID = 1417, offMapText = "Travel to Tor'gan in Arathi Highlands.", x = 0.7471, y = 0.3629 },
            },
            sourceStep = 15,
            text = "Turn in Foul Magics to Tor'gan.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-arathi-highlands",
            sourceActionID = "turnin-671-foul-magics",
        },
        {
            complete = { quest = { id = 672, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-arathi-highlands-accept-672-raising-spirits",
                "horde-leveling-era-horde-arathi-highlands-objective-672-1-highland-raptor-eye",
            },
            id = "horde-leveling-era-horde-arathi-highlands-turnin-672-raising-spirits",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 655 } } },
            route = {
                { label = "Tor'gan", mapID = 1417, offMapText = "Travel to Tor'gan in Arathi Highlands.", x = 0.7471, y = 0.3629 },
            },
            sourceStep = 15,
            text = "Turn in Raising Spirits to Tor'gan.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-arathi-highlands",
            sourceActionID = "turnin-672-raising-spirits",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 672, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 672, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 655, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 674, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-arathi-highlands-accept-674-raising-spirits",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 672 } } },
            route = {
                { label = "Tor'gan", mapID = 1417, offMapText = "Travel to Tor'gan in Arathi Highlands.", x = 0.7471, y = 0.3629 },
            },
            sourceStep = 15,
            text = "Accept Raising Spirits from Tor'gan.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-arathi-highlands",
            sourceActionID = "accept-674-raising-spirits",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 674, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 674, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 672, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                { any = { { any = { { quest = { id = 655, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 674, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-arathi-highlands-accept-674-raising-spirits" },
            id = "horde-leveling-era-horde-arathi-highlands-turnin-674-raising-spirits",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 672 } } },
            route = {
                { label = "Gor'mul", mapID = 1417, offMapText = "Travel to Gor'mul in Arathi Highlands.", x = 0.7267, y = 0.3412 },
            },
            sourceStep = 16,
            text = "Turn in Raising Spirits to Gor'mul.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-arathi-highlands",
            sourceActionID = "turnin-674-raising-spirits",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 674, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 674, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 672, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                { any = { { any = { { quest = { id = 655, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 675, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-arathi-highlands-accept-675-raising-spirits",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 674 } } },
            route = {
                { label = "Gor'mul", mapID = 1417, offMapText = "Travel to Gor'mul in Arathi Highlands.", x = 0.7267, y = 0.3412 },
            },
            sourceStep = 16,
            text = "Accept Raising Spirits from Gor'mul.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-arathi-highlands",
            sourceActionID = "accept-675-raising-spirits",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 675, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 675, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 674, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 672, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        { any = { { any = { { quest = { id = 655, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 675, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-arathi-highlands-accept-675-raising-spirits" },
            id = "horde-leveling-era-horde-arathi-highlands-turnin-675-raising-spirits",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 674 } } },
            route = {
                { label = "Tor'gan", mapID = 1417, offMapText = "Travel to Tor'gan in Arathi Highlands.", x = 0.7471, y = 0.3629 },
            },
            sourceStep = 17,
            text = "Turn in Raising Spirits to Tor'gan.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-arathi-highlands",
            sourceActionID = "turnin-675-raising-spirits",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 675, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 675, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 674, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 672, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        { any = { { any = { { quest = { id = 655, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 677, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-arathi-highlands-accept-677-call-to-arms",
                "horde-leveling-era-horde-arathi-highlands-objective-677-3-witherbark-witch-doctor",
                "horde-leveling-era-horde-arathi-highlands-objective-677-2-witherbark-headhunter",
                "horde-leveling-era-horde-arathi-highlands-objective-677-1-witherbark-axe-thrower",
            },
            id = "horde-leveling-era-horde-arathi-highlands-turnin-677-call-to-arms",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "Drum Fel", mapID = 1417, offMapText = "Travel to Drum Fel in Arathi Highlands.", x = 0.7424, y = 0.3391 },
            },
            sourceStep = 18,
            text = "Turn in Call to Arms to Drum Fel.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-arathi-highlands",
            sourceActionID = "turnin-677-call-to-arms",
        },
        {
            id = "visit-entry-leveling-era-horde-alterac-mountains-and-arathi-highlands",
            kind = "note",
            visitSourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            text = "Reach level 38 before the Alterac Mountains & Arathi Highlands visit.",
            conditions = { all = { { faction = "Horde" } } },
            excludeWhen = { ["not"] = { all = { { faction = "Horde" } } } },
            complete = { level = { min = 38 } },
            requiredLevel = 38,
        },
        {
            complete = { quest = { id = 678, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-678-call-to-arms",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 677 } } },
            route = {
                { label = "Drum Fel", mapID = 1417, offMapText = "Travel to Drum Fel in Arathi Highlands.", x = 0.7424, y = 0.3391 },
            },
            sourceStep = 29,
            text = "Accept Call to Arms from Drum Fel.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "accept-678-call-to-arms",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 678, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 678, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 677, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-639-level",
            kind = "note",
            checkpointQuest = 639,
            text = "Reach level 37 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 37 } },
            requiredLevel = 37,
        },
        {
            id = "horde-extra-639-accept",
            kind = "accept",
            text = "Accept Sigil of Strom from Zengu.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 32 } } } },
            route = {
                {
                    mapID = 1417,
                    x = 0.738,
                    y = 0.33799999999999997,
                    label = "Zengu",
                    offMapText = "Travel to Zengu in Arathi Highlands.",
                },
            },
            complete = { quest = { id = 639, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-639-level" },
        },
        {
            complete = { quest = { id = 701, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-701-guile-of-the-raptor",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 675 } } },
            route = {
                { label = "Tor'gan", mapID = 1417, offMapText = "Travel to Tor'gan in Arathi Highlands.", x = 0.7472, y = 0.3629 },
            },
            sourceStep = 30,
            text = "Accept Guile of the Raptor from Tor'gan.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "accept-701-guile-of-the-raptor",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 701, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 701, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 675, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 674, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 672, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                { any = { { any = { { quest = { id = 655, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 642,
            complete = { level = { min = 30 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-level-before-objective-642-1-drywhisker-kobold",
            kind = "note",
            requiredLevel = 30,
            requiredQuests = {},
            text = "Reach level 30 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "level-before-objective-642-1-drywhisker-kobold",
            dependsOn = {},
        },
        {
            complete = { questObjective = { count = 12, id = 642, index = 1, text = "Drywhisker Kobold" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-642-1-drywhisker-kobold",
            kind = "objective",
            requiredQuests = {},
            route = {
                { label = "Drywhisker Kobold", mapID = 1417, offMapText = "Travel to Drywhisker Kobold.", x = 0.76, y = 0.442 },
            },
            sourceStep = 31,
            text = "Collect 12 Mote of Myzrael.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "objective-642-1-drywhisker-kobold",
        },
        {
            complete = { quest = { id = 642, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = { "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-642-1-drywhisker-kobold" },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-turnin-642-the-princess-trapped",
            kind = "turnin",
            requiredQuests = {},
            route = {
                { label = "The Princess Trapped", mapID = 1417, offMapText = "Travel to The Princess Trapped.", x = 0.8431, y = 0.3092 },
            },
            sourceStep = 32,
            text = "Turn in The Princess Trapped.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "turnin-642-the-princess-trapped",
        },
        {
            complete = { quest = { id = 651, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-651-stones-of-binding",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 642 } } },
            route = {
                { label = "Stones of Binding", mapID = 1417, offMapText = "Travel to Stones of Binding.", x = 0.8431, y = 0.3092 },
            },
            sourceStep = 32,
            text = "Accept Stones of Binding.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "accept-651-stones-of-binding",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 651, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 651, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 642, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-639-objective",
            kind = "objective",
            text = "Defeat Syndicate Prowlers and loot the Sigil of Strom. This is an elite. Bring a group.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 32 } } } },
            route = {
                {
                    mapID = 1417,
                    x = 0.292,
                    y = 0.624,
                    label = "Syndicate Prowler",
                    offMapText = "Travel to Syndicate Prowler in Arathi Highlands.",
                },
            },
            complete = { quest = { id = 639, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-639-accept" },
        },
        {
            id = "horde-extra-639-turnin",
            kind = "turnin",
            text = "Turn in Sigil of Strom to Zengu.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 32 } } } },
            route = {
                {
                    mapID = 1417,
                    x = 0.738,
                    y = 0.33799999999999997,
                    label = "Zengu",
                    offMapText = "Travel to Zengu in Arathi Highlands.",
                },
            },
            complete = { quest = { id = 639, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-639-objective" },
        },
        {
            complete = { questObjective = { count = 1, id = 651, index = 2, text = "Cresting Key" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = { "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-651-stones-of-binding" },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-651-2-cresting-key",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 642 } } },
            route = { { label = "Cresting Key", mapID = 1417, offMapText = "Travel to Cresting Key.", x = 0.6675, y = 0.2975 } },
            sourceStep = 33,
            text = "Collect 1 Cresting Key.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "objective-651-2-cresting-key",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 651, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 651, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 642, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 651, index = 3, text = "Thundering Key" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = { "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-651-stones-of-binding" },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-651-3-thundering-key",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 642 } } },
            route = { { label = "Thundering Key", mapID = 1417, offMapText = "Travel to Thundering Key.", x = 0.5206, y = 0.5069 } },
            sourceStep = 34,
            text = "Collect 1 Thundering Key.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "objective-651-3-thundering-key",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 651, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 651, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 642, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 4, id = 678, index = 2, text = "Boulderfist Magus" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-678-call-to-arms" },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-678-2-boulderfist-magus",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 677 } } },
            route = {
                { label = "Boulderfist Magus", mapID = 1417, offMapText = "Travel to Boulderfist Magus.", x = 0.514, y = 0.724 },
            },
            sourceStep = 35,
            text = "Kill 4 Boulderfist Magus.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "objective-678-2-boulderfist-magus",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 678, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 678, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 677, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 678, index = 1, text = "Boulderfist Brute" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-678-call-to-arms" },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-678-1-boulderfist-brute",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 677 } } },
            route = {
                { label = "Boulderfist Brute", mapID = 1417, offMapText = "Travel to Boulderfist Brute.", x = 0.514, y = 0.724 },
            },
            sourceStep = 35,
            text = "Kill 10 Boulderfist Brute.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "objective-678-1-boulderfist-brute",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 678, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 678, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 677, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 12, id = 701, index = 1, text = "Raptor Heart" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-701-guile-of-the-raptor" },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-701-1-raptor-heart",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 675 } } },
            route = { { label = "Raptor Heart", mapID = 1417, offMapText = "Travel to Raptor Heart.", x = 0.474, y = 0.794 } },
            sourceStep = 36,
            text = "Collect 12 Raptor Heart.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "objective-701-1-raptor-heart",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 701, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 701, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 675, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 674, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 672, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                { any = { { any = { { quest = { id = 655, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 701, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-701-guile-of-the-raptor",
                "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-701-1-raptor-heart",
            },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-turnin-701-guile-of-the-raptor",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 675 } } },
            route = {
                { label = "Tor'gan", mapID = 1417, offMapText = "Travel to Tor'gan in Arathi Highlands.", x = 0.7471, y = 0.3629 },
            },
            sourceStep = 37,
            text = "Turn in Guile of the Raptor to Tor'gan.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "turnin-701-guile-of-the-raptor",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 701, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 701, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 675, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 674, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 672, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                { any = { { any = { { quest = { id = 655, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 702, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-702-guile-of-the-raptor",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 701 } } },
            route = {
                { label = "Tor'gan", mapID = 1417, offMapText = "Travel to Tor'gan in Arathi Highlands.", x = 0.7471, y = 0.3629 },
            },
            sourceStep = 37,
            text = "Accept Guile of the Raptor from Tor'gan.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "accept-702-guile-of-the-raptor",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 702, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 702, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 701, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 675, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 674, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 672, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        { any = { { any = { { quest = { id = 655, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 702, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-702-guile-of-the-raptor" },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-turnin-702-guile-of-the-raptor",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 701 } } },
            route = {
                { label = "Gor'mul", mapID = 1417, offMapText = "Travel to Gor'mul in Arathi Highlands.", x = 0.7255, y = 0.3401 },
            },
            sourceStep = 38,
            text = "Turn in Guile of the Raptor to Gor'mul.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "turnin-702-guile-of-the-raptor",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 702, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 702, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 701, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 675, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 674, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 672, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        { any = { { any = { { quest = { id = 655, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 847, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-847-guile-of-the-raptor",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 702 } } },
            route = {
                { label = "Gor'mul", mapID = 1417, offMapText = "Travel to Gor'mul in Arathi Highlands.", x = 0.7255, y = 0.3401 },
            },
            sourceStep = 39,
            text = "Accept Guile of the Raptor from Gor'mul.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "accept-847-guile-of-the-raptor",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 847, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 847, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 702, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 701, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 675, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 674, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 672, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                { any = { { any = { { quest = { id = 655, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 678, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = {
                "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-678-call-to-arms",
                "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-678-2-boulderfist-magus",
                "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-678-1-boulderfist-brute",
            },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-turnin-678-call-to-arms",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 677 } } },
            route = {
                { label = "Drum Fel", mapID = 1417, offMapText = "Travel to Drum Fel in Arathi Highlands.", x = 0.7424, y = 0.3391 },
            },
            sourceStep = 40,
            text = "Turn in Call to Arms to Drum Fel.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "turnin-678-call-to-arms",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 678, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 678, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 677, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 847, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 29 } }, { race = { 2, 5, 6, 8, 96 } } } },
            dependsOn = { "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-847-guile-of-the-raptor" },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-turnin-847-guile-of-the-raptor",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 702 } } },
            route = {
                { label = "Tor'gan", mapID = 1417, offMapText = "Travel to Tor'gan in Arathi Highlands.", x = 0.7471, y = 0.3629 },
            },
            sourceStep = 41,
            text = "Turn in Guile of the Raptor to Tor'gan.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "turnin-847-guile-of-the-raptor",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 847, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 847, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 702, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 701, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        { faction = "Horde" },
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 675, state = "completed" } },
                                                                                                        {
                                                                                                            all = {
                                                                                                                { faction = "Horde" },
                                                                                                                {
                                                                                                                    any = {
                                                                                                                        {
                                                                                                                            any = {
                                                                                                                                { quest = { id = 674, state = "completed" } },
                                                                                                                                {
                                                                                                                                    all = {
                                                                                                                                        { faction = "Horde" },
                                                                                                                                        {
                                                                                                                                            any = {
                                                                                                                                                {
                                                                                                                                                    any = {
                                                                                                                                                        { quest = { id = 672, state = "completed" } },
                                                                                                                                                        {
                                                                                                                                                            all = {
                                                                                                                                                                { faction = "Horde" },
                                                                                                                                                                { any = { { any = { { quest = { id = 655, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                                                                                                                            },
                                                                                                                                                        },
                                                                                                                                                    },
                                                                                                                                                },
                                                                                                                                            },
                                                                                                                                        },
                                                                                                                                    },
                                                                                                                                },
                                                                                                                            },
                                                                                                                        },
                                                                                                                    },
                                                                                                                },
                                                                                                            },
                                                                                                        },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 651, index = 1, text = "Burning Key" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = { "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-651-stones-of-binding" },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-651-1-burning-key",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 642 } } },
            route = { { label = "Burning Key", mapID = 1417, offMapText = "Travel to Burning Key.", x = 0.2552, y = 0.3012 } },
            sourceStep = 42,
            text = "Collect 1 Burning Key.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "objective-651-1-burning-key",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 651, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 651, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 642, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 651, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            dependsOn = {
                "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-651-stones-of-binding",
                "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-651-2-cresting-key",
                "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-651-3-thundering-key",
                "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-651-1-burning-key",
            },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-turnin-651-stones-of-binding",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 642 } } },
            route = {
                { label = "Stones of Binding", mapID = 1417, offMapText = "Travel to Stones of Binding.", x = 0.3619, y = 0.5737 },
            },
            sourceStep = 43,
            text = "Turn in Stones of Binding.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "turnin-651-stones-of-binding",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 651, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 651, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 642, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            checkpointQuest = 663,
            complete = { level = { min = 35 } },
            conditions = { faction = "Horde" },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-level-before-accept-663-land-ho",
            kind = "note",
            requiredLevel = 35,
            requiredQuests = {},
            text = "Reach level 35 before continuing. Choose how to gain XP, then return to this route.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "level-before-accept-663-land-ho",
            dependsOn = {},
        },
        {
            complete = { quest = { id = 663, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-663-land-ho",
            kind = "accept",
            requiredQuests = {},
            route = {
                {
                    label = "Lolo the Lookout",
                    mapID = 1417,
                    offMapText = "Travel to Lolo the Lookout in Arathi Highlands.",
                    x = 0.3178,
                    y = 0.827,
                },
            },
            sourceStep = 44,
            text = "Accept Land Ho! from Lolo the Lookout.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "accept-663-land-ho",
        },
        {
            complete = { quest = { id = 663, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = { "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-663-land-ho" },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-turnin-663-land-ho",
            kind = "turnin",
            requiredQuests = {},
            route = {
                {
                    label = "Shakes O'Breen",
                    mapID = 1417,
                    offMapText = "Travel to Shakes O'Breen in Arathi Highlands.",
                    x = 0.3228,
                    y = 0.8138,
                },
            },
            sourceStep = 45,
            text = "Turn in Land Ho! to Shakes O'Breen.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "turnin-663-land-ho",
        },
        {
            complete = { quest = { id = 662, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-662-deep-sea-salvage",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 663 } } },
            route = {
                {
                    label = "First Mate Nilzlix",
                    mapID = 1417,
                    offMapText = "Travel to First Mate Nilzlix in Arathi Highlands.",
                    x = 0.3277,
                    y = 0.8147,
                },
            },
            sourceStep = 46,
            text = "Accept Deep Sea Salvage from First Mate Nilzlix.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "accept-662-deep-sea-salvage",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 662, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 662, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 664, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-664-drowned-sorrows",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 663 } } },
            route = {
                {
                    label = "Captain Steelgut",
                    mapID = 1417,
                    offMapText = "Travel to Captain Steelgut in Arathi Highlands.",
                    x = 0.34,
                    y = 0.8079,
                },
            },
            sourceStep = 47,
            text = "Accept Drowned Sorrows from Captain Steelgut.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "accept-664-drowned-sorrows",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 664, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 664, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 665, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-665-sunken-treasure",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 663 } } },
            route = {
                {
                    label = "Professor Phizzlethorpe",
                    mapID = 1417,
                    offMapText = "Travel to Professor Phizzlethorpe in Arathi Highlands.",
                    x = 0.3387,
                    y = 0.8055,
                },
            },
            sourceStep = 48,
            text = "Accept Sunken Treasure from Professor Phizzlethorpe.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "accept-665-sunken-treasure",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 665, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 665, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 665, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = { "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-665-sunken-treasure" },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-turnin-665-sunken-treasure",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 663 } } },
            route = {
                {
                    label = "Doctor Draxlegauge",
                    mapID = 1417,
                    offMapText = "Travel to Doctor Draxlegauge in Arathi Highlands.",
                    x = 0.3386,
                    y = 0.8045,
                },
            },
            sourceStep = 50,
            text = "Turn in Sunken Treasure to Doctor Draxlegauge.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "turnin-665-sunken-treasure",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 665, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 665, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 666, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-666-sunken-treasure",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 665 } } },
            route = {
                {
                    label = "Doctor Draxlegauge",
                    mapID = 1417,
                    offMapText = "Travel to Doctor Draxlegauge in Arathi Highlands.",
                    x = 0.3386,
                    y = 0.8045,
                },
            },
            sourceStep = 50,
            text = "Accept Sunken Treasure from Doctor Draxlegauge.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "accept-666-sunken-treasure",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 666, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 666, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 665, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 662, index = 2, text = "Elixir of Water Breathing" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = { "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-662-deep-sea-salvage" },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-662-2-elixir-of-water-breathing",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 663 } } },
            route = {
                {
                    label = "Elixir of Water Breathing",
                    mapID = 1417,
                    offMapText = "Travel to Elixir of Water Breathing.",
                    x = 0.2341,
                    y = 0.851,
                },
            },
            sourceStep = 51,
            text = "Collect 1 Maiden's Folly Log.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "objective-662-2-elixir-of-water-breathing",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 662, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 662, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 662, index = 1, text = "Elixir of Water Breathing" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = { "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-662-deep-sea-salvage" },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-662-1-elixir-of-water-breathing",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 663 } } },
            route = {
                {
                    label = "Elixir of Water Breathing",
                    mapID = 1417,
                    offMapText = "Travel to Elixir of Water Breathing.",
                    x = 0.2304,
                    y = 0.8451,
                },
            },
            sourceStep = 52,
            text = "Collect 1 Maiden's Folly Charts.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "objective-662-1-elixir-of-water-breathing",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 662, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 662, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 662, index = 3, text = "Elixir of Water Breathing" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = { "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-662-deep-sea-salvage" },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-662-3-elixir-of-water-breathing",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 663 } } },
            route = {
                {
                    label = "Elixir of Water Breathing",
                    mapID = 1417,
                    offMapText = "Travel to Elixir of Water Breathing.",
                    x = 0.2045,
                    y = 0.856,
                },
            },
            sourceStep = 53,
            text = "Collect 1 Spirit of Silverpine Charts.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "objective-662-3-elixir-of-water-breathing",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 662, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 662, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 1, id = 662, index = 4, text = "Elixir of Water Breathing" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = { "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-662-deep-sea-salvage" },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-662-4-elixir-of-water-breathing",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 663 } } },
            route = {
                {
                    label = "Elixir of Water Breathing",
                    mapID = 1417,
                    offMapText = "Travel to Elixir of Water Breathing.",
                    x = 0.2065,
                    y = 0.851,
                },
            },
            sourceStep = 54,
            text = "Collect 1 Spirit of Silverpine Log.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "objective-662-4-elixir-of-water-breathing",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 662, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 662, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 666, index = 1, text = "Elven Gem" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = { "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-666-sunken-treasure" },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-666-1-elven-gem",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 665 } } },
            route = { { label = "Elven Gem", mapID = 1417, offMapText = "Travel to Elven Gem.", x = 0.236, y = 0.874 } },
            sourceStep = 55,
            text = "Collect 10 Elven Gem.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "objective-666-1-elven-gem",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 666, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 666, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 665, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 3, id = 664, index = 2, text = "Daggerspine Sorceress" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = { "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-664-drowned-sorrows" },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-664-2-daggerspine-sorceress",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 663 } } },
            route = {
                { label = "Daggerspine Sorceress", mapID = 1417, offMapText = "Travel to Daggerspine Sorceress.", x = 0.192, y = 0.84 },
            },
            sourceStep = 57,
            text = "Kill 3 Daggerspine Sorceress.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "objective-664-2-daggerspine-sorceress",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 664, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 664, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { questObjective = { count = 10, id = 664, index = 1, text = "Daggerspine Raider" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = { "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-664-drowned-sorrows" },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-664-1-daggerspine-raider",
            kind = "objective",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 663 } } },
            route = {
                { label = "Daggerspine Raider", mapID = 1417, offMapText = "Travel to Daggerspine Raider.", x = 0.192, y = 0.84 },
            },
            sourceStep = 57,
            text = "Kill 10 Daggerspine Raider.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "objective-664-1-daggerspine-raider",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 664, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 664, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 662, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = {
                "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-662-deep-sea-salvage",
                "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-662-2-elixir-of-water-breathing",
                "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-662-1-elixir-of-water-breathing",
                "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-662-3-elixir-of-water-breathing",
                "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-662-4-elixir-of-water-breathing",
            },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-turnin-662-deep-sea-salvage",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 663 } } },
            route = {
                {
                    label = "First Mate Nilzlix",
                    mapID = 1417,
                    offMapText = "Travel to First Mate Nilzlix in Arathi Highlands.",
                    x = 0.328,
                    y = 0.8148,
                },
            },
            sourceStep = 58,
            text = "Turn in Deep Sea Salvage to First Mate Nilzlix.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "turnin-662-deep-sea-salvage",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 662, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 662, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 664, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = {
                "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-664-drowned-sorrows",
                "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-664-2-daggerspine-sorceress",
                "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-664-1-daggerspine-raider",
            },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-turnin-664-drowned-sorrows",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 663 } } },
            route = {
                {
                    label = "Captain Steelgut",
                    mapID = 1417,
                    offMapText = "Travel to Captain Steelgut in Arathi Highlands.",
                    x = 0.34,
                    y = 0.8079,
                },
            },
            sourceStep = 59,
            text = "Turn in Drowned Sorrows to Captain Steelgut.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "turnin-664-drowned-sorrows",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 664, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 664, state = "completed" } },
                                { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 666, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = {
                "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-666-sunken-treasure",
                "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-objective-666-1-elven-gem",
            },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-turnin-666-sunken-treasure",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 665 } } },
            route = {
                {
                    label = "Doctor Draxlegauge",
                    mapID = 1417,
                    offMapText = "Travel to Doctor Draxlegauge in Arathi Highlands.",
                    x = 0.3385,
                    y = 0.8045,
                },
            },
            sourceStep = 60,
            text = "Turn in Sunken Treasure to Doctor Draxlegauge.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "turnin-666-sunken-treasure",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 666, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 666, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 665, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 668, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-668-sunken-treasure",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 666 } } },
            route = {
                {
                    label = "Doctor Draxlegauge",
                    mapID = 1417,
                    offMapText = "Travel to Doctor Draxlegauge in Arathi Highlands.",
                    x = 0.3385,
                    y = 0.8045,
                },
            },
            sourceStep = 60,
            text = "Accept Sunken Treasure from Doctor Draxlegauge.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "accept-668-sunken-treasure",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 668, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 668, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 666, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 665, state = "completed" } },
                                                                                { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 668, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = { "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-668-sunken-treasure" },
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-turnin-668-sunken-treasure",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 666 } } },
            route = {
                {
                    label = "Shakes O'Breen",
                    mapID = 1417,
                    offMapText = "Travel to Shakes O'Breen in Arathi Highlands.",
                    x = 0.3229,
                    y = 0.8138,
                },
            },
            sourceStep = 61,
            text = "Turn in Sunken Treasure to Shakes O'Breen.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "turnin-668-sunken-treasure",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 668, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 668, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 666, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 665, state = "completed" } },
                                                                                { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            complete = { quest = { id = 669, state = "activeOrCompleted" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-alterac-mountains-and-arathi-highlands-accept-669-sunken-treasure",
            kind = "accept",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 668 } } },
            route = {
                {
                    label = "Shakes O'Breen",
                    mapID = 1417,
                    offMapText = "Travel to Shakes O'Breen in Arathi Highlands.",
                    x = 0.3229,
                    y = 0.8138,
                },
            },
            sourceStep = 61,
            text = "Accept Sunken Treasure from Shakes O'Breen.",
            useClientPin = false,
            useClientText = false,
            sourceGuide = "leveling-era-horde-alterac-mountains-and-arathi-highlands",
            sourceActionID = "accept-669-sunken-treasure",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 669, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 669, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 668, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 666, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 665, state = "completed" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
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
            complete = { quest = { id = 669, state = "completed" } },
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            dependsOn = {},
            id = "horde-leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows-turnin-669-sunken-treasure",
            kind = "turnin",
            requiredQuests = { { conditions = {}, mode = "any", quests = { 668 } } },
            route = {
                {
                    label = "Fleet Master Seahorn",
                    mapID = 1434,
                    offMapText = "Travel to Fleet Master Seahorn in Stranglethorn Vale.",
                    x = 0.2717,
                    y = 0.7701,
                },
            },
            sourceStep = 5,
            text = "Turn in Sunken Treasure to Fleet Master Seahorn.",
            useClientPin = false,
            useClientText = false,
            useQuestNavigation = true,
            sourceGuide = "leveling-era-horde-stranglethorn-vale-and-swamp-of-sorrows",
            sourceActionID = "turnin-669-sunken-treasure",
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 669, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 669, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 668, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 666, state = "completed" } },
                                                                                {
                                                                                    all = {
                                                                                        {
                                                                                            any = {
                                                                                                {
                                                                                                    any = {
                                                                                                        { quest = { id = 665, state = "completed" } },
                                                                                                        { all = { { any = { { any = { { quest = { id = 663, state = "completed" } }, { all = {} } } } } } } },
                                                                                                    },
                                                                                                },
                                                                                            },
                                                                                        },
                                                                                    },
                                                                                },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-640-level",
            kind = "note",
            checkpointQuest = 640,
            text = "Reach level 40 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 40 } },
            requiredLevel = 40,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 640, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 640, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 639, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-640-accept",
            kind = "accept",
            text = "Accept The Broken Sigil from Zengu.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 32 } } } },
            route = {
                {
                    mapID = 1417,
                    x = 0.738,
                    y = 0.33799999999999997,
                    label = "Zengu",
                    offMapText = "Travel to Zengu in Arathi Highlands.",
                },
            },
            complete = { quest = { id = 640, state = "activeOrCompleted" } },
            requiredQuests = { { mode = "any", quests = { 639 } } },
            useClientText = false,
            dependsOn = { "horde-extra-640-level" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 640, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 640, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 639, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-640-objective",
            kind = "objective",
            text = "Defeat Stromgarde Troll Hunters, Defenders, or Vindicators and loot 11 Sigil Fragments. This is an elite. Bring a group.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 32 } } } },
            route = {
                {
                    mapID = 1417,
                    x = 0.222,
                    y = 0.594,
                    label = "Stromgarde Troll Hunter",
                    offMapText = "Travel to Stromgarde Troll Hunter in Arathi Highlands.",
                },
            },
            complete = { quest = { id = 640, state = "complete" } },
            requiredQuests = { { mode = "any", quests = { 639 } } },
            useClientText = false,
            dependsOn = { "horde-extra-640-accept" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 640, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 640, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 639, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-640-turnin",
            kind = "turnin",
            text = "Turn in The Broken Sigil to Tor'gan.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 32 } } } },
            route = {
                { mapID = 1417, x = 0.746, y = 0.364, label = "Tor'gan", offMapText = "Travel to Tor'gan in Arathi Highlands." },
            },
            complete = { quest = { id = 640, state = "completed" } },
            requiredQuests = { { mode = "any", quests = { 639 } } },
            useClientText = false,
            dependsOn = { "horde-extra-640-objective" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 640, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 640, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 639, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-652-level",
            kind = "note",
            checkpointQuest = 652,
            text = "Reach level 42 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 42 } },
            requiredLevel = 42,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 652, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 652, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 651, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 642, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-652-accept",
            kind = "accept",
            text = "Accept Breaking the Keystone from Stone of Inner Binding.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1417,
                    x = 0.36200000000000004,
                    y = 0.575,
                    label = "Stone of Inner Binding",
                    offMapText = "Travel to Stone of Inner Binding in Arathi Highlands.",
                },
            },
            complete = { quest = { id = 652, state = "activeOrCompleted" } },
            requiredQuests = { { mode = "any", quests = { 651 } } },
            useClientText = false,
            dependsOn = { "horde-extra-652-level" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 652, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 652, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 651, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 642, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-652-objective",
            kind = "objective",
            text = "Find and kill Fozruk. Loot the Rod of Order. This is an elite. Bring a group.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1417,
                    x = 0.43,
                    y = 0.5379999999999999,
                    label = "Fozruk",
                    offMapText = "Travel to Fozruk in Arathi Highlands.",
                },
            },
            complete = { quest = { id = 652, state = "complete" } },
            requiredQuests = { { mode = "any", quests = { 651 } } },
            useClientText = false,
            dependsOn = { "horde-extra-652-accept" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 652, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 652, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 651, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 642, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-652-turnin",
            kind = "turnin",
            text = "Turn in Breaking the Keystone to Keystone.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            route = {
                { mapID = 1417, x = 0.361, y = 0.579, label = "Keystone", offMapText = "Travel to Keystone in Arathi Highlands." },
            },
            complete = { quest = { id = 652, state = "completed" } },
            requiredQuests = { { mode = "any", quests = { 651 } } },
            useClientText = false,
            dependsOn = { "horde-extra-652-objective" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 652, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 652, state = "completed" } },
                                {
                                    all = {
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 651, state = "completed" } },
                                                        { all = { { any = { { any = { { quest = { id = 642, state = "completed" } }, { all = {} } } } } } } },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-673-level",
            kind = "note",
            checkpointQuest = 673,
            text = "Reach level 40 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 40 } },
            requiredLevel = 40,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 673, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 673, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 671, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-673-accept",
            kind = "accept",
            text = "Accept Foul Magics from Tor'gan.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            route = {
                { mapID = 1417, x = 0.746, y = 0.364, label = "Tor'gan", offMapText = "Travel to Tor'gan in Arathi Highlands." },
            },
            complete = { quest = { id = 673, state = "activeOrCompleted" } },
            requiredQuests = { { mode = "any", quests = { 671 } } },
            useClientText = false,
            dependsOn = { "horde-extra-673-level" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 673, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 673, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 671, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-673-objective",
            kind = "objective",
            text = "Defeat Marez Cowl and loot the Befouled Bloodstone Orb. This is an elite. Bring a group.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            route = {
                { mapID = 1417, x = 0.292, y = 0.64, label = "Marez Cowl", offMapText = "Travel to Marez Cowl in Arathi Highlands." },
            },
            complete = { quest = { id = 673, state = "complete" } },
            requiredQuests = { { mode = "any", quests = { 671 } } },
            useClientText = false,
            dependsOn = { "horde-extra-673-accept" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 673, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 673, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 671, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-673-turnin",
            kind = "turnin",
            text = "Turn in Foul Magics to Tor'gan.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 35 } } } },
            route = {
                { mapID = 1417, x = 0.746, y = 0.364, label = "Tor'gan", offMapText = "Travel to Tor'gan in Arathi Highlands." },
            },
            complete = { quest = { id = 673, state = "completed" } },
            requiredQuests = { { mode = "any", quests = { 671 } } },
            useClientText = false,
            dependsOn = { "horde-extra-673-objective" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 673, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 673, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        { any = { { any = { { quest = { id = 671, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-679-level",
            kind = "note",
            checkpointQuest = 679,
            text = "Reach level 40 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 40 } },
            requiredLevel = 40,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 679, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 679, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 678, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                { any = { { any = { { quest = { id = 677, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-679-accept",
            kind = "accept",
            text = "Accept Call to Arms from Drum Fel.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1417,
                    x = 0.742,
                    y = 0.33799999999999997,
                    label = "Drum Fel",
                    offMapText = "Travel to Drum Fel in Arathi Highlands.",
                },
            },
            complete = { quest = { id = 679, state = "activeOrCompleted" } },
            requiredQuests = { { mode = "any", quests = { 678 } } },
            useClientText = false,
            dependsOn = { "horde-extra-679-level" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 679, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 679, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 678, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                { any = { { any = { { quest = { id = 677, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-679-objective",
            kind = "objective",
            text = "Kill 7 Boulderfist Shaman and 3 Boulderfist Lords. This is an elite. Bring a group.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1417,
                    x = 0.21,
                    y = 0.6579999999999999,
                    label = "Boulderfist Shaman",
                    offMapText = "Travel to Boulderfist Shaman in Arathi Highlands.",
                },
            },
            complete = { quest = { id = 679, state = "complete" } },
            requiredQuests = { { mode = "any", quests = { 678 } } },
            useClientText = false,
            dependsOn = { "horde-extra-679-accept" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 679, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 679, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 678, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                { any = { { any = { { quest = { id = 677, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-679-turnin",
            kind = "turnin",
            text = "Turn in Call to Arms to Drum Fel.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1417,
                    x = 0.742,
                    y = 0.33799999999999997,
                    label = "Drum Fel",
                    offMapText = "Travel to Drum Fel in Arathi Highlands.",
                },
            },
            complete = { quest = { id = 679, state = "completed" } },
            requiredQuests = { { mode = "any", quests = { 678 } } },
            useClientText = false,
            dependsOn = { "horde-extra-679-objective" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 679, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 679, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 678, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                { any = { { any = { { quest = { id = 677, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-680-level",
            kind = "note",
            checkpointQuest = 680,
            text = "Reach level 40 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 40 } },
            requiredLevel = 40,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 680, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 680, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 678, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                { any = { { any = { { quest = { id = 677, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-680-accept",
            kind = "accept",
            text = "Accept The Real Threat from Korin Fel.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            route = {
                { mapID = 1417, x = 0.74, y = 0.332, label = "Korin Fel", offMapText = "Travel to Korin Fel in Arathi Highlands." },
            },
            complete = { quest = { id = 680, state = "activeOrCompleted" } },
            requiredQuests = { { mode = "any", quests = { 678 } } },
            useClientText = false,
            dependsOn = { "horde-extra-680-level" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 680, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 680, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 678, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                { any = { { any = { { quest = { id = 677, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-680-objective",
            kind = "objective",
            text = "Slay Or'Kalar and loot his head. This is an elite. Bring a group.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1417,
                    x = 0.20800000000000002,
                    y = 0.654,
                    label = "Or'Kalar",
                    offMapText = "Travel to Or'Kalar in Arathi Highlands.",
                },
            },
            complete = { quest = { id = 680, state = "complete" } },
            requiredQuests = { { mode = "any", quests = { 678 } } },
            useClientText = false,
            dependsOn = { "horde-extra-680-accept" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 680, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 680, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 678, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                { any = { { any = { { quest = { id = 677, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-680-turnin",
            kind = "turnin",
            text = "Turn in The Real Threat to Korin Fel.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            route = {
                { mapID = 1417, x = 0.74, y = 0.332, label = "Korin Fel", offMapText = "Travel to Korin Fel in Arathi Highlands." },
            },
            complete = { quest = { id = 680, state = "completed" } },
            requiredQuests = { { mode = "any", quests = { 678 } } },
            useClientText = false,
            dependsOn = { "horde-extra-680-objective" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 680, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 680, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 678, state = "completed" } },
                                                        {
                                                            all = {
                                                                { faction = "Horde" },
                                                                { any = { { any = { { quest = { id = 677, state = "completed" } }, { all = { { faction = "Horde" } } } } } } },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-688-level",
            kind = "note",
            checkpointQuest = 688,
            text = "Reach level 40 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 40 } },
            requiredLevel = 40,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 688, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 688, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 652, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 651, state = "completed" } },
                                                                                { all = { { any = { { any = { { quest = { id = 642, state = "completed" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-688-accept",
            kind = "accept",
            text = "Accept Myzrael's Allies from Keystone.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            route = {
                { mapID = 1417, x = 0.361, y = 0.579, label = "Keystone", offMapText = "Travel to Keystone in Arathi Highlands." },
            },
            complete = { quest = { id = 688, state = "activeOrCompleted" } },
            requiredQuests = { { mode = "any", quests = { 652 } } },
            useClientText = false,
            dependsOn = { "horde-extra-688-level" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 688, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 688, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 652, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 651, state = "completed" } },
                                                                                { all = { { any = { { any = { { quest = { id = 642, state = "completed" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-688-objective",
            kind = "objective",
            text = "Speak with Zaruk in Hammerfall. Follow the quest log for the destination.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            route = {},
            complete = { quest = { id = 688, state = "complete" } },
            requiredQuests = { { mode = "any", quests = { 652 } } },
            useClientText = false,
            dependsOn = { "horde-extra-688-accept" },
            useClientPin = true,
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 688, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 688, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 652, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 651, state = "completed" } },
                                                                                { all = { { any = { { any = { { quest = { id = 642, state = "completed" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-688-turnin",
            kind = "turnin",
            text = "Turn in Myzrael's Allies to Zaruk.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1417,
                    x = 0.7440000000000001,
                    y = 0.35600000000000004,
                    label = "Zaruk",
                    offMapText = "Travel to Zaruk in Arathi Highlands.",
                },
            },
            complete = { quest = { id = 688, state = "completed" } },
            requiredQuests = { { mode = "any", quests = { 652 } } },
            useClientText = false,
            dependsOn = { "horde-extra-688-objective" },
            excludeWhen = {
                ["not"] = {
                    any = {
                        { quest = { id = 688, state = "activeOrCompleted" } },
                        {
                            any = {
                                { quest = { id = 688, state = "completed" } },
                                {
                                    all = {
                                        { faction = "Horde" },
                                        {
                                            any = {
                                                {
                                                    any = {
                                                        { quest = { id = 652, state = "completed" } },
                                                        {
                                                            all = {
                                                                {
                                                                    any = {
                                                                        {
                                                                            any = {
                                                                                { quest = { id = 651, state = "completed" } },
                                                                                { all = { { any = { { any = { { quest = { id = 642, state = "completed" } }, { all = {} } } } } } } },
                                                                            },
                                                                        },
                                                                    },
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
        {
            id = "horde-extra-97539-level",
            kind = "note",
            checkpointQuest = 97539,
            text = "Reach level 36 before this visit.",
            conditions = { all = { { faction = "Horde" } } },
            complete = { level = { min = 36 } },
            requiredLevel = 36,
        },
        {
            id = "horde-extra-97539-accept",
            kind = "accept",
            text = "Accept Silky Sutures from Doctor Gregory Victor.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1417,
                    x = 0.7340000000000001,
                    y = 0.368,
                    label = "Doctor Gregory Victor",
                    offMapText = "Travel to Doctor Gregory Victor in Arathi Highlands.",
                },
            },
            complete = { quest = { id = 97539, state = "activeOrCompleted" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-97539-level" },
        },
        {
            id = "horde-extra-97539-objective",
            kind = "objective",
            text = "Defeat Plains Creepers or Giant Plains Creepers and loot 12 Surgical Spidersilk.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1417,
                    x = 0.708,
                    y = 0.494,
                    label = "Plains Creeper",
                    offMapText = "Travel to Plains Creeper in Arathi Highlands.",
                },
            },
            complete = { quest = { id = 97539, state = "complete" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-97539-accept" },
        },
        {
            id = "horde-extra-97539-turnin",
            kind = "turnin",
            text = "Turn in Silky Sutures to Doctor Gregory Victor.",
            conditions = { all = { { faction = "Horde" }, { level = { min = 30 } } } },
            route = {
                {
                    mapID = 1417,
                    x = 0.7340000000000001,
                    y = 0.368,
                    label = "Doctor Gregory Victor",
                    offMapText = "Travel to Doctor Gregory Victor in Arathi Highlands.",
                },
            },
            complete = { quest = { id = 97539, state = "completed" } },
            requiredQuests = {},
            useClientText = false,
            dependsOn = { "horde-extra-97539-objective" },
        },
    },
})
